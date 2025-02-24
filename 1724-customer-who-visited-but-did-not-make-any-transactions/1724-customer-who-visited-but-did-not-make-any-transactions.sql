SELECT customer_id, COUNT(V.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE ISNULL(transaction_id)
GROUP BY customer_id;