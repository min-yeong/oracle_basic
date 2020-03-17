-- JOIN
DESC employees;
DESC departments;
-- Cross Join(카티션 프로덕트) : 두 테이블의 모든 행 조합
SELECT first_name, department_name FROM employees, departments;
-- Simple Join 
SELECT first_name, department_name FROM employees emp, departments dept WHERE emp.department_id = dept.department_id;
-- ANSI SQL
SELECT first_name, department_name FROM employees emp JOIN departments USING (department_id); 

-- LEFT OUTER JOIN 
-- 모든 사원의 정보를 부서 정보와 함께 출력 : Outer Join 에서 NULL이 올 수 있는 쪽 필드에 (+)
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
-- 모든 부서를 출력에 참여
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

-- departments, locations, countries 세 개의 테이블을 조인하여 department_id, department_name, city, country_name을 출력
SELECT department_id, department_name, city, country_name 
    FROM departments dept JOIN locations loc JOIN countries con ON loc.country_id = con.country_id
    ON dept.location_id = loc.location_id
    ORDER BY country_name, city, department_id; 
-- Simple Join 
SELECT department_id, department_name, city, country_name
    FROM departments dept, locations loc, countries con 
    WHERE dept.location_id = loc.location_id AND loc.country_id = con.country_id 
    ORDER BY country_name, city, department_id;

-- SELF JOIN : 자기자신의 PK와 다른 컬럼을 JOIN
-- 사번, 이름, 매니저id, 매니저 이름 출력
SELECT * FROM employees; --107명
SELECT emp.employee_id 매니저사번 , emp.first_name 매니저이름 , mgr.employee_id, mgr.first_name
    FROM employees emp JOIN employees mgr ON emp.manager_id = mgr.employee_id; --106명
SELECT emp.employee_id, emp.first_name, mgr.employee_id 매니저사번 , mgr.first_name 매니저이름
    FROM employees emp, employees mgr
    WHERE emp.manager_id = mgr.employee_id;  --106명
-- 매니저가 없는 사원을 출력 -> 사장
SELECT employee_id, first_name, manager_id FROM employees WHERE manager_id IS NULL;
-- 매니저가 없는 사원도 함께 출력 (OUTER JOIN) 
SELECT emp.employee_id, emp.first_name, mgr.employee_id, mgr.first_name 
    FROM employees emp LEFT OUTER JOIN employees mgr 
    ON emp.manager_id = mgr.employee_id
    ORDER BY emp.employee_id;
-- ORACLE SQL
SELECT emp.employee_id, emp.first_name, mgr.employee_id, mgr.first_name 
    FROM employees emp, employees mgr
    WHERE emp.manager_id = mgr.employee_Id(+)
    ORDER BY emp.employee_id;

-- Aggregate(집계) : 여러행으로부터 데이터를 수집, 하나의 행을 추축
SELECT COUNT(*) FROM employees; -- (*) 는 NULL 포함
SELECT COUNT(manager_id) FROM employees; -- NULL 제외
-- 여러가지 집계 함수 : NULL 값은 제외하고 계산
SELECT MAX(salary), MIN(salary), AVG(salary), MEDIAN(salary) FROM employees;
-- 사원들이 받는 commissoin_pct 통계(NULL 제외)
SELECT AVG(commission_pct) FROM employees;
-- commission_pct가 NULL인 사원은 0으로 변경(NULL 포함)
SELECT AVG(NVL(commission_pct, 0)) FROM employees;
-- employee 테이블에서 부서별 급여 평균(부서를 GROUP BY로 묶음)
SELECT department_id, AVG(salary) FROM employees GROUP BY department_id ORDER BY department_id;
-- employee 테이블에서 부서별 급여 평균이 7000 이상인 부서(집계결과의 조건비교는 HAVING 절을 이용)
SELECT department_id, AVG(salary) FROM employees GROUP BY department_id HAVING AVG(salary) >= 7000 ORDER BY department_id;
-- GROUP BY -> HAVING -> ORDER BY

-- ROLLUP : 그룹지어진 결과에 대한 상세 정보, 요약정보를 제공 (GROUP BY와 함께 사용)
SELECT department_id, job_id, SUM(salary) FROM employees GROUP BY ROLLUP(department_id, job_id) ORDER BY department_id;
-- CUBE (Crosstab Summary 제공) : Item Total + Column Total 추출
SELECT department_id, job_id, sum(salary) FROM employees GROUP BY CUBE(department_id, job_id) ORDER BY department_id;

-- SubQuery : 질의문 내부에서 또 다른 질의문을 포함, 서브쿼리는 임시테이블임
-- employees 테이블로부터 급여의 중앙값보다 많이 받는 사람 (1.급여의 중앙값 확인 2.급여가 중앙값보다 큰 사람 출력)
SELECT first_name, salary FROM employees 
    WHERE salary > (SELECT MEDIAN(salary) FROM employees)
    ORDER BY salary DESC;
