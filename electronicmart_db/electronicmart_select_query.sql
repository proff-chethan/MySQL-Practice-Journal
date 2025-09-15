USE electronicmart_db;

-- 1. SELECT all the data in the table
SELECT * FROM products;

-- 2. SELECT specific column from table
SELECT product_name FROM products;

-- 3. SELECT multiple specific column from table
SELECT
product_name, 
price
FROM products;


-- ARTHMETIC EXPRESSIONS Example

-- 4. SELECT all the columns and also calculate inventory total of each product
SELECT 
*, 
(price * quantity)
FROM products;

-- 5. Provide proper name to the inventory total column i.e, (price * quantity) as inventory_total
SELECT
*,
(price * quantity) AS inventory_total 
FROM products;

-- 6. Find the sales margin of each product from the inventory_total i.e, 30% margin for all the products
SELECT
*,
(price * quantity) AS inventory_total, 
((inventory_total * 30) / 100) As margin_profit
FROM products;
-- NOTE: This will throw the error because inventory_total is not part of table but we are creating at run time.

-- To achieve this requirement, follow below query
-- This process is called as 'SUB - QUERY'
SELECT 
  *,
  inventory_total,
  ((inventory_total * 30) / 100) As margin_profit
FROM (
    SELECT 
      *,
      (price * quantity) AS inventory_total
    FROM products
) AS tempTable;

-- 7. Arrange the decimal values by 2 places for margin_profit column
SELECT 
  *,
  inventory_total,
  CAST(((inventory_total * 30) / 100) AS DECIMAL(10, 2)) As margin_profit
FROM (
    SELECT 
      *,
      (price * quantity) AS inventory_total
    FROM products
) AS tempTable;

-- 8. formatting the margin_profit column
SELECT 
  *,
  inventory_total,
  FORMAT(CAST(((inventory_total * 30) / 100) AS DECIMAL(10, 2)), 2, "en_IN") As margin_profit
FROM (
    SELECT 
      *,
      (price * quantity) AS inventory_total
    FROM products
) AS tempTable;
-- NOTE: you can't store the data in "en_IN" format at insert into query

