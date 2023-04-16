--5���� �ǽ� ����
--
--������ ���� ����� �ϴ� Stored Procedure���� PL/SQL ���α׷��� �̿��Ͽ� ����ÿ�.
--(���ν��� �̸��� ���Ƿ� �����ϸ� ���� ���̺���� ���� �ð��� ���� stu, subject, sugang ���̺��Դϴ�.)
--
--1. stu ���̺� �й�, �̸�, �а��� �Է¹޾� ���ο� �л��� �߰���Ű�� Stored Procedure�� ����ÿ�.
create or replace procedure exam01(
    v_id in stu.stu_id%type,
    v_name in stu.stu_name%type,
    v_dept in stu.stu_dept%type)
is
begin 
    insert into stu values (v_id, v_name, v_dept);
end exam01;
/

exec exam01('0012345', 'kim', 'computer');
select * from stu;

--2. subject ���̺� �����ȣ, �����̸�, �����а��� �Է¹޾� ���ο� ������ �߰���Ű�� Stored Procedure�� ����ÿ�.
create or replace procedure exam02(
    v_sjid in subject.sj_id%type,
    v_sjname in subject.sj_name%type,
    v_sjdept in subject.sj_dept%type)
is
begin 
    insert into subject values (v_sjid, v_sjname, v_sjdept);
end exam02;
/

exec exam02('cm003', 'algorithm', 'computer');
select * from subject;

--3. Ư�� �й��� �Է¹޾� sugang ���̺��� �� �л��� ���õ� ���� ������ �����ϰ� stu ���̺����� �����ϴ� Stored Procedure�� ����ÿ�.
create or replace procedure exam03(
    v_stuid stu.stu_id%type)
is
begin
    delete from sugang where stu_id = v_stuid;
    delete from stu where stu_id = v_stuid;
end exam03;    
/

exec exam03('0012345');
select * from stu;

--4. subject ���̺��� �����ȣ�� �Է¹޾� ������� ����ϴ� Stored Procedure�� ����ÿ�.(���ν����� �����ϸ� ��±��� �� �Ǿ�� �մϴ�.)
set serveroutput on
create or replace procedure exam04(
    v_sjid subject.sj_id%type)
is
    v_sjname subject.sj_name%type;
begin 
    select sj_name into v_sjname from subject where sj_id = v_sjid;
    dbms_output.put_line('�����: ' ||v_sjname);
end exam04;    
/

exec exam04('cm001');
--�� ������ �Է¹��� ���� C����� scanfó�� Ű���� Ÿ�������� �Է¹޴� �� �ƴ϶�, execute exam1('9955555', 'gyebak', 'computer');�̷� ������ ���ν����� �����ų �� ���ڷ� �Է��ϸ� �˴ϴ�.

--5. Ŀ���� �̿��Ͽ� �Ű� ������ �й��� �Է� �޾� �� �л��� � ������ �����ϰ� �ִ��� �����ȣ�� ���� �̸��� ��� ����ϴ� ���ν����� ����ÿ�
create or replace procedure exam05(v_stuid stu.stu_id%type)
is
    v_sjid subject.sj_id%type;
    v_sjname subject.sj_name%type;
    
    cursor c_sugang is
    select subject.sj_id, subject.sj_name from sugang, subject
    where sugang.sj_id = subject.sj_id
    and sugang.stu_id = v_stuid;
begin
    open c_sugang;
    loop
        fetch c_sugang into v_sjid, v_sjname;
        exit when c_sugang%notfound;
        dbms_output.put_line(v_sjid|| ' ' ||v_sjname);
    end loop;
    close c_sugang;
end exam05;
/

exec exam05('9911111');



