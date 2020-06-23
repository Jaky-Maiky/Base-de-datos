select db_index;

/*Index 1*/
create index person_first_name_idx
on authors(first_name);
/*Index 2*/
create index person_first_name_last_name_idx
on authors(last_name,first_name);


select count(*)
from authors
where first_name = 'Michael' AND last_name = 'Miller';