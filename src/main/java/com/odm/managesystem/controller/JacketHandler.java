package com.odm.managesystem.controller;

import com.alibaba.fastjson.JSONObject;
import com.odm.managesystem.service.InitPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class JacketHandler {

    @Autowired
    private InitPageService ips;

    @RequestMapping("/InitJacketPage")
    @ResponseBody
    public String InitJacketPage(){
        System.out.println("InitJacketPage...");
        try {
            JSONObject j=ips.getJacketPageElementsInJson();
            System.out.println(j.toJSONString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "InitJacketPage!";
    }
}
