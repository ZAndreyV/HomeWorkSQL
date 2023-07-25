CREATE TABLE if not exists sales
(
	id int primary key auto_increment,
    oder_date date,
    buket int
);

insert into 
	sales (oder_date, buket)
values
	('2021-01-01', 204),
    ('2021-01-02', 256),
    ("2021-01-03", 65),
    ('2021-01-04', 189),
    ('2021-01-05', 301);
    
    select id, oder_date, buket,
    case
		when buket <= 100
			then "Маленький заказ"
		when buket between 100 and 300 
			then "Средний заказ"
		else 
			"Большой заказ"
	end as category
    from sales;