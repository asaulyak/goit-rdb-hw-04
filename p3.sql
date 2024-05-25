select *
from customers c
         inner join orders o on o.customer_id = c.id
         inner join employees e on e.employee_id = o.employee_id
         inner join shippers sh on o.shipper_id = sh.id
         inner join order_details od on o.id = od.order_id
         inner join products p on od.product_id = p.id
         inner join categories ca on p.category_id = ca.id
         inner join suppliers s on p.supplier_id = s.id;
