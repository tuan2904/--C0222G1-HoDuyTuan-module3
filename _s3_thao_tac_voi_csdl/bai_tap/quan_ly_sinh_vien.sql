USE quan_ly_sinh_vien;
INSERT INTO class
VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO class
VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO class
VALUES (3, 'B3', current_date, 0);
select * from class;
INSERT INTO student (studentName, address, phone, `status`, classid)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO student (studentName, address, `status`, classid)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO student (studentname, address, phone, `status`, classid)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);
select * from student;
INSERT INTO `subject`
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
select * from `subject`;
       INSERT INTO mark (subid,studentid, mark, examtimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
select * from mark;
select studentname from student where studentname='Manh';
select startdate from class where month(12);
update student set studentname = '2' where studentname='Hung';
select * from `subject` where credit >=3 and credit <=5;
select s.studentname,sb.subname,m.mark from mark m
join student s on s.studentid=m.markid
join `subject` sb on sb.subid=s.studentid