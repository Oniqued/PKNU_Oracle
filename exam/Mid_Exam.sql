drop table ����;
drop table ����;
drop table ��Ȱ��Ϻ�;
drop table �л����;

create table �л���� (
  ��ȣ int,
  �̸� varchar2(15),
  ���� varchar2(10),
  ������� varchar2(10),
  �޴�����ȣ varchar2(15),
  �ּ� varchar2(50),
  �����ȣ varchar2(10),
  primary key (��ȣ)
);

Insert into �л���� values (1,'������','����','1984-10-23','019-0000-5725','����Ư���� ���� ������ 435','122-050');
Insert into �л���� values (2,'�κ�ö','����','1983-10-15','017-0000-5198','����Ư���� ���� �ұ��� 220','122-040');
Insert into �л���� values (3,'���¿�','����','1984-01-29','019-0000-4014','����Ư���� ���� ������ 631','122-872');
Insert into �л���� values (4,'�ڼ���','����','1983-04-17','019-0000-5675','����Ư���� ���� ���굿 443','122-060');
Insert into �л���� values (5,'������','����','1983-03-06','016-0000-2470','����Ư���� ���� �������� 95','122-120');
Insert into �л���� values (6,'����ȯ','����','1984-10-18','019-0000-5950','����Ư���� ���� �����ܵ� 492','122-130');
Insert into �л���� values (7,'�̿���','����','1984-07-15','019-0000-6773','����Ư���� ���� ���ϵ� 434','122-010');
Insert into �л���� values (8,'�缼��','����','1984-05-19','019-0000-1095','����Ư���� ���� �Ż絿 211','122-080');
Insert into �л���� values (9,'������','����','1983-08-31','011-0000-5982','����Ư���� ���� ������ 95','122-050');
Insert into �л���� values (10,'����ö','����','1983-10-05','011-0000-3602','����Ư���� ���� �ұ��� 220','122-040');
Insert into �л���� values (11,'������','����','1983-07-30','019-0000-7862','����Ư���� ���� ������ 267','122-872');
Insert into �л���� values (12,'�����','����','1983-10-04','011-0000-7006','����Ư���� ���� ���굿 545','122-060');
Insert into �л���� values (13,'���ϱ�','����','1983-04-19','017-0000-3082','����Ư���� ���� �������� 635','122-120');
Insert into �л���� values (14,'��γ�','����','1983-08-22','017-0000-3403','����Ư���� ���� �����ܵ� 297','122-130');
Insert into �л���� values (15,'������','����','1983-01-27','016-0000-6923','����Ư���� ���� ���ϵ� 703','122-010');
Insert into �л���� values (16,'������','����','1984-06-16','017-0000-3321','����Ư���� ���� �Ż絿 216','122-080');
Insert into �л���� values (17,'������','����','1983-10-13','017-0000-5494','����Ư���� ���� ������ 301','122-050');
Insert into �л���� values (18,'�ȼ���','����','1984-06-23','016-0000-1906','����Ư���� ���� �ұ��� 461','122-040');
Insert into �л���� values (19,'������','����','1985-01-29','011-0000-3141','����Ư���� ���� ������ 325','122-872');
Insert into �л���� values (20,'������','����','1983-08-10','017-0000-3064','����Ư���� ���� ���굿 26','122-060');
Insert into �л���� values (21,'������','����','1983-09-14','016-0000-8561','����Ư���� ���� �������� 798','122-120');
Insert into �л���� values (22,'������','����','1984-07-02','016-0000-7898','����Ư���� ���� �����ܵ� 243','122-130');
Insert into �л���� values (23,'�躸��','����','1983-04-28','017-0000-3639','����Ư���� ���� ���ϵ� 497','122-010');
Insert into �л���� values (24,'�絵��','����','1983-03-12','019-0000-6460','����Ư���� ���� �Ż絿 563','122-080');
Insert into �л���� values (25,'������','����','1984-05-11','019-0000-7961','����Ư���� ���� ������ 452','122-050');
Insert into �л���� values (26,'������','����','1984-09-09','019-0000-6254','����Ư���� ���� �ұ��� 790','122-040');
Insert into �л���� values (27,'ä����','����','1984-10-07','019-0000-7483','����Ư���� ���� ������ 42','122-872');
Insert into �л���� values (28,'������','����','1983-12-23','019-0000-3285','����Ư���� ���� ���굿 572','122-060');
Insert into �л���� values (29,'������','����','1984-06-20','016-0000-7673','����Ư���� ���� �������� 85','122-120');
Insert into �л���� values (30,'�뼺��','����','1983-04-29','019-0000-8660','����Ư���� ���� �����ܵ� 123','122-130');

