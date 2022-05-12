create database if not exists student_management;
use student_management;
CREATE TABLE class (
    id INT,
    `name` VARCHAR(50)
);

CREATE TABLE teacher (
    id INT ,
    `name` VARCHAR(50),
    age INT,
    country VARCHAR(50)
);	

insert into class value(1,"ho duy tuan");
insert into class value(2,"ho duy tan");
select * from class;
insert into teacher value(1,"Hoang Huu Dat");
insert into teacher value(2,"Do Duy Nam");
select * from teacher;
update class set `name`='Ho Van Dung' where id=2;
