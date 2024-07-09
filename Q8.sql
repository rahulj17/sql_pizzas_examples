-- Join relevant tables to find the category-wise distribution of pizzas.
SELECT 
    category, COUNT(category) AS count
FROM
    pizza_types
GROUP BY category
ORDER BY category DESC;