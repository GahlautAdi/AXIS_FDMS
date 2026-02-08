
-- Top 5 customers by transaction value
SELECT c.name, SUM(t.amount) AS total_amount
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Transactions t ON a.account_id = t.account_id
GROUP BY c.name
ORDER BY total_amount DESC
LIMIT 5;
