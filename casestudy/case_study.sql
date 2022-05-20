use quan_ly_fu_ra_ma;
insert into vi_tri
value(1,'quan_ly');
insert into vi_tri
value(2,'nhan_vien');

insert into trinh_do
value(1,'trung cap');
insert into trinh_do
value(2,'cao dang');
insert into trinh_do
value(3,'dai hoc');
insert into trinh_do
value(4,'sau dai hoc');

insert into bo_phan
value(1,'sale-marketing');
insert into bo_phan
value(2,'hanh chinh');
insert into bo_phan
value(3,'phuc vu');
insert into bo_phan
value(4	,'quan ly');

insert into nhan_vien
value(1,'Nguyễn Văn An','1970-11-07',456231786,10000000,0901234121,'annguyen@gmail.com','295 Nguyễn Tất Thành, Đà Nẵng',1,3,1);
insert into nhan_vien
value(2,'Lê Văn Bình','1997-04-09',654231234,7000000,0934212314,'binhlv@gmail.com','22 Yên Bái, Đà Nẵng',1,2,2);
insert into nhan_vien
value(3,'Hồ Thị Yến','1995-12-12',999231723,14000000,0412352315,'thiyen@gmail.com','K234/11 Điện Biên Phủ, Gia Lai',1,3,2);
insert into nhan_vien
value(4,'Võ Công Toản','1980-04-04',123231365,17000000,0374443232,'toan0404@gmail.com','77 Hoàng Diệu, Quảng Trị',1,4,4);
insert into nhan_vien
value(5,'Nguyễn Bỉnh Phát','1999-12-09',454363232,6000000,0902341231,'phatphat@gmail.com','43 Yên Bái, Đà Nẵng',2,1,1);
insert into nhan_vien
value(6,'Khúc Nguyễn An Nghi','2000-11-08',964542311,7000000,0978653213,'annghi20@gmail.com','294 Nguyễn Tất Thành, Đà Nẵng',2,2,3);
insert into nhan_vien
value(7,'Nguyễn Hữu Hà','1993-01-01',534323231,8000000,0941234553,'nhh0101@gmail.com','4 Nguyễn Chí Thanh, Huế',2,3,2);
insert into nhan_vien
value(8,'Nguyễn Hà Đông','1989-09-03',234414123,9000000,0642123111,'donghanguyen@gmail.com','111 Hùng Vương, Hà Nội',2,4,4);
insert into nhan_vien
value(9,'Tòng Hoang','1982-09-03',256781231,6000000,0245144444,'hoangtong@gmail.com','213 Hàm Nghi, Đà Nẵng',2,4,4);
insert into nhan_vien
value(10,'Nguyễn Công Đạo','1994-01-08',755434343,8000000,0988767111,'nguyencongdao12@gmail.com','6 Hoà Khánh, Đồng Nai',2,3,2);

insert into loai_khach
value(1,'Diamond');
insert into loai_khach
value(2,'Palatinium');
insert into loai_khach
value(3,'Gold');
insert into loai_khach
value(4,'sliver');
insert into loai_khach
value(5,'Member');

insert into khach_hang
value(1,'Nguyen Thi Hao','1970-11-07',0,643431213,0945423362,'thihao07@gmail.com','Đà Nẵng',5);
insert into khach_hang
value(2,'Pham Xuan Dieu','1992-08-08',1,865342123,0954333333,'xuandieu92@gmail.com','Quảng Trị',3);
insert into khach_hang
value(3,'Truong Dinh Nghe','1990-02-27',1,488645199,0373213122,'nghenhan2702@gmail.com','Vinh',1);
insert into khach_hang
value(4,'Duong Van Quang','1981-07-08',1,543432111,0490039241,'duongquan@gmail.com','Đà Nẵng',1);
insert into khach_hang
value(5,'Hoang Tran Nhi Nhi','1995-12-09',0,795453345,0312345678,'nhinhi123@gmail.com','Gia Lai',4);
insert into khach_hang
value(6,'Ton Nu Moc Chau','2005-12-06',0,732434215,0988888844,'tonnuchau@gmail.com','Đà Nẵng',4);
insert into khach_hang
value(7,'Nguyen My Kim','1984-04-08',0,856453123,0912345698,'kimcuong84@gmail.com','Hồ Chí Minh',1);
insert into khach_hang
value(8,'Nguyen Thi Hao','1999-04-08',0,965656433,0763212345,'haohao99@gmail.com','Kon Tum',3);
insert into khach_hang
value(9,'Nguyen Thi Hao','1994-07-01',1,432341235,0643343433,'danhhai99@gmail.com','Quảng Ngãi',1);
insert into khach_hang
value(10,'Nguyen Thi Hao','1989-07-01',1,344343432,0987654321,'dactam@gmail.com','Đà Nẵng',2);

