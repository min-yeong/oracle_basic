-- 현재 접속 계정안에 table 확인
SELECT * FROM tab;
-- EMPLOYEES 테이블의 구조 확인
DESC employees;

-- DML
-- SELECT문 : 전체 데이터 조회 
SELECT * FROM employees;
SELECT * FROM departments;
-- Projection 제한 : 원하는 컬럼의 목록을 조회 (사원의 이름(first_name), 전화번호, 입사일, 급여 출력
SELECT first_name, phone_number, hire_date, salary FROM employees;
-- 산술 연산 : 기본적인 산술 연산 
SELECT 3.14159 * 10 * 10 FROM dual; -- dual은 특정 테이블에 연관이 없는 단일 결과 수행
SELECT 3.14159 * 10 * 10 FROM employees;
SELECT first_name, salary, salary*12 FROM employees; -- 데이터 타입 확인
SELECT first_name, job_id*12 FROM employees; -- varchar 타입에는 산술연산 오류(ERROR)
-- 문자열 연결(|| 사용), full_name : 컬럼의 이름변경 가능
SELECT first_name||' '||last_name full_name FROM employees;
-- 커미션 포함 급여 지급 : 산술 연산식 수행 시 null이 포함되어 있으면 null출력 
SELECT first_name, salary, commission_pct, salary+salary*commission_pct FROM employees;
-- nvl(expr1, expr2) : expr1 체크 null이 아니면 expr1, null이면 expr2
SELECT first_name, salary, salary+salary*nvl(commission_pct,0) paid FROM employees;

-- WHERE (selection) : 조건
-- 급여가 1500 이상인 사원의 이름, 급여 출력
SELECT first_name, salary FROM employees WHERE salary >= 15000; 
-- 입사일이 85/01/01 이후인 사원의 이름과, 입사일, 급여 (날짜도 비교연산 가능)
SELECT first_name, hire_date, salary FROM employees WHERE hire_date >= '07/01/01';
-- 이름이 Lex인 사원의 이름, 입사일, 급여 출력
SELECT first_name, hire_date, salary FROM employees WHERE first_name = 'Lex';
-- salary가 14000 이하이거나 17000이상이거나인 사원의 이름과 급여 출력 
SELECT first_name, salary FROM employees WHERE salary <= 14000 OR salary >=17000;
-- salary가 14000 이상이고 17000이하인 사원의 이름과 급여 출력
SELECT first_name, salary FROM employees WHERE salary >= 14000 AND salary <=17000;
-- 위의 질의를 BETWEEN 연산자 사용
SELECT first_name, salary FROM employees WHERE salary BETWEEN 14000 AND 17000; 
-- 커미션을 받는 사원의 목록 (NULL체크 : IS NULL, IS NOT NULL)
SELECT first_name, commission_pct FROM employees WHERE commission_pct IS NOT NULL;
-- 커미션을 받지 않는 사원의 목록
SELECT first_name, commission_pct FROM employees WHERE commission_pct IS NULL;
-- 부서 ID가 10이거나 20이거나 40인 사원의 목록
SELECT first_name, department_id FROM employees WHERE department_id=10 OR department_id=20 OR department_id=40;
-- 위의 질의를 IN 연산자 사용
SELECT first_name, department_id FROM employees WHERE department_id IN (10, 20, 40);
-- ANY 연산자 사용 
SELECT first_name, department_id FROM employees WHERE department_id = ANY(10, 20, 40);
-- 사원들 중 department_id가 10, 20, 40이 아닌 사원
SELECT first_name, department_id FROM employees WHERE department_id NOT IN (10, 20, 40);
-- LIKE 연산자, 와일드카드 % : 길이가 정해지지 않은 문자열, 와일드카드 _ : 한글자의 정해지지 않은 문자
-- first_name에 am이 포함된 사원의 목록
SELECT first_name, last_name FROM employees WHERE first_name LIKE '%am%';
-- first_name의 두 번쨰 글자가 a인 사원
SELECT first_name, last_name FROM employees WHERE first_name LIKE '_a%';
--부서번호를 오름차순으로 정렬하고 이름, 부서번호, 급여를 출력 (데이터의 정렬 (ASC:작은값에서 큰값, DESC:큰값에서 작은값))
SELECT first_name, department_id, salary FROM employees ORDER BY department_id; --ASC는 default값이기 때문에 생략가능
--급여가 15000 이상인 사원을 급여의 역순으로 추출
SELECT first_name, salary FROM employees WHERE salary >=1500 ORDER BY salary DESC;
-- 부서번호를 오름차순으로 정렬하고 급여의 역순으로 정렬
SELECT first_name, department_id, salary FROM employees ORDER BY department_id ASC, salary DESC;

-- 문자열 단일행 함수 
SELECT first_name, last_name, 
    first_name||' '||last_name, 
    CONCAT(first_name, CONCAT(' ', last_name)), 
    LOWER(first_name), UPPER(last_name),
    INITCAP(first_name)
FROM employees;
SELECT LPAD(first_name, 20, '*'), RPAD(first_name, 20, '*') FROM employees;
SELECT LTRIM( '    ORACLE  '), RTRIM( '    ORACLE  '),
    '######DATABASE####',
    TRIM('#'FROM '######DATABASE####'),
    SUBSTR('ORACLE DATABASE', 8, 4),
    SUBSTR('ORACLE DATABASE', -4, 8),
    LENGTH('ORACLE DATABASE')
FROM dual;

-- 수치형 단일행 함수
SELECT ABS(-3.14), -- 절댓값
    CEIL(3.14),  --올림(천장)
    FLOOR(3.14),  --내림(바닥)
    MOD(7,3),  --나머지
    POWER(2,4),  --제곱함수
    ROUND(3.5),  --반올림
    ROUND(3.14159, 3),  --소숫점3자리까지 반올림
    TRUNC(3.14159, 3)  --소숫점3자리까지 내림
FROM dual;

-- DATE 기본 포맷
SELECT * FROM nls_session_parameters WHERE parameter = 'NLS_DATE_FORMAT';
-- 현재 날짜 구하기 : sysdate
SELECT sysdate FROM dual;
SELECT sysdate FROM employees; --employees의 데이터 갯수가 출력
-- 날짜 관련 연산 (date(연산)정수->날짜에일수연산(date값), date(연산)date->날짜의일수차이(정수값))
SELECT sysdate + 1, sysdate - 1, sysdate - TO_DATE('1999-12-31'), sysdate + 12/24 FROM dual;
-- 날짜 관련 함수
SELECT sysdate, 
    ADD_MONTHS(sysdate, 2),
    LAST_DAY(sysdate),
    MONTHS_BETWEEN(TO_DATE('1999-12-31', 'YYYY-MM-DD'), sysdate),
    ROUND(sysdate, 'MONTH'),
    TRUNC(sysdate, 'MONTH')
FROM dual;
-- 현재 날짜를 기준으로 employees 테이블에서 사원들이 입사한지 몇 개월이 지났는지 확인
SELECT first_name, hire_date, ROUND(MONTHS_BETWEEN(sysdate, hire_date)) FROM employees;
-- TO_CHAR:날짜,숫자->문자, TO_DATE:문자열->날짜, TO_NUMBER:문자열->숫자 => 변환 포맷을 잘 지정할 것
-- employess 테이블에서 입사일을 YYYY-MM-DD HH24:MI:SS 로 출력
SELECT first_name, hire_date, TO_CHAR(hire_date, 'YYYY-MM-DD HH24-MI-SS') FROM employees;
-- employees 테이블에서 salary 정보를 연봉으로 출력
SELECT first_name, TO_CHAR(salary*12, '$999,999.99') SAL FROM employees;
SELECT TO_NUMBER('1999'), TO_NUMBER('$1,234.567', '$999,999.999') FROM dual;
SELECT TO_CHAR(3000000, 'L999,999,999') FROM dual;
SELECT TO_DATE('1999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS') FROM dual;

--NULL 관련 함수 1.nvl(expr1, expr2) 2.nvl2(expr1, expr2, expr3)
SELECT first_name, salary, nvl(salary*commission_pct, 0) commission FROM employees;
SELECT first_name, salary, nvl2(commission_pct, salary*commission_pct, 0) commission FROM employees;

-- CASE 함수 
-- AD 관련 사원에게는 20%, SA관련 사원에게는 10%, IT관련 사원에게는 8%, 나머지 사원들에게는 5% 지급
SELECT job_id FROM employees; --사원 아이디 확인, 접두어를 분리하여 비교확인
SELECT first_name, job_id, salary, 
    CASE SUBSTR(job_id, 1, 2) 
        WHEN 'AD' THEN salary*02
        WHEN 'SA' THEN salary*0.1
        WHEN 'IT' THEN salary*0.08
        ELSE salary*0.05
    END bonus
FROM employees;

-- DECODE 함수
SELECT first_name, job_id, salary,
    DECODE(SUBSTR(job_id, 1, 2),
        'AD', salary*0.2,
        'SA', salary*0.1,
        'IT', salary*0.08,
        salary*0.05) bonus
FROM employees;

-- 예제
SELECT first_name, department_id,
    CASE WHEN department_id <= 30 THEN 'A-GROUP'
         WHEN department_id <= 50 THEN 'B-GROUP'
         WHEN department_id <= 100 THEN 'C-GROUP'
         ELSE 'REMAINDER' 
    END team
FROM employees ORDER BY team;