-- Calculate the percentage contribution of each pizza type to total revenue.
select pt.category,
round((sum(od.quantity*p.price)/(SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price), 2) AS total_revenue
FROM
    order_details
        JOIN
    pizzas  ON pizzas.pizza_id = order_details.pizza_id))*100,2) as revenue
from pizza_types as pt join pizzas as p 
on pt.pizza_type_id=p.pizza_type_id
join
order_details as od
on od.pizza_id=p.pizza_id
group by pt.category
order by revenue desc;

