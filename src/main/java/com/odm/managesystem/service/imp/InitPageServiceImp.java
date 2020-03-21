package com.odm.managesystem.service.imp;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.odm.managesystem.dao.ConfigMapper;
import com.odm.managesystem.service.InitPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import util.PageElement;

import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.List;


@Service
public class InitPageServiceImp implements InitPageService {

    @Autowired
    private ConfigMapper cm;


    @Override
    public JSONObject getJacketPageElementsInJson() throws Exception {
        String [] arrtibutes=null;
        String path = "com.odm.managesystem.entity.table.PoJacket";
        try {
            Class clazz = Class.forName(path);

            Field[] fields = clazz.getDeclaredFields();
            arrtibutes=new String [fields.length-2];
            for (int i = 2; i < fields.length; i++) {
                arrtibutes[i-2]=fields[i].getName();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        JSONObject object = init(arrtibutes);

        return object;
    }

    @Override
    public JSONObject getPageElementsInJson(String classification) throws Exception {
        String [] arrtibutes=null;
        String path = "com.odm.managesystem.entity.table.Po"+classification;
        try {
            Class clazz = Class.forName(path);

            Field[] fields = clazz.getDeclaredFields();
            arrtibutes=new String [fields.length-2];
            for (int i = 2; i < fields.length; i++) {
                arrtibutes[i-2]=fields[i].getName();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        JSONObject object = init(arrtibutes);

        return object;
    }

    private JSONObject init(String[] attributes) throws Exception {

        JSONObject object = new JSONObject();

        if(attributes==null)
            return object;

        PageElement a;
        List<PageElement> l=new LinkedList<>();
        for (int i = 0; i < attributes.length; i++) {
            a=new PageElement();
            switch (attributes[i]){
                case "name":
                    a.setAttribute("产品名称");
                    a.setName(attributes[i]);
                    a.setChoices(new LinkedList<>());
                    a.setType("write");
                    break;
                case "keyWord1":
                case "keyWord2":
                case "keyWord3":
                    a.setAttribute("产品关键词");
                    a.setName(attributes[i]);
                    a.setChoices(new LinkedList<>());
                    a.setType("write_multiple");
                    break;
                case "productGroup":
                    a.setAttribute("产品分组");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getProductGroups());
                    a.setType("select");
                    break;
                case "brand":
                    a.setAttribute("品牌");
                    a.setName(attributes[i]);
                    a.setChoices(new LinkedList<>());
                    a.setType("write");
                    break;
                case "placket":
                    a.setAttribute("门襟");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getPlackets());
                    a.setType("select");
                    break;
                case "length":
                    a.setAttribute("长度");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getLengths());
                    a.setType("select");
                    break;
                case "collar":
                    a.setAttribute("领型");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getCollars());
                    a.setType("select");
                    break;
                case "decration":
                    a.setAttribute("装饰物");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getDecorations());
                    a.setType("checkbox");
                    break;
                case "detachPart":
                    a.setAttribute("可拆卸部位");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getDetachParts());
                    a.setType("checkbox");
                    break;
                case "fabricType":
                    a.setAttribute("面料类型");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getFabricTypes());
                    a.setType("select");
                    break;
                case "feature":
                    a.setAttribute("产品特性");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getFeatures());
                    a.setType("checkbox");
                    break;
                case "paddingMaterial":
                    a.setAttribute("填充物材质");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getMaterials());
                    a.setType("select");
                    break;
                case "lining":
                    a.setAttribute("衬里材质");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getMaterials());
                    a.setType("checkbox");
                    break;
                case "type":
                    a.setAttribute("型号");
                    a.setName(attributes[i]);
                    a.setChoices(new LinkedList<>());
                    a.setType("write");
                    break;
                case "patternType":
                    a.setAttribute("图案类型");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getPatternTypes());
                    a.setType("select");
                    break;
                case "producePlace":
                    a.setAttribute("原产地");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getProducePlaces());
                    a.setType("select");
                    break;
                case "process":
                    a.setAttribute("加工工艺");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getProcessCrafts());
                    a.setType("select");
                    break;
                case "season":
                    a.setAttribute("季节");
                    a.setName(attributes[i]);
                    a.setChoices(new LinkedList<>());
                    a.setType("select");
                    break;
                case "surfaceMaterial":
                    a.setAttribute("表面材质");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getMaterials());
                    a.setType("select");
                    break;
                case "sleeveLength":
                    a.setAttribute("袖长");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getSleeveLengths());
                    a.setType("select");
                    break;
                case "sleeveType":
                    a.setAttribute("袖型");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getSleeveStyles());
                    a.setType("select");
                    break;
                case "style":
                    a.setAttribute("款式");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getStyles());
                    a.setType("select");
                    break;
                case "supplyType":
                    a.setAttribute("供应类型");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getSupplyTypes());
                    a.setType("select");
                    break;
                case "craft":
                    a.setAttribute("工艺");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getCrafts());
                    a.setType("select");
                    break;
                case "thickness":
                    a.setAttribute("厚薄");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getThickness());
                    a.setType("select");
                    break;
                case "weight":
                    a.setAttribute("衣服重量");
                    a.setName(attributes[i]);
                    a.setChoices(new LinkedList<>());
                    a.setType("write");
                    break;
                case "productType":
                    a.setAttribute("产品类型");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getProductTypes());
                    a.setType("select");
                    break;
                case "customizeFeature":
                    a.setAttribute("自定义属性");
                    a.setName(attributes[i]);
                    a.setChoices(new LinkedList<>());
                    a.setType("write_multiple");
                    break;
                case "color":
                    a.setAttribute("颜色");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getColors());
                    a.setType("checkbox");
                    break;
                case "size":
                    a.setAttribute("尺码");
                    a.setName(attributes[i]);
                    a.setChoices(cm.getSizes());
                    a.setType("checkbox");
                    break;

            }
            System.out.println(JSON.toJSONString(a));
            l.add(a);
        }
        object.put("attributes", JSON.toJSONString(l));
        return object;
    }
}
