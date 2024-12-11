SELECT
    s.products_id,
    s.date_date,
    s.orders_id,
    s.revenue,
    s.quantity,
    s.purchase_price,
    ROUND(s.quantity * p.purchase_price, 2) AS purchase_cost,
    ROUND(s.revenue - s.quantity * p.purchase_price, 2) AS margin
FROM `e-pulsar-442112-f1`.`dbt_acl365`.`stg_raw__sales` s
LEFT JOIN `e-pulsar-442112-f1`.`dbt_acl365`.`stg_raw__product` p
    ON s.products_id = p.products_id