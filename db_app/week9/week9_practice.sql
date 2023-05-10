drop table 주문상세내역;

drop table 주문;
drop table 회원;
drop table 상품;

create table 회원 (
	회원번호 varchar2(7),
	이름 varchar2(20),
	주소 varchar2(50),
	연락처 varchar2(20),
	primary key (회원번호)
);

create table 상품 (
	상품번호 int,
	상품명 varchar2(80),
	단가 int,
    primary key (상품번호)
);

create table 주문(
    주문번호 int,
    회원번호 varchar2(7),
    주문일 varchar(20),
    배송주소 varchar(20),
    상품번호 int,
    
    primary key (주문번호),
    foreign key (회원번호) references 회원,
    foreign key (상품번호) references 상품
);

select * from 회원;
select * from 주문;
select * from 상품;
