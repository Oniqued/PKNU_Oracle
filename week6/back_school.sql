create or replace trigger back_school_학생
after insert or delete or update on 학생
for each row
begin
    if inserting then
        insert into back_학생(시간, 학번, 이름, 학과번호, 이수학점, 평점, 구분)
        values(systimestamp, :new.학번, :new.이름, :new.학과번호, :new.이수학점, :new.평점, '입력');
    elsif updating then 
        insert into back_학생
        values(systimestamp, :new.학번, :new.이름, :new.학과번호, :new.이수학점, :new.평점, '수정',
        :old.학번, :old.이름, :old.학과번호, :old.이수학점, :old.평점);
    elsif deleting then
        insert into back_학생(시간, 학번, 이름, 학과번호, 이수학점, 평점, 구분)
        values(systimestamp, :old.학번, :old.이름, :old.학과번호, :old.이수학점, :old.평점, '삭제');
    end if;
end;

