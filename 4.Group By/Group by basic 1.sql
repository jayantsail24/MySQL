create database group_by;
use group_by;
select * from payment;

-- Easy
-- 1.Find total amount received from each payment mode.
select mode, sum(amount) `total amount`
from payment
group by mode;

-- 2.Find average amount paid by each customer.
select customer_id, round(avg(amount), 2) `average amount`
from payment
group by customer_id;

-- 3.Show payment modes where total amount collected is greater than 100.
select mode, sum(amount) `total amount`
from payment
group by mode
having `total amount` > 100;

-- 4.Find customers who paid more than 50 in total.
select customer_id, sum(amount) `total amount`
from payment
group by customer_id
having `total amount` > 50;

-- 5.Display total number of payments made by each mode.
select mode, count(*) `number of payments`
from payment
group by mode;

-- 6.Find the count of transactions per payment mode having more than 2 payments.
select mode, count(*) `total transactions`
from payment
group by mode
having `total transactions` > 2;

-- 7.Show payment modes with average payment amount greater than 40.
select mode, round(avg(amount), 2) `avg amount`
from payment
group by mode
having `avg amount` > 40;

-- 8.List customers whose maximum single payment is greater than 70.
select customer_id, max(amount) `max amount`
from payment
group by customer_id
having `max amount` > 70;

-- 9.Display payment modes where total amount is between 100 and 200.
select mode, sum(amount) `total amount`
from payment
group by mode
having `total amount` between 100 and 200;

-- 10.Find customers who made payments totaling less than 60.
select customer_id, sum(amount) `total amount`
from payment
group by customer_id
having `total amount` < 60;

-- intermediate
-- 11.Find the total and average amount paid by each payment mode.
select mode, round(avg(amount), 2) `avg amount`, sum(amount) `total amount`
from payment
group by mode;

-- 12.Show payment modes where the minimum payment amount is greater than 30.
select mode, min(amount) `min amount`
from payment
group by mode
having `min amount` > 30;

-- 13.Find how many unique customers used each payment mode and show only those with more than 1 customer.
select mode, count(distinct customer_id) `unique customer`
from payment
group by mode
having `unique customer` > 1;

-- 14.Find payment modes with total payment greater than the average total amount across all modes.
select mode, sum(amount) `total amount`, round(avg(amount), 2) `avg amount`
from payment
group by mode
having `total amount` > `avg amount`;

-- 15.Show customers who made more than 2 payments in total. 
select customer_id, count(*) `number of payments`
from payment
group by customer_id
having `number of payments` > 2; 

-- 16.Find customers whose minimum payment amount is greater than 50. 
select customer_id, min(amount) `min amount`
from payment
group by customer_id
having `min amount` > 50;

-- 17.Find payment modes that contributed more than 25% of total revenue. 
select mode, sum(amount) `total revenue`
from payment
group by mode
having `total revenue` > 0.25 * (select sum(amount) from payment);

-- 18.Show customers whose average payment amount is greater than 50.
select customer_id, round(avg(amount), 2) `avg amount`
from payment
group by customer_id
having `avg amount` > 50;

-- 19.Find the total payments for each customer and mode combination where total > 70.
select customer_id, mode, sum(amount) `total amount`
from payment
group  by customer_id, mode
having `total amount` > 70;

-- 20.Display payment modes that had transactions on more than 3 distinct dates.
select mode, count(distinct payment_date) `date`
from payment
group by mode
having `date` > 3;

select * from comm;
--  questions of all functions used in group by --
--  ASC
-- 1.Show total amount spent by each customer sorted in ascending order of total.
select customer_name, round(sum(total_amount), 2) `total amount`
from comm
group by customer_name
order by `total amount` asc;

-- 2.List each product with the number of orders sorted A → Z by product name. 
select product_name, count(*) `total order`
from comm
group by product_name
order by product_name asc;

-- DESC
-- 1.Show total revenue per product sorted from highest to lowest. 
select product_name, round(sum(quantity * total_amount), 2) `total revenue`
from comm
group by product_name
order by `total revenue` desc;

-- 2.Display customers sorted by their maximum order amount in descending order. 
select customer_name, round(max(total_amount), 2) `max amount`
from comm
group by customer_name
order by `max amount` desc;

-- LIMIT
--  1.Show the top 5 customers by total spending.
select customer_name, round(sum(total_amount), 2) `total spending`
from comm
group by customer_name
order by `total spending` desc
limit 5;

-- 2.Show the first 3 products based on number of orders.
select product_name, count(*) `total orders`
from comm
group by product_name
order by `total orders` asc
limit 3;

-- OFFSET
-- Eg = LIMIT 10 OFFSET 10 → skip first 10 groups, show next 10.
-- 1.Show customers ranked by total spending, skip the top 5, then show next 5. 
select customer_name, round(sum(total_amount), 2) `total spending`
from comm
group by customer_name
order by `total spending` 
limit 5 offset 5;

-- 2.Show products ordered by total revenue, skip first 3, show next 2. 
select product_name, round(sum(quantity * total_amount), 2) `total revenue`
from comm
group by product_name
order by `total revenue` desc
limit 2 offset 3;

-- DISTINCT
-- 1.Group orders by customer_location to display all unique locations.
select customer_name, count(distinct customer_location) `unique location`
from comm
group by customer_name
order by `unique location` asc;

-- ORDER BY
-- 1.Show total revenue per day (group by order_date) sorted from oldest to newest. 
select day(order_date) `day`, round(sum(quantity * total_amount), 2) `total revenue`
from comm
group by day(order_date)
order by `day` asc;

-- 2.Show total orders per product sorted by order_count in descending order.
select product_name, count(*) `total order`
from comm
group by product_name
order by `total order` desc;

-- WHERE CLAUSE
-- (WHERE filters rows BEFORE grouping)
--  1.Find each customer’s total spending for orders where amount > 500.
select customer_name, round(sum(total_amount), 2) `total spending`
from comm
where total_amount > 500
group by customer_name;

-- filtering after grouping (using having)
select customer_name, round(sum(total_amount), 2) `total spending`
from comm
group by customer_name
having `total spending` > 500;

-- 2.Find total orders per customer for orders placed before '2024-05-01'. 
select customer_name, count(*) `total orders`
from comm
where order_date < '2024-05-01'
group by customer_name;

-- 3.Show total revenue per product where price < 200. 
select product_name, round(sum(quantity * total_amount), 2) `total revenue`
from comm
where price < 200
group by product_name;

-- 4.Find number of orders per city for customers located in 'Mumbai'. 
select customer_location, count(*) `total order`
from comm
where customer_location = "'San Antonio, TX'"
group by customer_location;

-- HAVING CLAUSE
-- (HAVING filters AFTER grouping)
-- 1.Find customers whose total spending is greater than 1000. 
select customer_name, round(sum(total_amount), 2) `total spending`
from comm
group by customer_name
having `total spending` > 1000;

-- 2.Show products where the average order amount is more than 300. 
select product_name, round(avg(total_amount), 2) `avg amount`
from comm
group by product_name
having `avg amount` > 300;

-- 3.Find cities where total revenue exceeds 2000. 
select customer_location, round(sum(quantity * total_amount), 2) `total revenue`
from comm
group by customer_location
having `total revenue` > 2000;

-- 4.Show customers whose highest single order value is greater than 800. 
select customer_name, round(max(total_amount), 2) `highest order`
from comm
group by customer_name
having `highest order` > 800;
