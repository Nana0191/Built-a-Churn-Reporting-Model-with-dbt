SELECT
    "Zip Code" AS zip_code,
    Population AS population
FROM {{ ref('telecom_zipcode_population') }}