drop table 과목;
drop table 분반;
drop table 학생;
drop table 지도교수_상담내역;
drop table 교수;
drop table 학과;

create table 학생 (
	학번 varchar2(7),
	주민번호 varchar2(14),
    이름 varchar2(20),
    소속학과 varchar2(7),
    주소 varchar2(40),
	휴대폰번호 varchar2(20),
    생년월일 varchar2(20),
	성별 varchar2(10),
    학년 int,
	
    primary key (학번),
    unique (주민번호),
    foreign key (소속학과) references 학과(학과코드) on delete cascade
);

create table 교수 (
    직원번호 varchar(7),
    이름 varchar(20),
    소속학과 varchar(7),
    주민번호 varchar(20),
    주소 varchar(40),
    휴대폰번호 varchar(20),
    
    primary key (직원번호),
    unique (주민번호),
    foreign key (소속학과) references 학과(학과코드) on delete cascade
);

create table 지도교수_상담내역 (
    상담번호 number,
    학번 varchar(7),
    직원번호 varchar(7),
    지도_시작일 date,
    지도_종료일 date,
    
    primary key (상담번호),
    foreign key (학번) references 학생(학번) on delete cascade,
    foreign key (직원번호) references 교수(직원번호) on delete cascade
);

create table 학과 (
    학과코드 varchar(7),
    학과이름 varchar(20),
    건물_방번호 varchar(20),
    소속_단과대학 varchar(20),
    사무실_전화번호 varchar(20),
    
    primary key (학과코드)
);

create table 과목 (
	과목코드 varchar2(7),
	과목이름 varchar2(30),
	학점 int,
    개설학과 varchar(7),
        
    primary key (과목코드),
    foreign key (개설학과) references 학과(학과코드) on delete cascade
);

create table 분반 (
    과목코드 varchar2(7),
    분반번호 varchar2(7) default 1,
    직원번호 varchar2(7),
    개설연도_학기 varchar(20),
    강의시간별_강의정보 varchar(20),
    
    primary key (과목코드, 분반번호),
    foreign key (과목코드) references 과목(과목코드) on delete cascade,
    foreign key (직원번호) references 교수(직원번호) on delete cascade
);

