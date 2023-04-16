--5주차 실습 문제
--
--다음과 같은 기능을 하는 Stored Procedure들을 PL/SQL 프로그램을 이용하여 만드시오.
--(프로시저 이름은 임의로 설정하며 바탕 테이블들은 수업 시간에 만든 stu, subject, sugang 테이블입니다.)
--
--1. stu 테이블에 학번, 이름, 학과를 입력받아 새로운 학생을 추가시키는 Stored Procedure를 만드시오.
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

--2. subject 테이블에 과목번호, 과목이름, 개설학과를 입력받아 새로운 과목을 추가시키는 Stored Procedure를 만드시오.
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

--3. 특정 학번을 입력받아 sugang 테이블에서 그 학생과 관련된 수강 내역을 삭제하고 stu 테이블에서도 삭제하는 Stored Procedure를 만드시오.
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

--4. subject 테이블에서 과목번호를 입력받아 과목명을 출력하는 Stored Procedure를 만드시오.(프로시저를 실행하면 출력까지 다 되어야 합니다.)
set serveroutput on
create or replace procedure exam04(
    v_sjid subject.sj_id%type)
is
    v_sjname subject.sj_name%type;
begin 
    select sj_name into v_sjname from subject where sj_id = v_sjid;
    dbms_output.put_line('과목명: ' ||v_sjname);
end exam04;    
/

exec exam04('cm001');
--※ 값들을 입력받을 때는 C언어의 scanf처럼 키보드 타이핑으로 입력받는 게 아니라, execute exam1('9955555', 'gyebak', 'computer');이런 식으로 프로시저를 실행시킬 때 인자로 입력하면 됩니다.

--5. 커서를 이용하여 매개 변수로 학번을 입력 받아 이 학생이 어떤 과목을 수강하고 있는지 과목번호와 과목 이름을 모두 출력하는 프로시저를 만드시오
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



