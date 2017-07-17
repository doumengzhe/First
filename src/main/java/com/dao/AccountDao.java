package com.dao;

import com.entity.account;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Han on 2017/07/13.
 */
@Repository
public interface AccountDao {
         //用户登入
    public account login(account account);
     //根据deptno获取部门的二级经理
    public List<account> getSecondMangerListByDeptno(String deptno);
    //根据被考核人的id，查询他的所有考核人的ID
    public List<Integer> getAccountIdByCheckedAccountId(int accountid);
    //根据accountid获取account
    public account getAccountByAccountId(Integer accountId);
}
