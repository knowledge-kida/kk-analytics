SELECT
    CAST(product_id AS INT) AS product_id,
    product_name,
    category,
    CAST(price AS INT) AS price
--FROM {{ source('raw', 'products_raw') }}
FROM {{ ref('products_raw') }}