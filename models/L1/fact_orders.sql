SELECT
    o.order_id,
    o.order_date,
    c.customer_id,
    c.full_name,
    p.product_name,
    p.category,
    p.price,
    o.quantity,
    (p.price * o.quantity) AS total_amount
FROM {{ ref('stg_orders') }} o
JOIN {{ ref('dim_customers') }} c
    ON o.customer_id = c.customer_id
JOIN {{ ref('dim_products') }} p
    ON o.product_id = p.product_id