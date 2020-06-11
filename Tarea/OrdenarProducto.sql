create procedure OrdenarProducto(
orderNumberP int (11),
orderDateP date ,
requieredDateP date ,
shippedDateP date ,
statusP varchar(15) ,
commentsP text,
customerNumberP int(11) 
)
As
begin
insert into orders([ordenNumber],[ordeDate],[requieredDate],[shippedDate],['status'],[comments],[customerNumber]values
(orderNumberP,orderDateP,requieredDateP,shippedDateP,statusP,commentsP,customerNumberP) 
end
GO