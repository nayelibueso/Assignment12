-- Q1 & Q2 create tables
CREATE DATABASE pizzeria;

-- create customers table
 create table `customers` (
 `customer_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `name` VARCHAR(100) NOT NULL,
 `phone_number` VARCHAR(20) NOT NULL);
 
 -- create order table
 create table `orders` (
 `order_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `order_datetime` DATETIME NOT NULL);
 
  -- create pizza table
 create table `pizza` (
 `pizza_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `pizza_type` VARCHAR(100),
 `pizza_price` DECIMAL(5,2));
 
  -- create customer_order table
 create table `customers_orders` (
 `customer_id` INT NOT NULL,
 `order_id` INT NOT NULL,
 FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
 FOREIGN KEY (order_id) REFERENCES orders(order_id));
 
   -- create order_pizza table
 create table `orders_pizza` (
 `order_id` INT NOT NULL,
 `pizza_id` INT NOT NULL,
 `quantity` INT NOT NULL,
 FOREIGN KEY (order_id) REFERENCES orders(order_id),
 FOREIGN KEY (pizza_id) REFERENCES pizza(pizza_id));