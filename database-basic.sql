drop table student;
create table student (sno number(3), 
    sname nvarchar2(4), --�������� ���ڿ� 
    year number(1), --���ڸ� ���ڸ�
    dept nvarchar2(5) --����Ŭ���� n�� ���� �ѱ��� ���� �� �� ���� 
    );

insert into STUDENT values(100, '������', 4, '��ǻ��');

select * from student;
