-- Calculate the total revenue generated from pizza sales.

select * from order_details;

select * from pizzas;

SELECT 
    ROUND(SUM(o.quantity * p.price), 2) AS total_revenue
FROM
    order_details AS o
        JOIN
    pizzas AS p ON o.pizza_id = p.pizza_id;