SELECT
    CAST(customer_id AS INT) AS customer_id,
    full_name,
    email,
    city,
    CAST(signup_date AS DATE) AS signup_date
FROM {{ source('raw', 'customers_raw') }}
WHERE email LIKE '%@%.%'