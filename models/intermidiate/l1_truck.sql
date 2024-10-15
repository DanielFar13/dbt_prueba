WITH stg_truck AS(
    SELECT * FROM {{ ref('stg_truck') }}
),
l1_truck AS (
    SELECT
        TRUCK_ID,
        BRAND AS CAR_BRAND,
        MODEL,
        YEAR,
        MENU_TYPE_ID
    FROM stg_truck
)

SELECT * FROM l1_truck