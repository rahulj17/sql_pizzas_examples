-- Join the necessary tables to find the total quantity of each pizza category ordered.
select * from order_details;
select * from pizzas;

SELECT 
    pt.category, SUM(od.quantity) AS quantity
FROM
    pizza_types AS pt
        JOIN
    pizzas AS p ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    order_details AS od ON od.pizza_id = p.pizza_id
GROUP BY pt.category
ORDER BY quantity DESC;