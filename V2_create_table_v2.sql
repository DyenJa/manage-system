use  csv;

DROP TABLE IF EXISTS `jacket`;
create table jacket(
	id varchar(128) not null,
    direct_ordered int not null,					#产品类型二选一，是否直接下单
    name varchar(128) not null,						#产品名称					直接填写				
    key_word1 varchar(256) ,						#产品关键词1				直接填写
	key_word2 varchar(256),							#产品关键词2				直接填写
	key_word3 varchar(256),							#产品关键词3				直接填写
    product_group varchar(256) not null,			#分组						单选项				来自product_group
    brand varchar(256) not null,					#品牌  						直接填写
    placket varchar(256) not null,					#门襟						单选项				来自placket
    length varchar(20) not null,					#长度						单选项				来自表length
    collar varchar(256) not null,					#领型						单选项				来自表collar 
    decration  text,								#装饰物						多选项				来自decration
    detach_part text,								#可拆卸部位					多选项				来自表detach_part
    fabric_type varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
    feature text,									#产品特性					多选项				来自表feature
    padding_material varchar(256) not null,			#填充物材质					单选项				来自表material
    lining text,									#衬里材质					多选项				来自表material
    type varchar(256) not null,						#型号 						直接填写
    pattern_type varchar(256) not null,				#图案类型					单选项				来自表pattern_type	
    produce_place  varchar(256) not null,			#原产地						单选项				来自表produce_place
    process varchar(256) not null,					#加工工艺					单选项				来自表produce_place
    season varchar(256) not null,					#季节						单选项，不需要额外表
    surface_material varchar(256) not null,			#表面材质					单选项				来自表material
	sleeve_length varchar(256) not null,			#袖长						单选项				来自表sleeve_length	
    sleeve_type varchar(256) not null,				#袖型						单选项				来自表sleeve_type
    style varchar(256) not null,					#款式						单选项				来自表style	
    supply_type varchar(128) not null,				#供应类型					单选项				来自表supply_type	
    craft varchar(128) not null,					#工艺						单选项				来自表craft	
	thickness varchar(128) not null,				#厚薄						单选项				来自表weight	
    weight varchar(128) not null,					#衣服重量					直接填写	
    product_type varchar(128) not null,				#产品类型					单选项				来自表	product_type
    customize_feature text ,						#自定义						全部由用户自由填写
    color varchar(128) not null,					#颜色						多选项				来自表color
    size text,										#尺码，						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `dress`;
create table dress(
	id varchar(128) not null,
    direct_ordered int not null,					#产品类型二选一，是否直接下单
    name varchar(128) not null,						#产品名称
    key_word1 varchar(256) ,						#产品关键词1				直接填写
	key_word2 varchar(256),							#产品关键词2				直接填写
	key_word3 varchar(256),							#产品关键词3				直接填写						
    product_group varchar(256) not null,			#分组						单选项				来自product_group
	built_in_bra  varchar(3) ,						#是否内置胸罩				单选，选项固定，不需要额外表
	decration  text,								#装饰物						多选项				来自表decration
	qun_length varchar(20) not null,				#长度						单选项				来自表qun_length
    fashion_elements varchar(256) ,					#流行元素					单选项				来自表fashion_elements
    collar varchar(256) not null,					#领型						单选项				来自表collar 
    pattern_type varchar(256) not null,				#图案类型					单选项				来自表pattern_type	
	season varchar(256) not null,					#季节						单选，选项固定，不需要额外表
    dress_type varchar(256),						#裙型						单选项				来自于表：dress_type
    sleeve_length varchar(256) not null,			#袖长						单选项				sleeve_length
    sleeve_type varchar(256) not null,				#袖型						单选项				来自表sleeve_type
    fengge	varchar(256) not null,					#风格						单选项				来自表fengge，用拼音命名是为了和“款式”区分
    waistline varchar(256) not null,				#腰线						单选项				来自表dress_waistline
    smear varchar(256) ,							#拖尾						单选项				来自表：smear
    supply_type varchar(128) not null,				#供应类型					单选项				来自表supply_type
    material varchar(256) not null,					#材质（某些裙子材质单一）	单选项				来自表material
	material2 text not null,						#材质（某些裙子材质多种）	多选项				来自表material
    fabric_type text not null,						#面料类型，					多选项				来自表fabric_type
    craft varchar(128) not null,					#工艺（某些裙子工艺单一）	单选项				来自表craft
	craft2 text not null,							#工艺（某些裙子工艺多种）	多选项				来自表craft
	feature text,									#产品特性  					多选项				来自表feature
	produce_place  varchar(256) not null,			#原产地						单选项				来自表produce_place
	brand varchar(256) not null,					#品牌  						直接填写
	type varchar(256) not null,						#型号 						直接填写
	customize_feature text ,						#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `jumpsuit`;
create table jumpsuit(
	id varchar(128) not null,
    direct_ordered int not null,			#产品类型二选一，是否直接下单
    name varchar(128) not null,
    key_word1 varchar(256) ,						#产品关键词1				直接填写
	key_word2 varchar(256),							#产品关键词2				直接填写
	key_word3 varchar(256),							#产品关键词3				直接填写
    product_group varchar(256) not null,			#分组						单选项				来自product_group
    brand varchar(256) not null,					#品牌  						直接填写
	decration  text,								#装饰物，					多选项				来自表decration
	fabric_type varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
	feature text,									#产品特性 ，				多选项				来自表feature
    plate_type varchar(20),							#板型						单选项				来自表plate_type
    length varchar(20) not null,					#长度						单选项				来自表length
	material varchar(256) not null,					#材质						单选项				来自表material   
	model varchar(256),								#型号						直接填写
	pattern_type varchar(256) not null,				#图案类型					单选项				来自表pattern_type		 
	produce_place  varchar(256) not null,			#原产地						单选项				来自表produce_place 
	season varchar(256) not null,					#季节  						单选，选项固定不需要额外表
    fengge	varchar(256) not null,					#风格						单选项				来自表fengge，用拼音命名是为了和“款式”区分  
    supply_type varchar(128) not null,				#供应类型  					单选项				来自表supply_type
	craft varchar(128) not null,					#工艺  						单选项				来自表craft
    collar varchar(256) not null,					#领型						单选项				来自表collar 
	customize_feature text ,						#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `polo_shirt`;
create table polo_shirt(
	id varchar(128) not null,
    direct_ordered int not null,			#产品类型二选一，是否直接下单
    name varchar(128) not null,
    key_word1 varchar(256) ,						#产品关键词1				直接填写
	key_word2 varchar(256),							#产品关键词2				直接填写
	key_word3 varchar(256),							#产品关键词3				直接填写
    product_group varchar(256) not null,			#分组						单选项				来自product_group
    brand varchar(256) not null,					#品牌  						直接填写
    length varchar(20) not null,					#长度						单选项				来自表length
	fabric_type varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
	fabric_weight varchar(30),						#面料克重					单选项				来自表fabric_weight
    feature text,									#产品特性  					多选项				来自表feature 
	material varchar(256) not null,					#材质						单选项				来自表material
    type varchar(256) not null,						#型号 						直接填写
    pattern_type varchar(256) not null,				#图案类型					单选项				来自表pattern_type	
	produce_place  varchar(256) not null,			#原产地						单选项				来自表produce_place
    printing_method  varchar(256),					#印花方法					单选项				来自表printing_method	
    sleeve_length varchar(256) not null,			#袖长						单选项				来自表sleeve_length
    fengge	varchar(256) not null,					#风格						单选项				来自表fengge，用拼音命名是为了和“款式”区分  
	supply_type varchar(128) not null,				#供应类型					单选项				来自表supply_type
    craft varchar(128) not null,					#工艺						单选项
	customize_feature text ,						#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `short`;
create table short(
	id varchar(128) not null,
    direct_ordered int not null,			#产品类型二选一，是否直接下单
    name varchar(128) not null,
    key_word1 varchar(256) ,						#产品关键词1				直接填写
	key_word2 varchar(256),							#产品关键词2				直接填写
	key_word3 varchar(256),							#产品关键词3				直接填写
    product_group varchar(256) not null,			#分组						单选项				来自product_group
    brand varchar(256) not null,					#品牌  						直接填写
	placket varchar(256) not null,					#门襟						单选项				来自placket
    decration  text,								#装饰物，					多选项
	fabric_type varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
	feature text,									#产品特性					多选项				来自表feature
	plate_type varchar(20),							#板型						单选项				来自表plate_type
	material varchar(256) not null,					#材质						单选项				来自表material
	type varchar(256) not null,						#型号 						直接填写
	pant_style varchar(30) not null, 			   	#裤子款式					单选项				来自表pant_style
    style varchar(256) not null,					#款式						单选项				来自表style
	pattern_type varchar(256) not null,				#图案类型					单选项				来自表pattern_type	
	produce_place  varchar(256) not null,			#原产地						单选项				来自表produce_place
	fengge	varchar(256) not null,					#风格						单选项				来自表：fengge，用拼音命名是为了和“款式”区分
	supply_type varchar(128) not null,				#供应类型					单选项				来自表supply_type
	craft varchar(128) not null,					#工艺						单选项				来自表craft
    waist_type varchar(20) ,						#腰型						单选项				来自表waist_type
	customize_feature text ,						#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `blouses_and_shirts`;
create table blouses_and_shirts(
	id varchar(128) not null,
    direct_ordered int not null,					#产品类型二选一，是否直接下单
    name varchar(128) not null,
    key_word1 varchar(256) ,						#产品关键词1				直接填写
	key_word2 varchar(256),							#产品关键词2				直接填写
	key_word3 varchar(256),							#产品关键词3				直接填写
    product_group varchar(256) not null,			#分组						单选项				来自product_group
	length varchar(20) not null,					#长度						单选项				来自表length
	collar varchar(256) not null,					#领型						单选项				来自表collar 
    decration  text,								#装饰物						多选项 
	pattern_type varchar(256) not null,				#图案类型					单选项				来自表pattern_type	 
    sleeve_length varchar(256) not null,			#袖长						单选项				来自表sleeve_length 
    supply_type varchar(128) not null,				#供应类型					单选项				来自表supply_type
	material varchar(256) not null,					#材质						单选项				来自表material
	fabric_type varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
    sleeve_style varchar(256) not null,				#袖子款式					单选项				来自表sleeve_style
    upper_clothe_type  varchar(256),				#上衣类型					单选项				来自表upper_clothe_type
    craft varchar(128) not null,					#工艺						单选项				来自表craft
    feature text,									#产品特性					多选项				来自表feature
    season varchar(20) not null,					#季节						单选，但是选项固定，不需要额外表
	produce_place  varchar(256) not null,			#原产地						单选项				来自表produce_place
    brand varchar(256) not null,					#品牌  						直接填写
	type varchar(256) not null,						#型号 						直接填写
	fengge	varchar(256) not null,					#风格						单选项				来自表：fengge，用拼音命名是为了和“款式”区分
	customize_feature text ,						#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `coat`;
create table coat(
	id varchar(128) not null,
    direct_ordered int not null,					#产品类型二选一，是否直接下单
    name varchar(128) not null,
    key_word1 varchar(256) ,						#产品关键词1				直接填写
	key_word2 varchar(256),							#产品关键词2				直接填写
	key_word3 varchar(256),							#产品关键词3				直接填写
    product_group varchar(256) not null,			#分组						单选项				来自product_group
	brand varchar(256) not null,					#品牌  						直接填写
	placket varchar(256) not null,					#门襟						单选项				来自placket
	length varchar(20) not null,					#长度						单选项				来自表length
    collar varchar(256) not null,					#领型						单选项				来自表collar 
    decration  text,								#装饰物，					多选项 				来自表decration
	detach_part text,								#可拆卸部位	，				多选项				来自表detach_part
	fabric_type varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
    feature text,									#产品特性 ，				多选项				来自表feature
    with_hat varchar(3),							#是否带帽					只有两个选项yes，no，不需要额外表
	lining varchar(256),							#衬里材质					单选项				来自表material
    type varchar(256) not null,						#型号 						直接填写  
	pattern_type varchar(256) not null,				#图案类型					单选项				来自表pattern_type 
	produce_place  varchar(256) not null,			#原产地						单选项				来自表produce_place
	surface_material varchar(256) not null,			#表面材质					单选项				来自表material
	sleeve_length varchar(256) not null,			#袖长						单选项				来自表sleeve_length 	 
	sleeve_type varchar(256) not null,				#袖型     					单选项				来自表sleeve_type
	supply_type varchar(128) not null,				#供应类型					单选项				来自表supply_type
	craft varchar(128) not null,					#工艺 						单选项				来自表craft
    thickness varchar(128) not null,				#厚薄						单选项				来自表thicknes     
	weight varchar(128) not null,					#衣服重量    				直接填写
    coat_type varchar(128),							#外套类型					单选项				来自表coat_type
    fengge	varchar(256) not null,					#风格						单选项				来自于表：fengge，用拼音命名是为了和“款式”区分     
	customize_feature text ,						#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `pant_and_trousers`;
create table pant_and_trousers(
	id varchar(128) not null,
    direct_ordered int not null,					#产品类型二选一，是否直接下单
    name varchar(128) not null,
    key_word1 varchar(256) ,						#产品关键词1				直接填写
	key_word2 varchar(256),							#产品关键词2				直接填写
	key_word3 varchar(256),							#产品关键词3				直接填写
    product_group varchar(256) not null,			#分组						单选项				来自product_group
	brand varchar(256) not null,					#品牌  						直接填写
	placket varchar(256) not null,					#门襟						单选项				来自placket
	decration  text,								#装饰物，					多选项 				来自表decration
	fabric_type varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
    feature text,									#产品特性 ，				多选项				来自表feature
	plate_type varchar(20),							#板型						单选项				来自表plate_type
    front_style varchar(30),						#前幅风格					单选项				来自表front_style
    length varchar(20) not null,					#长度						单选项				来自表length
	material varchar(256) not null,					#材质						单选项				来自表material
	type varchar(256) not null,						#型号 						直接填写  
	pant_style varchar(30),						  		#裤子款式					单选项					来自表pant_style
	pattern_type varchar(256) not null,				#图案类型					单选项				来自表pattern_type 
    produce_place  varchar(256) not null,			#原产地						单选项				来自表produce_place
    season	varchar(20),							#适用季节					单选项，但是选项单一，不需要额外的表
	supply_type varchar(128) not null,				#供应类型					单选项				来自表supply_type
	craft varchar(128) not null,					#工艺 						单选项				来自表craft
	waist_type varchar(20) ,						#腰型						单选项				来自表waist_type
	fengge	varchar(256) not null,					#风格						单选项				来自于表：fengge，用拼音命名是为了和“款式”区分    
	customize_feature text ,						#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `Tshirt`;
create table Tshirt(
	id varchar(128) not null,
    direct_ordered int not null,					#产品类型二选一，是否直接下单
    name varchar(128) not null,
    key_word1 varchar(256) ,						#产品关键词1				直接填写
	key_word2 varchar(256),							#产品关键词2				直接填写
	key_word3 varchar(256),							#产品关键词3				直接填写
    product_group varchar(256) not null,			#分组						单选项				来自product_group
    avaliable_inventory_now int,					#现有数量					直接填写
    avaliable_size_now text,						#现有尺码					多选项				来自表size
	brand varchar(256) not null,					#品牌  						直接填写
	length varchar(20) not null,					#长度						单选项				来自表length    
	collar varchar(256) not null,					#领子						单选项				来自表collar 
    decration  text,								#装饰物，					多选项 
	fabric_type text not null,						#面料类型，					多选项				来自表fabric_type
	fabric_weight varchar(30),						#面料克重					单选项				来自表fabric_weight
	feature text,									#产品特性 ，				多选项				来自表feature
    material varchar(256) not null,					#材质						单选项				来自表material
    type varchar(256) not null,						#型号 						直接填写  
	pattern_type varchar(256) not null,				#图案类型					单选项				来自表pattern_type 
	produce_place  varchar(256) not null,			#原产地						单选项				来自表produce_place
	sleeve_length varchar(256) not null,			#袖长						单选项				来自表sleeve_length 	 
    sleeve_style varchar(256) not null,				#袖子款式					单选项				来自表sleeve_style
    fengge	varchar(256) not null,					#风格						单选项				来自表：fengge，用拼音命名是为了和“款式”区分   
	craft varchar(128) not null,					#工艺 						单选项				来自表craft
	customize_feature text ,						#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tankTops`;
create table tankTops(
	id varchar(128) not null,
    direct_ordered int not null,			#产品类型二选一，是否直接下单
    name varchar(128) not null,
    key_word1 varchar(256) ,						#产品关键词1				直接填写
	key_word2 varchar(256),							#产品关键词2				直接填写
	key_word3 varchar(256),							#产品关键词3				直接填写
    product_group varchar(256) not null,			#分组						单选项				来自product_group
	brand varchar(256) not null,					#品牌  						直接填写
	length varchar(20) not null,					#长度						单选项				来自表length
    decration  text,								#装饰物，					多选项    			来自表decoration
	fabric_type varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
	feature text,									#产品特性 ，				多选项				来自表feature   
	material varchar(256) not null,					#材质						单选项				来自表material
    type varchar(256) not null,						#型号 						直接填写      
 	pattern_type varchar(256) not null,				#图案类型					单选项				来自表pattern_type    
  	produce_place  varchar(256) not null,			#原产地						单选项				来自表produce_place  
	fengge	varchar(256) not null,					#风格						单选项				来自表：fengge，用拼音命名是为了和“款式”区分      
 	supply_type varchar(128) not null,				#供应类型					单选项				来自表supply_type   
	upper_clothe_type  varchar(256),				#上衣类型					单选项				来自表upper_clothe_type
	collar varchar(256) not null,					#领型						单选项				来自表collar 
	customize_feature text ,						#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `vests_and_waistcoats`;
create table vests_and_waistcoats(
	id varchar(128) not null,
    direct_ordered int not null,					#产品类型二选一，是否直接下单
    name varchar(128) not null,
    key_word1 varchar(256) ,						#产品关键词1				直接填写
	key_word2 varchar(256),							#产品关键词2				直接填写
	key_word3 varchar(256),							#产品关键词3				直接填写
    product_group varchar(256) not null,			#分组						单选项				来自product_group
	brand varchar(256) not null,					#品牌  						直接填写
    placket varchar(256) not null,					#门襟						单选项				来自placket
	length varchar(20) not null,					#长度						单选项				来自表length
    collar varchar(256) not null,					#领型						单选项				来自表collar 
    decration  text,								#装饰物						多选项 				来自表decoration
   fabric_type varchar(256) not null,				#面料类型，					单选项				来自表fabric_type
	feature text,									#产品特性 ，				多选项				来自表feature
	padding_material varchar(256) not null,			#填充物材质					单选项				来自表material
	type varchar(256) not null,						#型号 						直接填写   
 	pattern_type varchar(256) not null,				#图案类型					单选项				来自表pattern_type 
   	produce_place  varchar(256) not null,			#原产地						单选项				来自表produce_place
 	surface_material varchar(256) not null,			#表面材质					单选项				来自表material   
	fengge	varchar(256) not null,					#风格						单选项				来自于表：fengge，用拼音命名是为了和“款式”区分      
  	supply_type varchar(128) not null,				#供应类型					单选项				来自表supply_type
    apply varchar(128),								#应用						单选项				来自表apply
	customize_feature text ,						#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色						单选项				来自表color
    size text,										#尺码						多选项				来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `skirt`;
create table skirt(
	id varchar(128) not null,
    direct_ordered int not null,					#产品类型二选一，是否直接下单
    name varchar(128) not null,						#产品名称
    key_word1 varchar(256) ,						#产品关键词1			直接填写
	key_word2 varchar(256),							#产品关键词2			直接填写
	key_word3 varchar(256),							#产品关键词3			直接填写					
    product_group varchar(256) not null,			#分组					单选项					来自product_group
    decration  text,								#装饰物					多选项					来自表decration
	qun_length varchar(20) not null,				#裙长					单选项					来自表qun_length
    pattern_type varchar(256) not null,				#图案类型				单选项					来自表pattern_type	   
	fengge	varchar(256) not null,					#风格					单选项					来自表：fengge，用拼音命名是为了和“款式”区分 
	waistline varchar(256) not null,				#腰线					单选项					来自表dress_waistline 
	supply_type varchar(128) not null,				#供应类型 				单选项					来自表supply_type
	material varchar(256) not null,					#材质					单选项					来自表material
    fabric_type varchar(256) not null,				#面料类型，				单选项					来自表fabric_type
    design varchar(256),							#设计					单选项					来自表design
	craft varchar(128) not null,					#工艺				 	单选项					来自表craft
 	feature text,									#产品特性  				多选项					来自表feature   
 	produce_place  varchar(256) not null,			#原产地					单选项					来自表produce_place
	brand varchar(256) not null,					#品牌  					直接填写   
	type varchar(256) not null,						#型号 					直接填写   
	customize_feature text ,						#自定义属性，全部由用户自由填写
	color varchar(128) not null,					#颜色					单选项					来自表color
    size text,										#尺码					多选项					来自表size
    primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;