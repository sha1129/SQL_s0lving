# Finding User Purchases

```SQL
WITH returningCust AS (
    SELECT user_id,  COUNT(user_id) as TotPur
    FROM amazon_transactions
    GROUP BY user_id 
)

SELECT  *
FROM returningCust r
RIGHT JOIN amazon_transactions a ON r.user_id = a.user_id
WHERE TotPur > 1 
ORDER BY r.user_id 

```

Not complete and also wrong need to get back to this