insert into kieu_thue
value(1,'year');
insert into kieu_thue
value(2,'month');
insert into kieu_thue
value(3,'day');
insert into kieu_thue
value(4,'hour');

insert into loai_dich_vu
value(1,'villa');
insert into loai_dich_vu
value(2,'House');
insert into loai_dich_vu
value(3,'Room');

insert into dich_vu
value(1,'Villa Beach Front',25000,10000000,10,3,1,'vip','Có hồ bơi',500,4);
insert into dich_vu
value(2,'House Princess 01',14000,5000000,7,2,2,'vip','Có thêm bếp nướng',null,3);
insert into dich_vu
value(3,'Room Twin 01',5000,1000000,2,4,3,'normal','Có tivi',null,null);
insert into dich_vu
value(4,'Villa No Beach Front',22000,9000000,8,3,1,'normal','Có hồ bơi',300,3);
insert into dich_vu
value(5,'House Princess 02',10000,4000000,5,3,2,'normal','Có thêm bếp nướng',null,2);
insert into dich_vu
value(6,'Room Twin 02',3000,900000,2,4,3,'normal','Có tivi',null,null);

insert into dich_vu_di_kem
value (1,'karaoke',10000,'giờ','tiện nghi,hiện đại');
insert into dich_vu_di_kem
value (2,'thuê xe máy',10000,'chiếc','hỏng 1 xe');
insert into dich_vu_di_kem
value (3,'thuê xe đạp',20000,'chiếc','tốt');
insert into dich_vu_di_kem
value (4,'buffet buổi sáng',15000,'suất','đầy đủ đồ ăn, tráng miệng');
insert into dich_vu_di_kem
value (5,'buffet buổi trưa',90000,'suất','đầy đủ đồ ăn, tráng miệng');
insert into dich_vu_di_kem
value (6,'buffet buổi tối',16000,'suất','đầy đủ đồ ăn, tráng miệng');

insert into hop_dong
value(1,'2020-12-08','2020-12-08',0,3,1,3);
insert into hop_dong
value(2,'2020-07-14','2020-07-21',200000,7,3,1);
insert into hop_dong
value(3,'2021-03-15','2021-03-17',50000,3,4,2);
insert into hop_dong
value(4,'2021-01-14','2021-01-18',100000,7,5,5);
insert into hop_dong
value(5,'2021-07-14','2021-07-15',0,7,2,6);
insert into hop_dong
value(6,'2021-06-01','2021-06-03',0,7,7,6);
insert into hop_dong
value(7,'2021-09-02','2021-09-05',100000,7,4,4);
insert into hop_dong
value(8,'2021-06-17','2021-06-18',150000,3,4,1);
insert into hop_dong
value(9,'2020-11-19','2020-11-19',0,3,4,3);
insert into hop_dong
value(10,'2021-04-12','2021-04-14',0,10,3,5);
insert into hop_dong
value(11,'2021-04-25','2021-04-25',0,2,2,1);
insert into hop_dong
value(12,'2021-05-25','2021-05-27',0,7,10,1);

insert into hop_dong_chi_tiet
value(1,2,4,5);
insert into hop_dong_chi_tiet
value(2,2,5,8);
insert into hop_dong_chi_tiet
value(3,2,6,15);
insert into hop_dong_chi_tiet
value(4,3,1,1);
insert into hop_dong_chi_tiet
value(5,3,2,11);
insert into hop_dong_chi_tiet
value(6,1,3,1);
insert into hop_dong_chi_tiet
value(7,1,2,2);
insert into hop_dong_chi_tiet
value(8,12,2,2);