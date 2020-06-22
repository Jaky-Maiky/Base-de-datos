DROP TABLE IF EXISTS exEmployees;
CREATE TABLE exEmployees
(
    id int primary key auto_increment,
    employeeNumber int(11) not null,
    lastName varchar(50) not null,
    firstName varchar(50) not null,
    extension varchar(10) not null,
    email varchar(100) not null,
    officeCode varchar(10) not null,
    reportsTo int(11),
    jobTitle varchar(50) not null,
    fecha_de_eliminacion timestamp default now()
);
--------------------------------------
DELIMITER $$
DROP TRIGGER IF EXISTS before_employee_eliminar;
CREATE TRIGGER before_employee_eliminar
    BEFORE DELETE
    ON employees
    FOR EACH ROW
BEGIN
    INSERT INTO exEmployees(employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle)
    VALUES (OLD.employeeNumber, OLD.lastName, OLD.firstName, OLD.extension, OLD.email, OLD.officeCode, OLD.reportsTo, OLD.jobTitle);
END$$

DELIMITER ;
