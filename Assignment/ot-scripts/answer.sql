-- 데이터베이스 과제 2

-- 1. 주문상태 및 주문일자에 상관없이 'Raytheon'으로부터 받은 주문중 최대 금액은 얼마인가?
-- 자연조인 사용
select name, max(quantity*unit_price) as 최대주문금액_달러 
from (customers natural join orders) join order_items on orders.order_id = order_items.order_id
where name = 'Raytheon'
group by name;

-- 카티션 곱 사용
select name, max(quantity*unit_price) as 최대주문금액_달러 from customers c, orders o, order_items o_i
where c.customer_id = o.customer_id
and o.order_id = o_i.order_id
and name = 'Raytheon'
group by name;

-- 2. 'Raytheon'에서 '17년 1월 2일' 주문한 제품의 제품번호와 제품명, 수량, 단가를 찾아라
select c.name, p.product_id, p.product_name, o_i.quantity, o_i.unit_price, o.order_date
from customers c, products p, order_items o_i, orders o
where c.customer_id = o.customer_id
and o.order_id = o_i.order_id
and p.product_id = o_i.product_id
and name = 'Raytheon'
and order_date = '17/01/02';

-- 3. 'Raytheon'에서 한번에 100개 이상 주문한적이 있는 제품의 ID와 제품명을 찾아라
select p.product_id, p.product_name 
from customers c, products p, order_items o_i, orders o
where c.customer_id = o.customer_id
and o.order_id = o_i.order_id
and p.product_id = o_i.product_id
and name = 'Raytheon'
and o_i.quantity >= 100;

-- 4. 'Asia'에 위치한 창고는 모두 몇개인가?
select count(*) as Asia창고_갯수
from regions r, countries ctr, locations l, warehouses w
where r.region_id = ctr.region_id
and ctr.country_id = l.country_id
and w.location_id = l.location_id
and region_name = 'Asia';

-- 5. 'Asia'창고에 보관중인 제품의 종류와 갯수를 출력하라 
select p.product_id, p.product_name, sum(quantity) as 제품갯수
from inventories i, regions r, countries ctr, locations l, warehouses w, products p, product_categories p_c
where i.product_id = p.product_id
and p.category_id = p_c.category_id
and r.region_id = ctr.region_id
and ctr.country_id = l.country_id
and w.location_id = l.location_id
and region_name = 'Asia'
group by p.product_id, p.product_name
order by product_id;

-- 카테고리에 대한 분류 
select category_name as 제품종류, sum(quantity) as 제품수량
from inventories i, regions r, countries ctr, locations l, warehouses w, products p, product_categories p_c
where i.product_id = p.product_id
and p.category_id = p_c.category_id
and r.region_id = ctr.region_id
and ctr.country_id = l.country_id
and w.location_id = l.location_id
and region_name = 'Asia'
group by category_name;

