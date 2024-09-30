-- Q5 seperate orders by customers and date
select c.name, 
	   o.order_datetime,
	SUM(p.pizza_price * op.quantity) AS total_spent
FROM customers_orders co
JOIN customers c ON co.customer_id = c.customer_id
JOIN orders_pizza op ON co.order_id = op.order_id
JOIN pizza p ON op.pizza_id = p.pizza_id
JOIN orders o ON co.order_id = o.order_id
GROUP BY c.name, o.order_datetime
ORDER BY o.order_datetime, total_spent;