drop table back_수강;
drop table back_과목;
drop table back_학생;

drop table 수강;
drop table 과목;
drop table 학생;

create table 학생 (
	학번 varchar2(7),
	이름 varchar2(20),
	학과번호 varchar2(3),
        이수학점 int,
	평점 float,
	primary key (학번)
);

insert into 학생 values ('9912345', '홍길동', '010', 100, 4.10);
insert into 학생 values ('9922222', '박두리', '010',80, 3.25);
insert into 학생 values ('9933333', '김돌쇠', '020',90, 3.00);
insert into 학생 values ('9944444', '이해솔', '020',120, 2.60);
insert into 학생 values ('9955555', '임하늘', '030',130, 1.90);

create table 과목 (
	과목번호 varchar2(5),
	과목이름 varchar2(30),
	최대인원 int,
        primary key (과목번호)
);

insert into 과목 values ('cs100', '데이터베이스', 40);
insert into 과목 values ('cs200', '운영체제', 20);
insert into 과목 values ('cs300', '자료구조', 30);
insert into 과목 values ('cs400', '자바프로그래밍', 40);

Create table 수강 (
	학번 varchar2(7),
	과목번호 varchar2(5),
	primary key (학번, 과목번호),
	foreign key (학번) references 학생,
	foreign key (과목번호) references 과목
);

Insert into 수강 values ('9912345','cs400');
Insert into 수강 values ('9912345','cs200');
Insert into 수강 values ('9922222','cs100');
Insert into 수강 values ('9922222','cs300');
Insert into 수강 values ('9933333','cs300');
Insert into 수강 values ('9944444','cs200');
Insert into 수강 values ('9955555','cs400');

create table back_학생 (
    시간 timestamp,
	학번 varchar2(7),
	이름 varchar2(20),
	학과번호 varchar2(3),
    이수학점 int,
	평점 float,
    구분 varchar2(20),
    o_학번 varchar2(7),
	o_이름 varchar2(20),
	o_학과번호 varchar2(3),
    o_이수학점 int,
	o_평점 float,
    primary key(시간)
);

create table back_과목 (
	과목번호 varchar2(5),
	과목이름 varchar2(30),
	최대인원 int,
    구분 varchar2(20),
    o_과목번호 varchar2(5),
	o_과목이름 varchar2(30),
	o_최대인원 int,
    primary key (과목번호)
);

Create table back_수강 (
	학번 varchar2(7),
	과목번호 varchar2(5),
    구분 varchar2(20),
    o_학번 varchar2(7),
	o_과목번호 varchar2(5),
	primary key (학번, 과목번호),
	foreign key (학번) references 학생,
	foreign key (과목번호) references 과목
);