-- Identify the most common pizza size ordered.
select * from order_details;
select * from pizzas;

SELECT 
    p.size, COUNT(o.order_details_id) AS total
FROM
    order_details AS o
        JOIN
    pizzas AS p ON p.pizza_id = o.pizza_id
GROUP BY size
ORDER BY total DESC
LIMIT 1;