create table ��Ȱ��Ϻ� (
  ��ȣ int,
  ��� varchar2(20),
  Ư�� varchar2(20),
  ���м��� varchar2(20),
  ���� varchar2(3),
  �� varchar2(3),
  primary key (��ȣ),
  foreign key (��ȣ) references �л����
);

Insert into ��Ȱ��Ϻ� values (1,'����','�߷�','����','No','Yes');
Insert into ��Ȱ��Ϻ� values (2,'�׸�','������','������','No','Yes');
Insert into ��Ȱ��Ϻ� values (3,'���ǰ���','���̿ø�','����','No','Yes');
Insert into ��Ȱ��Ϻ� values (4,'PC����','��ǻ��','����ö','Yes','Yes');
Insert into ��Ȱ��Ϻ� values (5,'��','��','����','No','Yes');
Insert into ��Ȱ��Ϻ� values (6,'��ǻ��','����','����','No','Yes');
Insert into ��Ȱ��Ϻ� values (7,'���ǰ���','����','����','No','No');
Insert into ��Ȱ��Ϻ� values (8,'����','������','��Ÿ','Yes','No');
Insert into ��Ȱ��Ϻ� values (9,'����','�ǾƳ�','����','No','Yes');
Insert into ��Ȱ��Ϻ� values (10,'���ǰ���','�۰�','����','No','No');
Insert into ��Ȱ��Ϻ� values (11,'PC����','��Ÿ','��Ÿ','Yes','Yes');
Insert into ��Ȱ��Ϻ� values (12,'���ǰ���','�ѱ�����','������','No','No');
Insert into ��Ȱ��Ϻ� values (13,'��','���߱�','����','Yes','No');
Insert into ��Ȱ��Ϻ� values (14,'������','���ü��','��Ÿ','No','No');
Insert into ��Ȱ��Ϻ� values (15,'PC����','��ǻ��','��Ÿ','Yes','No');
Insert into ��Ȱ��Ϻ� values (16,'��','���մ�','����','Yes','Yes');
Insert into ��Ȱ��Ϻ� values (17,'�뷡','����','������','No','No');
Insert into ��Ȱ��Ϻ� values (18,'����','�ǼҸ�','��Ÿ','No','Yes');
Insert into ��Ȱ��Ϻ� values (19,'���ǰ���','����','����','Yes','Yes');
Insert into ��Ȱ��Ϻ� values (20,'PC����','�ǾƳ�','����ö','No','No');
Insert into ��Ȱ��Ϻ� values (21,'����','������','����','No','Yes');
Insert into ��Ȱ��Ϻ� values (22,'������','����','������','No','No');
Insert into ��Ȱ��Ϻ� values (23,'���ǰ���','�ǾƳ�','����ö','No','Yes');
Insert into ��Ȱ��Ϻ� values (24,'�뷡','��Ÿ','������','No','Yes');
Insert into ��Ȱ��Ϻ� values (25,'���ǰ���','��ƾ��','����','No','Yes');
Insert into ��Ȱ��Ϻ� values (26,'�߱�','�ѱ�����','����ö','Yes','No');
Insert into ��Ȱ��Ϻ� values (27,'����','��ǻ��','��Ÿ','Yes','Yes');
Insert into ��Ȱ��Ϻ� values (28,'��','����','����','No','Yes');
Insert into ��Ȱ��Ϻ� values (29,'�뷡','������','������','Yes','No');
Insert into ��Ȱ��Ϻ� values (30,'���ǰ���','����','����','No','No');

