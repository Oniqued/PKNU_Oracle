
--아래의 설명에 해당하는 테이블을 만들어 보자
--	테이블 이름 : 서울회원연락처
--	속성들 : {회원번호, 성명, 주소, 전화번호}, PK : {회원번호}
--	포함될 레코드 : 회원 테이블에 있는 회원들 중 서울에 사는 회원들의 정보 
--	속성들의 자료 형은 회원 테이블에 있는 동명의 속성들과 같다.
--	이 테이블은 이미 있는 테이블을 이용하지 말고 Create문과 Insert문을 이용하여 만들자.
drop table 서울회원연락처;
create table 서울회원연락처 (
    회원번호 varchar2(30),
    성명 varchar2(12),
    주소 varchar2(60),
    전화번호 varchar2(40),
    primary key(회원번호)
);

insert into 서울회원연락처 values('001', '홍길동', '서울시', '010-1234-1234');

--아래의 설명에 해당하는 테이블을 만들어 보자
--	테이블 이름 : 지방회원연락처
--	속성들 : {회원번호, 성명, 주소, 전화번호}
--	포함될 레코드 : 회원 테이블에 있는 회원들 중 서울에 살지 않는 회원들의 정보 
--	속성들의 자료 형은 회원 테이블에 있는 동명의 속성들과 같다.
--	이 테이블은 이미 있는 회원 테이블을 이용하여 만들자.(Sub query를 이용한 Create문
select * from 서울회원연락처;
select * from 회원;

drop table 지방회원연락처;
create table 지방회원연락처 as
    select * from 회원 where 주소 not like '서울시%';
    
select * from 지방회원연락처;

--우리 쇼핑몰에서는 아직 구체적인 상품의 종류는 결정되지 않았으나 앞으로 키보드(분류코드는 4)들도 판매할 계획이다. 이 상황을 SQL로 표현해 보자.
select * from 분류;
insert into 분류(분류코드, 분류명) values (4, '키보드');

--우리 쇼핑몰에서는 거래처번호가 4인 거래처로부터 새로운 물건(상품번호가 78이고 상품명은 “삼성 32GB USB 메모리”, 분류코드는 2)을 판매할 것이다.  아직 단가는 결정되지 않았다. 이 상황을 SQL로 표현해 보자.
select * from 거래처;
select * from 상품;
insert into 상품 (상품번호, 상품명, 거래처번호, 분류코드) values(78, '삼성 32GB USB 메모리', 4, 2);

--회원들 중 회원번호가 ‘T001’인 회원이 ‘부산시 금정구‘로 이사를 하였다. 이 상황을 SQL로 표현해 보자.
select * from 회원;
update 회원 set 주소 = '부산시 금정구' where 회원번호 = 'T001';

--우리 쇼핑몰에서 판매하는 물건들 중 마우스들의 단가가 10% 인상되었다. 이 상황을 SQL로 표현해 보자.
update 상품 set 단가 = 단가 + 단가*0.1 where 분류코드 = (select 분류코드 from 분류 where 분류명 = '마우스');

--지금까지 판매하던 물건들 중 상품번호가 8인 상품은 앞으로 판매하지 않을 것이다. 이 상황을 SQL로 표현해 보자.
select * from 주문;
select * from 주문상세내역;
delete from 상품 where 상품번호 = 8;

--회원번호가 ‘T004’인 회원이 탈퇴하였다. 이 상황을 SQL로 표현해 보자.
delete from 주문상세내역 where 주문번호 = (select 주문번호 from 주문 where 회원번호 = 'T004');
delete from 주문 where 회원번호 = 'T004';
delete from 회원 where 회원번호 = 'T004';

--회원들 중 여성이면서 한 번이라도 주문을 한 적이 있는 회원들의 회원번호를 찾는 SQL문을 만들어 보자.
select * from 회원 where 성별 = '여';
select * from 주문;
select 회원번호, count(*) from 주문 where 회원번호 in (select 회원번호 from 회원 where 성별 = '여') group by 회원번호;

--상품들 중 단가가 10000원 이하면서 한 번도 판매되지 않은 상품들의 상품번호를 찾는 SQL문을 만들어 보자.   
select * from 상품;
select * from 주문상세내역;
select 상품번호, count(*) from 주문상세내역 group by 상품번호; -- 이들 중에서 단가가 10000원 이하인 상품번호만 추린다
select 상품번호, count(*) from 주문상세내역 where 상품번호 in (select 상품번호 from 상품 where 단가 <= 10000) group by 상품번호; 

--상품 테이블에서 전체 상품의 단가 평균을 구해 보자.
select avg(단가) as 단가평균 from 상품;

--상품 테이블에서 분류코드에 따른 상품들의 단가 평균을 구해 보자.
select 분류코드, avg(단가) as 단가평균 from 상품 group by 분류코드;

--상품 테이블에서 단가가 10000원 이상인 상품의 개수를 구해 보자.
select count(*) from 상품 where 단가 >= 10000;

--주문 테이블에서 회원번호에 따른 주문 횟수를 구해 보자. 
select 회원번호, count(*) from 주문 group by 회원번호;

--주문 테이블에서 세 번 이상 주문한 회원의 회원번호를 구해 보자.
select 회원번호, count(*) from 주문 group by 회원번호 having count(*) >= 3;

--상품, 주문상세내역 테이블에서 상품번호에 따른 주문액 합계를 구해 보자.
select * from 주문상세내역;
select * from 상품;
select * from 주문상세내역 natural join 상품;
select 상품번호, sum(수량*단가) from 주문상세내역 natural join 상품 group by 상품번호;
select 주문상세내역.상품번호, sum(수량*단가) from 주문상세내역, 상품 where 주문상세내역.상품번호 = 상품.상품번호 group by 주문상세내역.상품번호;

--상품, 주문상세내역 테이블에서 상품번호에 따른 주문액 합계가 100,000원 이상인 상품의 상품번호를 구해 보자.
select 주문상세내역.상품번호, sum(수량*단가) from 주문상세내역, 상품 where 주문상세내역.상품번호 = 상품.상품번호 group by 주문상세내역.상품번호 having sum(수량*단가) >= 100000;

--주문, 주문상세내역, 상품 테이블에서 주문번호에 따른 주문액 합계를 구해 보자.
select * from 주문;
select 주문.주문번호, sum(단가*수량) from 주문, 주문상세내역, 상품
where 주문.주문번호 = 주문상세내역.주문번호 
and 상품.상품번호 = 주문상세내역.상품번호
group by(주문.주문번호);

--주문 테이블에서 2017년 1월 2일과 1월 3일에 모두 주문한 회원의 회원번호를 구하시오.
--	intersect를 이용하여 구하시오.
select * from 주문;
select 회원번호 from 주문 where 주문일 = '2017-01-02'
intersect
select 회원번호 from 주문 where 주문일 = '2017-01-03';
--	중첩 쿼리문을 이용하여 구하시오.
select 회원번호 from 주문 where 주문일 = '2017-01-03' and 주문일 in (select 주문일 from 회원 where 주문일 = '2017-01-03');
--상품 테이블에서 분류코드가 1인 상품들의 모든 단가보다 단가가 큰 상품의 상품번호와 상품명을 구하시오.
--	중첩 쿼리문을 이용하여 구하시오.
select * from 상품;
select 상품번호, 상품명 from 상품 where 단가 > all(select 단가 from 상품 where 분류코드 = 1);
--상품 테이블에서 상품번호가 14인 상품의 단가보다 단가가 큰 상품의 상품번호와 상품명을 구하시오.
--	투플 변수를 이용하여 구하시오.
select i2.상품번호, i2.상품명 from 상품 i1, 상품 i2 
where i1.상품번호 = 14
and i2.단가 > i1.단가;



