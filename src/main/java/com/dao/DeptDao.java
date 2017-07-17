package com.dao;

import com.entity.Dept;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 豆孟哲 on 2017/7/15.
 */
@Repository
public interface DeptDao {
    //获得所有的二级经理的部门
     public List<Dept> getSecondMangerDept();
}
