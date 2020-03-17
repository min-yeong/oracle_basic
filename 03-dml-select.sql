-- ���� ���� �����ȿ� table Ȯ��
SELECT * FROM tab;
-- EMPLOYEES ���̺��� ���� Ȯ��
DESC employees;

-- DML
-- SELECT�� : ��ü ������ ��ȸ 
SELECT * FROM employees;
SELECT * FROM departments;
-- Projection ���� : ���ϴ� �÷��� ����� ��ȸ (����� �̸�(first_name), ��ȭ��ȣ, �Ի���, �޿� ���
SELECT first_name, phone_number, hire_date, salary FROM employees;
-- ��� ���� : �⺻���� ��� ���� 
SELECT 3.14159 * 10 * 10 FROM dual; -- dual�� Ư�� ���̺� ������ ���� ���� ��� ����
SELECT 3.14159 * 10 * 10 FROM employees;
SELECT first_name, salary, salary*12 FROM employees; -- ������ Ÿ�� Ȯ��
SELECT first_name, job_id*12 FROM employees; -- varchar Ÿ�Կ��� ������� ����(ERROR)
-- ���ڿ� ����(|| ���), full_name : �÷��� �̸����� ����
SELECT first_name||' '||last_name full_name FROM employees;
-- Ŀ�̼� ���� �޿� ���� : ��� ����� ���� �� null�� ���ԵǾ� ������ null��� 
SELECT first_name, salary, commission_pct, salary+salary*commission_pct FROM employees;
-- nvl(expr1, expr2) : expr1 üũ null�� �ƴϸ� expr1, null�̸� expr2
SELECT first_name, salary, salary+salary*nvl(commission_pct,0) paid FROM employees;

-- WHERE (selection) : ����
-- �޿��� 1500 �̻��� ����� �̸�, �޿� ���
SELECT first_name, salary FROM employees WHERE salary >= 15000; 
-- �Ի����� 85/01/01 ������ ����� �̸���, �Ի���, �޿� (��¥�� �񱳿��� ����)
SELECT first_name, hire_date, salary FROM employees WHERE hire_date >= '07/01/01';
-- �̸��� Lex�� ����� �̸�, �Ի���, �޿� ���
SELECT first_name, hire_date, salary FROM employees WHERE first_name = 'Lex';
-- salary�� 14000 �����̰ų� 17000�̻��̰ų��� ����� �̸��� �޿� ��� 
SELECT first_name, salary FROM employees WHERE salary <= 14000 OR salary >=17000;
-- salary�� 14000 �̻��̰� 17000������ ����� �̸��� �޿� ���
SELECT first_name, salary FROM employees WHERE salary >= 14000 AND salary <=17000;
-- ���� ���Ǹ� BETWEEN ������ ���
SELECT first_name, salary FROM employees WHERE salary BETWEEN 14000 AND 17000; 
-- Ŀ�̼��� �޴� ����� ��� (NULLüũ : IS NULL, IS NOT NULL)
SELECT first_name, commission_pct FROM employees WHERE commission_pct IS NOT NULL;
-- Ŀ�̼��� ���� �ʴ� ����� ���
SELECT first_name, commission_pct FROM employees WHERE commission_pct IS NULL;
-- �μ� ID�� 10�̰ų� 20�̰ų� 40�� ����� ���
SELECT first_name, department_id FROM employees WHERE department_id=10 OR department_id=20 OR department_id=40;
-- ���� ���Ǹ� IN ������ ���
SELECT first_name, department_id FROM employees WHERE department_id IN (10, 20, 40);
-- ANY ������ ��� 
SELECT first_name, department_id FROM employees WHERE department_id = ANY(10, 20, 40);
-- ����� �� department_id�� 10, 20, 40�� �ƴ� ���
SELECT first_name, department_id FROM employees WHERE department_id NOT IN (10, 20, 40);
-- LIKE ������, ���ϵ�ī�� % : ���̰� �������� ���� ���ڿ�, ���ϵ�ī�� _ : �ѱ����� �������� ���� ����
-- first_name�� am�� ���Ե� ����� ���
SELECT first_name, last_name FROM employees WHERE first_name LIKE '%am%';
-- first_name�� �� ���� ���ڰ� a�� ���
SELECT first_name, last_name FROM employees WHERE first_name LIKE '_a%';
--�μ���ȣ�� ������������ �����ϰ� �̸�, �μ���ȣ, �޿��� ��� (�������� ���� (ASC:���������� ū��, DESC:ū������ ������))
SELECT first_name, department_id, salary FROM employees ORDER BY department_id; --ASC�� default���̱� ������ ��������
--�޿��� 15000 �̻��� ����� �޿��� �������� ����
SELECT first_name, salary FROM employees WHERE salary >=1500 ORDER BY salary DESC;
-- �μ���ȣ�� ������������ �����ϰ� �޿��� �������� ����
SELECT first_name, department_id, salary FROM employees ORDER BY department_id ASC, salary DESC;

-- ���ڿ� ������ �Լ� 
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

-- ��ġ�� ������ �Լ�
SELECT ABS(-3.14), -- ����
    CEIL(3.14),  --�ø�(õ��)
    FLOOR(3.14),  --����(�ٴ�)
    MOD(7,3),  --������
    POWER(2,4),  --�����Լ�
    ROUND(3.5),  --�ݿø�
    ROUND(3.14159, 3),  --�Ҽ���3�ڸ����� �ݿø�
    TRUNC(3.14159, 3)  --�Ҽ���3�ڸ����� ����
FROM dual;

-- DATE �⺻ ����
SELECT * FROM nls_session_parameters WHERE parameter = 'NLS_DATE_FORMAT';
-- ���� ��¥ ���ϱ� : sysdate
SELECT sysdate FROM dual;
SELECT sysdate FROM employees; --employees�� ������ ������ ���
-- ��¥ ���� ���� (date(����)����->��¥���ϼ�����(date��), date(����)date->��¥���ϼ�����(������))
SELECT sysdate + 1, sysdate - 1, sysdate - TO_DATE('1999-12-31'), sysdate + 12/24 FROM dual;
-- ��¥ ���� �Լ�
SELECT sysdate, 
    ADD_MONTHS(sysdate, 2),
    LAST_DAY(sysdate),
    MONTHS_BETWEEN(TO_DATE('1999-12-31', 'YYYY-MM-DD'), sysdate),
    ROUND(sysdate, 'MONTH'),
    TRUNC(sysdate, 'MONTH')
FROM dual;
-- ���� ��¥�� �������� employees ���̺��� ������� �Ի����� �� ������ �������� Ȯ��
SELECT first_name, hire_date, ROUND(MONTHS_BETWEEN(sysdate, hire_date)) FROM employees;
-- TO_CHAR:��¥,����->����, TO_DATE:���ڿ�->��¥, TO_NUMBER:���ڿ�->���� => ��ȯ ������ �� ������ ��
-- employess ���̺��� �Ի����� YYYY-MM-DD HH24:MI:SS �� ���
SELECT first_name, hire_date, TO_CHAR(hire_date, 'YYYY-MM-DD HH24-MI-SS') FROM employees;
-- employees ���̺��� salary ������ �������� ���
SELECT first_name, TO_CHAR(salary*12, '$999,999.99') SAL FROM employees;
SELECT TO_NUMBER('1999'), TO_NUMBER('$1,234.567', '$999,999.999') FROM dual;
SELECT TO_CHAR(3000000, 'L999,999,999') FROM dual;
SELECT TO_DATE('1999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS') FROM dual;

--NULL ���� �Լ� 1.nvl(expr1, expr2) 2.nvl2(expr1, expr2, expr3)
SELECT first_name, salary, nvl(salary*commission_pct, 0) commission FROM employees;
SELECT first_name, salary, nvl2(commission_pct, salary*commission_pct, 0) commission FROM employees;

-- CASE �Լ� 
-- AD ���� ������Դ� 20%, SA���� ������Դ� 10%, IT���� ������Դ� 8%, ������ ����鿡�Դ� 5% ����
SELECT job_id FROM employees; --��� ���̵� Ȯ��, ���ξ �и��Ͽ� ��Ȯ��
SELECT first_name, job_id, salary, 
    CASE SUBSTR(job_id, 1, 2) 
        WHEN 'AD' THEN salary*02
        WHEN 'SA' THEN salary*0.1
        WHEN 'IT' THEN salary*0.08
        ELSE salary*0.05
    END bonus
FROM employees;

-- DECODE �Լ�
SELECT first_name, job_id, salary,
    DECODE(SUBSTR(job_id, 1, 2),
        'AD', salary*0.2,
        'SA', salary*0.1,
        'IT', salary*0.08,
        salary*0.05) bonus
FROM employees;

-- ����
SELECT first_name, department_id,
    CASE WHEN department_id <= 30 THEN 'A-GROUP'
         WHEN department_id <= 50 THEN 'B-GROUP'
         WHEN department_id <= 100 THEN 'C-GROUP'
         ELSE 'REMAINDER' 
    END team
FROM employees ORDER BY team;