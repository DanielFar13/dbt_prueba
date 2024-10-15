WITH stg_order_header AS(
    SELECT * FROM {{ ref('stg_order_header') }}
),
l1_oh AS (
    SELECT
        CUSTOMER_ID,
        ORDER_ID,
        TRUCK_ID
    FROM stg_order_header
)

SELECT * FROM l1_oh