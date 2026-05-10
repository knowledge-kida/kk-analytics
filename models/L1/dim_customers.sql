SELECT
    customer_id,
    full_name,
    city,
    signup_date
FROM {{ ref('stg_customers') }}