-- 사원 중 Ismael보다 늦게 입사한 사원들의 목록
SELECT first_name, hire_date FROM employees 
    WHERE hire_date > (SELECT hire_date FROM employees WHERE first_name = 'Ismael')
    ORDER BY hire_date;
-- Susan 보다 늦게 입사했는데, 평균 급여보다 많이 받는 사원들의 목록
SELECT first_name, hire_date FROM employees
    WHERE hire_date > (SELECT hire_date FROM employees WHERE first_name = 'Susan') 
    AND salary > (SELECT AVG(salary) FROM employees)
    ORDER BY first_name;
    
-- 다중행 서브쿼리 : 서브쿼리의 결과 레코드가 둘 이상일 경우 단순 비교 연산자 (=, >, <, <>) 등은 사용 불가, 집합관련 연산자 (IN, ANY, ALL, EXISTS) 사용
SELECT salary FROM employees WHERE department_id = 110;
SELECT first_name, salary FROM employees 
    WHERE salary IN (SELECT salary FROM employees WHERE department_id = 110);
-- 서브쿼리안에 포함된 급여보다 많이 받는 직원들의 목록
SELECT first_name, salary FROM employees 
    WHERE salary > ALL (SELECT salary FROM employees WHERE department_id = 110);
-- ANY (조건 중 하나만 만족하면 만족)
SELECT first_name, salary FROM employees 
    WHERE salary > ANY (SELECT salary FROM employees WHERE department_id=110);
-- OUTER SUBQUERY (CORRELATED QUERY) : 바깥쪽 쿼리에 사용된 테이블과 서브쿼리가 연관관계를 갖는 서브쿼리
-- 각 부서별 평균 급여
SELECT department_id, AVG(salary) FROM employees GROUP BY department_id ORDER BY department_id;
-- 모든 직원을 출력하되, 자신이 속한 부서의 평균 급여보다 많이 받는 직원을 출력
SELECT first_name, salary, department_id FROM employees outer
    WHERE salary > (SELECT AVG(salary) FROM employees WHERE department_id = outer.department_id);
-- 각 부서별로 최고 급여를 받는 사원을 출력
SELECT department_id, MAX(salary) FROM empolyees GROUP BY department_id;
-- 방법1. WHERE 절에서
SELECT department_id, employee_id, first_name, salary FROM employees 
    WHERE (department_id, salary) IN (SELECT department_id, MAX(salary) FROM employees GROUP BY department_id) ORDER BY department_id;
-- 서브쿼리를 임시테이블로 만들어서 JOIN
SELECT emp.department_id, employee_id, first_name, emp.salary FROM employees emp, 
    (SELECT department_id, MAX(salary) salary FROM employees GROUP BY department_id) sal 
    WHERE emp.department_id=sal.department_id AND emp.salary=sal.salary ORDER BY department_id;
    
-- TOP-K QUERY : 상위 k개의 레코드를 추출(순위), Pseudo column rownum : 레코드의 순서를 변환
-- employees 테이블에서 2007년 입사자 중 급여 순위 5위까지 출력
SELECT rownum, first_name, salary 
    FROM (SELECT * FROM employees WHERE hire_date LIKE '07%' ORDER BY salary DESC) 
    WHERE rownum <= 5;
    
-- 집합 연산 
-- 2005년 1월 1일 이전 입사자의 목록 : A
SELECT first_name, salary, hire_date FROM employees WHERE hire_date < '05/01/01';
-- 급여가 12000 초과인 직원의 목록 : B
SELECT first_name, salary, hire_date FROM employees WHERE salary > 12000;
-- A와 B의 집합 연산자 활용 : INTERECT(교집합), UNION(합집합), MINUS(차집합)
SELECT first_name, salary, hire_date FROM employees WHERE hire_date < '05/01/01' 
    INTERSECT SELECT first_name, salary, hire_date FROM employees WHERE salary > 12000; 

-- RANK 관련 함수 : RANK() 함수는 중복순위 발생시 건너뛰고 출력, DENSE_RANK() 함수는 중복과 연관 없이 순서대로 표기
SELECT first_name, salary, 
    RANK() OVER (ORDER BY salary DESC) rank,
    DENSE_RANK() OVER (ORDER BY salary DESC) dense_rank,
    ROW_NUMBER() OVER (ORDER BY salary DESC) row_number FROM employees;
    
-- Hierachical Query : 트리 형태 구조로 추출, level Pseudo Column활용
-- employees 테이블로부터 조직도를 출력, level, 직원이름, 직원의 성, 매니저의 이름과 성을 level의 오름차순으로 출력
SELECT level, emp.first_name, emp.last_name, man.first_name, man.last_name 
    FROM employees emp LEFT JOIN employees man ON emp.manager_id = man.employee_id
    START WITH emp.manager_id IS NULL --시작조건
    CONNECT BY PRIOR emp.employee_id = emp.manager_id
    ORDER BY level;