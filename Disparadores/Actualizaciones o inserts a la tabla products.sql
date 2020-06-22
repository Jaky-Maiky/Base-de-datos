DROP TABLE IF EXISTS logProducto;
CREATE TABLE logProducto(
id int auto_increment,
productCode varchar(15),
dateLog timestamp default now(),
descripcion varchar(255) not null,
primary key (id, productCode)
);

DELIMITER $$
DROP TRIGGER IF EXISTS after_insertar_products;
create trigger after_insertar_products
after insert on products
for each row
Begin
		INSERT INTO logProducto(productCode, descripcion)
        VALUES (new.productCode, CONCAT('Se ha insertado un nuevo producto: ', NEW.productName));
End$$
DELIMITER ;

DELIMITER dd
DROP TRIGGER IF EXISTS after_actualizar_products;
create trigger after_actualizar_products
after update on products
for each row
Begin
		INSERT INTO logProducto(productCode, descripcion)
        VALUES (old.productCode, CONCAT('Se ha actualizado un producto: ', old.productName));
End dd
DELIMITER ;
