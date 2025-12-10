use group_by;
select * from comm;

-- intermediate
-- 1.Find all categories where the average price is above $100, ordered by average price descending.
select category, round(avg(price), 2) `avg price`
from comm
group by category
having `avg price` > 100
order by `avg price` desc;

-- 2.Show customers who have made more than 3 orders, along with their total spending, ordered by total spending. 
select customer_name, count(*) `orders`, round(sum(total_amount), 1) `total spending`
from comm
group by customer_name
having `orders` > 3
order by `total spending` desc;

-- 3.Find all cities where total orders exceed $2000, but only include orders from 2024.
select customer_location `cities`, round(sum(total_amount), 1) `total orders`
from comm
where year(order_date) = 2024
group by `cities`
having `total orders` > 2000;


-- 4.Show categories where more than 20 items have been sold in total, ordered by total quantity sold. 
select category, sum(quantity) `total quantity`
from comm
group by category
having `total quantity` > 20
order by `total quantity`;

-- 5.Find customers who bought Electronics products and spent more than $1000 total on Electronics. 
select customer_name, category, round(sum(total_amount), 1) `total amount`
from comm
where category = 'Electronics'
group by customer_name
having `total amount` > 1000
order by `total amount` desc;

-- 6.Show the top 5 products (by name) that have generated more than $500 in total revenue. 
select product_name, round(sum(quantity * price), 1) `total revenue`
from comm
group by product_name
having `total revenue` > 500
order by `total revenue` desc limit 5;

-- 7.Find all months in 2023 where more than 15 orders were placed, ordered chronologically. 
select date_format(order_date, '%y-%m') month, count(order_id) `count`
from comm
where year(order_date) = 2023
group by month
having `count` > 7
order by month;

-- Hard
-- 8.Show categories and cities combination where average order value is above $200 and total orders exceed 5. 
select category, customer_location cities, round(avg(total_amount), 1) `avg order value`, count(*) `total orders`
from comm
group by category, cities
having avg(total_amount) > 200 and `total orders` >= 2
order by `total orders` desc;

-- 9.Find customers who have bought from at least 3 different categories and spent more than $1500 total. 
select customer_name, count(distinct category) `total categories`, round(sum(total_amount), 2) `total amount`
from comm
group by customer_name
having `total categories` >= 3
and `total amount` > 1500; 

-- 10.Show products where the price variance is high (max price - min price > $50) and sold more than twice. 
select product_name, round(max(price) - min(price), 1) `price variance`, count(*) `total orders`
from comm
group by product_name
having `price variance` > 50
and `total orders` > 2;

-- 11.Find the top 3 most profitable months across both years, but only include months with more than 8 orders.
select date_format(order_date, '%y-%m') month, round(sum(total_amount), 1) `total revenue`, count(*) `total orders`
from comm
group by month
having `total orders` > 8
order by `total revenue` desc limit 3;

-- 12.Show customers who have consistently high-value orders (every order > $100) and made at least 4 orders. 
select customer_name, min(total_amount)`min order value`, count(*) `total orders`
from comm
group by customer_name
having `min order value` > 100
and `total orders` >= 4
order by `total orders` desc;

-- 13.Find quarterly performance: quarters with more than 25 orders and average order value above $150. 
select concat(year(order_date), '-Q' ,quarter(order_date)) `quarter`, count(*) `orders`, round(avg(total_amount), 1) `avg value`
from comm
group by `quarter`
having `orders` > 25
and `avg value` > 150;

-- 14.Show cities where the total number of Electronics orders is greater than 3 and average Electronics price exceeds $500. 
select customer_location cities, count(*) `orders`, round(avg(price), 1) `avg`, category
from comm
where category = "electronics"
group by cities
having `orders` > 1
and `avg` > 500;