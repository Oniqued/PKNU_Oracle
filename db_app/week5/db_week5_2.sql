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
