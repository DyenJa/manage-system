package com.odm.managesystem.service.imp;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.odm.managesystem.dao.ConfigMapper;
import com.odm.managesystem.service.InitPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import util.PageElement;



@Service
public class InitPageServiceImp implements InitPageService {

    @Autowired
    private ConfigMapper cm;


    @Override
    public JSONObject getJacketPageElementsInJson() throws Exception {
        JSONObject object = new JSONObject();

        PageElement product_name= new PageElement();
        product_name.setName("产品名称");
        product_name.setType("1");
        product_name.setChoices(null);
        object.put("1",JSON.toJSONString(product_name));

        PageElement decoration= new PageElement();
        decoration.setName("装饰物");
        decoration.setType("3");
        decoration.setChoices(cm.getDecorations());
        object.put("2",JSON.toJSONString(decoration));

        return object;
    }
}
