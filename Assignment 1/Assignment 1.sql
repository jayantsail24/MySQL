use home;
SELECT * FROM garment;

#1.Select all garments priced less than 1000.
select * from garment where price < 1000;

#2. Find garments where the color is Black.
select * from garment where color = "Black";

#3. Display garments whose stock is greater than 50.
select * from garment where stock > 50;

#4.List all garments with price between 700 and 1500. ******
select * from garment where price > 700 and price < 1500;
select * from garment where price between 700 and 1500;

#5.Find garments that belong to the category Topwear and have a price greater than 1000.
select * from garment where category = "Topwear" and price > 1000;

#6.Show garments where the brand is either Adidas or Nike.
select * from garment where brand =  "Adidas" or brand = "Nike";
select * from garment where brand in ("Adidas", "Nike");

#7.Find garments that are not Blue in color.
select * from garment where color != "Blue"; 
#you can also use <> for !=

#8.Display garments with size = 'M' OR size = 'L'.
select * from garment where size = "M" or size = "L";

#9.Select garments where Price < 1000 AND Stock < 100.
select * from garment where price < 1000 and stock < 100;

#10.Find garments where the GarmentName starts with 'J'. 
select * from garment where GarmentName like "J%";
#uses "Like" for name search

#11.Show garments where the Color ends with 'e'.
select * from garment where color like "%e";

#12.Display garments whose Brand name contains 'a'.
select * from garment where Brand like "%a%";
#use %% and in between the char asked

#13.Find garments where the stock is NOT between 50 and 100.
select * from garment where stock not between 50 and 100;
#not between keyword for this types of questions

#14.Show garments where the price is greater than 1000 OR the brand is Adidas.
select * from garment where price > 1000 or brand = "Adidas";

#15.Display garments where the Category is Bottomwear AND Color = 'Black'.
select * from garment where category = "Bottomwear" and color = "Black";

#16.Find garments that have size not equal to 'S'.
select * from garment where size != "S";

#17.List garments with price equal to 2000.
select * from garment where price = 2000;

#18.Display garments where stock is less than or equal to 30.
select * from garment where stock <= 30;

#19.Find garments where the brand is NOT 'Zara'.
select * from garment where brand != "Zara";

#20.Select garments where color is either Red, Green, or Yellow.
select * from garment where color = "Red" or color = "Green" or color = "Yellow";

#21.Show garments where garment name contains 'Shirt'.
select * from garment where GarmentName like "%Shirt%";

#22.Display garments where size is in (XS, XL).  ***
select * from garment where size in ("XS", "XL");

#23.Find garments where the brand is 'Gucci' and price > 3000.
select * from garment where brand = "Gucci" and price > 3000;

#24.Show garments where stock is even (Stock % 2 = 0).
select * from garment where Stock % 2 = 0; 

#25.Display garments where color is not in (Black, White, Grey). ***
select * from garment where color not in ("Black", "White", "Grey");

#26.Find garments priced exactly 999.
select * from garment where price = 999;

#27.Show garments where garment name does not contain 'a'. ***
select * from garment where garmentname not like "%a%"; 

#28.Display garments where stock > 100 and color = 'Blue'.
select * from garment where stock > 100 and color = "Blue";

#29.Find garments where size is 'M' and brand is not Nike.
select * from garment where size = "M" and brand !=  "Nike";

#30.Show garments where price is between 1500 and 2500 and color = 'Red'.
select * from garment where price  between 1500 and 2500 and color = "Red";

#like/not like
#find garments where the garment name contains jeans.
select * from garment where garmentname like "%jeans%";

#Show garments where the GarmentName does not contain 'Sweater'.
select * from garment where garmentname not like "%sweater%";

#Display garments where the Brand starts with 'P'.
select * from garment where brand like "p%";

#Find garments where the Color ends with 'k'.
select * from garment where color like "%k";

#List garments where the GarmentName has exactly 5 characters.
select * from garment where garmentname like "_____";

#between/ not between
#List garments where the Stock is between 40 and 80.
select * from garment where stock between 40 and 80;

#Find garments where the Stock is NOT between 200 and 300.
select * from garment where stock not between 200 and 300;

#Show garments where the Price is between 1000 and 2500.
select * from garment where price between 1000 and 2500;

#Display garments where the Price is NOT between 500 and 1500.
select * from garment where price not between 500 and 1500;

#Find garments where the GarmentID is between 10 and 20.
select * from garment where garmentID between 10 and 20;

#in/ not in
#Find garments where the Size is in ('XS', 'S', 'M').
select * from garment where size in ("XS", "S", "M");

#Show garments where the Size is not in ('L', 'XL').
select * from garment where size not in ("L", "XL");

#List garments where the Brand is in ('Gucci', 'Nike', 'Adidas').
select * from garment where brand in ("Gucci", "Nike", "Adidas");

#Find garments where the Brand is not in ('Puma', 'Zara').
select * from garment where brand not in("Puma", "Zara");

#Display garments where the Color is in ('Black', 'Red', 'Yellow').
select * from garment where color in ("Black", "Red", "Yellow");