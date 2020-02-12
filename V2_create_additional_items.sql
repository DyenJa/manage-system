use  csv;

DROP TABLE IF EXISTS `special_service`;
create table special_service(
	sid int not null AUTO_INCREMENT,
	clothe_type varchar(256) not null,
    clothe_id varchar(128) not null,
	support_custom int default 0,
    support_private_domain_service int default 0,
    support_visual_produce int default 0,
    support_one_stop_service int default 0,
    primary key(sid)
) ENGINE=InnoDB  AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `logistics_information`;
create table logistics_information(
	lid int not null AUTO_INCREMENT,
	clothe_id varchar(128) not null,
    length int,
    width int,
    height int, 
    weight int,
    delivery_num1 int,
    delivery_days1 int,
    delivery_num2 int,
    delivery_days2 int,
    delivery_num3 int,
    delivery_days3 int,
    packed_way varchar(512),
    primary key(lid)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `trading_information`;
create table trading_information(
	tid int not null AUTO_INCREMENT,
    clothe_id varchar(128) not null,
    count_unit varchar(128) not null,
    sale_way int,
    min_order1 int,
    price1 int,
	min_order2 int,
    price2 int,
	min_order3 int,
    price3 int,
    min_order4 int,
    price4 int,
    available_quantity_sale int,
    sample_service_support int default 0,
    primary key(tid)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;