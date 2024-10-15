WITH stg_customer AS(
    SELECT * FROM {{ ref('stg_customer') }}
),
l1_customer AS (
    SELECT
        CUSTOMER_ID,
        OWNER_FIRST_NAME,
        OWNER_LAST_NAME,
        CONCAT(OWNER_FIRST_NAME, ' ', OWNER_LAST_NAME) AS FULL_NAME,
        OWNER_COUNTRY,
        OWNER_CITY,
        GENDER, 
        EMAIL
    FROM stg_customer
)

SELECT * FROM l1_customer