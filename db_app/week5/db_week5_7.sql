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
