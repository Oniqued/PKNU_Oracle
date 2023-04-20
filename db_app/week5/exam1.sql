Create or replace procedure exam1 
(new_stu_ID IN stu.stu_id%type, 
new_stu_NAME IN stu.stu_name%type, 
new_stu_DEPT IN stu.stu_dept%type) 
IS 
Begin 
Insert into stu values 
(new_stu_ID,new_stu_NAME,new_stu_DEPT); 
End;
/