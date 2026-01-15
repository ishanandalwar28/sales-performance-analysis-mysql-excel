CREATE TABLE sales_data (
order_id INT,
order_date DATE,
region 	VARCHAR(20),
product varchar(20),
quantity INT,
sales_amount INT
);

INSERT INTO sales_data 
VALUES
(101, '2025-01-05', 'North', 'Laptop',2, 130000),
(102, '2025-01-08', 'South', 'Mobile', 4, 80000),
(103, '2025-02-02', 'East', 'Tablet', 5, 50000),
(104, '2025-02-15', 'West', 'Laptop', 2, 70000),
(105,'2025-03-10', 'North', 'Mobile', 5, 75000),
(106, '2025-03-20', 'South', 'Tablet', 3, 30000),
(107, '2025-04-03', 'East', 'Laptop', 1, 60000),
(108, '2025-04-18', 'West', 'Mobile', 6, 90000);
SELECT * FROM sales_data;



SELECT region, SUM(sales_amount)
total_sales
FROM sales_data
GROUP BY region;

SELECT product, SUM(sales_amount)
total_sales
FROM sales_data
GROUP BY product;

SELECT MONTH(order_date) month, SUM(sales_amount) monthly_sales
FROM sales_data
GROUP BY order_date
ORDER BY MONTH(order_date);

SELECT product, SUM(quantity)
total_quantity
FROM sales_data
GROUP BY product
ORDER BY total_quantity DESC;

