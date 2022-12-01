### F!nd th3 3mpl0y33 w!th th3   highest salary per department.
### 0utput the department name, employee's first name along with the corresponding salary.
### ID #9897

WITH maxSalary AS (
  SELECT RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS ranks, department, first_name, salary
  FROM employee
)

SELECT first_name, department, salary 
FROM maxSalary
WHERE ranks = 1
