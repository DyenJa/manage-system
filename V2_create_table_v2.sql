use  csv;

DROP TABLE IF EXISTS `jacket`;
create table jacket(
	id varchar(128) not null,
    directOrdered int not null,					#产品类型二选一，是否直接下单
    name varchar(128) not null,						#产品名称					直接填写
    keyWord1 varchar(256) ,						#产品关键词1				直接填写
	keyWord2 varchar(256),							#产品关键词2				直接填写
	keyWord3 varchar(256),							#产品关键词3				直接填写
    productGroup varchar(256) not null,			#分组						单选项				来自productGroup
    brand varchar(256) not null,					#品牌  						直接填写
    placket varchar(256) not null,					#门襟						单选项				来自placket
    length varchar(20) not null,					#长度						单选项				来自表length
    collar varchar(256) not null,					#领型						单选项				来自表collar
    decration  text,								#装饰物						多选项				来自decration
    detachPart text,								#可拆卸部位					多选项				来自表detach_part
    fabricType varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
    feature text,									#产品特性					多选项				来自表feature
    paddingMaterial varchar(256) not null,			#填充物材质					单选项				来自表material
    lining text,									#衬里材质					多选项				来自表material
    type varchar(256) not null,						#型号 						直接填写
    patternType varchar(256) not null,				#图案类型					单选项				来自表patternType
    producePlace  varchar(256) not null,			#原产地						单选项				来自表produce_place
    process varchar(256) not null,					#加工工艺					单选项				来自表produce_place
    season varchar(256) not null,					#季节						单选项，不需要额外表
    surfaceMaterial varchar(256) not null,			#表面材质					单选项				来自表material
	sleeveLength varchar(256) not null,			#袖长						单选项				来自表sleeve_length
    sleeveType varchar(256) not null,				#袖型						单选项				来自表sleeve_type
    style varchar(256) not null,					#款式						单选项				来自表style
    supplyType varchar(128) not null,				#供应类型					单选项				来自表supplyType
    craft varchar(128) not null,					#工艺						单选项				来自表craft
	thickness varchar(128) not null,				#厚薄						单选项				来自表weight
    weight varchar(128) not null,					#衣服重量					直接填写
    productType varchar(128) not null,				#产品类型					单选项				来自表	product_type
    customizeFeature text ,						#自定义						全部由用户自由填写
    color varchar(128) not null,					#颜色						多选项				来自表color
    size text,										#尺码，						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `dress`;
create table dress(
	id varchar(128) not null,
    directOrdered int not null,						#产品类型二选一，是否直接下单
    name varchar(128) not null,						#产品名称
    keyWord1 varchar(256) ,							#产品关键词1				直接填写
	keyWord2 varchar(256),							#产品关键词2				直接填写
	keyWord3 varchar(256),							#产品关键词3				直接填写
    productGroup varchar(256) not null,				#分组						单选项				来自productGroup
	builtInBra  varchar(3) ,						#是否内置胸罩				单选，选项固定，不需要额外表
	decration  text,								#装饰物						多选项				来自表decration
	qunLength varchar(20) not null,					#长度						单选项				来自表qunLength
    fashionElements varchar(256) ,					#流行元素					单选项				来自表fashion_elements
    collar varchar(256) not null,					#领型						单选项				来自表collar
    patternType varchar(256) not null,				#图案类型					单选项				来自表patternType
	season varchar(256) not null,					#季节						单选，选项固定，不需要额外表
    dressType varchar(256),							#裙型						单选项				来自于表：dress_type
    sleeveLength varchar(256) not null,				#袖长						单选项				sleeve_length
    sleeveType varchar(256) not null,				#袖型						单选项				来自表sleeve_type
    fengge	varchar(256) not null,					#风格						单选项				来自表fengge，用拼音命名是为了和“款式”区分
    waistline varchar(256) not null,				#腰线						单选项				来自表dress_waistline
    smear varchar(256) ,							#拖尾						单选项				来自表：smear
    supplyType varchar(128) not null,				#供应类型					单选项				来自表supplyType
    material varchar(256) not null,					#材质（某些裙子材质单一）	单选项				来自表material
	material2 text not null,						#材质（某些裙子材质多种）	多选项				来自表material
    fabricType text not null,						#面料类型，					多选项				来自表fabric_type
    craft varchar(128) not null,					#工艺（某些裙子工艺单一）	单选项				来自表craft
	craft2 text not null,							#工艺（某些裙子工艺多种）	多选项				来自表craft
	feature text,									#产品特性  					多选项				来自表feature
	producePlace  varchar(256) not null,			#原产地						单选项				来自表produce_place
	brand varchar(256) not null,					#品牌  						直接填写
	type varchar(256) not null,						#型号 						直接填写
	customizeFeature text ,							#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `jumpsuit`;
create table jumpsuit(
	id varchar(128) not null,
    directOrdered int not null,						#产品类型二选一，是否直接下单
    name varchar(128) not null,
    keyWord1 varchar(256) ,							#产品关键词1				直接填写
	keyWord2 varchar(256),							#产品关键词2				直接填写
	keyWord3 varchar(256),							#产品关键词3				直接填写
    productGroup varchar(256) not null,				#分组						单选项				来自productGroup
    brand varchar(256) not null,					#品牌  						直接填写
	decration  text,								#装饰物，					多选项				来自表decration
	fabricType varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
	feature text,									#产品特性 ，				多选项				来自表feature
    plateType varchar(20),							#板型						单选项				来自表plate_type
    length varchar(20) not null,					#长度						单选项				来自表length
	material varchar(256) not null,					#材质						单选项				来自表material
	model varchar(256),								#型号						直接填写
	patternType varchar(256) not null,				#图案类型					单选项				来自表patternType
	producePlace  varchar(256) not null,			#原产地						单选项				来自表produce_place
	season varchar(256) not null,					#季节  						单选，选项固定不需要额外表
    fengge	varchar(256) not null,					#风格						单选项				来自表fengge，用拼音命名是为了和“款式”区分
    supplyType varchar(128) not null,				#供应类型  					单选项				来自表supplyType
	craft varchar(128) not null,					#工艺  						单选项				来自表craft
    collar varchar(256) not null,					#领型						单选项				来自表collar
	customizeFeature text ,							#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `poloShirt`;
create table poloShirt(
	id varchar(128) not null,
    directOrdered int not null,						#产品类型二选一，是否直接下单
    name varchar(128) not null,
    keyWord1 varchar(256) ,							#产品关键词1				直接填写
	keyWord2 varchar(256),							#产品关键词2				直接填写
	keyWord3 varchar(256),							#产品关键词3				直接填写
    productGroup varchar(256) not null,				#分组						单选项				来自productGroup
    brand varchar(256) not null,					#品牌  						直接填写
    length varchar(20) not null,					#长度						单选项				来自表length
	fabricType varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
	fabricWeight varchar(30),						#面料克重					单选项				来自表fabric_weight
    feature text,									#产品特性  					多选项				来自表feature
	material varchar(256) not null,					#材质						单选项				来自表material
    type varchar(256) not null,						#型号 						直接填写
    patternType varchar(256) not null,				#图案类型					单选项				来自表patternType
	producePlace  varchar(256) not null,			#原产地						单选项				来自表produce_place
    printingMethod  varchar(256),					#印花方法					单选项				来自表printing_method
    sleeveLength varchar(256) not null,				#袖长						单选项				来自表sleeve_length
    fengge	varchar(256) not null,					#风格						单选项				来自表fengge，用拼音命名是为了和“款式”区分
	supplyType varchar(128) not null,				#供应类型					单选项				来自表supplyType
    craft varchar(128) not null,					#工艺						单选项
	customizeFeature text ,							#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `short`;
create table short(
	id varchar(128) not null,
    directOrdered int not null,						#产品类型二选一，是否直接下单
    name varchar(128) not null,
    keyWord1 varchar(256) ,							#产品关键词1				直接填写
	keyWord2 varchar(256),							#产品关键词2				直接填写
	keyWord3 varchar(256),							#产品关键词3				直接填写
    productGroup varchar(256) not null,				#分组						单选项				来自productGroup
    brand varchar(256) not null,					#品牌  						直接填写
	placket varchar(256) not null,					#门襟						单选项				来自placket
    decration  text,								#装饰物，					多选项
	fabricType varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
	feature text,									#产品特性					多选项				来自表feature
	plateType varchar(20),							#板型						单选项				来自表plate_type
	material varchar(256) not null,					#材质						单选项				来自表material
	type varchar(256) not null,						#型号 						直接填写
	pantStyle varchar(30) not null, 			   	#裤子款式					单选项				来自表pant_style
    style varchar(256) not null,					#款式						单选项				来自表style
	patternType varchar(256) not null,				#图案类型					单选项				来自表patternType
	producePlace  varchar(256) not null,			#原产地						单选项				来自表produce_place
	fengge	varchar(256) not null,					#风格						单选项				来自表：fengge，用拼音命名是为了和“款式”区分
	supplyType varchar(128) not null,				#供应类型					单选项				来自表supplyType
	craft varchar(128) not null,					#工艺						单选项				来自表craft
    waistType varchar(20) ,							#腰型						单选项				来自表waist_type
	customizeFeature text ,							#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `blousesAndShirts`;
create table blousesAndShirts(
	id varchar(128) not null,
    directOrdered int not null,						#产品类型二选一，是否直接下单
    name varchar(128) not null,
    keyWord1 varchar(256) ,							#产品关键词1				直接填写
	keyWord2 varchar(256),							#产品关键词2				直接填写
	keyWord3 varchar(256),							#产品关键词3				直接填写
    productGroup varchar(256) not null,				#分组						单选项				来自productGroup
	length varchar(20) not null,					#长度						单选项				来自表length
	collar varchar(256) not null,					#领型						单选项				来自表collar
    decration  text,								#装饰物						多选项
	patternType varchar(256) not null,				#图案类型					单选项				来自表patternType
    sleeveLength varchar(256) not null,				#袖长						单选项				来自表sleeve_length
    supplyType varchar(128) not null,				#供应类型					单选项				来自表supplyType
	material varchar(256) not null,					#材质						单选项				来自表material
	fabricType varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
    sleeveStyle varchar(256) not null,				#袖子款式					单选项				来自表sleeve_style
    upperClotheType  varchar(256),					#上衣类型					单选项				来自表upperClotheType
    craft varchar(128) not null,					#工艺						单选项				来自表craft
    feature text,									#产品特性					多选项				来自表feature
    season varchar(20) not null,					#季节						单选，但是选项固定，不需要额外表
	producePlace  varchar(256) not null,			#原产地						单选项				来自表produce_place
    brand varchar(256) not null,					#品牌  						直接填写
	type varchar(256) not null,						#型号 						直接填写
	fengge	varchar(256) not null,					#风格						单选项				来自表：fengge，用拼音命名是为了和“款式”区分
	customizeFeature text ,							#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `coat`;
create table coat(
	id varchar(128) not null,
    directOrdered int not null,						#产品类型二选一，是否直接下单
    name varchar(128) not null,
    keyWord1 varchar(256) ,							#产品关键词1				直接填写
	keyWord2 varchar(256),							#产品关键词2				直接填写
	keyWord3 varchar(256),							#产品关键词3				直接填写
    productGroup varchar(256) not null,				#分组						单选项				来自productGroup
	brand varchar(256) not null,					#品牌  						直接填写
	placket varchar(256) not null,					#门襟						单选项				来自placket
	length varchar(20) not null,					#长度						单选项				来自表length
    collar varchar(256) not null,					#领型						单选项				来自表collar
    decration  text,								#装饰物，					多选项 				来自表decration
	detachPart text,								#可拆卸部位	，				多选项				来自表detach_part
	fabricType varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
    feature text,									#产品特性 ，				多选项				来自表feature
    withHat varchar(3),								#是否带帽					只有两个选项yes，no，不需要额外表
	lining varchar(256),							#衬里材质					单选项				来自表material
    type varchar(256) not null,						#型号 						直接填写
	patternType varchar(256) not null,				#图案类型					单选项				来自表patternType
	producePlace  varchar(256) not null,			#原产地						单选项				来自表produce_place
	surfaceMaterial varchar(256) not null,			#表面材质					单选项				来自表material
	sleeveLength varchar(256) not null,				#袖长						单选项				来自表sleeve_length
	sleeveType varchar(256) not null,				#袖型     					单选项				来自表sleeve_type
	supplyType varchar(128) not null,				#供应类型					单选项				来自表supplyType
	craft varchar(128) not null,					#工艺 						单选项				来自表craft
    thickness varchar(128) not null,				#厚薄						单选项				来自表thicknes
	weight varchar(128) not null,					#衣服重量    				直接填写
    coatType varchar(128),							#外套类型					单选项				来自表coat_type
    fengge	varchar(256) not null,					#风格						单选项				来自于表：fengge，用拼音命名是为了和“款式”区分
	customizeFeature text ,							#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `pantAndTrousers`;
create table pantAndTrousers(
	id varchar(128) not null,
    directOrdered int not null,						#产品类型二选一，是否直接下单
    name varchar(128) not null,
    keyWord1 varchar(256) ,							#产品关键词1				直接填写
	keyWord2 varchar(256),							#产品关键词2				直接填写
	keyWord3 varchar(256),							#产品关键词3				直接填写
    productGroup varchar(256) not null,				#分组						单选项				来自productGroup
	brand varchar(256) not null,					#品牌  						直接填写
	placket varchar(256) not null,					#门襟						单选项				来自placket
	decration  text,								#装饰物，					多选项 				来自表decration
	fabricType varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
    feature text,									#产品特性 ，				多选项				来自表feature
	plateType varchar(20),							#板型						单选项				来自表plate_type
    frontStyle varchar(30),							#前幅风格					单选项				来自表front_style
    length varchar(20) not null,					#长度						单选项				来自表length
	material varchar(256) not null,					#材质						单选项				来自表material
	type varchar(256) not null,						#型号 						直接填写
	pantStyle varchar(30),						  	#裤子款式					单选项					来自表pant_style
	patternType varchar(256) not null,				#图案类型					单选项				来自表patternType
    producePlace  varchar(256) not null,			#原产地						单选项				来自表produce_place
    season	varchar(20),							#适用季节					单选项，但是选项单一，不需要额外的表
	supplyType varchar(128) not null,				#供应类型					单选项				来自表supplyType
	craft varchar(128) not null,					#工艺 						单选项				来自表craft
	waistType varchar(20) ,							#腰型						单选项				来自表waist_type
	fengge	varchar(256) not null,					#风格						单选项				来自于表：fengge，用拼音命名是为了和“款式”区分
	customizeFeature text ,							#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `Tshirt`;
create table Tshirt(
	id varchar(128) not null,
    directOrdered int not null,						#产品类型二选一，是否直接下单
    name varchar(128) not null,
    keyWord1 varchar(256) ,							#产品关键词1				直接填写
	keyWord2 varchar(256),							#产品关键词2				直接填写
	keyWord3 varchar(256),							#产品关键词3				直接填写
    productGroup varchar(256) not null,				#分组						单选项				来自productGroup
    avaliableInventoryNow int,						#现有数量					直接填写
    avaliableSizeNow text,							#现有尺码					多选项				来自表size
	brand varchar(256) not null,					#品牌  						直接填写
	length varchar(20) not null,					#长度						单选项				来自表length
	collar varchar(256) not null,					#领子						单选项				来自表collar
    decration  text,								#装饰物，					多选项
	fabricType text not null,						#面料类型，					多选项				来自表fabric_type
	fabricWeight varchar(30),						#面料克重					单选项				来自表fabric_weight
	feature text,									#产品特性 ，				多选项				来自表feature
    material varchar(256) not null,					#材质						单选项				来自表material
    type varchar(256) not null,						#型号 						直接填写
	patternType varchar(256) not null,				#图案类型					单选项				来自表patternType
	producePlace  varchar(256) not null,			#原产地						单选项				来自表produce_place
	sleeveLength varchar(256) not null,				#袖长						单选项				来自表sleeve_length
    sleeveStyle varchar(256) not null,				#袖子款式					单选项				来自表sleeve_style
    fengge	varchar(256) not null,					#风格						单选项				来自表：fengge，用拼音命名是为了和“款式”区分
	craft varchar(128) not null,					#工艺 						单选项				来自表craft
	customizeFeature text ,							#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tankTops`;
create table tankTops(
	id varchar(128) not null,
    directOrdered int not null,						#产品类型二选一，是否直接下单
    name varchar(128) not null,
    keyWord1 varchar(256) ,							#产品关键词1				直接填写
	keyWord2 varchar(256),							#产品关键词2				直接填写
	keyWord3 varchar(256),							#产品关键词3				直接填写
    productGroup varchar(256) not null,				#分组						单选项				来自productGroup
	brand varchar(256) not null,					#品牌  						直接填写
	length varchar(20) not null,					#长度						单选项				来自表length
    decration  text,								#装饰物，					多选项    			来自表decoration
	 fabricType varchar(256) not null,				#面料类型，					单选项				来自表 fabricType
	feature text,									#产品特性 ，				多选项				来自表feature
	material varchar(256) not null,					#材质						单选项				来自表material
    type varchar(256) not null,						#型号 						直接填写
 	patternType varchar(256) not null,				#图案类型					单选项				来自表patternType
  	producePlace  varchar(256) not null,			#原产地						单选项				来自表producePlace
	fengge	varchar(256) not null,					#风格						单选项				来自表：fengge，用拼音命名是为了和“款式”区分
 	supplyType varchar(128) not null,				#供应类型					单选项				来自表supplyType
	upperClotheType  varchar(256),					#上衣类型					单选项				来自表upperClotheType
	collar varchar(256) not null,					#领型						单选项				来自表collar
	customizeFeature text ,							#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `vestsAndWaistcoats`;
create table vestsAndWaistcoats(
	id varchar(128) not null,
    directOrdered int not null,						#产品类型二选一，是否直接下单
    name varchar(128) not null,
    keyWord1 varchar(256) ,							#产品关键词1				直接填写
	keyWord2 varchar(256),							#产品关键词2				直接填写
	keyWord3 varchar(256),							#产品关键词3				直接填写
    productGroup varchar(256) not null,				#分组						单选项				来自productGroup
	brand varchar(256) not null,					#品牌  						直接填写
    placket varchar(256) not null,					#门襟						单选项				来自placket
	length varchar(20) not null,					#长度						单选项				来自表length
    collar varchar(256) not null,					#领型						单选项				来自表collar
    decration  text,								#装饰物						多选项 				来自表decoration
    fabricType varchar(256) not null,				#面料类型，					单选项				来自表 fabricType
	feature text,									#产品特性 ，				多选项				来自表feature
	paddingMaterial varchar(256) not null,			#填充物材质					单选项				来自表material
	type varchar(256) not null,						#型号 						直接填写
 	patternType varchar(256) not null,				#图案类型					单选项				来自表patternType
   	producePlace  varchar(256) not null,			#原产地						单选项				来自表producePlace
 	surfaceMaterial varchar(256) not null,			#表面材质					单选项				来自表material
	fengge	varchar(256) not null,					#风格						单选项				来自于表：fengge，用拼音命名是为了和“款式”区分
  	supplyType varchar(128) not null,				#供应类型					单选项				来自表supplyType
    apply varchar(128),								#应用						单选项				来自表apply
	customizeFeature text ,							#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `skirt`;
create table skirt(
	id varchar(128) not null,
    directOrdered int not null,						#产品类型二选一，是否直接下单
    name varchar(128) not null,						#产品名称
    keyWord1 varchar(256) ,							#产品关键词1			直接填写
	keyWord2 varchar(256),							#产品关键词2			直接填写
	keyWord3 varchar(256),							#产品关键词3			直接填写
    productGroup varchar(256) not null,				#分组					单选项					来自productGroup
    decration  text,								#装饰物					多选项					来自表decration
	qunLength varchar(20) not null,					#裙长					单选项					来自表qunLength
    patternType varchar(256) not null,				#图案类型				单选项					来自表patternType
	fengge	varchar(256) not null,					#风格					单选项					来自表：fengge，用拼音命名是为了和“款式”区分
	waistline varchar(256) not null,				#腰线					单选项					来自表dress_waistline
	supplyType varchar(128) not null,				#供应类型 				单选项					来自表supplyType
	material varchar(256) not null,					#材质					单选项					来自表material
     fabricType varchar(256) not null,				#面料类型，				单选项					来自表 fabricType
    design varchar(256),							#设计					单选项					来自表design
	craft varchar(128) not null,					#工艺				 	单选项					来自表craft
 	feature text,									#产品特性  				多选项					来自表feature
 	producePlace  varchar(256) not null,			#原产地					单选项					来自表producePlace
	brand varchar(256) not null,					#品牌  					直接填写
	type varchar(256) not null,						#型号 					直接填写
	customizeFeature text ,							#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色					单选项					来自表color
    size text,										#尺码					多选项					来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;