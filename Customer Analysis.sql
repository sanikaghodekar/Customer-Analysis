show databases;

create database customer;
use customer;

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
email VARCHAR(100),
signup_date DATE);

INSERT INTO customers VALUES
(1,'Rahul Sharma','rahul@gmail.com','2024-01-10'),
(2,'Priya Singh','priya@gmail.com','2024-02-05'),
(3,'Amit Patel','amit@gmail.com','2024-03-12'),
(4,'Neha Verma','neha@gmail.com','2024-03-20'),
(5,'Rohit Gupta','rohit@gmail.com','2024-04-01');

select * from customers;

CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2)
);

INSERT INTO products VALUES
(101,'Laptop','Electronics',60000),
(102,'Mobile','Electronics',20000),
(103,'Headphones','Accessories',2000),
(104,'Smart Watch','Accessories',5000);

select * from products;

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
product_id INT,
order_date DATE,
quantity INT,
total_amount DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO orders VALUES
(1,1,101,'2024-04-05',1,60000),
(2,2,102,'2024-04-07',1,20000),
(3,1,103,'2024-04-10',2,4000),
(4,3,102,'2024-04-15',1,20000),
(5,4,104,'2024-04-18',1,5000),
(6,1,102,'2024-05-01',1,20000),
(7,5,101,'2024-05-03',1,60000);

select * from orders;

-- Total Customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- Monthly Customer Growth
SELECT 
DATE_FORMAT(signup_date,'%Y-%m') AS month,
COUNT(customer_id) AS new_customers
FROM customers
GROUP BY month;

-- Total Sales
SELECT SUM(total_amount) AS total_sales
FROM orders;

-- Monthly Sales Trend
SELECT 
DATE_FORMAT(order_date,'%Y-%m') AS month,
SUM(total_amount) AS monthly_sales
FROM orders
GROUP BY month
ORDER BY month;

-- Top 5 Customers by Spending
SELECT 
c.customer_name,
SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- Most Popular Products
SELECT 
p.product_name,
COUNT(o.order_id) AS total_orders
FROM products p
JOIN orders o 
ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total_orders DESC;

-- Repeat Customers
SELECT 
customer_id,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING total_orders > 1;