use quan_ly_sinh_vien;
select *
from `subject`
WHERE credit = (SELECT MAX(credit) FROM `subject`);

select * from mark m
join `subject` s on m.subid=s.subid
WHERE m.mark = (SELECT MAX(m.mark) FROM mark m) ;

select s.studentid,s.studentname,
avg(m.mark) diem_trung_binh from student s
join mark m on s.studentid=m.studentid
group by s.studentid
order by diem_trung_binh desc;
