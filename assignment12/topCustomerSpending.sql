-- Q4 Get the total amount each customer has spent 
select c.name, 
	SUM(p.pizza_price * op.quantity) AS total_spent
FROM customers_orders co
JOIN customers c ON co.customer_id = c.customer_id
JOIN orders_pizza op ON co.order_id = op.order_id
JOIN pizza p ON op.pizza_id = p.pizza_id
GROUP BY c.name
ORDER BY total_spent;
