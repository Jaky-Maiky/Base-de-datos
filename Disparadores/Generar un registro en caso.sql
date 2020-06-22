DROP TABLE IF EXISTS productlinesEliminados;
CREATE TABLE productlinesEliminados
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    productLine VARCHAR(50) not null,
    textDescription VARCHAR(4000),
    htmlDescription MEDIUMTEXT,
    image MEDIUMBLOB,
    fecha_de_eliminacion TIMESTAMP DEFAULT NOW()
);
DROP TABLE IF EXISTS productsEliminados;
CREATE TABLE productsEliminados
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    productCode varchar(15) not null,
    productName varchar(70) not null,
    productLine VARCHAR(50) not null,
    productScale varchar(10) not null,
    productVendor varchar(50) not null,
    productDescription text not null,
    quantityInStock smallint(6) not null,
    buyPrice decimal(10,2) not null,
    MSRP decimal(10,2) not null,
    fecha_de_eliminacion TIMESTAMP DEFAULT NOW()
);
DROP TABLE IF EXISTS customersEliminados;
CREATE TABLE customersEliminados
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    customerNumber int(11) not null,
    customerName varchar(50) not null,
    contactLastName varchar(50) not null,
    contactFirstName varchar(50) not null,
    phone varchar(50) not null,
    addressLine1 varchar(50) not null,
    addressLine2 varchar(50) ,
    city varchar(50) not null,
    state varchar(50),
    postalCode varchar(15),
    country varchar(50),
    salesRepEmployeeNumber int(11),
    creditLimit decimal(10,2),
    fecha_de_eliminacion TIMESTAMP DEFAULT NOW()
);
----------------------------------------
//Luego se generarán los disparadores, que serán del caso before delete.

DELIMITER $$
DROP TRIGGER IF EXISTS before_productline_eliminar;
CREATE TRIGGER before_productline_eliminar
    BEFORE DELETE
    ON productlines
    FOR EACH ROW
BEGIN
    INSERT INTO productlinesEliminados(productLine, textDescription, htmlDescription, image)
    VALUES (OLD.productLine, OLD.textDescription, OLD.htmlDescription, OLD.image);
END$$

DELIMITER ;
DELIMITER aa
DROP TRIGGER IF EXISTS before_product_eliminar;
CREATE TRIGGER before_product_eliminar
    BEFORE DELETE
    ON products
    FOR EACH ROW
BEGIN
    INSERT INTO productsEliminados(productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP)
    VALUES (OLD.productCode, OLD.productName, OLD.productLine, OLD.productScale, OLD.productVendor, OLD.productDescription, OLD.quantityInStock, OLD.buyPrice, OLD.MSRP);
ENDaa

DELIMITER ;

DELIMITER rr
DROP TRIGGER IF EXISTS before_customer_eliminar;
CREATE TRIGGER before_customer_eliminar
    BEFORE DELETE
    ON customers
    FOR EACH ROW
BEGIN
    INSERT INTO customersEliminados( customerNumber, customerName, contactLastName, contactFirstName, phone, 
    addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit)
    VALUES (OLD.customerNumber, OLD.customerName, OLD.contactLastName, OLD.contactFirstName, OLD.phone, 
    OLD.addressLine1, OLD.addressLine2, OLD.city, OLD.state, OLD.postalCode, OLD.country, OLD.salesRepEmployeeNumber, OLD.creditLimit);
ENDrr

DELIMITER ;
