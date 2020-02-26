use  csv;

DROP TABLE IF EXISTS `combinant`;
create table combinant(
   id int not null AUTO_INCREMENT,		#组合ID
   cid int not null,					#服装ID
   sid int not null,					#特殊服务ID
   lid int not null,					#物流信息ID
   tid int not null,					#交易信息ID
   deleted int default 0,                #是否删除
    primary key(id)
) ENGINE=InnoDB  AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `product_desc`;
create table product_desc(
   id int not null AUTO_INCREMENT,		#自增主键
   cid int not null,					#产品的ID，来自combinant的主键
   picurl varchar(256),
    primary key(id)
) ENGINE=InnoDB  AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;