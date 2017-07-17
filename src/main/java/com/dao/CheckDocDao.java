package com.dao;

import com.entity.CheckDoc;
import org.springframework.stereotype.Repository;
import  java.util.*;
/**
 * Created by 豆孟哲 on 2017/7/14.
 */
@Repository
public interface CheckDocDao {
    //根据accountid获得当前用户的checkdoc 和一开始的不同
     public List<Map<String,Object>> getCheckDocAndRealname();
    //向checkdoc表中插入考核记录并返回checkdocid
    public void addCheckDoc(CheckDoc checkDoc);
}
