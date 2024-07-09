-- Group the orders by date and calculate the average number of pizzas ordered per day.
select *,order_id,order_date from orders;

SELECT 
    ROUND(AVG(avg_pizza), 0) as avg_pizzas_ordered
FROM
    (SELECT 
        o.order_date, SUM(od.quantity) AS avg_pizza
    FROM
        order_details AS od
    JOIN orders AS o ON o.order_id = od.order_id
    GROUP BY o.order_date) AS order_quantity
;

select * from order_details;