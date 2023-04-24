-- SQL-команды для создания таблиц
CREATE TABLE employees
(
    first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	title varchar(100) NOT NULL,
	birth_date date,
	notes text
);


CREATE TABLE customers
(
	customer_id varchar(30) PRIMARY KEY,
	company_name varchar(100) NOT NULL,
	contact_name varchar(100) NOT NULL
);


CREATE TABLE orders
(
	order_id int PRIMARY KEY,
	customer_id varchar(30) REFERENCES customers(customer_id),
	employee_id int NOT NULL ,
	order_date date NOT NULL,
	ship_city varchar(15) NOT NULL
);