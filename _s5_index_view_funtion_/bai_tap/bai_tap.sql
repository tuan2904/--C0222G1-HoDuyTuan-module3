create database demo;
use demo;
 create table product(
id int,
product_code varchar(20),
product_name varchar(50),
product_price double,
product_amout int,
product_description varchar(50),
product_status varchar(50) 
 );
 
 insert into product
 value(1,'T01','Táo',20000,7,'ngon bổ rẻ','tươi');
  insert into product
 value(2,'C01','Chuối',9,10000,'Nhập khẩu','ngon');
  insert into product
 value(3,'X01','Xoài',14,250000,'Hàng nội địa','tươi ngon');
  insert into product
 value(4,'S01','Sầu riêng',14,160000,'Hàng ngoại','Thơm ngon');
 
 create unique index index_product on product(product_code);
 
 create index index_name_price on product(product_name, product_price);
 
 explain select * from product where product_name = "Táo";
 
 create view view_product as
 select product_code, product_name, product_price, product_status from product; 
 
 select * from view_product;
update view_product set product_name = "Sầu riêng"
where product_code = "Thơm";

select * from product;

drop view view_product;

delimiter $$
CREATE PROCEDURE s_product()
begin
select * from product;
end $$
delimiter ;
call s_product();

delimiter $$
create procedure product_add(in
product_code varchar(50),
product_name varchar(50),
product_price decimal,
product_description varchar(50),
product_status varchar(50))
begin
insert into product(product_code, product_name, product_price, product_description, product_status) 
values(product_code, product_name, product_price, product_description,product_status);
end$$
delimiter ;

call  product_add('G090', 'Cam',3665000, 'Ngọt ngon ', 'Còn hàng ');

delimiter $$
create procedure edit(in
ids int,
product_codes varchar(20),
product_names varchar(50),
product_prices double,
product_amouts int,
product_descriptions varchar(50),
product_statuss varchar(50) 
)
begin 
update product  p set p.id = id, p.product_code =product_codes , p.product_name= product_names, p.product_price = product_prices,
 p.product_amout = product_amouts, p.product_description = product_descriptions, p.product_status = product_statuss
where ids = p.id; 
end $$
delimiter ;
call edit (8,'P009', 'Ổi ',76888, 555, 'Ngon ', 'Đang về' );

delimiter $$
create procedure  p_delete(
ids int
)
begin 
delete from product p where p.id = ids;
end $$
delimiter ;
call p_delete (3);