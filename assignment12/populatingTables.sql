-- Q3 populate tables
-- Insert pizzas into the pizza table
INSERT INTO `pizza` (pizza_type, pizza_price) 
VALUES ('Pepperoni & Cheese', 7.99),
	   ('Vegetarian', 9.99),
       ('Meat Lovers', 14.99),
	   ('Hawaiian', 12.99);
select * from pizza;
       
-- Insert customers
INSERT INTO `customers` (name, phone_number)
VALUES('Trevor Page', '226-555-4982'),
	  ('John Doe', '555-555-9498');
select * from customers;
	
-- insert orders (order datetime for each order)
	-- Making sure order_id starts at 1. Was starting at 5 not sure why. 
ALTER TABLE orders AUTO_INCREMENT = 1; 
INSERT INTO `orders` (order_datetime)
VALUES ('2023-09-10 09:47:00'),
	   ('2023-09-10 13:20:00'),
       ('2023-09-10 09:47:00'),
       ('2023-10-10 10:37:00');
select * from orders;
       
-- Link new orders to customers
INSERT INTO `customers_orders` (customer_id, order_id)
VALUES (1, 1),
	   (2, 2),
       (1, 3),
       (2, 4);
select * from customers_orders;
       
-- Link pizzas to orders 
INSERT INTO `orders_pizza` (order_id, pizza_id, quantity)
VALUES (1, 1, 1),
	   (1, 3, 1),
       (2, 2, 1),
       (2, 3, 2),
       (3, 3, 1),
       (3, 4, 1),
       (4, 2, 3),
       (4, 4, 1);
select * from orders_pizza;

       