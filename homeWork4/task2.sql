create table test_a 
(
	id int,
    data varchar(1)
);
insert into test_a(id, data) 
values
	(10, 'A'),
	(20, 'A'),
	(30, 'F'),
	(40, 'D'),
	(50, 'C');
create table test_b 
(
	id int
);
insert into test_b(id) 
values
	(10),
	(30),
	(50);
    
SELECT *
FROM test_a
NATURAL LEFT JOIN test_b
WHERE test_b.id IS NULL;
