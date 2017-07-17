package com.service;

import com.dao.PendingDocDao;
import com.entity.PendingDoc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import  com.entity.account;
import  java.util.*;
/**
 * Created by 豆孟哲 on 2017/7/14.
 */
@Service
public class PendingDocService {
    @Autowired
    PendingDocDao pendingDocDao;
     @Transactional(readOnly = true)
     //根据accountid获得checkdoc
    public List<Map<String,Object>> getDocByAccount(int accountid){
        return pendingDocDao.getDocByAccount(accountid) ;
    }

    //根据docid和accountid查询被考核人的list
    @Transactional(readOnly = true)
    public List<Map<String,Object>> getBkhrByAccountidAndDocid(int docid,int account){
        return pendingDocDao.getBkhrByAccountidAndDocid(docid,account);
    }
    //根据docid和accountid修改state
    @Transactional
    public void changeStateTo1(PendingDoc pendingDoc){
        pendingDocDao.changStateTo1(pendingDoc);
    }
}
