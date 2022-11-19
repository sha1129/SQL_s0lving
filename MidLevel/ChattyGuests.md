# Ranking Most Active Guests

### Solution done by me

```SQL
WITH totalNumOfMsg AS (
    SELECT id_guest, sum(n_messages) AS totMsg
    FROM airbnb_contacts
    GROUP BY id_guest
 )

SELECT distinct RANK() OVER (ORDER BY t.totmsg DESC) AS ranking,  a.id_guest,  t.totMsg
FROM airbnb_contacts a
JOIN totalNumOfMsg t ON a.id_guest = t.id_guest
ORDER BY t.totMsg DESC;
```
This is correct. However, as I ran the code it was giving wrong result by matching the host. The ranking is correct only difference my code vs expected answer was some rows are different. The Ranking was correct

### Online help
I need to use Dense Ranking. This function "returns the rank of each row within a result set partition, with no gaps in the ranking values. The rank of a specific row is one plus the number of distinct rank values that come before that specific row." Learn Microsoft Dense_Rank

```SQL
SELECT DENSE_RANK() OVER (ORDER BY SUM(n_messages) DESC) as TotalMsg, id_guest, SUM(n_messages)
FROM airbnb_contacts
GROUP BY 2
ORDER BY 3 DESC
```
 Although
