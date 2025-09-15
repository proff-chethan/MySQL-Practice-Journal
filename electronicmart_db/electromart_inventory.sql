DROP DATABASE IF EXISTS `electronicmart_db`;

CREATE DATABASE `electronicmart_db`;

USE `electronicmart_db`;

CREATE TABLE products (
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  product_name VARCHAR(100),
  price INT,
  quantity INT
);

INSERT INTO products (product_name, price, quantity) VALUES
('Laptop', 50000, 10),
('Smartphone', 20000, 25),
('Headphones', 2000, 50),
('Monitor', 15000, 8);

INSERT INTO products (product_name, price, quantity) VALUES
('Tablet', 18000, 15),
('Smartwatch', 8000, 30),
('Keyboard', 1500, 40),
('Mouse', 800, 60),
('Printer', 12000, 12),
('Scanner', 10000, 6),
('Webcam', 2500, 25),
('Speakers', 3500, 20),
('External Hard Drive', 7000, 18),
('USB Flash Drive', 600, 100),
('Router', 4000, 14),
('Projector', 22000, 5),
('Gaming Console', 30000, 9),
('VR Headset', 28000, 7),
('Graphics Card', 45000, 11),
('Motherboard', 15000, 13),
('Processor', 25000, 10),
('RAM 16GB', 6000, 20),
('Power Bank', 2000, 35),
('Bluetooth Earbuds', 3500, 40);