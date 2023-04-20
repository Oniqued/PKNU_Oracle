drop table 성적;
drop table 시험;
drop table 생활기록부;
drop table 학생명단;

create table 학생명단 (
  번호 int,
  이름 varchar2(15),
  성별 varchar2(10),
  생년월일 varchar2(10),
  휴대폰번호 varchar2(15),
  주소 varchar2(50),
  우편번호 varchar2(10),
  primary key (번호)
);

Insert into 학생명단 values (1,'김은지','여자','1984-10-23','019-0000-5725','서울특별시 은평구 갈현동 435','122-050');
Insert into 학생명단 values (2,'민병철','남자','1983-10-15','017-0000-5198','서울특별시 은평구 불광동 220','122-040');
Insert into 학생명단 values (3,'안태욱','남자','1984-01-29','019-0000-4014','서울특별시 은평구 수색동 631','122-872');
Insert into 학생명단 values (4,'박수진','여자','1983-04-17','019-0000-5675','서울특별시 은평구 구산동 443','122-060');
Insert into 학생명단 values (5,'오동석','남자','1983-03-06','016-0000-2470','서울특별시 은평구 진관내동 95','122-120');
Insert into 학생명단 values (6,'김정환','남자','1984-10-18','019-0000-5950','서울특별시 은평구 진관외동 492','122-130');
Insert into 학생명단 values (7,'이원희','여자','1984-07-15','019-0000-6773','서울특별시 은평구 응암동 434','122-010');
Insert into 학생명단 values (8,'양세범','남자','1984-05-19','019-0000-1095','서울특별시 은평구 신사동 211','122-080');
Insert into 학생명단 values (9,'강말자','여자','1983-08-31','011-0000-5982','서울특별시 은평구 갈현동 95','122-050');
Insert into 학생명단 values (10,'이형철','남자','1983-10-05','011-0000-3602','서울특별시 은평구 불광동 220','122-040');
Insert into 학생명단 values (11,'강태평','남자','1983-07-30','019-0000-7862','서울특별시 은평구 수색동 267','122-872');
Insert into 학생명단 values (12,'김순정','여자','1983-10-04','011-0000-7006','서울특별시 은평구 구산동 545','122-060');
Insert into 학생명단 values (13,'신하균','남자','1983-04-19','017-0000-3082','서울특별시 은평구 진관내동 635','122-120');
Insert into 학생명단 values (14,'배두나','여자','1983-08-22','017-0000-3403','서울특별시 은평구 진관외동 297','122-130');
Insert into 학생명단 values (15,'김정연','여자','1983-01-27','016-0000-6923','서울특별시 은평구 응암동 703','122-010');
Insert into 학생명단 values (16,'유은석','남자','1984-06-16','017-0000-3321','서울특별시 은평구 신사동 216','122-080');
Insert into 학생명단 values (17,'백지연','여자','1983-10-13','017-0000-5494','서울특별시 은평구 갈현동 301','122-050');
Insert into 학생명단 values (18,'안수정','여자','1984-06-23','016-0000-1906','서울특별시 은평구 불광동 461','122-040');
Insert into 학생명단 values (19,'서진영','여자','1985-01-29','011-0000-3141','서울특별시 은평구 수색동 325','122-872');
Insert into 학생명단 values (20,'성희태','남자','1983-08-10','017-0000-3064','서울특별시 은평구 구산동 26','122-060');
Insert into 학생명단 values (21,'김종석','남자','1983-09-14','016-0000-8561','서울특별시 은평구 진관내동 798','122-120');
Insert into 학생명단 values (22,'최태중','남자','1984-07-02','016-0000-7898','서울특별시 은평구 진관외동 243','122-130');
Insert into 학생명단 values (23,'배보라','여자','1983-04-28','017-0000-3639','서울특별시 은평구 응암동 497','122-010');
Insert into 학생명단 values (24,'양도희','여자','1983-03-12','019-0000-6460','서울특별시 은평구 신사동 563','122-080');
Insert into 학생명단 values (25,'김은서','여자','1984-05-11','019-0000-7961','서울특별시 은평구 갈현동 452','122-050');
Insert into 학생명단 values (26,'최진영','남자','1984-09-09','019-0000-6254','서울특별시 은평구 불광동 790','122-040');
Insert into 학생명단 values (27,'채은병','남자','1984-10-07','019-0000-7483','서울특별시 은평구 수색동 42','122-872');
Insert into 학생명단 values (28,'은서진','여자','1983-12-23','019-0000-3285','서울특별시 은평구 구산동 572','122-060');
Insert into 학생명단 values (29,'조길제','남자','1984-06-20','016-0000-7673','서울특별시 은평구 진관내동 85','122-120');
Insert into 학생명단 values (30,'노성일','남자','1983-04-29','019-0000-8660','서울특별시 은평구 진관외동 123','122-130');

