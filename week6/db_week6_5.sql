-- Ʈ���� ����
Create or replace trigger chk_stu
Before update or delete or insert on stu 
for each row
Begin
  If :new.stu_id = '9944444' Then
  	raise_application_error(-20500, '�Է��� �� ����!!');
  end if;
End;
/

insert into stu values ('9944444','jjkim','economy');


