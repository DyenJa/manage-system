package com.odm.managesystem.controller;


import com.alibaba.fastjson.JSONObject;
import com.odm.managesystem.service.InitPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Hello {



    @RequestMapping("/index")
    public String hello(){

        return "The ODM manage system project starts!";
    }
}
