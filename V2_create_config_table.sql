use  csv;

DROP TABLE IF EXISTS `clothes_class`;
create table clothes_class(
    cc_name varchar(256) not null,			#服装类型名
    cc_parent_class_name varchar(256) not null,	#父级类型名，比如女夹克的父级类型是女装，半身裙的父类型是裙子
    primary key(cc_name,cc_parent_class_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#产品分组
DROP TABLE IF EXISTS `product_group`;
create table product_group(
	group_name varchar(256),
    primary key(group_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#门襟
DROP TABLE IF EXISTS `placket`;
create table placket(
	placket_name varchar(256),
    primary key(placket_name)
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
DROP TABLE IF EXISTS `detach_part`;
create table detach_part(
	detach_part varchar(256),
    primary key(detach_part)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#面料类型
DROP TABLE IF EXISTS `fabric_type`;
create table fabric_type(
	fabric_type varchar(256),
    primary key(fabric_type)
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
DROP TABLE IF EXISTS `pattern_type`;
create table pattern_type(
	pattern_type varchar(256),
    primary key(pattern_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#原产地
DROP TABLE IF EXISTS `produce_place`;
create table produce_place(
	produce_place varchar(256),
    primary key(produce_place)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#加工工艺
DROP TABLE IF EXISTS `process_craft`;
create table process_craft(
	process_craft varchar(256),
    primary key(process_craft)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#表面材质
DROP TABLE IF EXISTS `surface_material`;
create table surface_material(
	surface_material varchar(256),
    primary key(surface_material)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#袖长
DROP TABLE IF EXISTS `sleeve_length`;
create table sleeve_length(
	sleeve_length varchar(256),
    primary key(sleeve_length)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#袖型
DROP TABLE IF EXISTS `sleeve_type`;
create table sleeve_type(
	sleeve_type varchar(256),
    primary key(sleeve_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#款式
DROP TABLE IF EXISTS `style`;
create table style(
	style varchar(256),
    primary key(style)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#供应类型
DROP TABLE IF EXISTS `supply_type`;
create table supply_type(
	supply_type varchar(256),
    primary key(supply_type)
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
DROP TABLE IF EXISTS `product_type`;
create table product_type(
	product_type varchar(256),
    primary key(product_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#颜色
DROP TABLE IF EXISTS `color`;
create table color(
	color varchar(256),
    primary key(color)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#裙型
DROP TABLE IF EXISTS `dress_type`;
create table dress_type(
	dress_type varchar(256),
    primary key(dress_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#风格
DROP TABLE IF EXISTS `fengge`;
create table fengge(
	fengge varchar(256),
    primary key(fengge)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#裙腰线
DROP TABLE IF EXISTS `dress_waistline`;
create table dress_waistline(
	dress_waistline varchar(256),
    primary key(dress_waistline)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#流行元素
DROP TABLE IF EXISTS `fashion_elements`;
create table fashion_elements(
	fashion_elements varchar(256),
    primary key(fashion_elements)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#拖尾
DROP TABLE IF EXISTS `smear`;
create table smear(
	smear varchar(256),
    primary key(smear)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#板型
DROP TABLE IF EXISTS `plate_type`;
create table plate_type(
	plate_type varchar(20),
    primary key(plate_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#面料克重
DROP TABLE IF EXISTS `fabric_weight`;
create table fabric_weight(
	fabric_weight varchar(30),
    primary key(fabric_weight)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#印花方法
DROP TABLE IF EXISTS `printing_method`;
create table printing_method(
	printing_method varchar(256),
    primary key(printing_method)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#尺码
DROP TABLE IF EXISTS `size`;
create table size(
	size varchar(30),
    primary key(size)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#裤子款式
DROP TABLE IF EXISTS `pant_style`;
create table pant_style(
	pant_style varchar(30),
    primary key(pant_style)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#腰型
DROP TABLE IF EXISTS `waist_type`;
create table waist_type(
	waist_type varchar(20),
    primary key(waist_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#袖子款式
DROP TABLE IF EXISTS `sleeve_style`;
create table sleeve_style(
	sleeve_style varchar(20),
    primary key(sleeve_style)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#上衣类型
DROP TABLE IF EXISTS `upper_clothe_type`;
create table upper_clothe_type(
	upper_clothe_type varchar(20),
    primary key(upper_clothe_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#外套类型
DROP TABLE IF EXISTS `coat_type`;
create table coat_type(
	coat_type varchar(128),
    primary key(coat_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#前幅类型
DROP TABLE IF EXISTS `front_style`;
create table front_style(
	front_style varchar(30),
    primary key(front_style)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#应用
DROP TABLE IF EXISTS `apply`;
create table apply(
	apply varchar(128),
    primary key(apply)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#裙长
DROP TABLE IF EXISTS `qun_length`;
create table qun_length(
	qun_length varchar(128),
    primary key(qun_length)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#设计
DROP TABLE IF EXISTS `design`;
create table design(
	design varchar(128),
    primary key(design)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
