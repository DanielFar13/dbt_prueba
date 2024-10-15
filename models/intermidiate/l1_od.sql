WITH stg_order_detail AS(
    SELECT * FROM {{ ref('stg_order_detail') }}
),
l1_od AS (
    SELECT
        ORDER_DETAIL_ID,
        ORDER_ID,
        PRODUCT_ID,
        QUANTITY,
        UNIT_PRICE
    FROM stg_order_detail
)

SELECT * FROM l1_od