package com.odm.managesystem.controller;


import com.alibaba.fastjson.JSONObject;
import com.odm.managesystem.service.InitPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Hello {
    @Autowired
    private InitPageService ips;

    
    @RequestMapping("/index")
    public String hello(){

        System.out.println("InitJacketPage...");
        try {
            JSONObject j=ips.getJacketPageElementsInJson();
            System.out.println(j.toJSONString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("test");
        return "The ODM manage system project starts!";
    }
}
