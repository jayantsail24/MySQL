use home;
SELECT * FROM sales_transactions;

#1.List all transactions where Amount is greater than 2000.
select * from sales_transactions where amount > 2000;

#2.Show all sales for Laptop in Mumbai.
select * from sales_transactions where product = "Laptop" and location = "Mumbai";

#3.Find sales with Quantity more than 3 and Amount less than 1000.
select * from sales_transactions where Quantity > 3 and Amount < 1000;

#4.List transactions by CustomerName = 'Customer5' where Amount is between 500 and 1500.
select * from sales_transactions where CustomerName = "Customer5"
and amount between 500 and 1500;

#5.Find all sales made in 2025.
select * from sales_transactions where PurchasedOn between '2025-01-01' and '2025-12-31';
select * from sales_transactions where year(PurchasedOn) = 2025;

#6.Show all transactions where SalesRep is 'Rep2' and PurchasedOn is after 2024-12-31.
select * from sales_transactions where SalesRep = "Rep2" and
PurchasedOn > '2024-12-31';

#7.List sales for 'Monitor' and Amount > 1500.
select * from sales_transactions where product = "Monitor" and amount > 1500;

#8.Find sales in Delhi for Quantity >= 4 after Jan 1, 2025.
select * from sales_transactions where location = "Delhi" and quantity >= 4 and 
purchasedon > '2025-01-01';

#9.Show transactions where Amount < 1000, Product is 'Keyboard', and PurchasedOn is in 2024.
select * from sales_transactions where amount < 1000 and product = "Keyboard" and year(PurchasedOn) >= 2024;

#10.Display all sales made by 'Rep5' in Bangalore.
select * from sales_transactions where SalesRep = "Rep5" and location = "Bangalore";

#11.List transactions where PurchasedOn is weekend (Saturday/Sunday).
select * from sales_transactions where dayofweek(purchasedon) in (1,7);

#12.Find transactions with Amount >= 2500 and Location not 'Chennai'.
select * from sales_transactions where amount >= 2500 and location != "Chennai";

#13.Show all mouse sales before July 1, 2024.
select * from sales_transactions where product = "mouse" and PurchasedOn < '2024-07-01';

#14.List sales by 'Customer10' after 2024-06-30 for Amount between 500 and 1200.
select * from sales_transactions where CustomerName = "customer10" and PurchasedOn > '2024-06-30' and amount between 500 and 1200;

#15.Find all sales with Product 'Desk' in 2025 where Quantity > 2.
select * from  sales_transactions where product = "desk" and PurchasedOn between '2025-01-01' and '2025-12-31' and Quantity > 2;
select * from sales_transactions where product = "desk" and year(PurchasedOn) = 2025 and quantity > 2;

#16.Show sales for 'Rep8' with Amount < 700 and Quantity = 1.
select * from sales_transactions where SalesRep = "rep8" and amount < 700 and Quantity = 1;

#17.Show transactions for 'Webcam' in Kolkata during March 2025.
select * from sales_transactions where product = "webcam" and location = "kolkata" and month(PurchasedOn) = 3 and year(PurchasedOn) = 2025;

#18.List sales by 'Customer3' in Mumbai for Amount > 2000.
select * from sales_transactions where customername = "customer3" and location = "mumbai" and amount > 2000;

#19.Find transactions with Quantity = 5 and PurchasedOn is between 2025-05-01 and 2025-05-31.
select * from sales_transactions where Quantity = 5 and PurchasedOn between '2025-05-01' and '2025-05-31';

#20.List all keyboard sales in Bangalore made by 'Rep7' after 2024-11-15.
select * from sales_transactions where Product = "Keyboard" and Location = "Bangalore" and SalesRep = "Rep7" and PurchasedOn > '2024-11-15';

#21.SELECT * FROM sales_transactions WHERE Amount < 900 AND Location <> 'Delhi';
select * from sales_transactions where amount < 900 and location != "Delhi";

#22.SELECT * FROM sales_transactions WHERE Product = 'Chair' AND PurchasedOn >= '2024-09-01' AND Amount <= 1500;
select * from sales_transactions where  product = "chair" and PurchasedOn >= '2024-09-01' and amount <= 1500;

#23.SELECT * FROM sales_transactions WHERE SalesRep = 'Rep4' AND Location = 'Chennai' AND Quantity > 3;
select * from sales_transactions where salesrep = "rep4" and location = "chennai" and quantity > 3;

#24.SELECT * FROM sales_transactions WHERE Product = 'Monitor' AND YEAR(PurchasedOn) = 2024 AND Amount < 1500;
select * from sales_transactions where product = "monitor" and YEAR(PurchasedOn) = 2024 and amount < 1500;

#25.SELECT * FROM sales_transactions WHERE SalesRep = 'Rep9' AND PurchasedOn < '2024-04-01';
select * from sales_transactions where SalesRep = "rep9" and purchasedon < '2024-04-01';

#26.SELECT * FROM sales_transactions WHERE Location = 'Kolkata' AND Product = 'Laptop' AND Amount > 2200;
select * from sales_transactions where location = "kolkata" and product = "laptop" and amount > 2200;

#27.SELECT * FROM sales_transactions WHERE Product = 'Desk' AND SalesRep = 'Rep1' AND YEAR(PurchasedOn) = 2025;
select * from sales_transactions where product = "desk" and salesrep = "rep1" and year(purchasedon) = 2025;

#28.SELECT SalesRep FROM sales_transactions GROUP BY SalesRep HAVING COUNT(DISTINCT Location) = 5;
select * from sales_transactions group by salesrep having count(distinct location) = 5;
SELECT SalesRep FROM sales_transactions GROUP BY SalesRep HAVING COUNT(DISTINCT Location) = 5;

#29.SELECT * FROM sales_transactions WHERE Product = 'Headphone' AND (Amount < 800 OR Quantity > 2);
select * from sales_transactions where Product = "headphone" and (amount < 800 or quantity > 2);

#30.SELECT * FROM sales_transactions WHERE CustomerName = 'Customer1' AND Amount > 1800 AND PurchasedOn > '2025-02-01';
select * from sales_transactions where CustomerName = "customer1" and amount > 1800 and PurchasedOn > '2025-02-01';






