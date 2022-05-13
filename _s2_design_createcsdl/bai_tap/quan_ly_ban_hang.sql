create database quan_ly_ban_hang;	
use quan_ly_ban_hang;
create table customer(
c_id int primary key,
c_name varchar(20),
c_age int
);
create table `order`(
o_id int primary key,
c_id int,
c_date date,
o_totalprice double,
 foreign key (c_id) references customer(c_id)
);
create table product(
p_id int primary key ,
p_name varchar(50),
p_price double
);
create table order_detail(
o_id int  ,
p_id int , 
primary key (o_id,p_id),
od_qty int,
  foreign key (o_id) references `order`(o_id),
  foreign key (p_id) references product(p_id)
);