create table ���� (
  ����ID int,
  �������� varchar2(30),
  �������� varchar2(15),
  primary key (����ID)
);

Insert into ���� values (1,'1�б� �߰����','2006-04-20');
Insert into ���� values (2,'1�� ���ǰ��','2006-05-11');
Insert into ���� values (3,'1�б� �⸻���','2006-07-06');
Insert into ���� values (4,'2�б� �߰����','2006-10-15');
Insert into ���� values (5,'2�� ���ǰ��','2006-11-14');
Insert into ���� values (6,'2�б� �⸻���','2006-12-04');

create table ���� (
  ����ID int,
  ��ȣ int,
  ����ID int,
  ���� int,
  ���� int,
  ���� int,
  ���� int,
  primary key (����ID),
  foreign key (��ȣ) references �л����,
  foreign key (����ID) references ����
);

Insert into ���� values (1,1,1,50,87,87,65);
Insert into ���� values (2,2,1,96,96,63,78);
Insert into ���� values (3,3,1,40,66,99,97);
Insert into ���� values (4,4,1,78,72,57,93);
Insert into ���� values (5,5,1,81,54,68,88);
Insert into ���� values (6,6,1,93,88,50,40);
Insert into ���� values (7,7,1,61,81,47,73);
Insert into ���� values (8,8,1,55,94,58,98);
Insert into ���� values (9,9,1,65,50,99,50);
Insert into ���� values (10,10,1,76,93,51,97);
Insert into ���� values (11,11,1,74,76,96,86);
Insert into ���� values (12,12,1,83,59,58,70);
Insert into ���� values (13,13,1,98,67,56,82);
Insert into ���� values (14,14,1,66,79,61,89);
Insert into ���� values (15,15,1,42,78,74,81);
Insert into ���� values (16,16,1,94,76,79,43);
Insert into ���� values (17,17,1,83,50,53,61);
Insert into ���� values (18,18,1,73,79,56,73);
Insert into ���� values (19,19,1,78,76,94,75);
Insert into ���� values (20,20,1,62,86,75,50);
Insert into ���� values (21,21,1,55,85,84,42);
Insert into ���� values (22,22,1,45,69,93,80);
Insert into ���� values (23,23,1,68,89,99,43);
Insert into ���� values (24,24,1,87,86,47,40);
Insert into ���� values (25,25,1,40,91,52,64);
Insert into ���� values (26,26,1,85,86,98,91);
Insert into ���� values (27,27,1,99,79,71,50);
Insert into ���� values (28,28,1,73,59,70,97);
Insert into ���� values (29,29,1,90,52,98,93);
Insert into ���� values (30,30,1,87,58,76,49);
Insert into ���� values (31,1,2,70,49,74,58);
Insert into ���� values (32,2,2,92,94,97,64);
Insert into ���� values (33,3,2,74,75,48,92);
Insert into ���� values (34,4,2,57,56,63,71);
Insert into ���� values (35,5,2,52,58,59,81);
Insert into ���� values (36,6,2,57,82,45,60);
Insert into ���� values (37,7,2,48,75,59,97);
Insert into ���� values (38,8,2,65,48,57,77);
Insert into ���� values (39,9,2,67,86,68,95);
Insert into ���� values (40,10,2,48,45,66,80);
Insert into ���� values (41,11,2,76,64,60,44);
Insert into ���� values (42,12,2,87,79,62,92);
Insert into ���� values (43,13,2,94,50,54,68);
Insert into ���� values (44,14,2,91,58,58,92);
Insert into ���� values (45,15,2,72,82,53,63);
Insert into ���� values (46,16,2,84,90,85,81);
Insert into ���� values (47,17,2,83,78,70,64);
Insert into ���� values (48,18,2,53,74,95,94);
Insert into ���� values (49,19,2,60,76,59,68);
Insert into ���� values (50,20,2,51,93,99,60);
Insert into ���� values (51,21,2,50,46,40,56);
Insert into ���� values (52,22,2,96,89,99,79);
Insert into ���� values (53,23,2,85,62,58,92);
Insert into ���� values (54,24,2,82,73,66,60);
Insert into ���� values (55,25,2,53,46,73,90);
Insert into ���� values (56,26,2,40,84,40,85);
Insert into ���� values (57,27,2,76,54,59,78);
Insert into ���� values (58,28,2,41,91,85,81);
Insert into ���� values (59,29,2,44,81,50,76);
Insert into ���� values (60,30,2,43,71,55,70);
Insert into ���� values (61,1,3,79,53,65,53);
Insert into ���� values (62,2,3,56,42,84,93);
Insert into ���� values (63,3,3,97,95,57,56);
Insert into ���� values (64,4,3,76,98,87,58);
Insert into ���� values (65,5,3,68,84,68,59);
Insert into ���� values (66,6,3,97,92,96,78);
Insert into ���� values (67,7,3,77,84,78,42);
Insert into ���� values (68,8,3,50,94,70,50);
Insert into ���� values (69,9,3,72,57,63,92);
Insert into ���� values (70,10,3,95,57,59,91);
Insert into ���� values (71,11,3,68,57,65,56);
Insert into ���� values (72,12,3,71,95,85,99);
Insert into ���� values (73,13,3,45,51,72,87);
Insert into ���� values (74,14,3,50,66,62,40);
Insert into ���� values (75,15,3,64,61,42,73);
Insert into ���� values (76,16,3,57,91,48,86);
Insert into ���� values (77,17,3,95,82,59,82);
Insert into ���� values (78,18,3,84,77,97,66);
Insert into ���� values (79,19,3,64,79,70,61);
Insert into ���� values (80,20,3,72,62,76,77);
Insert into ���� values (81,21,3,69,45,51,56);
Insert into ���� values (82,22,3,61,90,54,62);
Insert into ���� values (83,23,3,41,99,90,64);
Insert into ���� values (84,24,3,98,71,92,44);
Insert into ���� values (85,25,3,85,50,50,62);
Insert into ���� values (86,26,3,53,60,90,71);
Insert into ���� values (87,27,3,76,85,77,64);
Insert into ���� values (88,28,3,62,58,91,76);
Insert into ���� values (89,29,3,62,88,74,62);
Insert into ���� values (90,30,3,57,53,48,91);
Insert into ���� values (91,1,4,92,48,78,56);
Insert into ���� values (92,2,4,76,92,80,60);
Insert into ���� values (93,3,4,71,70,73,77);
Insert into ���� values (94,4,4,58,54,99,92);
Insert into ���� values (95,5,4,90,41,90,69);
Insert into ���� values (96,6,4,59,56,64,71);
Insert into ���� values (97,7,4,57,52,88,46);
Insert into ���� values (98,8,4,72,45,77,58);
Insert into ���� values (99,9,4,55,60,71,85);
Insert into ���� values (100,10,4,63,90,93,47);
Insert into ���� values (101,11,4,98,62,48,82);
Insert into ���� values (102,12,4,67,51,71,80);
Insert into ���� values (103,13,4,96,88,50,64);
Insert into ���� values (104,14,4,71,77,67,64);
Insert into ���� values (105,15,4,83,55,80,63);
Insert into ���� values (106,16,4,58,63,56,73);
Insert into ���� values (107,17,4,45,49,49,95);
Insert into ���� values (108,18,4,97,56,91,56);
Insert into ���� values (109,19,4,95,57,93,82);
Insert into ���� values (110,20,4,82,98,90,56);
Insert into ���� values (111,21,4,69,68,43,96);
Insert into ���� values (112,22,4,71,51,44,90);
Insert into ���� values (113,23,4,95,44,78,50);
Insert into ���� values (114,24,4,87,64,99,92);
Insert into ���� values (115,25,4,64,47,80,88);
Insert into ���� values (116,26,4,65,66,84,52);
Insert into ���� values (117,27,4,79,93,88,85);
Insert into ���� values (118,28,4,70,85,80,48);
Insert into ���� values (119,29,4,50,49,92,63);
Insert into ���� values (120,30,4,90,99,88,97);
Insert into ���� values (121,1,5,83,92,91,65);
Insert into ���� values (122,2,5,48,99,63,70);
Insert into ���� values (123,3,5,66,97,73,41);
Insert into ���� values (124,4,5,96,47,77,61);
Insert into ���� values (125,5,5,96,72,78,75);
Insert into ���� values (126,6,5,86,95,77,40);
Insert into ���� values (127,7,5,48,62,43,97);
Insert into ���� values (128,8,5,44,59,86,40);
Insert into ���� values (129,9,5,62,79,83,50);
Insert into ���� values (130,10,5,69,67,47,57);
Insert into ���� values (131,11,5,44,56,87,72);
Insert into ���� values (132,12,5,60,50,43,65);
Insert into ���� values (133,13,5,86,84,95,86);
Insert into ���� values (134,14,5,82,52,67,46);
Insert into ���� values (135,15,5,86,51,68,52);
Insert into ���� values (136,16,5,89,53,52,85);
Insert into ���� values (137,17,5,61,75,80,90);
Insert into ���� values (138,18,5,57,99,88,74);
Insert into ���� values (139,19,5,94,55,41,77);
Insert into ���� values (140,20,5,52,89,58,99);
Insert into ���� values (141,21,5,81,55,91,65);
Insert into ���� values (142,22,5,70,66,95,66);
Insert into ���� values (143,23,5,80,53,80,82);
Insert into ���� values (144,24,5,52,72,84,53);
Insert into ���� values (145,25,5,46,94,42,56);
Insert into ���� values (146,26,5,52,63,79,69);
Insert into ���� values (147,27,5,43,70,50,83);
Insert into ���� values (148,28,5,87,48,85,85);
Insert into ���� values (149,29,5,47,66,94,94);
Insert into ���� values (150,30,5,82,86,72,53);
Insert into ���� values (151,1,6,65,58,65,55);
Insert into ���� values (152,2,6,47,57,57,47);
Insert into ���� values (153,3,6,86,91,86,58);
Insert into ���� values (154,4,6,92,73,76,46);
Insert into ���� values (155,5,6,91,49,90,69);
Insert into ���� values (156,6,6,66,73,71,73);
Insert into ���� values (157,7,6,75,80,78,54);
Insert into ���� values (158,8,6,58,75,65,72);
Insert into ���� values (159,9,6,47,62,43,99);
Insert into ���� values (160,10,6,84,60,86,69);
Insert into ���� values (161,11,6,83,98,86,87);
Insert into ���� values (162,12,6,45,97,55,83);
Insert into ���� values (163,13,6,96,49,96,82);
Insert into ���� values (164,14,6,90,97,61,88);
Insert into ���� values (165,15,6,50,80,71,52);
Insert into ���� values (166,16,6,58,79,60,45);
Insert into ���� values (167,17,6,97,63,93,99);
Insert into ���� values (168,18,6,42,48,40,69);
Insert into ���� values (169,19,6,45,43,50,73);
Insert into ���� values (170,20,6,69,83,46,72);
Insert into ���� values (171,21,6,63,71,80,54);
Insert into ���� values (172,22,6,79,41,47,50);
Insert into ���� values (173,23,6,61,94,94,65);
Insert into ���� values (174,24,6,40,83,98,88);
Insert into ���� values (175,25,6,63,67,42,42);
Insert into ���� values (176,26,6,80,41,91,85);
Insert into ���� values (177,27,6,97,53,57,84);
Insert into ���� values (178,28,6,92,91,84,63);
Insert into ���� values (179,29,6,76,78,67,81);
Insert into ���� values (180,30,6,69,60,75,99);

















