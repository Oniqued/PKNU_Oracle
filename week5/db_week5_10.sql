-- Cursor ����3. stu ���̺��� �̸��� 'sslee'�� �л��� �̸��� 'cmlee'�� �ٲٴ� ���ν��� �����

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

