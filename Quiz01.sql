SELECT first_name||' '||last_name 이름, salary 급여, phone_number 전화번호, hire_date 입사일 FROM employees;
SELECT job_title, max_salary FROM jobs ORDER BY max_salary DESC;
SELECT first_name, manager_id, commission_pct, salary FROM employees WHERE manager_id IS NOT NULL AND commission_pct IS NULL;
SELECT job_title, max_salary FROM jobs WHERE max_salary>=10000 ORDER BY max_salary DESC;
SELECT first_name, salary, NVL(commission_pct, 0) FROM employees WHERE salary<14000 AND salary>=10000 ORDER BY salary DESC;
SELECT * FROM departments ORDER BY LENGTH(department_name) DESC;
SELECT first_name, salary FROM employees WHERE first_name LIKE '%s' OR first_name LIKE '%S' ;
SELECT UPPER(country_id) FROM locations WHERE location_id IS NOT NULL;
SELECT first_name, salary, phone_number, hire_date FROM employees WHERE hire_date < '03/12/31';