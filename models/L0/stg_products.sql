SELECT
    CAST(product_id AS INT) AS product_id,
    product_name,
    category,
    CAST(price AS DOUBLE) AS price
FROM {{ source('raw', 'products_raw') }}