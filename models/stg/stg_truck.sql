WITH src AS(
    SELECT * FROM {{ source('pos', 'truck') }}
),
transformed AS(
    SELECT
        TRUCK_ID,
        MENU_TYPE_ID,
        PRIMARY_CITY,
        REGION,
        ISO_REGION,
        COUNTRY,
        ISO_COUNTRY_CODE,
        FRANCHISE_FLAG,
        YEAR,
        MAKE AS BRAND,
        MODEL,
        EV_FLAG,
        FRANCHISE_ID,
        TRUCK_OPENING_DATE
    FROM src
)

SELECT * FROM transformed