package com.dao;

import com.entity.CheckedAccount;

import java.util.List;

/**
 * Created by 豆孟哲 on 2017/7/16.
 */
public interface CheckAccountDao {
    //根据accountid和CheckAccountid以及Docid向CheckDoc中插入数据
    public void newCheckedAccount(CheckedAccount checkedAccount);
    //根据docid返回accountid
    public List<Integer> getAccountidsByDocid(int docid);
    //将各项能力的评价的值插入到checked account中
    public  void updateCheckedAccountWithAbility(CheckedAccount checkedAccount);
}
