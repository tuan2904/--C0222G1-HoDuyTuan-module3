create database quan_ly_fu_ra_ma;
use quan_ly_fu_ra_ma;
create table fu_ra_ma(
ten_dich_vu varchar(50) primary key,
area double,
price double,
number_person int,
kieu_thue datetime
);
create table villa(
ten_dich_vu varchar(50),
tieu_chuan_phong varchar(5),
mo_ta_tien_nghi varchar(100),
dien_tich_ho_boi double,
so_tang int,
foreign key(ten_dich_vu) references fu_ra_ma(ten_dich_vu)
);

create table house(
ten_dich_vu varchar(50),
mo_ta_tien_nghi varchar(100),
so_tang int,
foreign key(ten_dich_vu) references fu_ra_ma(ten_dich_vu)
);
create table phong(
ten_dich_vu varchar(50),
dich_vu_free varchar(50),
foreign key(ten_dich_vu) references fu_ra_ma(ten_dich_vu)
);

create table dich_vu_cung_cap(
ten_dich_vu_cung_cap varchar(50) primary key
);
 create table dich_vu_di_kem(
 ten_dich_vu_cung_cap varchar(50),
 don_vi varchar(50),
 gia_tien double,
 foreign key(ten_dich_vu_cung_cap) references dich_vu_cung_cap(ten_dich_vu_cung_cap)
 );
 create table employee(
 id_nhan_vien int primary key unique,
 `name` varchar(50),
 birth_day date,
 id_car char(15),
 phone_number char(20) unique,
 mail varchar(50),
 trnih_do varchar(30),
 vị_tri varchar(20),	
 luong double
 );
 create table bo_phan_lam_viec(
id_nhan_vien int,
bo_phan varchar(50),
foreign key (id_nhan_vien) references employee(id_nhan_vien)
 );
create table loai_customer(
loai_khach varchar(50) primary key
); 

 create table customer(
 id_customer int,
 name varchar(50),
 birth_day date,
 gender varchar(30),
 id_car char(20),
 phone char(20),
 mail varchar(50),
 loai_khach varchar(50),
 dia_chi varchar(50),
 foreign key(loai_khach) references loai_customer(loai_khach)
 );