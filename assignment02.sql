--1�� ���� 
create table ����ȸ������ó (
	ȸ����ȣ varchar2(7),
	���� varchar2(20),
	�ּ� varchar2(50),
	��ȭ��ȣ varchar2(20),
	primary key (ȸ����ȣ)
);

insert into ����ȸ������ó (ȸ����ȣ, ����, �ּ�, ��ȭ��ȣ)
select ȸ����ȣ, ����, �ּ�, ��ȭ��ȣ from ȸ��
where �ּ� like '����%';

--2�� ���� 
create table ����ȸ������ó (
	ȸ����ȣ varchar2(7),
	���� varchar2(20),
	�ּ� varchar2(50),
	��ȭ��ȣ varchar2(20),
	primary key (ȸ����ȣ)
);

insert into ����ȸ������ó (ȸ����ȣ, ����, �ּ�, ��ȭ��ȣ)
select ȸ����ȣ, ����, �ּ�, ��ȭ��ȣ from ȸ��
where not �ּ� like '�����%';

--3�� ����
insert into �з� values (4, 'Ű����');

--4�� ���� 
insert into ��ǰ values (78, '�Ｚ 32GB USB �޸�', 4, null, 2);

--5�� ����
update ȸ�� set �ּ� = '�λ�� ������' where ȸ����ȣ = 'T001';

--6�� ����
update ��ǰ set �ܰ� = �ܰ�+(�ܰ�/10) where �з��ڵ� = 1;

--7�� ���� 
delete from �ֹ��󼼳��� where ��ǰ��ȣ = 8;
delete from ��ǰ where ��ǰ��ȣ = 8;

--8�� ���� 
delete from �ֹ��󼼳��� where �ֹ���ȣ in (select �ֹ���ȣ from �ֹ� where ȸ����ȣ = 'T004');
delete from �ֹ� where ȸ����ȣ = 'T004';
delete from ȸ�� where ȸ����ȣ = 'T004';

--9�� ����
select ȸ����ȣ from �ֹ�
where ȸ����ȣ in (select ȸ����ȣ from ȸ�� where ���� = '��')
having count(*) >= 1 group by ȸ����ȣ;

--10�� ���� 
select ��ǰ��ȣ from ��ǰ where �ܰ� <= 10000
minus
select ��ǰ��ȣ from �ֹ��󼼳���;

--11�� ���� 
select avg(�ܰ�) as �ܰ�_��� from ��ǰ;

--12�� ���� 
select �з��ڵ�, avg(�ܰ�) as �ܰ�_��� from ��ǰ group by �з��ڵ�;

--13�� ����
select count(*) as �����̻�_��ǰ from ��ǰ where �ܰ� >= 10000;

--14�� ����
select ȸ����ȣ, count(*) as �ֹ�_Ƚ�� from �ֹ� group by ȸ����ȣ;

--15�� ���� 
select ȸ����ȣ from �ֹ� having count(ȸ����ȣ) >= 3 group by ȸ����ȣ;

--16�� ����
select i.��ǰ��ȣ, sum(oi.����*i.�ܰ�) as �ֹ��� from ��ǰ i, �ֹ��󼼳��� oi
where i.��ǰ��ȣ = oi.��ǰ��ȣ
group by i.��ǰ��ȣ;

--17�� ���� 
select i.��ǰ��ȣ from ��ǰ i, �ֹ��󼼳��� oi
where i.��ǰ��ȣ = oi.��ǰ��ȣ
having sum(oi.����*i.�ܰ�) >= 100000
group by i.��ǰ��ȣ;

--18�� ���� 
select o.�ֹ���ȣ, sum(oi.����*i.�ܰ�) as �ֹ��� from ��ǰ i, �ֹ��󼼳��� oi, �ֹ� o
where i.��ǰ��ȣ = oi.��ǰ��ȣ and o.�ֹ���ȣ = oi.�ֹ���ȣ
group by o.�ֹ���ȣ;

--19(1)�� ���� 
select ȸ����ȣ from �ֹ� where �ֹ��� = '2017-01-02'
intersect
select ȸ����ȣ from �ֹ� where �ֹ��� = '2017-01-03';

--19(2)�� ���� 
select ȸ����ȣ from �ֹ� where �ֹ��� = '2017-01-02' 
and ȸ����ȣ in (select ȸ����ȣ from �ֹ� where �ֹ��� = '2017-01-03');

--20(1)�� ����
select ��ǰ��ȣ, ��ǰ�� from ��ǰ 
where �ܰ� > all(select �ܰ� from ��ǰ where �з��ڵ� = 1);

--21(1)�� ����
select i1.��ǰ��ȣ, i2.��ǰ�� from ��ǰ i1, ��ǰ i2
where i2.��ǰ��ȣ = 14 and i1.�ܰ� > i2.�ܰ�;