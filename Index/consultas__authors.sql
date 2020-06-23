select db_index;

/*Consulta 1*/
select count(*)
from authors;

/*Consulta 2*/
select count(*)
from authors
where last_name = 'Smith';

/*Consulta 3*/
select count(*)
from authors
where first_name = 'Emma';

/*Consulta 1*/
select count(*)
from authors
where birthdate 
between '1980-05-01' and '1980-05-31';

/*Consulta 2*/
select count(*)
from authors
where first_name = 'Michael';

/*Consulta 3*/
select count(*)
from authors
where last_name in ('Hawkins', 'Snow');

/*Consulta 4*/
select count(*)
from authors
where birthdate = '1995-04-01';