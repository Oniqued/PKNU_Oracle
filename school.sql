drop table ����;
drop table ����;
drop table �л�;


create table �л� (
	�й� varchar2(7),
	�̸� varchar2(20),
	�а���ȣ varchar2(3),
        �̼����� int,
	���� float,
	primary key (�й�)
);

insert into �л� values ('9912345', 'ȫ�浿', '010', 100, 4.10);
insert into �л� values ('9922222', '�ڵθ�', '010',80, 3.25);
insert into �л� values ('9933333', '�赹��', '020',90, 3.00);
insert into �л� values ('9944444', '���ؼ�', '020',120, 2.60);
insert into �л� values ('9955555', '���ϴ�', '030',130, 1.90);

create table ���� (
	�����ȣ varchar2(5),
	�����̸� varchar2(30),
	�ִ��ο� int,
        primary key (�����ȣ)
);

insert into ���� values ('cs100', '�����ͺ��̽�', 40);
insert into ���� values ('cs200', '�ü��', 20);
insert into ���� values ('cs300', '�ڷᱸ��', 30);
insert into ���� values ('cs400', '�ڹ����α׷���', 40);

Create table ���� (
	�й� varchar2(7),
	�����ȣ varchar2(5),
	primary key (�й�, �����ȣ),
	foreign key (�й�) references �л�,
	foreign key (�����ȣ) references ����
);

Insert into ���� values ('9912345','cs400');
Insert into ���� values ('9912345','cs200');
Insert into ���� values ('9922222','cs100');
Insert into ���� values ('9922222','cs300');
Insert into ���� values ('9933333','cs300');
Insert into ���� values ('9944444','cs200');
Insert into ���� values ('9955555','cs400');