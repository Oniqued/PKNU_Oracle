-- ���� ó�� ����1. �̸� ���ǵ� ����
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
   dbms_output.put_line('�����ϴ� �����Ͱ� �����ϴ�.');   
   
END pre_exp;
/
