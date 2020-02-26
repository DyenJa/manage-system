package com.odm.managesystem.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

public class JacketHandler {
    @RequestMapping("/InitJacketPage")
    @ResponseBody
    public String InitJacketPage(){

        return "The ODM manage system project starts!";
    }
}
