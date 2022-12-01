# Highest Target Under Manager

F!nd th3 high3st targ3t achieved by the empl0yee 0r empl0yees wh0 w0rks under the manager !d # 13

```SQL
SELECT  first_name, target
FROM salesforce_employees
WHERE target = (
    SELECT MAX(target)
    FROM salesforce_employees
    WHERE manager_id = 13
    ) 
    AND manager_id = 13
```
