Create or replace procedure test5
( v_stuid IN stu.stu_id%type )
IS
	v_stuname stu.stu_name%TYPE;
	v_studept stu.stu_dept%TYPE;
Begin
	select stu_name, stu_dept into v_stuname, v_studept from stu
	where stu_id = v_stuid;
	if v_stuid = '9911111' then DBMS_OUTPUT.PUT_LINE('홍길동이네!!!');
	else DBMS_OUTPUT.PUT_LINE('학번 : ' || v_stuid || ', 이름 : ' || v_stuname || ', 학과 : ' || v_studept);
	end if;

End;
/
