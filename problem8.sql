SELECT  v.customer_id,count(*) as count_no_trans
FROM visits v
LEFT JOIN
transactions t
ON v.visit_id=t.visit_id
where t.transaction_id IS NULL
GROUP BY v.customer_id