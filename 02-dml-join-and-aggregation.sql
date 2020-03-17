-- JOIN
DESC employees;
DESC departments;
-- Cross Join(īƼ�� ���δ�Ʈ) : �� ���̺��� ��� �� ����
SELECT first_name, department_name FROM employees, departments;
-- Simple Join 
SELECT first_name, department_name FROM employees emp, departments dept WHERE emp.department_id = dept.department_id;
-- ANSI SQL
SELECT first_name, department_name FROM employees emp JOIN departments USING (department_id); 

-- LEFT OUTER JOIN 
-- ��� ����� ������ �μ� ������ �Բ� ��� : Outer Join ���� NULL�� �� �� �ִ� �� �ʵ忡 (+)
SELECT first_name, emp.department_id, dept.department_id, department_name 
    FROM employees emp, departments dept 
    WHERE emp.department_id = dept.department_id(+);
SELECT * FROM employees WHERE department_id IS NULL;
-- ANSI SQL
SELECT first_name, emp.department_id, dept.department_id, department_name 
    FROM employees emp LEFT OUTER JOIN departments dept 
    ON emp.department_id = dept.department_id
    WHERE emp.department_id IS NULL;
-- RIGHT OUTER JOIN 
-- ��� �μ��� ��¿� ����
SELECT first_name, emp.department_id, department_name 
    FROM employees emp, departments dept
    WHERE emp.department_id(+) = dept.department_id
    AND emp.department_id IS NULL;
-- ANSI SQL
SELECT first_name, emp.department_id, dept.department_id, department_name 
    FROM employees emp RIGHT OUTER JOIN departments dept 
    ON emp.department_id = dept.department_id
    WHERE emp.department_id IS NULL;
-- FULL OUTER JOIN
SELECT first_name, emp.department_id, dept.department_id, department_name 
    FROM employees emp FULL OUTER JOIN departments dept ON emp.department_id = dept.department_id
    WHERE emp.department_id IS NULL OR dept.department_id IS NULL;

-- departments, locations, countries �� ���� ���̺��� �����Ͽ� department_id, department_name, city, country_name�� ���
SELECT department_id, department_name, city, country_name 
    FROM departments dept JOIN locations loc JOIN countries con ON loc.country_id = con.country_id
    ON dept.location_id = loc.location_id
    ORDER BY country_name, city, department_id; 
-- Simple Join 
SELECT department_id, department_name, city, country_name
    FROM departments dept, locations loc, countries con 
    WHERE dept.location_id = loc.location_id AND loc.country_id = con.country_id 
    ORDER BY country_name, city, department_id;

-- SELF JOIN : �ڱ��ڽ��� PK�� �ٸ� �÷��� JOIN
-- ���, �̸�, �Ŵ���id, �Ŵ��� �̸� ���
SELECT * FROM employees; --107��
SELECT emp.employee_id �Ŵ������ , emp.first_name �Ŵ����̸� , mgr.employee_id, mgr.first_name
    FROM employees emp JOIN employees mgr ON emp.manager_id = mgr.employee_id; --106��
SELECT emp.employee_id, emp.first_name, mgr.employee_id �Ŵ������ , mgr.first_name �Ŵ����̸�
    FROM employees emp, employees mgr
    WHERE emp.manager_id = mgr.employee_id;  --106��
-- �Ŵ����� ���� ����� ��� -> ����
SELECT employee_id, first_name, manager_id FROM employees WHERE manager_id IS NULL;
-- �Ŵ����� ���� ����� �Բ� ��� (OUTER JOIN) 
SELECT emp.employee_id, emp.first_name, mgr.employee_id, mgr.first_name 
    FROM employees emp LEFT OUTER JOIN employees mgr 
    ON emp.manager_id = mgr.employee_id
    ORDER BY emp.employee_id;
-- ORACLE SQL
SELECT emp.employee_id, emp.first_name, mgr.employee_id, mgr.first_name 
    FROM employees emp, employees mgr
    WHERE emp.manager_id = mgr.employee_Id(+)
    ORDER BY emp.employee_id;

-- Aggregate(����) : ���������κ��� �����͸� ����, �ϳ��� ���� ����
SELECT COUNT(*) FROM employees; -- (*) �� NULL ����
SELECT COUNT(manager_id) FROM employees; -- NULL ����
-- �������� ���� �Լ� : NULL ���� �����ϰ� ���
SELECT MAX(salary), MIN(salary), AVG(salary), MEDIAN(salary) FROM employees;
-- ������� �޴� commissoin_pct ���(NULL ����)
SELECT AVG(commission_pct) FROM employees;
-- commission_pct�� NULL�� ����� 0���� ����(NULL ����)
SELECT AVG(NVL(commission_pct, 0)) FROM employees;
-- employee ���̺��� �μ��� �޿� ���(�μ��� GROUP BY�� ����)
SELECT department_id, AVG(salary) FROM employees GROUP BY department_id ORDER BY department_id;
-- employee ���̺��� �μ��� �޿� ����� 7000 �̻��� �μ�(�������� ���Ǻ񱳴� HAVING ���� �̿�)
SELECT department_id, AVG(salary) FROM employees GROUP BY department_id HAVING AVG(salary) >= 7000 ORDER BY department_id;
-- GROUP BY -> HAVING -> ORDER BY

-- ROLLUP : �׷������� ����� ���� �� ����, ��������� ���� (GROUP BY�� �Բ� ���)
SELECT department_id, job_id, SUM(salary) FROM employees GROUP BY ROLLUP(department_id, job_id) ORDER BY department_id;
-- CUBE (Crosstab Summary ����) : Item Total + Column Total ����
SELECT department_id, job_id, sum(salary) FROM employees GROUP BY CUBE(department_id, job_id) ORDER BY department_id;

