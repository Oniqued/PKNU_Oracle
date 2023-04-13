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
