/*THIS practice covers SELECT, Where, LIKE, Group By, Order by, LIMIT, AVG, SUM, MAX, MIN, COUNT, AS, CAST, CONCAT*/

USE ecommerce_db;

-- 1. Retrieve all product.
SELECT * FROM products;

-- 2. Retrieve all product names and their prices.
SELECT name,price FROM products;

-- 3. Find all products in the category 'Electronics'
SELECT * FROM products WHERE category='Electronics';

-- 4. List all products with a price greater than 100
SELECT * FROM products WHERE price > 100;

-- 5. Find all products where the name contains the word 'Pro' (case-sensitive).
SELECT * FROM products WHERE name LIKE '%Pro%';

-- 6. Sort the products by price in descending order.
SELECT * FROM products ORDER BY price DESC;

-- 7. Return the top 3 most expensive products.
SELECt * FROM products ORDER BY price DESC LIMIT 3;

-- 8. Count how many products exist in the 'Clothing' category.
SELECT COUNT(category) FROM products WHERE category='Clothing';
SELECT COUNT(category) AS COUNT FROM products WHERE category='Clothing';

-- 9. Find the average price of all products.
SELECT AVG(price) FROM products;
SELECT AVG(price) AS AVG_PRICE FROM products;

-- 10. Show the total number of items in stock across all products.
SELECT category, SUM(in_stock) FROM products GROUP BY category;
SELECT category, SUM(in_stock) AS in_stock FROM products GROUP BY category;

-- 11. Find the most expensive product.
SELECT name, price FROM products ORDER By price DESC LIMIT 1; 

-- 12. Find the most second expensive product.
SELECT name, price FROM products ORDER By price DESC LIMIT 1,1; 

-- 13. Find the cheapest product in the 'Books' category.
SELECT * FROM products WHERE category='Books' ORDER BY price ASC LIMIT 1;

-- 14. Find the cheapest second product in the 'Books' category.
SELECT * FROM products WHERE category='Books' ORDER BY price ASC LIMIT 1,1;

-- 15. Count the number of distinct product categories.
SELECT COUNT(DISTINCT category) FROM products;
SELECT COUNT(DISTINCT category) AS distinct_count FROM products;

-- 16. Show the number of products per category.
SELECT category,COUNT(category) FROM products GROUP BY category;
SELECT category,COUNT(category) AS category_count FROM products GROUP BY category;

-- 17. Return each product’s name and price, but rename the columns as product_name and product_price.
SELECT name AS product_name, price AS product_price FROM products;

-- 18. Display product names along with their prices rounded to the nearest integer.
SELECT name, ROUND(price) FROM products;

-- 19. Display all product names concatenated with their category in this format: "ProductName (Category)"
SELECT CONCAT(name, ' (', category, ')') FROM products;
SELECT CONCAT(name, ' (', category, ')') AS product_name FROM products;

-- 20. How many products are in categories that have more than 3 products?
SELECT category FROM products GROUP BY category; -- Just group by category
SELECT COUNT(*) FROM products WHERE category IN (SELECT category FROM products GROUP BY category HAVING COUNT(*) > 3);

-- 21. List the second most expensive product in the entire table.
SELECT name, price FROM products ORDER BY price DESC LIMIT 1,1;

-- 22. Show all product names and prices where the price is higher than the average price of all products
SELECT *, (SELECT AVG(price) FROM products) AS avg_price FROM products WHERE price > (SELECT AVG(price) FROM products);
SELECT AVG(price) FROM products;

-- 23. Find the category with the highest total inventory value (i.e., price * in_stock per product).
SELECT category, (price * in_stock) As Inventory FROM products; -- find the Inventory price for all products
SELECT category FROM products GROUP BY category; -- grouping the category
SELECT category, (SUM(price) * SUM(in_stock)) As Inventory FROM products GROUP BY category;



