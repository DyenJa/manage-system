use  csv;

DROP TABLE IF EXISTS `clothesClass`;
create table clothesClass(
    ccName varchar(256) not null,			#服装类型名
    ccParentClassName varchar(256) not null,	#父级类型名，比如女夹克的父级类型是女装，半身裙的父类型是裙子
    primary key(ccName,ccParentClassName)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#产品分组
DROP TABLE IF EXISTS `productGroup`;
create table productGroup(
	groupName varchar(256),
    primary key(groupName)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#门襟
DROP TABLE IF EXISTS `placket`;
create table placket(
	placketName varchar(256),
    primary key(placketName)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#长度
DROP TABLE IF EXISTS `length`;
create table length(
	length varchar(256),
    primary key(length)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#领形
DROP TABLE IF EXISTS `collar`;
create table collar(
	collar varchar(256),
    primary key(collar)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#装饰物
DROP TABLE IF EXISTS `decoration`;
create table decoration(
	decoration varchar(256),
    primary key(decoration)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#可拆卸部位
DROP TABLE IF EXISTS `detachPart`;
create table detachPart(
	detachPart varchar(256),
    primary key(detachPart)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#面料类型
DROP TABLE IF EXISTS `fabricType`;
create table fabricType(
	fabricType varchar(256),
    primary key(fabricType)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#产品特性
DROP TABLE IF EXISTS `feature`;
create table feature(
	feature varchar(256),
    primary key(feature)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#材质
DROP TABLE IF EXISTS `material`;
create table material(
	material varchar(256),
    primary key(material)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#图案类型
DROP TABLE IF EXISTS `patternType`;
create table patternType(
	patternType varchar(256),
    primary key(patternType)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#原产地
DROP TABLE IF EXISTS `producePlace`;
create table producePlace(
	producePlace varchar(256),
    primary key(producePlace)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#加工工艺
DROP TABLE IF EXISTS `processCraft`;
create table processCraft(
	processCraft varchar(256),
    primary key(processCraft)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#表面材质
DROP TABLE IF EXISTS `surfaceMaterial`;
create table surfaceMaterial(
	surfaceMaterial varchar(256),
    primary key(surfaceMaterial)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#袖长
DROP TABLE IF EXISTS `sleeveLength`;
create table sleeveLength(
	sleeveLength varchar(256),
    primary key(sleeveLength)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#袖型
DROP TABLE IF EXISTS `sleeveType`;
create table sleeveType(
	sleeveType varchar(256),
    primary key(sleeveType)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#款式
DROP TABLE IF EXISTS `style`;
create table style(
	style varchar(256),
    primary key(style)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#供应类型
DROP TABLE IF EXISTS `supplyType`;
create table supplyType(
	supplyType varchar(256),
    primary key(supplyType)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#工艺
DROP TABLE IF EXISTS `craft`;
create table craft(
	craft varchar(256),
    primary key(craft)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#厚薄
DROP TABLE IF EXISTS `thickness`;
create table thickness(
	thickness varchar(256),
    primary key(thickness)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#产品类型
DROP TABLE IF EXISTS `productType`;
create table productType(
	productType varchar(256),
    primary key(productType)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#颜色
DROP TABLE IF EXISTS `color`;
create table color(
	color varchar(256),
    primary key(color)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#裙型
DROP TABLE IF EXISTS `dressType`;
create table dressType(
	dressType varchar(256),
    primary key(dressType)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#风格
DROP TABLE IF EXISTS `fengge`;
create table fengge(
	fengge varchar(256),
    primary key(fengge)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#裙腰线
DROP TABLE IF EXISTS `dressWaistline`;
create table dressWaistline(
	dressWaistline varchar(256),
    primary key(dressWaistline)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#流行元素
DROP TABLE IF EXISTS `fashionElements`;
create table fashionElements(
	fashionElements varchar(256),
    primary key(fashionElements)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#拖尾
DROP TABLE IF EXISTS `smear`;
create table smear(
	smear varchar(256),
    primary key(smear)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#板型
DROP TABLE IF EXISTS `plateType`;
create table plateType(
	plateType varchar(20),
    primary key(plateType)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#面料克重
DROP TABLE IF EXISTS `fabricWeight`;
create table fabricWeight(
	fabricWeight varchar(30),
    primary key(fabricWeight)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#印花方法
DROP TABLE IF EXISTS `printingMethod`;
create table printingMethod(
	printingMethod varchar(256),
    primary key(printingMethod)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#尺码
DROP TABLE IF EXISTS `size`;
create table size(
	size varchar(30),
    primary key(size)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#裤子款式
DROP TABLE IF EXISTS `pantStyle`;
create table pantStyle(
	pantStyle varchar(30),
    primary key(pantStyle)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#腰型
DROP TABLE IF EXISTS `waistType`;
create table waistType(
	waistType varchar(20),
    primary key(waistType)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#袖子款式
DROP TABLE IF EXISTS `sleeveStyle`;
create table sleeveStyle(
	sleeveStyle varchar(20),
    primary key(sleeveStyle)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#上衣类型
DROP TABLE IF EXISTS `upperClotheType`;
create table upperClotheType(
	upperClotheType varchar(20),
    primary key(upperClotheType)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#外套类型
DROP TABLE IF EXISTS `coatType`;
create table coatType(
	coatType varchar(128),
    primary key(coatType)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#前幅类型
DROP TABLE IF EXISTS `frontStyle`;
create table frontStyle(
	frontStyle varchar(30),
    primary key(frontStyle)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#应用
DROP TABLE IF EXISTS `apply`;
create table apply(
	apply varchar(128),
    primary key(apply)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#裙长
DROP TABLE IF EXISTS `qunLength`;
create table qunLength(
	qunLength varchar(128),
    primary key(qunLength)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#设计
DROP TABLE IF EXISTS `design`;
create table design(
	design varchar(128),
    primary key(design)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
