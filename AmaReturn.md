# Finding User Purchase 
```SQL
WITH moreThanOne AS(
    SELECT distinct user_id,count(*) as orderCount 
    FROM amazon_transactions
    GROUP BY user_id
)

SELECT m.user_id, a.created_at
FROM moreThanOne m
RIGHT JOIN amazon_transactions a ON a.user_id = m.user_id
WHERE m.orderCount > 1
ORDER BY user_id
```
