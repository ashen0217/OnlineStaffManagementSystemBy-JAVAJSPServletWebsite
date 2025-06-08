drop table resources;

 select * from resources;
 select * from transport;
 select * from staff;

alter table resources
drop column file_path;

delete from staff where idstaff='9118';
delete from resources where resid='9118';
delete from transport where tid='9118';
delete from inquiries where inqID='9118';

select * from staff; 
select * from resources;
select * from transport;
select * from inquiries;

use staffmanagement;

alter table resources drop column allocatedPerson;

insert into resources(allocatedPerson) values('kamal');

drop table transport;

create table transport(
tid int(20) not null primary key auto_increment,
busNo varchar(100),
conditionBus varchar(500),
driverNIC varchar(100),
noOFpassengers varchar(100),
startlocation varchar(100),
endlocation varchar(100)
);

create table inquiries(
inqID int primary key auto_increment,
name varchar(50) not null,
email varchar(100) not null,
inquiry varchar(100) not null,
inquirytype varchar(100) not null
);

create table resources(
resid int primary key auto_increment,
resname varchar(100) not null,
restype varchar(100) not null,
quantity varchar(100) not null,
availability varchar(100) not null,
upload_date varchar (100) not null,
description varchar(500) not null
);

create table staff(
idstaff int primary key auto_increment,
name varchar(45) not null,
email varchar(45) not null,
phone varchar(10) not null,
username varchar(45) not null,
password varchar(45) not null
);
delete from resources where resid='4';



