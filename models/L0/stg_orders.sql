SELECT
    CAST(order_id AS INT) AS order_id,
    CAST(customer_id AS INT) AS customer_id,
    CAST(product_id AS INT) AS product_id,
    CAST(quantity AS INT) AS quantity,
    CAST(order_date AS DATE) AS order_date
--FROM {{ source('raw', 'orders_raw') }}
FROM {{ ref('orders_raw') }}