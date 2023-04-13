-- ���� ó�� ����2. ����� ���� ����
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
   dbms_output.put_line('�߸��� �л� �̸��Դϴ�.');   
   when others then
   dbms_output.put_line(SQLCODE || ' ::: ' || SQLERRM);   
   
END exp_trap;
/