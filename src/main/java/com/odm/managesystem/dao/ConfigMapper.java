package com.odm.managesystem.dao;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface ConfigMapper {

    //#产品类型的层级关系       clothes_class
    public List<String> getSubTypes(String cc_parent_class_name) throws Exception;

    public boolean createNewTypes(Map<String, Object> map) throws Exception;

    public boolean deleteTypes(List<String> cc_name) throws Exception;


    //#产品分组       product_group
    public List<String> getProductGroups () throws Exception;

    public boolean createNewProductGroup (List<String> group_name) throws Exception;

    public boolean deleteProductGroup (List<String>  group_name) throws Exception;

    //#门襟       placket
    public List<String> getPlackets () throws Exception;

    public boolean createNewPlacket (List<String> placket_name) throws Exception;

    public boolean deletePlacket (List<String>  placket_name) throws Exception;


    //##长度       length
    public List<String> getLengths() throws Exception;

    public boolean createNewLength (List<String> length) throws Exception;

    public boolean deleteLength (List<String>  length) throws Exception;

    //##领形       collar
    public List<String> getCollars () throws Exception;

    public boolean createNewCollar (List<String> collar) throws Exception;

    public boolean deleteCollar (List<String>  collar) throws Exception;

    //##装饰物       decoration
    public List<String> getDecorations () throws Exception;

    public boolean createNewDecoration (List<String> decoration) throws Exception;

    public boolean deleteDecoration (List<String>  decoration) throws Exception;

    //#可拆卸部位      detach_part
    public List<String> getDetachParts () throws Exception;

    public boolean createNewDetachPart(List<String> detach_part) throws Exception;

    public boolean deleteDetachPart(List<String>  detach_part) throws Exception;

    //#面料类型      fabric_type
    public List<String> getFabricTypes () throws Exception;

    public boolean createNewFabricType (List<String> fabric_type) throws Exception;

    public boolean deleteFabricType (List<String>  fabric_type) throws Exception;

    //##产品特性       feature
    public List<String> getFeatures() throws Exception;

    public boolean createNewFeature (List<String> feature) throws Exception;

    public boolean deleteFeature (List<String>  feature) throws Exception;

    //##材质      material
    public List<String> getMaterials () throws Exception;

    public boolean createNewMaterial (List<String> material) throws Exception;

    public boolean deleteMaterial (List<String>  material) throws Exception;

    //##图案类型      pattern_type
    public List<String> getPatternTypes () throws Exception;

    public boolean createNewPatternType (List<String> pattern_type) throws Exception;

    public boolean deletePatternType (List<String>  pattern_type) throws Exception;

    //##原产地       produce_place
    public List<String> getProducePlaces () throws Exception;

    public boolean createNewProducePlace (List<String> placket_name) throws Exception;

    public boolean deleteProducePlace (List<String>  placket_name) throws Exception;

    //#加工工艺      process_craft
    public List<String> getProcessCrafts () throws Exception;

    public boolean createNewProcessCraft (List<String> process_craft) throws Exception;

    public boolean deleteProcessCraft (List<String>  process_craft) throws Exception;


    //#袖长      sleeve_length
    public List<String> getSleeveLengths () throws Exception;

    public boolean createNewSleeveLength (List<String> sleeve_length) throws Exception;

    public boolean deleteSleeveLength  (List<String>  sleeve_length) throws Exception;

    //#袖型       sleeve_type
    public List<String> getSleeveTypes() throws Exception;

    public boolean createNewSleeveType (List<String> sleeve_type) throws Exception;

    public boolean deleteSleeveType(List<String>  sleeve_type) throws Exception;

    //#款式       style
    public List<String> getStyles () throws Exception;

    public boolean createStyle (List<String> style) throws Exception;

    public boolean deleteStyle (List<String>  style) throws Exception;

    //#供应类型      supply_type
    public List<String> getSupplyTypes () throws Exception;

    public boolean createNewSupplyType (List<String> supply_type) throws Exception;

    public boolean deleteSupplyType (List<String>  supply_type) throws Exception;

    //#工艺       craft
    public List<String> getCrafts () throws Exception;

    public boolean createNewCraft (List<String> craft) throws Exception;

    public boolean deleteCraft (List<String>  craft) throws Exception;

    //#厚薄       thickness
    public List<String> getThickness() throws Exception;

    public boolean createNewThickness (List<String> thickness) throws Exception;

    public boolean deleteThickness (List<String>  thickness) throws Exception;

    //#产品类型       product_type
    public List<String> getProductTypes () throws Exception;

    public boolean createProductType (List<String> product_type) throws Exception;

    public boolean deleteProductType (List<String>  product_type) throws Exception;

    //#颜色           color
    public List<String> getColors () throws Exception;

    public boolean createColor (List<String> color) throws Exception;

    public boolean deleteColor (List<String>  color) throws Exception;

    //#裙型           dress_type
    public List<String> getDressTypes () throws Exception;

    public boolean createDressType (List<String> dress_type) throws Exception;

    public boolean deleteDressType(List<String>  dress_type) throws Exception;

    //#风格           fengge
    public List<String> getFengges () throws Exception;

    public boolean createNewfengge (List<String> fengge) throws Exception;

    public boolean deleteFengge (List<String>  fengge) throws Exception;

    //#裙腰线          dress_waistline
    public List<String> getDressWaistlines () throws Exception;

    public boolean createNewDressWaistline (List<String> dress_waistline) throws Exception;

    public boolean deleteDressWaistline (List<String>  dress_waistline) throws Exception;

    //#流行元素         fashion_elements
    public List<String> getFashionElements () throws Exception;

    public boolean createNewFashionElements (List<String> fashion_elements) throws Exception;

    public boolean deleteFashionElements (List<String>  fashion_elements) throws Exception;

    //#拖尾           smear
    public List<String> getSmears () throws Exception;

    public boolean createNewSmear (List<String> smear) throws Exception;

    public boolean deleteSmear (List<String>  smear) throws Exception;

    //#板型           plate_type
    public List<String> getPlateTypes () throws Exception;

    public boolean createNewPlateType (List<String> plate_type) throws Exception;

    public boolean deletePlateType(List<String>  plate_type) throws Exception;

    //#面料克重         fabric_weight
    public List<String> getFabricWeights () throws Exception;

    public boolean createNewFabricWeight (List<String> fabric_weight) throws Exception;

    public boolean deleteFabricWeight (List<String>  fabric_weight) throws Exception;


    //#印花方法         printing_method
    public List<String> getPrintingMethods () throws Exception;

    public boolean createNewPrintingMethod (List<String> printing_method) throws Exception;

    public boolean deletePrintingMethod (List<String>  printing_method) throws Exception;

    //#尺码               size
    public List<String> getSizes () throws Exception;

    public boolean createNewSize (List<String> size) throws Exception;

    public boolean deleteSize (List<String>  size) throws Exception;

    //#裤子款式             pant_style
    public List<String> getPantStyles () throws Exception;

    public boolean createNewPantStyle (List<String> pant_style) throws Exception;

    public boolean deletePantStyle(List<String>  pant_style) throws Exception;

    //#腰型               waist_type
    public List<String> getWaistTypes () throws Exception;

    public boolean createNewWaistType (List<String> waist_type) throws Exception;

    public boolean deleteWaistType (List<String>  waist_type) throws Exception;

    //#袖子款式             sleeve_style
    public List<String> getSleeveStyles () throws Exception;

    public boolean createSleeveStyle (List<String> sleeve_style) throws Exception;

    public boolean deleteSleeveStyle(List<String>  sleeve_style) throws Exception;

    //#上衣类型
    public List<String> getUpperClotheTypes () throws Exception;

    public boolean createNewUpperClotheType(List<String> upper_clothe_type) throws Exception;

    public boolean deleteUpperClotheType (List<String>  upper_clothe_type) throws Exception;


    //#外套类型
    public List<String> getCoatTypes () throws Exception;

    public boolean createNewCoatType (List<String> coat_type) throws Exception;

    public boolean deleteCoatType(List<String>  coat_type) throws Exception;


    //#前幅类型
    public List<String> getFrontStyles () throws Exception;

    public boolean createNewFrontStyle (List<String> front_style) throws Exception;

    public boolean deleteFrontStyle(List<String>  front_style) throws Exception;

    //#应用           apply
    public List<String> getApplys () throws Exception;

    public boolean createNewApply(List<String> apply) throws Exception;

    public boolean deleteApply(List<String>  apply) throws Exception;

    //#裙长              qun_length
    public List<String> getQunLengths() throws Exception;

    public boolean createNewQunLength (List<String> qun_length) throws Exception;

    public boolean deleteQunLength(List<String>  qun_length) throws Exception;

    //#设计               design
    public List<String> getDesigns() throws Exception;

    public boolean createNewDesign (List<String> design) throws Exception;

    public boolean deleteDesign(List<String>  design) throws Exception;


}
