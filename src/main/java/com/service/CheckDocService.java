package com.service;

import com.dao.*;
import com.entity.*;
import com.util.TreeNode;
import com.util.TreeRoot;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import  java.util.*;
import java.util.List;
import java.util.Map;

/**
 * Created by 豆孟哲 on 2017/7/14.
 */
@Service
public class CheckDocService {
    @Autowired
    CheckDocDao checkDocDao;
    @Autowired
    DeptDao deptDao;
    @Autowired
    AccountDao accountDao;
    @Autowired
    CheckAccountDao checkAccountDao;
    @Autowired
    PendingDocDao pendingDocDao;
    //返回所有的checkdoc和Realname
    public List<Map<String,Object>> getCheckDocAndRealname(){
        return  checkDocDao.getCheckDocAndRealname();
    }
    //向checkdoc插入一条记录
    @Transactional
    public int addCheckDoc(CheckDoc checkDoc){
        checkDocDao.addCheckDoc(checkDoc);
      return  checkDoc.getDocid();
    }
    //查询二级经理的部门
    @Transactional
    public List<Dept> secondDeptList(){
        return deptDao.getSecondMangerDept();

    }
    //根据部门编号查询二级经理
    @Transactional
    public List<account> getSecondMangerListByDeptno(String deptno){
       return  accountDao.getSecondMangerListByDeptno(deptno);
    }
     //生成Ztree并以Json格式返回
     @Transactional
    public  TreeRoot<account> createSecondManagerTree(){
        //获得二级经理部门
        List<Dept>  deptlist=this.secondDeptList();
        //创建部门节点
            List<TreeNode> deptNodeList =new ArrayList<TreeNode>();

        //添加部门节点
          for(int i=0;i<deptlist.size();i++){
              Dept dept=deptlist.get(i);
              TreeNode deptNode=new TreeNode();
              deptNode.setId(dept.getDeptno());
              deptNode.setText(dept.getDeptname());

        //根据部门编号获得二级经理
        List<account> accountlist=this.getSecondMangerListByDeptno(dept.getDeptno());
        //创建经理节点
              List<TreeNode> accountNodeList=new ArrayList<TreeNode>();
              //添加经理节点
              for(int j=0;j<accountlist.size();j++){
                  account acc=accountlist.get(j);
                  TreeNode accountNode=new TreeNode();
                  accountNode.setId(acc.getAccountid().toString());
                  accountNode.setText(acc.getRealname());
                   accountNodeList.add(accountNode);

              }
              //将accountNodeList设置成该dept的子节点
              deptNode.setChildren(accountNodeList);
              //将该部门节点添加到DeptNodeList中
              deptNodeList.add(deptNode);
          }
        //返回树
        TreeRoot<account> tree=new TreeRoot<account>(deptNodeList);
        return tree;
    }
      //起草考核
      @Transactional
    public boolean newQckhByCheckDocAndCheckedAccounts(CheckDoc checkDoc,String checkedAccounts){
         //插入考核公文，返回公文id
          checkDocDao.addCheckDoc(checkDoc);
        int docid=checkDoc.getDocid();

        System.out.println("docid---"+docid+"--------------");
        //得到被考核人
        String[] checkedAccountIds=checkedAccounts.split(",");
        for(String ckid:checkedAccountIds){
            Integer checkedAccountId=Integer.parseInt(ckid);
            //根据被考核人id获得所有考核人id
            List<Integer> accountids=accountDao.getAccountIdByCheckedAccountId(checkedAccountId);
          //a遍历List，将考核人，被考核人，docid插入到CheckedAccount表
            for(Integer acid:accountids){
                CheckedAccount checkedAccount=new CheckedAccount();
                checkedAccount.setCheckedaccountid(checkedAccountId);
                checkedAccount.setAccountid(acid);
                checkedAccount.setDocid(docid);
               checkAccountDao.newCheckedAccount(checkedAccount);
            }

        }
        //向待办公文表中插入accountid（考核人id）docid
            //根据docid从checkedaccount表中获取所有考核人id
        List<Integer> accountIdList=checkAccountDao.getAccountidsByDocid(docid);
         //插入pengding表中
        for(Integer accountid:accountIdList){
            PendingDoc pendingDoc=new PendingDoc();
            pendingDoc.setAccountid(accountid);
            pendingDoc.setDocid(docid);
            pendingDocDao.newPendingDoc(pendingDoc);
        }
        return true;
    }
   //插入各种能力的值 完成check account表，并修改pendingdoc的state为1
    @Transactional
    public void updateCheckedAccountWithAbility(List<CheckedAccount> checkedAccountList,PendingDoc pendingDoc){
          for(CheckedAccount ca:checkedAccountList){
              checkAccountDao.updateCheckedAccountWithAbility(ca);
          }
          //change pendingdoc
        pendingDocDao.changStateTo1(pendingDoc);
    }
}
