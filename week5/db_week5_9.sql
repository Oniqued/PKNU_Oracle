-- Cursor ����2. Ŀ�� �Ű� ������ �й��� ����־ �� �й��� �ش��ϴ� �л��� �����ϴ� ������
--               ���� �ڵ带 ���� �ִ� ���ν��� �����

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
