package com.odm.managesystem.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Hello {
    @RequestMapping("/index")
    public String hello(){
        System.out.println("test");
        return "The ODM manage system project starts!";
    }
}
