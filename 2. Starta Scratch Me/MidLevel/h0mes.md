# Price > nati0nal avg 

```sql
select city, mkt_price
from zillow_transactions
where mkt_price > (select avg(mkt_price) from zillow_transactions)
```
