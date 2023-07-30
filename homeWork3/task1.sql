create table if not exists salespeople
( 
snum int primary key unique,
sname varchar(10) not null,
city varchar(15) not null,
comm decimal(3, 2)
);

insert into
	salespeople (snum, sname, city, comm)
values 	
	(1001, "Peel", "London", .12),
    (1002, "Serres", "San Jose", .13),
    (1004, "Motica", "London", .11),
    (1007, "Rifkin", "Barcelona", .15),
    (1003, "Axelrod", "New York", .10);

create table if not exists customers
(
cnum int primary key unique,
cname varchar(15) not null,
city varchar(15) not null,
rating int not null,
snum int,
foreign key (snum) references salespeople (snum)
);

insert into 
	customers (cnum, cname, city, rating, snum)
values
	(2001, "Hoffman", "London", 100, 1001),
    (2002, "Giovanni", "Rome", 200, 1003),
    (2003, "Liy", "San Jose", 200, 1002),
    (2004, "Grass", "Berlin", 300, 1002),
    (2006, "Clemens", "London", 100, 1001),
    (2008, "Cisneros", "San Jose", 300, 1007),
    (2007, "Pereira", "Rome", 100, 1004);
    
	create table if not exists orders
    (
    onum int primary key unique,
    amt decimal(7, 2) not null,
    odate date not null,
    cnum int,
    snum int,
    foreign key (cnum) references customers (cnum),
    foreign key (snum) references salespeople (snum)
    );
    
    insert into
		orders (onum, amt, odate, cnum, snum)
	values
		(3001, 18.69, "1990-03-10", 2008, 1007),
        (3003, 767.19, "1990-03-10", 2001, 1001),
        (3002, 1900.10, "1990-03-10", 2007, 1004),
        (3005, 5160.45, "1990-03-10", 2003, 1002),
        (3006, 1098.16, "1990-03-10", 2008, 1007),
        (3009, 1713.23, "1990-04-10", 2002, 1003),
		(3007, 75.75, "1990-04-10", 2004, 1002),
		(3008, 4723.00, "1990-05-10", 2006, 1001),
		(3010, 1309.95, "1990-06-10", 2004, 1002),
		(3011, 9891.88, "1990-06-10", 2006, 1001);

select city, sname, snum,comm
from salespeople;

select rating, cname
from customers
where city = "San Jose";

select distinct snum
from orders;

select *
from customers
where cname like "%G%";

select *
from orders
where amt > 1000.00;

select min(amt) as min
from orders;

select *
from customers
where rating > 100 and not city = "Rome";    