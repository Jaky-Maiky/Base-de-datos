CREATE VIEW producto_mas_vendido AS
select p.productName, p.productLine, sum(quantityOrdered) as total_ventas, count(distinct c.customerNumber) as total_compradores
from products p, orderdetails od, orders o, customers c
where od.productCode = p.productCode
and od.orderNumber = o.orderNumber
and o.customerNumber = c.customerNumber
group by p.productCode
order by total_ventas DESC;


SELECT * FROM producto_mas_vendido;