create table 생활기록부 (
  번호 int,
  취미 varchar2(20),
  특기 varchar2(20),
  통학수단 varchar2(20),
  음주 varchar2(3),
  흡연 varchar2(3),
  primary key (번호),
  foreign key (번호) references 학생명단
);

Insert into 생활기록부 values (1,'독서','발레','도보','No','Yes');
Insert into 생활기록부 values (2,'그림','글짓기','자전거','No','Yes');
Insert into 생활기록부 values (3,'음악감상','바이올린','도보','No','Yes');
Insert into 생활기록부 values (4,'PC게임','컴퓨터','지하철','Yes','Yes');
Insert into 생활기록부 values (5,'농구','농구','버스','No','Yes');
Insert into 생활기록부 values (6,'컴퓨터','웅변','버스','No','Yes');
Insert into 생활기록부 values (7,'음악감상','연기','도보','No','No');
Insert into 생활기록부 values (8,'독서','글짓기','기타','Yes','No');
Insert into 생활기록부 values (9,'독서','피아노','도보','No','Yes');
Insert into 생활기록부 values (10,'음악감상','작곡','도보','No','No');
Insert into 생활기록부 values (11,'PC게임','기타','기타','Yes','Yes');
Insert into 생활기록부 values (12,'음악감상','한국무용','자전거','No','No');
Insert into 생활기록부 values (13,'농구','가야금','도보','Yes','No');
Insert into 생활기록부 values (14,'배드민턴','기계체조','기타','No','No');
Insert into 생활기록부 values (15,'PC게임','컴퓨터','기타','Yes','No');
Insert into 생활기록부 values (16,'춤','힙합댄스','도보','Yes','Yes');
Insert into 생활기록부 values (17,'노래','성악','자전거','No','No');
Insert into 생활기록부 values (18,'독서','판소리','기타','No','Yes');
Insert into 생활기록부 values (19,'음악감상','육상','버스','Yes','Yes');
Insert into 생활기록부 values (20,'PC게임','피아노','지하철','No','No');
Insert into 생활기록부 values (21,'독서','성대모사','버스','No','Yes');
Insert into 생활기록부 values (22,'배드민턴','육상','자전거','No','No');
Insert into 생활기록부 values (23,'음악감상','피아노','지하철','No','Yes');
Insert into 생활기록부 values (24,'노래','기타','자전거','No','Yes');
Insert into 생활기록부 values (25,'음악감상','라틴댄스','버스','No','Yes');
Insert into 생활기록부 values (26,'야구','한국무용','지하철','Yes','No');
Insert into 생활기록부 values (27,'독서','컴퓨터','기타','Yes','Yes');
Insert into 생활기록부 values (28,'춤','게임','도보','No','Yes');
Insert into 생활기록부 values (29,'노래','글짓기','자전거','Yes','No');
Insert into 생활기록부 values (30,'음악감상','성악','도보','No','No');

create table 시험 (
  시험ID int,
  시험제목 varchar2(30),
  시행일자 varchar2(15),
  primary key (시험ID)
);

