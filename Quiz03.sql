SELECT MAX(salary) 최고임금, MIN(salary) 최저임금, MAX(salary)-MIN(salary) "최고임금-최저임금" FROM employees;

SELECT TO_CHAR(MAX(hire_date), 'YYYY-MM-DD') FROM employees;

SELECT department_id, AVG(salary), MAX(salary), MIN(salary) 
    FROM employees GROUP BY department_id ORDER BY department_id DESC;
    
SELECT jb.job_id, AVG(salary), MAX(salary), MIN(salary) 
    FROM employees, jobs jb WHERE employees.job_id=jb.job_id 
    GROUP BY jb.job_id ORDER BY jb.job_id DESC;
    
SELECT TO_CHAR(hire_date, 'YYYY-MM-DD') FROM employees WHERE MONTHS_BETWEEN(sysdate, hire_date) = 
    (SELECT MAX(MONTHS_BETWEEN(sysdate, hire_date)) FROM employees);   
    
SELECT department_id 부서, ROUND(AVG(salary)) 평균임금, MIN(salary) 최저임금, ROUND(AVG(salary)-MIN(salary)) "평균임금-최저임금" 
FROM employees GROUP BY department_id HAVING ROUND(AVG(salary)-MIN(salary))<2000 ORDER BY AVG(salary)-MIN(salary); 

SELECT job_id, MAX(salary)-MIN(salary) "최고임금-최저임금" FROM employees GROUP BY job_id ORDER BY job_id;