drop view if exists productos_pedidos_por_cliente;
create view  productos_pedidos_por_cliente as
select pro.productName, c.customerName, off.*
from customers c, employees emp, offices off, products pro, orderdetails ordt, orders orde
where off.officeCode=emp.officeCode
and emp.employeeNumber=c.salesRepEmployeeNumber
and c.customerNumber=orde.customerNumber
and orde.orderNumber=ordt.orderNumber
and ordt.productCode=pro.productCode
order by c.customerName asc
;