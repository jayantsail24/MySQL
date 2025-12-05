use home;
#Display all sales records where the city is 'Mumbai'.
select * from sales where city = "Mumbai";

#Show all records where the product is 'Laptop'.
select * from sales where product = "Laptop";

#List all transactions where the quantity is greater than 3.
select * from sales where quantity > 3;

#Display sales where the unit_price is less than 50.
select * from sales where unit_price < 50;

#Find all sales made on '20250715'.
select *  from sales where date = '2025-07-15';

#Show records where category is 'Electronics' AND unit_price is greater than 400.
select * from sales where category = "Electronics" and unit_price > 400;

#List sales where product is 'T-shirt' AND quantity is 2.
select * from sales where product = "T-shirt" and quantity = 2;

#Display transactions where city is 'Delhi' AND category is 'Apparel'.
select * from sales where city = "Delhi" and category = "Apparel";

#Find sales where quantity is 1 AND unit_price is between 100 and 200.
select * from sales where quantity = 1 and unit_price between 100 and 200;

#Show records where customer_name starts with 'A' AND city is 'Pune'.
select * from sales where customer_name like "A%" and city = "Pune";

#List all sales in 'Mumbai' OR 'Delhi'.
select * from sales where city = "Mumbai" or city = "Delhi";
select * from sales where city in ("Mumbai", "Delhi");

#Show records where category is 'Footwear' OR 'Personal'.
select * from sales where category in ("footwear", "personal");

#Display sales where product is 'Mobile' OR 'Tablet'.
select * from sales where product in ("Mobile", "Tablet");

#Find transactions where quantity is 4 OR 5.
select * from sales where quantity in (4, 5);

#Show records where unit_price is less than 25 OR greater than 500.
select * from sales where unit_price < 25 or unit_price > 500;

#List sales where (category is 'Electronics' OR 'Apparel') AND city is 'Bengaluru'.
select * from sales where category in ("Electronics", "Apparel") and city = "Bengaluru";

#Show records where product is 'Jeans' AND (city is 'Chennai' OR 'Hyderabad').
select * from sales where product = "Jeans" and city in ("Chennai", "Hyderabad");

#Display transactions where (quantity is 1 OR 2 AND unit_price is greater than 100.
select * from sales where quantity in (1, 2) and unit_price > 100;

#Find sales where category is 'Personal' AND (quantity is 3 OR unit_price is less than 30.
select * from sales where category = "Personal" and (quantity = 3 or unit_price < 30);

#Show records where (customer_name starts with 'S' OR ends with 'a') AND category is'Footwear'.
select * from sales where (customer_name like "S%" or customer_name like "%a")
and category = "Footwear";

#Display all sales where category is NOT 'Electronics'.
select * from sales where category != "Electronics";

#List records where city is NOT 'Mumbai'.
select * from sales where city != "Mumbai";

#Show sales where product is NOT 'TV' AND NOT 'Mobile'.
select * from sales where product != "TV" and product != "Mobile";

#Find transactions where quantity is NOT 1 AND unit_price is NOT greater than 200.
select * from sales where quantity != 1 and unit_price <= 200;

#Display records where customer_name does NOT contain 'Kumar'.
select * from sales where customer_name not like "%Kumar%";

#Show sales where city is IN ('Kolkata', 'Ahmedabad', 'Jaipur').
select * from sales where city in ("Kolkata", "Ahmedabad", "Jaipur");

 #List records where product is IN ('Sneakers', 'Boots', 'Sandals') AND unit_price is BETWEEN 50 AND 150
select * from sales where product in  ("Sneakers", "Boots", "Sandals") 
and unit_price between 50 and 150;

#Display transactions where date is BETWEEN '20250701' AND '20250731'.
select * from sales where date between "2025-07-01" and "2025-07-31";

#Find sales where (unit_price * quantity) is greater than 300.
select * from sales where unit_price * quantity > 300;

#Show records where customer_name LIKE '%Singh%' AND category is NOT 'Personal' AND quantity >= 2.
select * from sales where customer_name like "%Singh%" and category != "Personal" and quantity >= 2;