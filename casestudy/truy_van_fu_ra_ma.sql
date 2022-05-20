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
    and dv.ma_dich_vu in (select hd.ma_dich_vu from hop_dong hd where ma_dich_vu = quarter(hd.ngay_lam_hop_dong)= 3)
	
    -- task 13
    