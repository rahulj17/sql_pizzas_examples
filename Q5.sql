-- List the top 5 most ordered pizza types along with their quantities.

select * from order_details;
select * from pizzas;
select * from pizza_types;

SELECT 
    pt.name, SUM(o.quantity) AS ordered_time
FROM
    pizza_types AS pt
        JOIN
    pizzas AS p ON p.pizza_type_id = pt.pizza_type_id
        JOIN
    order_details AS o ON o.pizza_id = p.pizza_id
GROUP BY pt.name
ORDER BY ordered_time DESC
LIMIT 5;