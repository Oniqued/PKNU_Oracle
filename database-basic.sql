drop table student;
create table student (sno number(3), 
    sname nvarchar2(4), --가변길이 문자열 
    year number(1), --한자리 숫자만
    dept nvarchar2(5) --오라클에선 n이 들어가야 한글을 저장 할 수 있음 
    );

insert into STUDENT values(100, '나수영', 4, '컴퓨터');

select * from student;