Insert into 시험 values (1,'1학기 중간고사','2006-04-20');
Insert into 시험 values (2,'1차 모의고사','2006-05-11');
Insert into 시험 values (3,'1학기 기말고사','2006-07-06');
Insert into 시험 values (4,'2학기 중간고사','2006-10-15');
Insert into 시험 values (5,'2차 모의고사','2006-11-14');
Insert into 시험 values (6,'2학기 기말고사','2006-12-04');

create table 성적 (
  성적ID int,
  번호 int,
  시험ID int,
  국어 int,
  영어 int,
  수학 int,
  과학 int,
  primary key (성적ID),
  foreign key (번호) references 학생명단,
  foreign key (시험ID) references 시험
);

Insert into 성적 values (1,1,1,50,87,87,65);
Insert into 성적 values (2,2,1,96,96,63,78);
Insert into 성적 values (3,3,1,40,66,99,97);
Insert into 성적 values (4,4,1,78,72,57,93);
Insert into 성적 values (5,5,1,81,54,68,88);
Insert into 성적 values (6,6,1,93,88,50,40);
Insert into 성적 values (7,7,1,61,81,47,73);
Insert into 성적 values (8,8,1,55,94,58,98);
Insert into 성적 values (9,9,1,65,50,99,50);
Insert into 성적 values (10,10,1,76,93,51,97);
Insert into 성적 values (11,11,1,74,76,96,86);
Insert into 성적 values (12,12,1,83,59,58,70);
Insert into 성적 values (13,13,1,98,67,56,82);
Insert into 성적 values (14,14,1,66,79,61,89);
Insert into 성적 values (15,15,1,42,78,74,81);
Insert into 성적 values (16,16,1,94,76,79,43);
Insert into 성적 values (17,17,1,83,50,53,61);
Insert into 성적 values (18,18,1,73,79,56,73);
Insert into 성적 values (19,19,1,78,76,94,75);
Insert into 성적 values (20,20,1,62,86,75,50);
Insert into 성적 values (21,21,1,55,85,84,42);
Insert into 성적 values (22,22,1,45,69,93,80);
Insert into 성적 values (23,23,1,68,89,99,43);
Insert into 성적 values (24,24,1,87,86,47,40);
Insert into 성적 values (25,25,1,40,91,52,64);
Insert into 성적 values (26,26,1,85,86,98,91);
Insert into 성적 values (27,27,1,99,79,71,50);
Insert into 성적 values (28,28,1,73,59,70,97);
Insert into 성적 values (29,29,1,90,52,98,93);
Insert into 성적 values (30,30,1,87,58,76,49);
Insert into 성적 values (31,1,2,70,49,74,58);
Insert into 성적 values (32,2,2,92,94,97,64);
Insert into 성적 values (33,3,2,74,75,48,92);
Insert into 성적 values (34,4,2,57,56,63,71);
Insert into 성적 values (35,5,2,52,58,59,81);
Insert into 성적 values (36,6,2,57,82,45,60);
Insert into 성적 values (37,7,2,48,75,59,97);
Insert into 성적 values (38,8,2,65,48,57,77);
Insert into 성적 values (39,9,2,67,86,68,95);
Insert into 성적 values (40,10,2,48,45,66,80);
Insert into 성적 values (41,11,2,76,64,60,44);
Insert into 성적 values (42,12,2,87,79,62,92);
Insert into 성적 values (43,13,2,94,50,54,68);
Insert into 성적 values (44,14,2,91,58,58,92);
Insert into 성적 values (45,15,2,72,82,53,63);
Insert into 성적 values (46,16,2,84,90,85,81);
Insert into 성적 values (47,17,2,83,78,70,64);
Insert into 성적 values (48,18,2,53,74,95,94);
Insert into 성적 values (49,19,2,60,76,59,68);
Insert into 성적 values (50,20,2,51,93,99,60);
Insert into 성적 values (51,21,2,50,46,40,56);
Insert into 성적 values (52,22,2,96,89,99,79);
Insert into 성적 values (53,23,2,85,62,58,92);
Insert into 성적 values (54,24,2,82,73,66,60);
Insert into 성적 values (55,25,2,53,46,73,90);
Insert into 성적 values (56,26,2,40,84,40,85);
Insert into 성적 values (57,27,2,76,54,59,78);
Insert into 성적 values (58,28,2,41,91,85,81);
Insert into 성적 values (59,29,2,44,81,50,76);
Insert into 성적 values (60,30,2,43,71,55,70);
Insert into 성적 values (61,1,3,79,53,65,53);
Insert into 성적 values (62,2,3,56,42,84,93);
Insert into 성적 values (63,3,3,97,95,57,56);
Insert into 성적 values (64,4,3,76,98,87,58);
Insert into 성적 values (65,5,3,68,84,68,59);
Insert into 성적 values (66,6,3,97,92,96,78);
Insert into 성적 values (67,7,3,77,84,78,42);
Insert into 성적 values (68,8,3,50,94,70,50);
Insert into 성적 values (69,9,3,72,57,63,92);
Insert into 성적 values (70,10,3,95,57,59,91);
Insert into 성적 values (71,11,3,68,57,65,56);
Insert into 성적 values (72,12,3,71,95,85,99);
Insert into 성적 values (73,13,3,45,51,72,87);
Insert into 성적 values (74,14,3,50,66,62,40);
Insert into 성적 values (75,15,3,64,61,42,73);
Insert into 성적 values (76,16,3,57,91,48,86);
Insert into 성적 values (77,17,3,95,82,59,82);
Insert into 성적 values (78,18,3,84,77,97,66);
Insert into 성적 values (79,19,3,64,79,70,61);
Insert into 성적 values (80,20,3,72,62,76,77);
Insert into 성적 values (81,21,3,69,45,51,56);
Insert into 성적 values (82,22,3,61,90,54,62);
Insert into 성적 values (83,23,3,41,99,90,64);
Insert into 성적 values (84,24,3,98,71,92,44);
Insert into 성적 values (85,25,3,85,50,50,62);
Insert into 성적 values (86,26,3,53,60,90,71);
Insert into 성적 values (87,27,3,76,85,77,64);
Insert into 성적 values (88,28,3,62,58,91,76);
Insert into 성적 values (89,29,3,62,88,74,62);
Insert into 성적 values (90,30,3,57,53,48,91);
Insert into 성적 values (91,1,4,92,48,78,56);
Insert into 성적 values (92,2,4,76,92,80,60);
Insert into 성적 values (93,3,4,71,70,73,77);
Insert into 성적 values (94,4,4,58,54,99,92);
Insert into 성적 values (95,5,4,90,41,90,69);
Insert into 성적 values (96,6,4,59,56,64,71);
Insert into 성적 values (97,7,4,57,52,88,46);
Insert into 성적 values (98,8,4,72,45,77,58);
Insert into 성적 values (99,9,4,55,60,71,85);
Insert into 성적 values (100,10,4,63,90,93,47);
Insert into 성적 values (101,11,4,98,62,48,82);
Insert into 성적 values (102,12,4,67,51,71,80);
Insert into 성적 values (103,13,4,96,88,50,64);
Insert into 성적 values (104,14,4,71,77,67,64);
Insert into 성적 values (105,15,4,83,55,80,63);
Insert into 성적 values (106,16,4,58,63,56,73);
Insert into 성적 values (107,17,4,45,49,49,95);
Insert into 성적 values (108,18,4,97,56,91,56);
Insert into 성적 values (109,19,4,95,57,93,82);
Insert into 성적 values (110,20,4,82,98,90,56);
Insert into 성적 values (111,21,4,69,68,43,96);
Insert into 성적 values (112,22,4,71,51,44,90);
Insert into 성적 values (113,23,4,95,44,78,50);
Insert into 성적 values (114,24,4,87,64,99,92);
Insert into 성적 values (115,25,4,64,47,80,88);
Insert into 성적 values (116,26,4,65,66,84,52);
Insert into 성적 values (117,27,4,79,93,88,85);
Insert into 성적 values (118,28,4,70,85,80,48);
Insert into 성적 values (119,29,4,50,49,92,63);
Insert into 성적 values (120,30,4,90,99,88,97);
Insert into 성적 values (121,1,5,83,92,91,65);
Insert into 성적 values (122,2,5,48,99,63,70);
Insert into 성적 values (123,3,5,66,97,73,41);
Insert into 성적 values (124,4,5,96,47,77,61);
Insert into 성적 values (125,5,5,96,72,78,75);
Insert into 성적 values (126,6,5,86,95,77,40);
Insert into 성적 values (127,7,5,48,62,43,97);
Insert into 성적 values (128,8,5,44,59,86,40);
Insert into 성적 values (129,9,5,62,79,83,50);
Insert into 성적 values (130,10,5,69,67,47,57);
Insert into 성적 values (131,11,5,44,56,87,72);
Insert into 성적 values (132,12,5,60,50,43,65);
Insert into 성적 values (133,13,5,86,84,95,86);
Insert into 성적 values (134,14,5,82,52,67,46);
Insert into 성적 values (135,15,5,86,51,68,52);
Insert into 성적 values (136,16,5,89,53,52,85);
Insert into 성적 values (137,17,5,61,75,80,90);
Insert into 성적 values (138,18,5,57,99,88,74);
Insert into 성적 values (139,19,5,94,55,41,77);
Insert into 성적 values (140,20,5,52,89,58,99);
Insert into 성적 values (141,21,5,81,55,91,65);
Insert into 성적 values (142,22,5,70,66,95,66);
Insert into 성적 values (143,23,5,80,53,80,82);
Insert into 성적 values (144,24,5,52,72,84,53);
Insert into 성적 values (145,25,5,46,94,42,56);
Insert into 성적 values (146,26,5,52,63,79,69);
Insert into 성적 values (147,27,5,43,70,50,83);
Insert into 성적 values (148,28,5,87,48,85,85);
Insert into 성적 values (149,29,5,47,66,94,94);
Insert into 성적 values (150,30,5,82,86,72,53);
Insert into 성적 values (151,1,6,65,58,65,55);
Insert into 성적 values (152,2,6,47,57,57,47);
Insert into 성적 values (153,3,6,86,91,86,58);
Insert into 성적 values (154,4,6,92,73,76,46);
Insert into 성적 values (155,5,6,91,49,90,69);
Insert into 성적 values (156,6,6,66,73,71,73);
Insert into 성적 values (157,7,6,75,80,78,54);
Insert into 성적 values (158,8,6,58,75,65,72);
Insert into 성적 values (159,9,6,47,62,43,99);
Insert into 성적 values (160,10,6,84,60,86,69);
Insert into 성적 values (161,11,6,83,98,86,87);
Insert into 성적 values (162,12,6,45,97,55,83);
Insert into 성적 values (163,13,6,96,49,96,82);
Insert into 성적 values (164,14,6,90,97,61,88);
Insert into 성적 values (165,15,6,50,80,71,52);
Insert into 성적 values (166,16,6,58,79,60,45);
Insert into 성적 values (167,17,6,97,63,93,99);
Insert into 성적 values (168,18,6,42,48,40,69);
Insert into 성적 values (169,19,6,45,43,50,73);
Insert into 성적 values (170,20,6,69,83,46,72);
Insert into 성적 values (171,21,6,63,71,80,54);
Insert into 성적 values (172,22,6,79,41,47,50);
Insert into 성적 values (173,23,6,61,94,94,65);
Insert into 성적 values (174,24,6,40,83,98,88);
Insert into 성적 values (175,25,6,63,67,42,42);
Insert into 성적 values (176,26,6,80,41,91,85);
Insert into 성적 values (177,27,6,97,53,57,84);
Insert into 성적 values (178,28,6,92,91,84,63);
Insert into 성적 values (179,29,6,76,78,67,81);
Insert into 성적 values (180,30,6,69,60,75,99);

















