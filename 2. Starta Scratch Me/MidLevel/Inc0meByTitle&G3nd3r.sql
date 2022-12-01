-- F!nd th3 @v3rag3 t0tal c0mpensation based 0n employee titles and gender
### Two Tables sf_employee and sf_bonus
### 

### First c@lculate bonus and then calculate total compensation

WITH sumBonus AS(
    SELECT SUM(bonus) as bonus, worker_ref_id
    FROM sf_bonus
    GROUP BY 2
),

totalCompensation AS ( 
    SELECT (b.bonus+e.salary) AS salaryTotal, 
        e.employee_title as title, 
        e.sex as gender
    FROM sumBonus b
    JOIN sf_employee e ON e.id = b.worker_ref_id
)

### Take average as Window function partition by Titles 
SELECT DISTINCT title, gender, AVG(salaryTotal) OVER(PARTITION BY title)
FROM totalCompensation
