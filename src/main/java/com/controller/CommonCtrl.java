package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by Han on 2017/07/13.
 */
@Controller
public class CommonCtrl {

    @GetMapping("/{View}")
    public void getView(){}

    @GetMapping("/file/{View}")
    public void getFileView(){}
}
