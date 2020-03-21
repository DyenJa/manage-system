package com.odm.managesystem.controller;

import com.alibaba.fastjson.JSONObject;
import com.odm.managesystem.service.InitPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;


@RestController
public class InitPageHandler {

    @Autowired
    private InitPageService initPageService;

    @RequestMapping("/InitJacketPage")
    @ResponseBody
    public String InitJacketPage(){
        System.out.println("InitJacketPage...");
        JSONObject attributeInJson=null;
        try {
            attributeInJson=initPageService.getJacketPageElementsInJson();
            System.out.println(attributeInJson.toJSONString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return attributeInJson.toJSONString();
    }

    @RequestMapping("/InitPage")
    @ResponseBody
    public String InitPage(HttpServletRequest request){
        System.out.println("InitPage...");
        String classification=request.getParameter("classification");
        JSONObject attributeInJson=null;
        try {
            attributeInJson=initPageService.getPageElementsInJson(classification);
            System.out.println(attributeInJson.toJSONString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return attributeInJson.toJSONString();
    }

}
