-- F!nd the curr3nt s@lary 0f each employ33

SELECT id, first_name, last_name, department_ID, max(salary)
FROM ms_employee_salary
GROUP BY id, first_name, last_name, department_ID 
ORDER BY id ASC;
