CREATE DATABASE BamazonDB;

USE BamazonDB;

CREATE TABLE Products (
id INT(15) PRIMARY KEY AUTO_INCREMENT NOT NULL,
product_name VARCHAR(60) NOT NULL,
dept_name VARCHAR(40) NOT NULL,
price DECIMAL(9,2) NOT NULL,
stock_quantity INT(9));

SELECT * FROM BamazonDB.Products;

INSERT INTO Products (product_name, dept_name, price, stock_quantity)
VALUES
("Harry Potter Gryffindor Tie Costume Accessory", "Toys & Games", 4.69, 760),
("Cards Against Humanity", "Toys & Games", 25.00, 455),
("Hatchimals", "Toys & Games", 59.99, 100),
("All-New Fire TV Stick with Alexa Voice Remote", "Electronics", 39.99, 1001),
("All-New Echo Dot (2nd Generation) - Black", "Electronics", 49.99, 700),
("All-New Echo Dot (2nd Generation) - White", "Electronics", 49.99, 680),
("Fujifilm INSTAX Mini Instant Film Twin Pack (White)", "Camera & Photo", 11.49, 893),
("Fujifilm Instax Mini Instant Film 3 Twin Packs", "Camera & Photo", 36.90, 765),
("Fujifilm INSTAX Mini 8 Instant Camera (Blue)", "Camera & Photo", 50.99, 553),
("Battlefield 1 - PlayStation 4", "Electronic Arts", 59.90, 329);