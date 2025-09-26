CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    in_stock INT
);

INSERT INTO products (product_id, name, category, price, in_stock) VALUES
(1, 'iPhone 14 Pro', 'Electronics', 999.99, 25),
(2, 'MacBook Air M2', 'Electronics', 1199.00, 15),
(3, 'Wireless Mouse', 'Electronics', 29.99, 120),
(4, 'Yoga Mat', 'Sports', 24.50, 60),
(5, 'Running Shoes', 'Clothing', 89.99, 50),
(6, 'Bluetooth Headphones', 'Electronics', 59.90, 80),
(7, 'The Great Gatsby', 'Books', 10.99, 200),
(8, 'Men\'s T-Shirt', 'Clothing', 19.99, 75),
(9, 'Electric Kettle', 'Home Appliances', 39.95, 40),
(10, 'LED Monitor 24"', 'Electronics', 149.99, 35),
(11, 'Dumbbell Set', 'Sports', 79.99, 20),
(12, 'Air Conditioner', 'Home Appliances', 499.00, 10),
(13, 'Women\'s Jacket', 'Clothing', 129.50, 30),
(14, 'Data Science Handbook', 'Books', 35.00, 95),
(15, 'Gaming Keyboard', 'Electronics', 79.95, 45),
(16, 'Smart Watch Pro', 'Electronics', 199.99, 22),
(17, 'Novel - Atomic Habits', 'Books', 16.00, 150),
(18, 'Basketball', 'Sports', 25.99, 55),
(19, 'Blender 500W', 'Home Appliances', 49.99, 33),
(20, 'Leather Wallet', 'Clothing', 39.00, 65);
