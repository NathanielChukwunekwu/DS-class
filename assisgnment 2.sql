SELECT * FROM public.customers
ORDER BY customerid ASC 

create table customersnat(
	customerid INT primary key,
	firstname CHAR (20),
	lastname CHAR (20),
	country CHAR (50),
	score INT
);

create table employeesnat(
	employeeid INT primary key,
	firstname CHAR (20),
	lastname CHAR (20),
	department CHAR (50),
	birthdate date, 
	gender CHAR (1),
	salary INT,
	managerid INT
);

drop table employees111;

create table productsnat(
	productid int primary key,
	product char (30),
	category char (30),
	price int
);

create table ordersnat(
	orderid int primary key,
	productid int references productsnat(productid),
	customerid int references customersnat(customerid),
	salespersonid int references employeesnat(employeeid),
	orderdate date,
	shipdate date,
	orderstatus char,
	shippadd char,
	billadd char,
	qty int,
	sales int,
	creationtime timestamp without time zone
	);

select count (*) 
from customersnat 
as customer_count	


