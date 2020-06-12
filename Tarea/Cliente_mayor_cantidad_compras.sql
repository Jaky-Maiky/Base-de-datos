DELIMITER $$ DROP PROCEDURE IF EXISTS clientes_con_mas_compras;
CREATE PROCEDURE clientes_con_mas_compras(
in fecha_inicio date,
in fecha_fin date
)
BEGIN select customerName, count(o.orderNumber) as total_compras, count(distinct p.productName) as total_productos
from orderdetails od, products p, orders o, customers c
where od.productCode = p.productCode
and od.orderNumber = o.orderNumber
and o.customerNumber = c.customerNumber
and o.orderDate between fecha_inicio and fecha_fin
group by customerName
order by total_compras desc; END $$ 
DELIMITER ;