use  csv;

DROP TABLE IF EXISTS `specialService`;
create table specialService(
	sid int not null AUTO_INCREMENT,
	clotheType varchar(256) not null,
    clotheId varchar(128) not null,
	supportCustom int default 0,
    supportPrivateDomainService int default 0,
    supportVisualProduce int default 0,
    supportOneStopService int default 0,
    primary key(sid)
) ENGINE=InnoDB  AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `logisticsInformation`;
create table logisticsInformation(
	lid int not null AUTO_INCREMENT,
	clotheId varchar(128) not null,
    length int,
    width int,
    height int,
    weight int,
    deliveryNum1 int,
    deliveryDays1 int,
    deliveryNum2 int,
    deliveryDays2 int,
    deliveryNum3 int,
    deliveryDays3 int,
    packedWay varchar(512),
    primary key(lid)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tradingInformation`;
create table tradingInformation(
	tid int not null AUTO_INCREMENT,
    clotheId varchar(128) not null,
    countUnit varchar(128) not null,
    saleWay int,
    minOrder1 int,
    price1 int,
	minOrder2 int,
    price2 int,
	minOrder3 int,
    price3 int,
    minOrder4 int,
    price4 int,
    availableQuantitySale int,
    sampleServiceSupport int default 0,
    primary key(tid)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;