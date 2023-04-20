-- Cursor 예제3. stu 테이블에서 이름이 'sslee'인 학생의 이름을 'cmlee'로 바꾸는 프로시저 만들기

Create or replace procedure up_name
IS
   v_stuname  stu.stu_name%TYPE;
   CURSOR up_cursor IS
   select stu_name from stu
   where stu_name = 'sslee'
   for update;
BEGIN
   open up_cursor;
   loop 
      
      fetch up_cursor into v_stuname;
      exit when up_cursor%NOTFOUND;
      update stu set stu_name = 'cmlee'
      where current of up_cursor; 
      
   end loop;
   close up_cursor;
END up_name;
/

