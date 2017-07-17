package com.controller;

import com.entity.CheckDoc;
import com.entity.account;
import com.service.CheckDocService;
import com.service.PendingDocService;
import com.util.TreeRoot;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.SessionScope;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import  java.sql.Date;

/**
 * Created by 豆孟哲 on 2017/7/14.
 */
@Controller
public class QckhController {
     @Autowired
    CheckDocService checkDocService;
    //返回已有的checkdoc给wdgz_qckh.jsp页面
    @RequestMapping("/getCheckDocAndRealname")
    public String getCheckDocAndRealname(int accountid, Map<String,Object> map){
           map.put("list",checkDocService.getCheckDocAndRealname());
           map.put("accountid",accountid);
         return "/file/wdgz_qckh";
    }


    //转到qckh1.jsp
    @RequestMapping("/newKH")
    public String newKH(int accountid,Map<String,Object> map){
        //获得Ztree
       TreeRoot tree= checkDocService.createSecondManagerTree();
           map.put("accountid",accountid);
        return "file/wdgz_qckh1";
    }

    //处理ajax请求返回Tree
    @RequestMapping("/getZTree")
    @ResponseBody
    public TreeRoot getZTree(){
        return  checkDocService.createSecondManagerTree();
    }

    //获得qckh1的参数
    @RequestMapping("/getQckh")
                          //accountid 这次考核的发起人        Checked Accounts被考核人的id 以,分割
    public String getQckh(String docname,String checktime , String stoptime,String descript,String accountid, String checkedAccounts){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");

           CheckDoc checkDoc=new CheckDoc();

        try {
            checkDoc.setAccountid(Integer.parseInt(accountid));
            checkDoc.setChecktime(new Date(sdf.parse(checktime).getTime()));
            checkDoc.setStoptime(new Date(sdf.parse(stoptime).getTime()));
            checkDoc.setDescript(descript);
            checkDoc.setDocname(docname);

        } catch (ParseException e) {
            e.printStackTrace();
        }

        checkDocService.newQckhByCheckDocAndCheckedAccounts(checkDoc,checkedAccounts);


        return "forward:/getCheckDocAndRealname?accountid="+accountid;
    }

}
