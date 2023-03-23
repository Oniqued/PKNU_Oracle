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
delete from 주문 where 회원번호='T004';
delete from 회원 where 회원번호='T004';



	