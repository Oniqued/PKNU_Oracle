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
