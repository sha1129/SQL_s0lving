-- Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. 
-- Output just the absolute difference in salaries.

WITH maxSalaryDeptId AS(
    SELECT DISTINCT MAX(e.salary) OVER (Partition by e.department_id) maxSalary, e.department_id, d.department
    FROM db_employee e
    JOIN db_dept d ON d.id = e.department_id
)

SELECT ABS (maxSalary - (SELECT maxSalary FROM maxSalaryDeptId WHERE department = 'marketing')) as SalaryDiff
FROM maxSalaryDeptId
WHERE department = 'engineering'
