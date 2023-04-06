-- Cursor 예제2. 커서 매개 변수로 학번을 집어넣어서 그 학번에 해당하는 학생이 수강하는 과목의
--               과목 코드를 보여 주는 프로시저 만들기

Create or replace procedure show_subid
IS
   v_sjid  sugang.sj_id%TYPE;

   CURSOR sg_cursor(v_stuid varchar2) IS
   select sj_id from sugang
   where stu_id = v_stuid;
BEGIN
   open sg_cursor('9922222');
   loop 
      fetch sg_cursor into v_sjid;
      exit when sg_cursor%NOTFOUND;
      
      dbms_output.put_line(v_sjid);
   end loop;
   close sg_cursor;
END show_subid;
/
