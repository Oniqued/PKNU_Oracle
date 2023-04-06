Create or replace procedure test3
IS
	v_stuid varchar2(7);
	v_stuname stu.stu_name%TYPE;
Begin
	select stu_id, stu_name into v_stuid, v_stuname from stu
	where stu_id = '9911111';
	DBMS_OUTPUT.PUT_LINE('학번 : ' || v_stuid || ', 이름 : ' || v_stuname); 
End;
/
