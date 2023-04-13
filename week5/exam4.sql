create or replace procedure exam4(
sj_id_in in subject.sj_id%type
sj_name_out out subject.sj_name%type
)
begin
	select sj_name into sj_name_out from subject where sj_id = sj_id_in;
	DBMS_OUTPUT.PUT_LINE('과목명: ' || sj_name_out);
end;
/