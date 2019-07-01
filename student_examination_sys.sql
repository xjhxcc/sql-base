create database student_examination_sys  default charset utf8;
use student_examination_sys;
create table student(
	id int primary key,
	name varchar(8),
	age int,
	sex varchar(2)
);
create table subject(
	id int primary key,
	subject varcar(10),
	teacher varchar(20),
	description varchar(50)
);
create table score(
	id int primary key,
	student_id int,foreign key (student_id) references student(id) on delete cascade on update cascade,
	subject_id int,constraint fk_subject foreign key(subject_id) references subject(id) on delete cascade on update cascade ,
	score float
);
insert into student values(001,'张三',18,'男');
insert into student values(002,'李四',20,'女');

insert into score values(1,001,'语文','王老师','本次考试比较简单');
insert into score values(1,002,'数学','刘老师','本次考试比较难');

insert into score values(1,001,1001,80);
insert into score values(2,002,1002,60);
insert into score values(3,001,1001,70);
insert into score values(4,002,1002,60.5);
