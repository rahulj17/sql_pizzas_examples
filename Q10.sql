-- Determine the top 3 most ordered pizza types based on revenue.
select * from order_details;
select * from pizzas;
select * from pizza_types;

SELECT 
    pt.name, SUM(o.quantity * p.price) AS revenue
FROM
    pizzas AS p
        JOIN
    order_details AS o ON p.pizza_id = o.pizza_id
        JOIN
    pizza_types AS pt ON pt.pizza_type_id = p.pizza_type_id
GROUP BY pt.name
ORDER BY revenue DESC
LIMIT 3
;
