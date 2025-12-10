use home;
select * from sales_transactions;

-- questions using year --
-- 1.Show all transactions where the purchase year is 2025.
select * from sales_transactions where extract(year from purchasedon) = '2025';

-- 2.Show all transactions made in 2024.
select * from sales_transactions where extract(year from purchasedon) = 2024;

-- 3.Find sales by Rep7 where PurchasedOn year is 2024. 
select * from sales_transactions where salesrep = 'rep7' and extract(year from purchasedon) = 2024;

-- 4.Show all transactions in Chennai where the purchase year ≠ 2025.
select * from sales_transactions where location = "chennai" and extract(year from purchasedon) != 2025;

-- 5.Find all chair sales where the purchase year matches the TransactionID mod 2000 (forces use of EXTRACT). 
select * from sales_transactions where product = "chair" and extract(year from purchasedon) = transactionID % 2000;
select * from sales_transactions where product = "chair" and year(purchasedon) = transactionID % 2000;

-- questions using day --
-- DAYOFMONTH is not a valid field inside EXTRACT() in ANSI SQL — and most SQL engines (PostgreSQL, Oracle, SQL Server) will reject it.
--  1.Show transactions made on the 4th day of any month.
select * from sales_transactions where dayofmonth(purchasedon) = 4;

-- 2.List all keyboard sales done on day 13.
select * from sales_transactions where product = "keyboard" and dayofmonth(purchasedon) = 13;

-- 3.Find transactions where PurchasedOn day is between 20 and 25. 
select * from sales_transactions where dayofmonth(purchasedon) between 20 and 25;

-- 4.Show sales where the day of purchase equals the Quantity.
select * from sales_transactions where extract(day from purchasedon) = quantity;

-- 5.List all webcam sales where PurchasedOn is on an odd-numbered day. 
select * from sales_transactions where product = "webcam" and extract(day from purchasedon) % 2 != 0;

-- questions using month --
-- 1.Show all sales made in the month of May.
select * from sales_transactions where extract(month from purchasedon) = 5;

-- 2.Show all Delhi sales where PurchasedOn month = 3 (March). 
select * from sales_transactions where location = "delhi" and extract(month from purchasedon) = 3;

-- 3.Find laptop transactions done in July. 
select * from sales_transactions where product = "laptop" and extract(month from purchasedon) = 7;

-- 4.List all sales in Bangalore where the purchase month is 9 (september). 
select * from sales_transactions where location = "bangalore" and extract(month from purchasedon) = 9;

-- 5.Show all transactions where Amount > 1500 and the purchase month is the same as previous year’s month. 
select * from sales_transactions where amount > 1500 and extract(month from purchasedon) = extract(month from date_sub(purchasedon, interval 1 year)); 

--  questions using week -- 
-- 1.Show all transactions made in week 1 of any year. 
select * from sales_transactions where extract(week from purchasedon) = 1;

-- 2.List all webcam sales where PurchasedOn falls in the first week of any year. 
select * from sales_transactions where product = "webcam" and extract(week from purchasedon) = 2;

-- 3.Show all transactions done in week 10.
select * from sales_transactions where extract(week from purchasedon) = 10;

-- 4.Find all transactions where the week number is even. 
select * from sales_transactions where extract(week from purchasedon) % 2 = 0;

-- 5.Show keyboard purchases done in the 15th week. 
select * from sales_transactions where product = "keyboard" and extract(week from purchasedon) = 15; 

-- 6.List sales where PurchasedOn is in the last week of the year.
select * from sales_transactions where extract(week from purchasedon) = 51;

-- questions using quarter -- 
-- 1.Show all transactions done in Q2. 
select * from sales_transactions where quarter(purchasedon) = 2;

-- another way to solve
select * from sales_transactions where extract(quarter from PurchasedOn) = 2;

-- 2.List laptop sales in Delhi where PurchasedOn is in Q1.
select * from sales_transactions where product = "laptop" and location = "delhi" and extract(quarter from PurchasedOn) = 1;

-- 3.Find sales with Amount > 1000 made in Q4. 
select * from sales_transactions where Amount > 1000 and extract(quarter from PurchasedOn) = 4;

-- 4.Show all sales by Rep9 where PurchasedOn is in Q3. 
select * from sales_transactions where salesrep = "rep9" and extract(quarter from PurchasedOn) = 3;

-- 5.List sales where PurchasedOn quarter matches the quarter of 2024-05-12. 
select * from sales_transactions where quarter(purchasedon) = extract(quarter from date("2024-05-12"));

-- questions using time -- 
-- 1.Show all transactions made before 06:00. 
select * from sales_transactions where extract(hour from purchasedon) < '06:00';

-- Another way -- 
select * from sales_transactions where time(purchasedon) < '06:00';

-- 2.List all sales where PurchasedOn hour is between 14 and 18. 
select * from sales_transactions where extract(hour from purchasedon) between 14 and 18;

-- 3.Show mouse sales where purchase minute = 09. 
select * from sales_transactions where product = "mouse" and extract(minute from purchasedon) = 09;

-- 4.Find all transactions where the purchase time is in the even hours. 
select * from sales_transactions where extract(hour from purchasedon) % 2 = 0;

-- 5.Show sales where the purchase seconds value is greater than 40. 
select * from sales_transactions where extract(second from purchasedon) < 1;
select * from sales_transactions where second(purchasedon) < 1;

-- questions using week
-- 1.List transactions where PurchasedOn is weekend (Saturday/Sunday).
select * from sales_transactions where dayofweek(purchasedon) in (1, 7);

-- 2.List all transactions that happened in the first 7 days of any month. 
select * from sales_transactions where day(purchasedon) <= 7 and month(purchasedon) = 6;
select * from sales_transactions where extract(day from purchasedon) <= 7 and extract(month from purchasedon) = 6;
