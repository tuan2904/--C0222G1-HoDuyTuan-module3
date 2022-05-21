use quan_ly_fu_ra_ma;
-- task 2
select * from nhan_vien nv where (ho_ten like 'k%') or (ho_ten like 't%') or (ho_ten like 'h%')
and char_length(ho_ten) <=15 ;
-- task 3
	select * from khach_hang 
    where timestampdiff(year,ngay_sinh,current_date())
    between 18 and 50 and dia_chi='Quảng Ngãi' or dia_chi='Đà Nẵng';
 
 -- task 4
select *,count(hd.ma_khach_hang) so_lan_dat from khach_hang kh
join loai_khach lk on lk.ma_loai_khach = kh. ma_loai_khach
join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
group by hd.ma_khach_hang
having lk.ten_loai_khach = 'Diamond'
order by so_lan_dat;
 
-- task 5
select kh.ma_khach_hang,kh.ho_ten,hd.ma_hop_dong,dv.ten_dich_vu,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,sum((dv.chi_phi_thue) + hdct.so_luong * dvdk.gia)
from khach_hang kh
join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem;

-- task 6
select dv.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.chi_phi_thue,ldv.ten_loai_dich_vu
from dich_vu dv
join loai_dich_vu ldv on ldv.ma_loai_dich_vu=dv.ma_loai_dich_vu
where dv.ma_dich_vu not in (select hd.ma_dich_vu FROM hop_dong hd
 WHERE quarter(hd.ngay_lam_hop_dong) = 1 and year(hd.ngay_lam_hop_dong)=2021);
 
 -- task 7
 select dv.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.so_nguoi_toi_da,dv.chi_phi_thue,ldv.ten_loai_dich_vu
 from dich_vu dv
 join hop_dong hd on hd.ma_dich_vu=dv.ma_dich_vu
 join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
 where dv.ma_dich_vu  in (select ma_dich_vu from hop_dong hd
 where (year(hd.ngay_lam_hop_dong)=2020)) and dv.ma_dich_vu not in (select ma_dich_vu from hop_dong hd
 where year(hd.ngay_lam_hop_dong) = 2021)
 group by dv.ma_dich_vu;
 
 -- task 8
select ho_ten from khach_hang kh
group by kh.ho_ten;

select ho_ten FROM khach_hang
union select ho_ten FROM khach_hang ;

select distinct ho_ten from khach_hang;

-- task 9
select  month(ngay_lam_hop_dong) thang,count(ma_khach_hang) so_lan_dat_phong from hop_dong
where year(ngay_lam_hop_dong) = 2021
group by thang
order by thang;
	
-- task 10
	select hd.ma_hop_dong,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,hd.tien_dat_coc,sum(coalesce(hdct.so_luong,0)) so_luong_dich_vu_di_kem from hop_dong hd
	left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong=hd.ma_hop_dong
	group by hd.ma_hop_dong;
    
    -- task 11
    select * from dich_vu_di_kem dvdk
    join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem=dvdk.ma_dich_vu_di_kem
    join hop_dong hd on hd.ma_hop_dong=hdct.ma_hop_dong
    join khach_hang kh on kh.ma_khach_hang=hd.ma_khach_hang
    join loai_khach lk on lk.ma_loai_khach=kh.ma_loai_khach
    where lk.ten_loai_khach='Diamond' and kh.dia_chi='Vinh' or kh.dia_chi='Quảng Ngãi';
	
    -- task 12
    select hd.ma_hop_dong,nv.ho_ten,kh.so_dien_thoai,dv.ten_dich_vu,sum(hdct.so_luong) so_luong_dich_vu_di_kem,hd.tien_dat_coc from hop_dong hd
	join nhan_vien nv on nv.ma_nhan_vien = hd.ma_nhan_vien
    join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
    join hop_dong_chi_tiet hdct on hdct.ma_hop_dong=hd.ma_hop_dong
    join dich_vu dv on dv.ma_dich_vu=hd.ma_dich_vu
    where dv.ma_dich_vu not in (select hd.ma_dich_vu from hop_dong hd where ma_dich_vu = (quarter(hd.ngay_lam_hop_dong) in (1,2)))
    and dv.ma_dich_vu in (select hd.ma_dich_vu from hop_dong hd where ma_dich_vu = quarter(hd.ngay_lam_hop_dong)= 3);
	
    -- task 13
    select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, dvdk.gia, sum(hdct.so_luong) as so_lan_dat FROM hop_dong_chi_tiet hdct
