package com.odm.managesystem.service;

import com.alibaba.fastjson.JSONObject;

public interface InitPageService {
    public JSONObject getJacketPageElementsInJson() throws Exception;

    public JSONObject getPageElementsInJson(String classification) throws Exception;
}
