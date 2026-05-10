SELECT
    customer_id,
    full_name,
    SUM(total_amount) AS lifetime_value
FROM {{ ref('fact_orders') }}
GROUP BY customer_id, full_name
ORDER BY lifetime_value DESC