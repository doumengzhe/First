package com.controller;

import com.dao.PendingDocDao;
import com.entity.CheckedAccount;
import com.entity.PendingDoc;
import com.entity.account;
import com.service.AccountService;
import com.service.CheckDocService;
import com.service.PendingDocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by 豆孟哲 on 2017/7/14.
 */
@Controller
public class DbgwController {
    @Autowired
    PendingDocService pendingDocService;
  @Autowired
    CheckDocService checkDocService;
  @Autowired
    AccountService accountService;
    @RequestMapping("/getDocByAccount")
    //当前用户的代办公文
    public String  getDocByAccount(int accountid ,Map<String,Object> map){
        List<Map<String ,Object>> list=pendingDocService.getDocByAccount(accountid);
             map.put("list", list );
             map.put("accountid",accountid);
             map.put("docid",list.get(0).get("DOCID"));
        return "file/wdgz_db";
    }

    //当前用户某一个公文的被考核人
    @RequestMapping("/getBkhrByAccountidAndDocid")
    public String getBkhrByAccountidAndDocid(int docid,int accountid,Map<String,Object> map){
         List<Map<String,Object>>  list= pendingDocService.getBkhrByAccountidAndDocid(docid,accountid);
            map.put("list",list);
            map.put("accountid",accountid);
        map.put("docid",list.get(0).get("DOCID"));
        return "file/wdgz_db1";
    }
   //获得测评结果的12个数组，获得测评数据
     @RequestMapping("/getKHDate")
    public String  getKHDate(
         //12个数组，数组长度为本次被考核人的人数
         Integer accountid,
         Integer docid,
         //此条考核记录的逐渐
         Integer[] checkedid,
         //此次考核的被考核人id
         Integer[]  checkedaccountid,
         //思想素质
         Integer[] sxszvalue,
         //廉洁自
         Integer[] ljzlvalue,
         //工作作风
         Integer[] gzzfvalue,
         //决策能力
         Integer[] jcnlvalue,
         //组织协调能力
         Integer[] zzxtnlvalue,
         //创新能力
         Integer[] cxnlvalue,
         //领导能力
         Integer[] ldnlvalue,
         //责任心
         Integer[] zrxvalue,
         //服务意识
         Integer[]  fwysvalue,
         //目标达成
         Integer[] mbdcvalue,
         //管理效率
         Integer[] glxlvalue,
         //下属开发
         Integer[] xskfvalue

     ){
        //给checkedaccount表的字段赋值，补全表，每条记录的主键checkedid已经获取
         //根据主键来修改各项能力的值，01234
         List<CheckedAccount> checkedAccountList=new ArrayList<CheckedAccount>();
            for(int i=0;i<checkedaccountid.length;i++){
                CheckedAccount checkedaccount=new CheckedAccount();
                //设置主键
                checkedaccount.setCheckedid(checkedid[i]);
                checkedaccount.setCheckedaccountid(checkedaccountid[i]);
                checkedaccount.setSxszvalue(sxszvalue[i]);
                checkedaccount.setLjzlvalue(ljzlvalue[i]);
                checkedaccount.setGzzfvalue(gzzfvalue[i]);
                checkedaccount.setJcnlvalue(jcnlvalue[i]);
                checkedaccount.setZzxtnlvalue(zzxtnlvalue[i]);
                checkedaccount.setCxnlvalue(cxnlvalue[i]);
                checkedaccount.setLdnlvalue(ldnlvalue[i]);
                checkedaccount.setZrxvalue(zrxvalue[i]);
                checkedaccount.setFwysvalue(fwysvalue[i]);
                checkedaccount.setMbdcvalue(mbdcvalue[i]);
                checkedaccount.setGlxlvalue(glxlvalue[i]);
                checkedaccount.setXskfvalue(xskfvalue[i]);
                    checkedaccount.setState(1);
                    checkedAccountList.add(checkedaccount);
         }
    //设置该用户的pengdoc为已完事
         PendingDoc pendingDoc=new PendingDoc();
         pendingDoc.setDocid(docid);
         pendingDoc.setAccountid(accountid);

        //修改checkedAccount和PendingDoc
         checkDocService.updateCheckedAccountWithAbility(checkedAccountList,pendingDoc);
   //返回wdgz 传递参数account
          account acc=accountService.getAccountByaccountId(accountid);
        return "forward:/login?accountname="+acc.getAccountname()+"&password="+acc.getPassword();
     }

}
