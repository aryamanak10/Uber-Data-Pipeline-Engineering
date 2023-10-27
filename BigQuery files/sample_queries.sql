SELECT *
FROM `horizontal-veld-403216.dataset_uber_pipeline.fact_table`
LIMIT 10;

SELECT VendorID, AVG(fare_amount)
FROM `horizontal-veld-403216.dataset_uber_pipeline.fact_table`
GROUP BY VendorID;

SELECT b.payment_type_name, AVG(a.tip_amount)
FROM `horizontal-veld-403216.dataset_uber_pipeline.fact_table` a
JOIN `horizontal-veld-403216.dataset_uber_pipeline.payment_type_dim` b
ON a.payment_type_id = b.payment_type_id
GROUP BY b.payment_type_name;