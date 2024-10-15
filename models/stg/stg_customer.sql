WITH src AS(
    SELECT * FROM {{ source('customer', 'customer_loyalty') }}
),
transformed AS(
    SELECT
        CUSTOMER_ID,
        FIRST_NAME AS OWNER_FIRST_NAME,
        LAST_NAME AS OWNER_LAST_NAME,
        CITY AS OWNER_CITY,
        COUNTRY AS OWNER_COUNTRY,
        POSTAL_CODE,
        PREFERRED_LANGUAGE,
        GENDER,
        FAVOURITE_BRAND AS FAVORITE_BRAND,
        MARITAL_STATUS,
        CHILDREN_COUNT, 
        SIGN_UP_DATE,
        BIRTHDAY_DATE,
        LOWER(E_MAIL) AS EMAIL,
        PHONE_NUMBER
    FROM src
)

SELECT * FROM transformed