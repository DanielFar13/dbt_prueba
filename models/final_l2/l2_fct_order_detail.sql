WITH l2_fct AS (
SELECT
    OD.ORDER_DETAIL_ID,
    OH.CUSTOMER_ID,
    OH.TRUCK_ID, 
    OD.PRODUCT_ID,
    OD.UNIT_PRICE,
    OD.QUANTITY
FROM {{ ref('l1_od') }} OD
LEFT JOIN {{ ref('l1_oh') }} OH ON OH.ORDER_ID = OD.ORDER_ID 
)
SELECT
    ORDER_DETAIL_ID,
	CUSTOMER_ID,
	TRUCK_ID,
	PRODUCT_ID,
	UNIT_PRICE,
	QUANTITY
FROM l2_fct