use quan_ly_fu_ra_ma;
select ho_ten from nhan_vien where ho_ten like '% % T%' or ho_ten like '% % H%' or ho_ten like '% % K%' ;

select * from khach_hang
where (year(now())-year(ngay_sinh) >=18 and year(now())-year(ngay_sinh) <=50) 
and (dia_chi='Quảng Trị' or dia_chi='Đà Nẵng');

select k.ma_khach_hang,k.ho_ten,hd.ma_dich_vu from khach_hang k
join hop_dong hd on hd.ma_khach_hang=k.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach=k.ma_loai_khach
group by hd.ma_dich_vu;

select k.ma_khach_hang,k.ho_ten,lk.ten_loai_khach,hd.ma_hop_dong,dv.ten_dich_vu,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,sum(dv.chi_phi_thue + hdct.so_luong)*dvdk.gia from khach_hang k
join loai_khach lk on lk.ma_loai_khach=k.ma_loai_khach
join hop_dong hd on hd.ma_khach_hang= k.ma_khach_hang
join dich_vu dv on dv.ma_dich_vu= hd.ma_dich_vu
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong=hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem=hdct.ma_dich_vu_di_kem
group by ma_hop_dong;

select dv.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.chi_phi_thue,ldv.ten_loai_dich_vu from dich_vu dv
join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
join hop_dong hd where hd.ngay_lam_hop_dong=(select * from hop_dong hd where quarter(hd.ngay_lam_hop_dong=1) and year(hd.ngay_lam_hop_dong) ='2021')

	