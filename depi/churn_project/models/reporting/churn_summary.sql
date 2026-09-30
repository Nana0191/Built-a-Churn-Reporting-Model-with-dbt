SELECT
    COUNT(*) AS total_customers,

    SUM(
        CASE
            WHEN customer_status = 'Churned' THEN 1
            ELSE 0
        END
    ) AS churned_customers,

    ROUND(
        100.0 * SUM(
            CASE
                WHEN customer_status = 'Churned' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS churn_rate,

    ROUND(AVG(monthly_charge), 2) AS avg_monthly_charge,

    ROUND(AVG(tenure_in_months), 2) AS avg_tenure_months

FROM {{ ref('fct_customer_churn') }}