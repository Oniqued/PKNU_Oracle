drop table sugang;
drop table subject;
drop table stu;


create table stu (
	stu_id varchar2(7),
	stu_name varchar2(20),
        	stu_dept varchar2(20),
	primary key (stu_id)
);

insert into stu values ('9911111', 'gdhong', 'computer');
insert into stu values ('9922222', 'sslee', 'economy');
insert into stu values ('9933333', 'yskim', 'computer');


create table subject (
	sj_id varchar2(5),
	sj_name varchar2(20),
        	sj_dept varchar2(20),
	primary key (sj_id)
);

insert into subject values ('cm001', 'database', 'computer');
insert into subject values ('cm002', 'OS', 'computer');
insert into subject values ('ec001', 'bank', 'economy');
insert into subject values ('ec002', 'datamining', 'economy');

Create table sugang (
	stu_id varchar2(7),
	sj_id varchar2(5),
	primary key (stu_id, sj_id),
	foreign key (stu_id) references stu,
	foreign key (sj_id) references subject
);

Insert into sugang values ('9911111','cm001');
Insert into sugang values ('9911111','cm002');
Insert into sugang values ('9922222','cm001');
Insert into sugang values ('9922222','ec001');
Insert into sugang values ('9933333','ec002');
Insert into sugang values ('9933333','cm002');