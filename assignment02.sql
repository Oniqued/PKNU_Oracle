--1번 문제 
create table 서울회원연락처 (
	회원번호 varchar2(7),
	성명 varchar2(20),
	주소 varchar2(50),
	전화번호 varchar2(20),
	primary key (회원번호)
);

insert into 서울회원연락처 (회원번호, 성명, 주소, 전화번호)
select 회원번호, 성명, 주소, 전화번호 from 회원
where 주소 like '서울%';

--2번 문제 
create table 지방회원연락처 (
	회원번호 varchar2(7),
	성명 varchar2(20),
	주소 varchar2(50),
	전화번호 varchar2(20),
	primary key (회원번호)
);

insert into 지방회원연락처 (회원번호, 성명, 주소, 전화번호)
select 회원번호, 성명, 주소, 전화번호 from 회원
where not 주소 like '서울시%';

--3번 문제
insert into 분류 values (4, '키보드');

--4번 문제 
insert into 상품 values (78, '삼성 32GB USB 메모리', 4, null, 2);

--5번 문제
update 회원 set 주소 = '부산시 금정구' where 회원번호 = 'T001';

--6번 문제
update 상품 set 단가 = 단가+(단가/10) where 분류코드 = 1;

--7번 문제 
delete from 주문상세내역 where 상품번호 = 8;
delete from 상품 where 상품번호 = 8;

--8번 문제 
delete from 주문상세내역 where 주문번호 in (select 주문번호 from 주문 where 회원번호 = 'T004');
delete from 주문 where 회원번호 = 'T004';
delete from 회원 where 회원번호 = 'T004';

--9번 문제
select 회원번호 from 주문
where 회원번호 in (select 회원번호 from 회원 where 성별 = '여')
having count(*) >= 1 group by 회원번호;

--10번 문제 
select 상품번호 from 상품 where 단가 <= 10000
minus
select 상품번호 from 주문상세내역;

--11번 문제 
select avg(단가) as 단가_평균 from 상품;

--12번 문제 
select 분류코드, avg(단가) as 단가_평균 from 상품 group by 분류코드;

--13번 문제
select count(*) as 만원이상_상품 from 상품 where 단가 >= 10000;

--14번 문제
select 회원번호, count(*) as 주문_횟수 from 주문 group by 회원번호;

--15번 문제 
select 회원번호 from 주문 having count(회원번호) >= 3 group by 회원번호;

--16번 문제
select i.상품번호, sum(oi.수량*i.단가) as 주문액 from 상품 i, 주문상세내역 oi
where i.상품번호 = oi.상품번호
group by i.상품번호;

--17번 문제 
select i.상품번호 from 상품 i, 주문상세내역 oi
where i.상품번호 = oi.상품번호
having sum(oi.수량*i.단가) >= 100000
group by i.상품번호;

--18번 문제 
select o.주문번호, sum(oi.수량*i.단가) as 주문액 from 상품 i, 주문상세내역 oi, 주문 o
where i.상품번호 = oi.상품번호 and o.주문번호 = oi.주문번호
group by o.주문번호;

--19(1)번 문제 
select 회원번호 from 주문 where 주문일 = '2017-01-02'
intersect
select 회원번호 from 주문 where 주문일 = '2017-01-03';

--19(2)번 문제 
select 회원번호 from 주문 where 주문일 = '2017-01-02' 
and 회원번호 in (select 회원번호 from 주문 where 주문일 = '2017-01-03');

--20(1)번 문제
select 상품번호, 상품명 from 상품 
where 단가 > all(select 단가 from 상품 where 분류코드 = 1);

--21(1)번 문제
select i1.상품번호, i2.상품명 from 상품 i1, 상품 i2
where i2.상품번호 = 14 and i1.단가 > i2.단가;