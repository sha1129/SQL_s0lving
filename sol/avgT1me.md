# Calculate each user's average session time

### facebook_web_log
 <table>
  <tr>
    <td>user_id:</td>
    <td>int</td>
  </tr>
  <tr>
    <td>timestamp:</td>
    <td>datetime</td>
  </tr>
  <tr>
    <td>action:</td>
    <td>varchar</td>
  </tr>
</table> 


```SQL
WITH pageLoad as (
    SELECT user_id, DATE(timestamp) as loadDate, max(timestamp) as loadTime
    FROM facebook_web_log
    WHERE action = 'page_load'
    GROUP BY 1,2
),

pageExit as (
    SELECT user_id, DATE(timestamp) as exitDate, min(timestamp) as exitTime
    FROM facebook_web_log
    WHERE action = 'page_exit'
    GROUP BY 1,2
)

SELECT l.user_id, avg(e.exitTime-l.loadTime)
FROM pageLoad l 
JOIN pageExit e ON 
    l.user_id = e.user_id AND l.loadDate = e.exitDate
GROUP BY 1
```
