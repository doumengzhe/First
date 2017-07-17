package com.controller;
import com.entity.account;
import com.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import  java.util.*;
/**
 * Created by 豆孟哲 on 2017/7/14.
 */
@Controller
@SessionAttributes(value="account")
public class AccountController {
    @Autowired
    AccountService accountService;
    //登入的req
    @RequestMapping("/login")
    public String login(account acc ,Map<String , Object > map){
       acc= accountService.login(acc);
        if(acc!=null){
            map.put("account",acc);
            return "file/wdgz";
        }
        return "file/error";
    }


}
