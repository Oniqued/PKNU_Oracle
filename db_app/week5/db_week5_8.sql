-- Cursor 예제1. 학과가 'computer'인 학생들의 학번과 이름을 보여 주는 프로시저 만들기
Create or replace procedure show_com
IS
   v_stuid  stu.stu_id%TYPE;
   v_stuname  stu.stu_name%TYPE;
   CURSOR stu_cursor IS
   select stu_id, stu_name from stu
   where stu_dept = 'computer';
BEGIN
   open stu_cursor;
   loop 
      fetch stu_cursor into v_stuid, v_stuname;
      exit when stu_cursor%NOTFOUND;
      
      dbms_output.put_line(v_stuid || ' ' || v_stuname);
   end loop;
   close stu_cursor;
END show_com;
/

Create or replace procedure show_com2
IS
   v_stu  stu%ROWTYPE;
   CURSOR stu_cursor IS
   select * from stu
   where stu_dept = 'computer';
BEGIN

   for v_stu IN stu_cursor loop 

      exit when stu_cursor%NOTFOUND;
      dbms_output.put_line(v_stu.stu_id || ' ' || v_stu.stu_name);

   end loop;
   
END show_com2;
/
