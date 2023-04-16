
Create or replace procedure test1
(a IN number,
 b IN OUT number,
 c OUT number)
IS
Begin
	c := 1234;
End;
/

Create or replace procedure test2
(sjid IN varchar2,
 sjname IN varchar2,
 sjdept IN varchar2)
IS
Begin
	Insert into subject values 
	(sjid, sjname, sjdept);
End;
/

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

Create or replace procedure test4
( v_stuid IN sugang.stu_id%type,
  v_sjid IN sugang.sj_id%type
)
IS
	v_sugang sugang%ROWTYPE;
Begin
	v_sugang.stu_id := v_stuid;
	v_sugang.sj_id := v_sjid;
	Insert into sugang values (v_sugang.stu_id, v_sugang.sj_id); 
End;
/

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

Create or replace procedure test6
(limit IN number )
IS
i number;
Begin
	for i in 1..5 loop
		DBMS_OUTPUT.PUT_LINE(i);
	end loop;

	i := 0;	

	while i < limit loop
		DBMS_OUTPUT.PUT_LINE(i);
 		i := i + 1;		
	end loop;
End;
/

Create or Replace Function CHK_SAL
(v_sal number)
Return  number
IS
  v_chk number;
Begin
      v_chk :=  v_sal * 0.01;
      return v_chk; 
END;
/

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

-- Cursor 예제2. 커서 매개 변수로 학번을 집어넣어서 그 학번에 해당하는 학생이 수강하는 과목의
--               과목 코드를 보여 주는 프로시저 만들기

Create or replace procedure show_subid
IS
   v_sjid  sugang.sj_id%TYPE;

   CURSOR sg_cursor(v_stuid varchar2) 
   IS
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

