# Workers With The Highest Salaries

### Find the title of worker/workers that have the highest Salary
Two Tables Join Worker and Title to find worker's title. 

```SQL 
SELECT t.worker_title
FROM worker w
JOIN title t ON w.worker_id = t.worker_ref_id
WHERE salary = (
    SELECT max(salary)
    FROM worker
)

```
