-- 에러 처리 예제1. 미리 정의된 에러
Create or replace procedure pre_exp
IS
   v_stuname  stu.stu_name%TYPE;
BEGIN
  
   select stu_name 
   into v_stuname
   from stu
   where stu_id = '9944444';
   dbms_output.put_line(v_stuname);

   exception 
   when NO_DATA_FOUND then
   dbms_output.put_line('만족하는 데이터가 없습니다.');   
   
END pre_exp;
/

-- 에러 처리 예제2. 사용자 정의 에러
Create or replace procedure user_exp
(v_stuid stu.stu_id%TYPE)
IS
   v_stuname  stu.stu_name%TYPE;
   invalid_stuname exception;
BEGIN
  
   select stu_name 
   into v_stuname
   from stu
   where stu_id = v_stuid;
   
   if v_stuname <> 'cmlee' then 
      dbms_output.put_line(v_stuname);
   else -- 예외 처리
      raise invalid_stuname; 
   end if;

   exception 
   when invalid_stuname then
   dbms_output.put_line('잘못된 학생 이름입니다.');   
   
END user_exp;
/

-- 에러 처리 예제2. 사용자 정의 에러
Create or replace procedure exp_trap
(v_stuid stu.stu_id%TYPE)
IS
   v_stuname  stu.stu_name%TYPE;
   invalid_stuname exception;
BEGIN
  
   select stu_name 
   into v_stuname
   from stu
   where stu_id = v_stuid;
   
   if v_stuname <> 'cmlee' then
      dbms_output.put_line(v_stuname);
   else 
      raise invalid_stuname;
   end if;

   exception 
   when invalid_stuname then
   dbms_output.put_line('잘못된 학생 이름입니다.');   
   when others then
   dbms_output.put_line(SQLCODE || ' ::: ' || SQLERRM);   
   
END exp_trap;
/

set serveroutput on;

-- 패키지 선언 예
Create or Replace package show_stu IS
 procedure showbyid (v_stuid IN varchar2);
 procedure showbyname (v_stuname IN varchar2);
end show_stu;
/

-- 패키지 내의 함수 선언
Create or Replace package body show_stu IS
 procedure showbyid (v_stuid IN varchar2)
 IS 
   v_stuname  stu.stu_name%TYPE;
   v_studept  stu.stu_dept%TYPE;
   CURSOR stu_cursor IS
   select stu_name, stu_dept from stu
   where stu_id = v_stuid;
 BEGIN
   open stu_cursor;
   loop 
      fetch stu_cursor into v_stuname, v_studept;
      exit when stu_cursor%NOTFOUND;
      
      dbms_output.put_line(v_stuid || ' ' || v_stuname || ' ' || v_studept);
   end loop;
   close stu_cursor;
 END showbyid;
 
 procedure showbyname (v_stuname IN varchar2)
 IS 
   v_stuid  stu.stu_id%TYPE;
   v_studept  stu.stu_dept%TYPE;
   CURSOR stu_cursor IS
   select stu_id, stu_dept from stu
   where stu_name = v_stuname;
 BEGIN
   open stu_cursor;
   loop 
      fetch stu_cursor into v_stuid, v_studept;
      exit when stu_cursor%NOTFOUND;
      
      dbms_output.put_line(v_stuid || ' ' || v_stuname || ' ' || v_studept);
   end loop;
   close stu_cursor;
 END showbyname; 
end show_stu;
/

execute show_stu.showbyid('9911111');
execute show_stu.showbyname('sslee');

-- 트리거 예제
Create or replace trigger chk_stu
Before update or delete or insert on stu 
for each row
Begin
  If :new.stu_id = '9944444' Then
  	raise_application_error(-20500, '입력할 수 없음!!');
  end if;
End;
/

insert into stu values ('9944444','jjkim','economy');


alter trigger chk_stu disable
/

insert into stu values ('9944444','jjkim','economy');