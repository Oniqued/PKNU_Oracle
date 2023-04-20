create or replace procedure exam3(
del_stu_id in sugang.stu_id%type
)
is
begin
	delete from sugang where stu_id = del_stu_id;
	delete from stu where stu_id = del_stu_id;
end;
/