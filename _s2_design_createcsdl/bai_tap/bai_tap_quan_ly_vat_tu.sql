create database quan_ly_vat_tu;
use quan_ly_vat_tu;
create table phieu_xuat(
so_px int primary key,
ngay_xuat date
);
create table vat_tu(
ma_vt int primary key,
ten_vt varchar(50)
 );
 create table chi_tiet_phieu_xuat(
so_px int,
ma_vat_tu int,
don_gia_xuat double,
so_luong_xuat int,
primary key(so_px,ma_vat_tu),
foreign key (so_px)references phieu_xuat(so_px),
foreign key(ma_vat_tu)references vat_tu(ma_vt)
);
 create table phieu_nhap(
 so_pn int primary key,
 ngay_nhap date
 );
 create table chi_tiet_phieu_nhap(
ma_vat_tu int,
so_pn int,
don_gia_nhap double,
so_luong_nhap int,
primary key (so_pn,ma_vat_tu),
foreign key (so_pn)references phieu_nhap(so_pn),
foreign key(ma_vat_tu)references vat_tu(ma_vt)
 );
 create table nha_cung_cap (
 ma_ncc int primary key,
 ten_ncc varchar(50),
 dia_chi varchar(50)
 );
  create table don_dh(
 so_dh int,
 ngay_dh date,
 ma_ncc int,
 primary key(so_dh),
 foreign key (ma_ncc) references nha_cung_cap(ma_ncc)
 );
create table chi_tiet_don_hang(
ma_vt int,
so_dh int,
primary key (ma_vt,so_dh),
foreign key(ma_vt)references vat_tu(ma_vt),
foreign key(so_dh)references don_dh(so_dh)
);
create table phone(
ma_nha_cung_cap int,
phone_number char(20) primary key,
foreign key(ma_nha_cung_cap)references nha_cung_cap(ma_ncc)
);
