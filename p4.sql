select count(*)
from customers c
         inner join orders o on o.customer_id = c.id
         inner join employees e on e.employee_id = o.employee_id
         inner join shippers sh on o.shipper_id = sh.id
         inner join order_details od on o.id = od.order_id
         inner join products p on od.product_id = p.id
         inner join categories ca on p.category_id = ca.id
         inner join suppliers s on p.supplier_id = s.id;

select *
from customers c
         left join orders o on o.customer_id = c.id
         left join employees e on e.employee_id = o.employee_id
         left join shippers sh on o.shipper_id = sh.id
         left join order_details od on o.id = od.order_id
         left join products p on od.product_id = p.id
         left join categories ca on p.category_id = ca.id
         left join suppliers s on p.supplier_id = s.id;

-- кількість рядків збільшилась, в результаті присутні рекорди зі значеннями атрибутів NULL, через те що вибираються всі записи з лівої таблиці (навіть при відсутності відповідних у правій).

select *
from customers c
         inner join orders o on o.customer_id = c.id
         inner join employees e on e.employee_id = o.employee_id
         inner join shippers sh on o.shipper_id = sh.id
         inner join order_details od on o.id = od.order_id
         inner join products p on od.product_id = p.id
         inner join categories ca on p.category_id = ca.id
         inner join suppliers s on p.supplier_id = s.id
where e.employee_id > 3
   or e.employee_id <= 10;

select ca.name, count(*), avg(od.quantity)
from customers c
         inner join orders o on o.customer_id = c.id
         inner join employees e on e.employee_id = o.employee_id
         inner join shippers sh on o.shipper_id = sh.id
         inner join order_details od on o.id = od.order_id
         inner join products p on od.product_id = p.id
         inner join categories ca on p.category_id = ca.id
         inner join suppliers s on p.supplier_id = s.id
group by ca.name;

select ca.name, count(*), avg(od.quantity) as average
from customers c
         inner join orders o on o.customer_id = c.id
         inner join employees e on e.employee_id = o.employee_id
         inner join shippers sh on o.shipper_id = sh.id
         inner join order_details od on o.id = od.order_id
         inner join products p on od.product_id = p.id
         inner join categories ca on p.category_id = ca.id
         inner join suppliers s on p.supplier_id = s.id
group by ca.name
having average > 21;


select ca.name, count(*), avg(od.quantity) as average
from customers c
         inner join orders o on o.customer_id = c.id
         inner join employees e on e.employee_id = o.employee_id
         inner join shippers sh on o.shipper_id = sh.id
         inner join order_details od on o.id = od.order_id
         inner join products p on od.product_id = p.id
         inner join categories ca on p.category_id = ca.id
         inner join suppliers s on p.supplier_id = s.id
group by ca.name
order by count(*) desc;


select ca.name, count(*), avg(od.quantity) as average
from customers c
         inner join orders o on o.customer_id = c.id
         inner join employees e on e.employee_id = o.employee_id
         inner join shippers sh on o.shipper_id = sh.id
         inner join order_details od on o.id = od.order_id
         inner join products p on od.product_id = p.id
         inner join categories ca on p.category_id = ca.id
         inner join suppliers s on p.supplier_id = s.id
group by ca.name
order by count(*) desc
limit 4 offset 1;


