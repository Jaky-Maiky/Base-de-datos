DELIMITER $$
DROP TRIGGER IF EXISTS Before_order_no_eliminar;
CREATE TRIGGER Before_order_no_eliminar
   BEFORE DELETE ON orders
FOR EACH ROW
BEGIN
   If Old.orderNumber is not null then
   SIGNAL SQLSTATE '45000'
   SET MESSAGE_TEXT = 'No puede eliminar este registro de la tabla orders';
End If;
END$$
DELIMITER ;

DELIMITER aa
DROP TRIGGER IF EXISTS Before_payments_no_eliminar;
CREATE TRIGGER Before_payments_no_eliminar
   BEFORE DELETE ON payments
FOR EACH ROW
BEGIN
   If Old.checkNumber is not null then
   SIGNAL SQLSTATE '45000'
   SET MESSAGE_TEXT = 'No puede eliminar este registro de la tabla payments';
End If;
END aa
DELIMITER ;
