create database quan_ly_ban_hang;	
use quan_ly_ban_hang;
CREATE TABLE customer (
    c_id INT PRIMARY KEY,
    c_name VARCHAR(20),
    c_age INT
);
CREATE TABLE `order` (
    o_id INT PRIMARY KEY,
    c_id INT,
    o_date date,
    o_total_price DOUBLE,
    FOREIGN KEY (c_id)
        REFERENCES customer (c_id)
);
CREATE TABLE product (
    p_id INT PRIMARY KEY,
    p_name VARCHAR(50),
    p_price DOUBLE
);
CREATE TABLE order_detail (
    o_id INT,
    p_id INT,
    PRIMARY KEY (o_id , p_id),
    od_qty INT,
    FOREIGN KEY (o_id)
        REFERENCES `order`(o_id),
    FOREIGN KEY (p_id)
        REFERENCES product (p_id)
);-- 
insert into customer
value(1,'Minh Quan',10);
insert into customer
value(2,'Ngoc Oanh',20);
insert into customer
value(3,'Hong Ha',50);
SELECT 
    *
FROM
    customer;

insert into `order`
value(1,1,'2006-03-21',null);
insert into `order`
value(2,2,'2006-03-23',null);
insert into `order`
value(3,1,'2006-03-16',null);
select * from `order`;

insert into product
value(1,'May Giat',3);
insert into product
value(2,'Tu Lanh',5);
insert into product
value(3,'Dieu Hoa',7);
insert into product
value(4,'Quat',1);
insert into product
value(5,'Bep Dien',2);
select * from product;

insert into order_detail
value(1,1,3);
insert into order_detail
value(1,3,7);
insert into order_detail
value(1,4,2);
insert into order_detail
value(2,1,1);
insert into order_detail
value(3,1,8);
insert into order_detail
value(2,5,4);
insert into order_detail
value(2,3,3);
select * from order_detail;

select c.c_name ten_khach_hang_mua,o.c_id id_khach_hang,p.p_name ten_hang from `order` o
join customer c on c.c_id=o.c_id
join order_detail od on od.o_id=o.o_id
join product p on p.p_id=od.p_id;

select c_id,c_name from customer
where c_id not in (select o.c_id from `order` o);

select o.o_id,o.o_date,sum(od.od_qty*p.p_price) from order_detail od
join `order` o on o.o_id=od.o_id
join product p on p.p_id=od.p_id
group by o_id;