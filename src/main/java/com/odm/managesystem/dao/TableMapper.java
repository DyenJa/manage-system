package com.odm.managesystem.dao;

import com.odm.managesystem.entity.table.*;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface TableMapper {
    // jacket
    List<PoJacket> getJackets() throws Exception;
    PoJacket getJacketById(String id) throws Exception;
    boolean createNewJacket(PoJacket poJacket) throws Exception;
    boolean deleteJacket(String id) throws Exception;

    // dress
    List<PoDress> getDresses() throws Exception;
    PoDress getDressById(String id) throws Exception;
    boolean createNewDress(PoDress poDress) throws Exception;
    boolean deleteDress(String id) throws Exception;

    // jumpsuit
    List<PoJumpsuit> getJumpsuits() throws Exception;
    PoJumpsuit getJumpsuitById(String id) throws Exception;
    boolean createNewJumpsuit(PoJumpsuit poJumpsuit) throws Exception;
    boolean deleteJumpsuit(String id) throws Exception;

    // polo_shirt
    List<PoPoloShirt> getPoloShirts() throws Exception;
    PoPoloShirt getPoloShirtById(String id) throws Exception;
    boolean createNewPoloShirt(PoPoloShirt poPoloShirt) throws Exception;
    boolean deletePoloShirt(String id) throws Exception;

    // short
    List<PoShort> getShorts() throws Exception;
    PoShort getShortById(String id) throws Exception;
    boolean createNewShort(PoShort poShort) throws Exception;
    boolean deleteShort(String id) throws Exception;

    // blouses_and_shirts
    List<PoBlousesAndShirts> getBlousesAndShirts() throws Exception;
    PoBlousesAndShirts getBlousesAndShirtsById(String id) throws Exception;
    boolean createNewBlousesAndShirts(PoBlousesAndShirts poBlousesAndShirts) throws Exception;
    boolean deleteBlousesAndShirts(String id) throws Exception;

    // coat
    List<PoCoat> getCoats() throws Exception;
    PoCoat getCoatById(String id) throws Exception;
    boolean createNewCoat(PoCoat poCoat) throws Exception;
    boolean deleteCoat(String id) throws Exception;

    // pant_and_trousers
    List<PoPantAndTrousers> getPantAndTrousers() throws Exception;
    PoPantAndTrousers getPantAndTrousersById(String id) throws Exception;
    boolean createNewPantAndTrousers(PoPantAndTrousers poPantAndTrousers) throws Exception;
    boolean deletePantAndTrousers(String id) throws Exception;

    // Tshirt
    List<PoTshirt> getTshirts() throws Exception;
    PoTshirt getTshirtById(String id) throws Exception;
    boolean createNewTshirt(PoTshirt poTshirt) throws Exception;
    boolean deleteTshirt(String id) throws Exception;

    // tankTops
    List<PoTanktops> getTanktops() throws Exception;
    PoTanktops getTanktopsById(String id) throws Exception;
    boolean createNewTanktops(PoTanktops poTanktops) throws Exception;
    boolean deleteTanktops(String id) throws Exception;

    // vests_and_waistcoats
    List<PoVestsAndWaistcoats> getVestsAndWaistcoats() throws Exception;
    PoVestsAndWaistcoats getVestsAndWaistcoatsById(String id) throws Exception;
    boolean createNewVestsAndWaistcoats(PoVestsAndWaistcoats poVestsAndWaistcoats) throws Exception;
    boolean deleteVestsAndWaistcoats(String id) throws Exception;

    // skirt
    List<PoSkirt> getSkirts() throws Exception;
    PoSkirt getSkirtById(String id) throws Exception;
    boolean createNewSkirt(PoSkirt poSkirt) throws Exception;
    boolean deleteSkirt(String id) throws Exception;
}

