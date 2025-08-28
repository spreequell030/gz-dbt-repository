SELECT
    date_date,
    (operational_margin - ads_cost) AS ads_margin,
    average_basket,
    operational_margin,
    ads_cost,
    ads_impression,
    ads_click,
    quantity,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    log_cost,
    ship_cost
FROM {{ref('int_campaigns_day')}}
FULL OUTER JOIN {{ref('finance_days')}}
USING (date_date)
ORDER BY date_date DESC 