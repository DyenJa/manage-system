package com.odm.managesystem.dao;

import com.odm.managesystem.entity.additionalItems.PoLogisticsInformation;
import com.odm.managesystem.entity.additionalItems.PoSpecialService;
import com.odm.managesystem.entity.additionalItems.PoTradingInformation;

import java.util.List;

public interface AdditionalItemsMapper {
    //#特殊服务
    public PoSpecialService getSpecial_serviceByCombinantID (int id) throws Exception;

    public boolean createNewSpecial_service (PoSpecialService ps) throws Exception;

    public boolean updateSpecial_service (PoSpecialService ps) throws Exception;

    //#物流信息
    public PoLogisticsInformation getlogistics_informationByCombinantID (int id) throws Exception;

    public boolean createNewlogistics_information (PoLogisticsInformation ps) throws Exception;

    public boolean updatelogistics_information (PoLogisticsInformation ps) throws Exception;

    //#交易信息
    public PoTradingInformation getTrading_informationByCombinantID (int id) throws Exception;

    public boolean createNewTrading_information (PoTradingInformation pl) throws Exception;

    public boolean updateTrading_information (PoTradingInformation pl) throws Exception;

}
