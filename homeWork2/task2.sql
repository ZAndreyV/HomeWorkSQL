create table if not exists orders
(
	id int primary key auto_increment,
    emploeeId varchar(5) not null,
    amount decimal(7, 2),
    orderStatus varchar(20)
);

insert into
	orders (emploeeId, amount, orderStatus)
values 
	("e03", 15, "open"),
    ("e01", 25, "open"),
    ("e05", 100.70, "closed"),
    ("e02", 22.18, "open"),
    ("e04", 9.50, "cancelled"),
    ("e04", 99.99, "open");
    
    select  id, orderStatus,
    case
		when orderStatus = "open"
			then "Order is in open state."
		when orderStatus = "cancelled"
			then "Order is cancelled"
		else
			"Order is closed"
		end as full_order_summury
        from orders;