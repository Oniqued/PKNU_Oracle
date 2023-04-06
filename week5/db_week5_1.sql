Create or replace procedure test1
(a IN number,
 b IN OUT number,
 c OUT number)
IS
Begin
	c := 1234;
End;
/