-- SubQuery : ���ǹ� ���ο��� �� �ٸ� ���ǹ��� ����, ���������� �ӽ����̺���
-- employees ���̺�κ��� �޿��� �߾Ӱ����� ���� �޴� ��� (1.�޿��� �߾Ӱ� Ȯ�� 2.�޿��� �߾Ӱ����� ū ��� ���)
SELECT first_name, salary FROM employees 
    WHERE salary > (SELECT MEDIAN(salary) FROM employees)
    ORDER BY salary DESC;
-- ��� �� Ismael���� �ʰ� �Ի��� ������� ���
SELECT first_name, hire_date FROM employees 
    WHERE hire_date > (SELECT hire_date FROM employees WHERE first_name = 'Ismael')
    ORDER BY hire_date;
-- Susan ���� �ʰ� �Ի��ߴµ�, ��� �޿����� ���� �޴� ������� ���
SELECT first_name, hire_date FROM employees
    WHERE hire_date > (SELECT hire_date FROM employees WHERE first_name = 'Susan') 
    AND salary > (SELECT AVG(salary) FROM employees)
    ORDER BY first_name;
    
-- ������ �������� : ���������� ��� ���ڵ尡 �� �̻��� ��� �ܼ� �� ������ (=, >, <, <>) ���� ��� �Ұ�, ���հ��� ������ (IN, ANY, ALL, EXISTS) ���
SELECT salary FROM employees WHERE department_id = 110;
SELECT first_name, salary FROM employees 
    WHERE salary IN (SELECT salary FROM employees WHERE department_id = 110);
-- ���������ȿ� ���Ե� �޿����� ���� �޴� �������� ���
SELECT first_name, salary FROM employees 
    WHERE salary > ALL (SELECT salary FROM employees WHERE department_id = 110);
-- ANY (���� �� �ϳ��� �����ϸ� ����)
SELECT first_name, salary FROM employees 
    WHERE salary > ANY (SELECT salary FROM employees WHERE department_id=110);
-- OUTER SUBQUERY (CORRELATED QUERY) : �ٱ��� ������ ���� ���̺�� ���������� �������踦 ���� ��������
-- �� �μ��� ��� �޿�
SELECT department_id, AVG(salary) FROM employees GROUP BY department_id ORDER BY department_id;
-- ��� ������ ����ϵ�, �ڽ��� ���� �μ��� ��� �޿����� ���� �޴� ������ ���
SELECT first_name, salary, department_id FROM employees outer
    WHERE salary > (SELECT AVG(salary) FROM employees WHERE department_id = outer.department_id);
-- �� �μ����� �ְ� �޿��� �޴� ����� ���
SELECT department_id, MAX(salary) FROM empolyees GROUP BY department_id;
-- ���1. WHERE ������
SELECT department_id, employee_id, first_name, salary FROM employees 
    WHERE (department_id, salary) IN (SELECT department_id, MAX(salary) FROM employees GROUP BY department_id) ORDER BY department_id;
-- ���������� �ӽ����̺�� ���� JOIN
SELECT emp.department_id, employee_id, first_name, emp.salary FROM employees emp, 
    (SELECT department_id, MAX(salary) salary FROM employees GROUP BY department_id) sal 
    WHERE emp.department_id=sal.department_id AND emp.salary=sal.salary ORDER BY department_id;
    
-- TOP-K QUERY : ���� k���� ���ڵ带 ����(����), Pseudo column rownum : ���ڵ��� ������ ��ȯ
-- employees ���̺��� 2007�� �Ի��� �� �޿� ���� 5������ ���
SELECT rownum, first_name, salary 
    FROM (SELECT * FROM employees WHERE hire_date LIKE '07%' ORDER BY salary DESC) 
    WHERE rownum <= 5;
    
-- ���� ���� 
-- 2005�� 1�� 1�� ���� �Ի����� ��� : A
SELECT first_name, salary, hire_date FROM employees WHERE hire_date < '05/01/01';
-- �޿��� 12000 �ʰ��� ������ ��� : B
SELECT first_name, salary, hire_date FROM employees WHERE salary > 12000;
-- A�� B�� ���� ������ Ȱ�� : INTERECT(������), UNION(������), MINUS(������)
SELECT first_name, salary, hire_date FROM employees WHERE hire_date < '05/01/01' 
    INTERSECT SELECT first_name, salary, hire_date FROM employees WHERE salary > 12000; 

-- RANK ���� �Լ� : RANK() �Լ��� �ߺ����� �߻��� �ǳʶٰ� ���, DENSE_RANK() �Լ��� �ߺ��� ���� ���� ������� ǥ��
SELECT first_name, salary, 
    RANK() OVER (ORDER BY salary DESC) rank,
    DENSE_RANK() OVER (ORDER BY salary DESC) dense_rank,
    ROW_NUMBER() OVER (ORDER BY salary DESC) row_number FROM employees;
    
-- Hierachical Query : Ʈ�� ���� ������ ����, level Pseudo ColumnȰ��
-- employees ���̺�κ��� �������� ���, level, �����̸�, ������ ��, �Ŵ����� �̸��� ���� level�� ������������ ���
SELECT level, emp.first_name, emp.last_name, man.first_name, man.last_name 
    FROM employees emp LEFT JOIN employees man ON emp.manager_id = man.employee_id
    START WITH emp.manager_id IS NULL --��������
    CONNECT BY PRIOR emp.employee_id = emp.manager_id
    ORDER BY level;