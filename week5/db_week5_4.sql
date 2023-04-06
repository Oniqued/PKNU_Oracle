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
