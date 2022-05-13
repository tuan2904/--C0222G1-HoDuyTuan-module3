create database quan_ly_sinh_vien;
use quan_ly_sinh_vien;
create table class (
classid int not null primary key auto_increment,
classname varchar(60) not null,
startdate datetime not null,
`status` bit
);
create table student(
studentid int not null primary key auto_increment,
studentname varchar(30) not null,
address varchar(50),
phone varchar(20),
`status` bit,
classid int
);
create table subject(
subid int not null primary key auto_increment,
subname varchar(30) not null,
credit tinyint default 1 check (credit >=1),
`status` bit default 1
);
create table mark(
markid int not null primary key auto_increment,
subid int not null unique key,
studentid int not null unique key,
mark float default 0 check ( mark between 0 and 100)
);