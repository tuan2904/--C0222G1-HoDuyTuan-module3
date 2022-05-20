use quan_ly_fu_ra_ma;
-- task 2
select ho_ten from nhan_vien where ho_ten like '% % T%' or ho_ten like '% % H%' or ho_ten like '% % K%' ;
-- task 3
select * from khach_hang
where (year(now())-year(ngay_sinh) >=18 and year(now())-year(ngay_sinh) <=50) 
and (dia_chi='Quảng Trị' or dia_chi='Đà Nẵng');
-- task 4
select k.ma_khach_hang,k.ho_ten,hd.ma_dich_vu from khach_hang k
join hop_dong hd on hd.ma_khach_hang=k.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach=k.ma_loai_khach
group by hd.ma_dich_vu;
-- task 5
select k.ma_khach_hang,k.ho_ten,lk.ten_loai_khach,hd.ma_hop_dong,dv.ten_dich_vu,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,sum(dv.chi_phi_thue + hdct.so_luong)*dvdk.gia from khach_hang k
join loai_khach lk on lk.ma_loai_khach=k.ma_loai_khach
join hop_dong hd on hd.ma_khach_hang= k.ma_khach_hang
join dich_vu dv on dv.ma_dich_vu= hd.ma_dich_vu
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong=hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem=hdct.ma_dich_vu_di_kem
group by ma_hop_dong;
-- task 6
select dv.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.chi_phi_thue,ldv.ten_loai_dich_vu from dich_vu dv
join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
where dv.ma_dich_vu not in (select hd.ma_dich_vu from hop_dong hd where quarter(hd.ngay_lam_hop_dong=1) and year(hd.ngay_lam_hop_dong) =2021);
-- task 7
select dv.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.so_nguoi_toi_da,dv.chi_phi_thue,ldv.ten_loai_dich_vu from dich_vu dv
left join loai_dich_vu ldv on ldv.ma_loai_dich_vu=dv.ma_dich_vu
where dv.ma_dich_vu in(select hd.ma_dich_vu from hop_dong hd where year(hd.ngay_lam_hop_dong) =2020 and year(hd.ngay_lam_hop_dong) != 2021);

-- task8
select ho_ten from khach_hang
union
select ho_ten from khach_hang;
select distinct ho_ten from khach_hang;

-- task 9
SELECT month(ngay_lam_hop_dong) thang_co_khach_hang_dayt, COUNT(month(ngay_lam_hop_dong)) so_lan_khach_hang_dat_trong_thang from hop_dong where year(ngay_lam_hop_dong) = 2021
group by month(ngay_lam_hop_dong);

-- task 10
select hdct.ma_hop_dong,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,hd.tien_dat_coc,sum(hdct.so_luong) from hop_dong_chi_tiet hdct
join hop_dong hd on hd.ma_hop_dong=hdct.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by hdct.ma_hop_dong;

-- task 11
select dvdk.ma_dich_vu_di_kem,dvdk.ten_dich_vu_di_kem from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem=dvdk.ma_dich_vu_di_kem
join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
join khach_hang kh on kh.ma_khach_hang=hd.ma_khach_hang
join loai_khach lh on lh.ma_loai_khach=kh.ma_loai_khach where kh.dia_chi='Quảng Ngãi' or dia_chi='Vinh' and lh.ten_loai_khach='Diamond';

-- task 12
select hd.ma_hop_dong,nv.ho_ten,kh.ho_ten,kh.so_dien_thoai,dv.ten_dich_vu,sum(hdct.so_luong),hd.tien_dat_coc from hop_dong hd
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join nhan_vien nv on nv.ma_nhan_vien=hd.ma_nhan_vien
join khach_hang kh on kh.ma_khach_hang=hd.ma_khach_hang
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
where hd.ma_hop_dong not in 
(select hd.ma_hop_dong from hop_dong hd where quarter(hd.ngay_lam_hop_dong) not in (1,2) and quarter(hd.ngay_lam_hop_dong = 3))
group by hd.ma_hop_dong;

-- task 13
 select dvdk.ma_dich_vu_di_kem,dvdk.ten_dich_vu_di_kem,hdct.so_luong from dich_vu_di_kem dvdk
 join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
 join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
 join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang 
 where hdct.so_luong = (select max(so_luong) from hop_dong_chi_tiet);
	
-- task 14
select hd.ma_hop_dong,ldv.ten_loai_dich_vu,dvdk.ten_dich_vu_di_kem,count(dvdk.ma_dich_vu_di_kem) so_lan_su_dung from hop_dong hd
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu 
join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
where dvdk.ma_dich_vu_di_kem = (select min(dvdk.ma_dich_vu_di_kem) from dich_vu_di_kem)
group by dvdk.ma_dich_vu_di_kem;

-- task 15
select nv.ma_nhan_vien,nv.ho_ten,td.ten_trinh_do,bp.ten_bo_phan,nv.so_dien_thoai,nv.dia_chi,count(hd.ma_nhan_vien) so_luong_hop_dong from nhan_vien nv
join trinh_do td on td.ma_trinh_do = nv.ma_trinh_do
join bo_phan bp on bp.ma_bo_phan = nv.ma_bo_phan
join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
group by hd.ma_nhan_vien
having so_luong_hop_dong <= 3;
