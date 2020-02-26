package com.odm.managesystem.dao;

import com.odm.managesystem.entity.additionalItems.PoSpecialService;
import com.odm.managesystem.entity.combinant.PoCombinant;
import com.odm.managesystem.entity.combinant.PoProductDesc;

import java.util.List;

public interface CombinantMapper {
    //#组合实体
    public PoCombinant getCombinantByCombinantID (int id) throws Exception;

    public boolean createNewCombinant(PoCombinant ps) throws Exception;

    public boolean updateCombinant (PoCombinant ps) throws Exception;

    //#图片描述
    public List<PoProductDesc> getProduct_descPicturesByCombinantID (int id) throws Exception;

    public boolean createNewProduct_desc(PoProductDesc ps) throws Exception;

    public boolean removeProduct_desc (PoProductDesc ps) throws Exception;
}
