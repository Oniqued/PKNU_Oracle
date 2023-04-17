--문제1
select * from 회원 where 회원번호 = 'T006';

--문제2
select distinct 상품번호 from 주문상세내역;

--문제3
select 성명 from 회원 where 주소 like '서울%';

--문제4
select 성명 from 회원 where not 주소 like '서울%';

--문제5
select 성명 from 회원 where 주소 like '서울%' and 성별 = '남';

--문제6
--select 상품명 from 상품 where 상품명 like '%마우스%';
select 상품.상품명 from 상품, 분류 where 분류.분류명 = '마우스' and 분류.분류코드 = 상품.분류코드;

--문제7
select 상품명 from 상품 order by 단가 desc;

--문제8
select 상품번호, 상품명 from 상품 where 단가 between 5000 and 15000;

--문제9
--select * from 회원 natural join 주문;
select 회원.*, 주문.주문번호, 주문.주문일 from 회원, 주문 where 회원.회원번호 = 주문.회원번호;

--문제10
--select * from 주문 natural join 주문상세내역;
select 주문.*, 주문상세내역.주문상세번호, 주문상세내역.상품번호, 주문상세내역.수량 from 주문, 주문상세내역 where 주문.주문번호 = 주문상세내역.주문번호;

--문제11
select * from 상품 natural join 주문, 주문상세내역;

--문제12
select 주문상세내역.주문상세번호, 상품.단가 * 주문상세내역.수량 as 주문액 
from 상품, 주문상세내역
where 상품.상품번호 = 주문상세내역.상품번호 order by 주문상세번호;