join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by ma_dich_vu_di_kem
having sum(hdct.so_luong) >= ( select sum(hdct.so_luong) from hop_dong_chi_tiet hdct group by ma_dich_vu_di_kem order by sum(hdct.so_luong) DESC LIMIT 1)
;

-- task 14
select hd.ma_hop_dong, ldv.ten_loai_dich_vu, dvdk.ten_dich_vu_di_kem, count(hdct.ma_dich_vu_di_kem) as so_lan_su_dung from hop_dong hd
 join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
 join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
 join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
 join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
 group by ten_loai_dich_vu
 having count(hdct.ma_dich_vu_di_kem) = 1;
 
 -- tasnk 15
 select nv.ma_nhan_vien, nv.ho_ten, td.ten_trinh_do, bp.ten_bo_phan, nv.so_dien_thoai, nv.dia_chi, count(hd.ma_nhan_vien) as so_luong_hop_dong
from nhan_vien nv
join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
join trinh_do td on nv.ma_trinh_do = td.ma_trinh_do
join bo_phan bp on nv.ma_bo_phan = bp.ma_bo_phan
where year(hd.ngay_lam_hop_dong) in (2020,2021)
group by nv.ma_nhan_vien
having so_luong_hop_dong <= 3;

-- tasnk 16
SET SQL_SAFE_UPDATES = 0;
DELETE FROM nhan_vien
WHERE nhan_vien.ma_nhan_vien not in (SELECT hop_dong.ma_nhan_vien FROM hop_dong WHERE year(ngay_lam_hop_dong) IN (2020, 2021)) ;

-- task 17
UPDATE khach_hang kh
SET kh.ma_loai_khach = 1
WHERE kh.ma_loai_khach = 2
AND kh.ma_khach_hang in
 ( SELECT hd.ma_khach_hang FROM hop_dong hd
JOIN dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
JOIN hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
JOIN dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
WHERE year(hd.ngay_lam_hop_dong) =2021
GROUP BY hd.ma_khach_hang
HAVING (sum(dv.chi_phi_thue + (hdct.so_luong * dvdk.gia)) > 1000) );

-- task 18
CREATE VIEW khach_hang_can_xoa as
 (SELECT hd.ma_khach_hang, hd.ngay_lam_hop_dong FROM hop_dong hd
 where year(ngay_lam_hop_dong) < (2021)
 group by hd.ma_khach_hang);
ALTER TABLE hop_dong DROP FOREIGN KEY hop_dong_ibfk_2;
alter table hop_dong add foreign key (ma_khach_hang) references khach_hang (ma_khach_hang)  on delete set null;
delete from khach_hang kh where kh.ma_khach_hang in (select ma_khach_hang from khach_hang_can_xoa);

-- task 19
create view cap_nhat_gia as
select dvdk.ma_dich_vu_di_kem, sum(hdct.so_luong) as so_lan_su_dung, dvdk.ten_dich_vu_di_kem, dvdk.gia from hop_dong_chi_tiet hdct
join hop_dong hd on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
where year(ngay_lam_hop_dong) = 2020
group by ma_dich_vu_di_kem
having so_lan_su_dung > 10;
 update dich_vu_di_kem dvdk
 set dvdk.gia = gia*2
 where dvdk.ma_dich_vu_di_kem in (select ma_dich_vu_di_kem from cap_nhat_gia);

-- task 20
select ma_nhan_vien, ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi
 from nhan_vien
 UNION all
  select ma_khach_hang, ho_ten , email, so_dien_thoai , ngay_sinh, dia_chi
 from khach_hang;