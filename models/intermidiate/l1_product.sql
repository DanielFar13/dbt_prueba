WITH stg_menu AS(
    SELECT * FROM {{ ref('stg_menu') }}
),
l1_product AS (
    SELECT
        MENU_ID,
        PRODUCT_ID,
        PRODUCT_NAME,
        PRODUCT_CATEGORY, 
        PRODUCT_SUBCATEGORY,
        MENU_TYPE_ID
    FROM stg_menu
)

SELECT * FROM l1_product