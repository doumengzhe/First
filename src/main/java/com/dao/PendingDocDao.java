package com.dao;

import com.entity.PendingDoc;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import  java.util.*;
/**
 * Created by 豆孟哲 on 2017/7/14.
 */
@Repository
public interface PendingDocDao {
    //插入待办公文
    public void newPendingDoc(PendingDoc pendingDoc);
    //根据account获得待办公文
    public List<Map<String, Object>> getDocByAccount(int id);
    //根据docid和accountid查询被考核人的list
    public List<Map<String,Object>> getBkhrByAccountidAndDocid(@Param("docid") int docid , @Param("accountid") int accountid);
    //修改state为1
    public void changStateTo1(PendingDoc pendingDoc);
}
