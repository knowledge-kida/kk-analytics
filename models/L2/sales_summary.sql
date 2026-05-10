SELECT
    category,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS revenue
FROM {{ ref('fact_orders') }}
GROUP BY category