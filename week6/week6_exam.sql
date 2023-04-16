--6주차 실습 문제
--
--다음과 같은 기능을 하는 PL/SQL 프로그램을 만드시오.
--* 대상 테이블들은 5주차에 만든 stu, subject, sugang입니다.  

--1. 학과 이름을 입력받아서 stu 테이블에서 그 학과인 학생의 stu_id와 stu_name을 출력하는 프로시저를 만드시오.
create or replace procedure exam01(v_deptname stu.stu_dept%type)
is
    v_stu_id stu.stu_id%type;
    v_stu_name stu.stu_name%type;
begin 
    for i in (select stu_id, stu_name from stu where stu_dept = v_deptname) loop
        v_stu_id := i.stu_id;
        v_stu_name := i.stu_name;
        dbms_output.put_line(v_stu_id|| ' ' ||v_stu_name);
    end loop;    
end exam01;
/

exec exam01('computer');

--2. 1번과 같은 일을 하는 프로시저를 커서의 매개 변수를 사용한 형태로 만들어 보시오.
create or replace procedure exam02(v_deptname stu.stu_dept%type)
is
    v_stu_id stu.stu_id%type;
    v_stu_name stu.stu_name%type;
    cursor c_stu(v_deptname stu.stu_dept%type) is
    select stu_id, stu_name from stu where stu_dept = v_deptname;
begin 
    open c_stu(v_deptname);
    loop
        fetch c_stu into v_stu_id, v_stu_name;
        exit when c_stu%notfound;
        dbms_output.put_line(v_stu_id|| ' ' ||v_stu_name);
    end loop;
    close c_stu;
end exam02;
/
exec exam02('computer');

--3. sugang 테이블에서 stu_id가 '9933333'인 모든 투플의 stu_id를 '9922222'로 바꾸는 프로시저를 만드시오.
create or replace procedure exam03
is
begin 
   update sugang set stu_id = '9922222' where stu_id = '9933333';
end exam03;
/
exec exam03;
select * from sugang;

--4. stu 테이블에 학번과 이름과 학과를 인자로 받아서 입력하는 프로시저를 만드는데  stu_id가 중복되는 레코드를 입력했을 때 
--에러 메시지를 출력하고 정상적으로 프로그램이 종료할 수 있도록 하는 프로시저를 만드시오.
create or replace procedure exam04(
v_id stu.stu_id%type,
v_name stu.stu_name%type,
v_dept stu.stu_dept%type)
is
begin
    insert into stu values(v_id, v_name, v_dept);
    exception
        when dup_val_on_index then
        dbms_output.put_line('중복된 학번입니다.');
end exam04;
/

exec exam04('9911111', '홍길동', 'computer');

--5. subject 테이블에 과목 번호와 과목 이름과 개설 학과를 인자로 받아서 입력하는 프로시저를 만드는데  
--sj_id가 중복되는 레코드를 입력했을 때 에러 메시지를 출력하고 정상적으로 프로그램이 종료하도록 하고 
--sj_name이 'database'이면 에러 메시지를 출력하고 정상적으로 프로그램이 종료할 수 있도록 하는 프로시저를 만드시오.
create or replace procedure exam05(
v_sjid subject.sj_id%type,
v_sjname subject.sj_name%type,
v_sjdept subject.sj_dept%type)
is
    invalid_sj exception;
begin 
    if v_sjname = 'database' then
        raise invalid_sj;
    else
        insert into subject values(v_sjid, v_sjname, v_sjdept);
    end if;    
    exception
        when dup_val_on_index then 
            dbms_output.put_line('과목번호가 중복됩니다.');
        when invalid_sj then
            dbms_output.put_line('database는 입력할 수 없습니다.');
end exam05;
/

exec exam05('cm001', 'algo', 'computer');
exec exam05('xm001', 'database', 'computer');

--6. 수강 내역을 확인하는 프로시저들을 묶어서 패키지를 만들려고 한다. 포함되는 프로시저는 학번을 매개 변수로 하여 
--그 학생이 듣는 모든 과목명을 보여 주는 프로시저와 과목 id를 매개 변수로 하여 그 과목을 듣는 모든 학생들의 이름을 보여 주는 프로시저이다. 
--패키지를 선언하고 프로시저들을 만드시오.
create or replace package exam06_pack is
    procedure exam0601(v_stuid stu.stu_id%type);
    procedure exam0602(v_sjid subject.sj_id%type);
end exam06_pack;
/

create or replace package body exam06_pack is
    procedure exam0601(v_stuid stu.stu_id%type) is
        v_sjname subject.sj_name%type;
        cursor c_sjname is
            select subject.sj_name 
            from sugang, subject
            where subject.sj_id = sugang.sj_id 
            and sugang.stu_id = v_stuid;
    begin 
        open c_sjname;
        loop 
            fetch c_sjname into v_sjname;
            exit when c_sjname%notfound;
            dbms_output.put_line(v_sjname);
        end loop;
        close c_sjname;
    end exam0601;
    
    procedure exam0602(v_sjid subject.sj_id%type) is
        v_stuname stu.stu_name%type;    
        cursor c_stuname is
            select stu.stu_name
            from sugang, stu
            where sugang.stu_id = stu.stu_id
            and sugang.sj_id = v_sjid;
    begin 
        open c_stuname;
        loop
            fetch c_stuname into v_stuname;
            exit when c_stuname%notfound;
            dbms_output.put_line(v_stuname);
        end loop;    
        close c_stuname;
    end exam0602;
end exam06_pack;
/

exec exam06_pack.exam0601('9911111');
exec exam06_pack.exam0602('cm002');

--7. sugang 테이블에 데이터가 변경되었을 때(insert, update, delete 모두) 
--그 변경 내용을 기록하기 위한 테이블 backup_sg를 만들고 데이터가 변경될 때마다 그 내용을 backup_sg에 저장하는 트리거를 만드시오. 
drop table backup_sg;
Create table backup_sg (
    time timestamp,
	stu_id varchar2(7),
	sj_id varchar2(5),
    perform varchar(10),
    o_stu_id varchar2(7),
	o_sj_id varchar2(5),
	primary key (time),
	foreign key (stu_id) references stu,
	foreign key (sj_id) references subject
);

create or replace trigger sg_trigger
before insert or delete or update on sugang
for each row
begin 
    if inserting then
        insert into backup_sg(time, stu_id, sj_id, perform) 
        values(systimestamp, :new.stu_id, :new.sj_id, '삽입');
    elsif updating then 
        insert into backup_sg values(systimestamp, :new.stu_id, :new.sj_id, '수정',
        :old.stu_id, :old.sj_id);
    elsif deleting then 
        insert into backup_sg(time, o_stu_id, o_sj_id, perform) 
        values(systimestamp, :old.stu_id, :old.sj_id, '삭제');
    end if;    
end sg_trigger;
/

select * from sugang;
select * from backup_sg;

Insert into sugang values ('9911111','ec001');
update sugang set sj_id = 'ec002' where stu_id = '9911111' and sj_id = 'ec001';
delete from sugang where stu_id = '9911111' and sj_id = 'ec002';

