Create or replace procedure exam2 
(new_SJ_ID IN subject.sj_id%type, 
new_SJ_NAME IN subject.sj_name%type, 
new_SJ_DEPT IN subject.sj_dept%type) 
IS 
Begin 
Insert into subject values 
(new_SJ_ID,new_SJ_NAME,new_SJ_DEPT); 
End;
/