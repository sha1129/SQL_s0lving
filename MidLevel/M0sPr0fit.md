# Most Profitable Companies

```SQL
WITH ranking AS (
    SELECT company, profits, RANK() OVER (ORDER BY profits DESC) AS numRank
    FROM forbes_global_2010_2014
    ORDER BY numRank
)

SELECT company, profits 
FROM ranking
WHERE numRank < 4
```

This quire is modification of what the question asked, that is to find the **3 most profitable companies**. However, if the quire requires to **rank 3 most profitable companies** then this will work. Also limit the result by 3, we can miss something.  
