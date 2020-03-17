-- APEX PORT 변경
-- APEX 와 HTTPPORT 확인
-- 현재 포트확인
SELECT DBMS_XDB.GETHTTPPORT() FROM DUAL; 
-- APEX 포트 변경
EXEC DBMS_XDB.SETHTTPPORT(8090); 

-- hr계정 확인 (lock되어있음)
SELECT username, account_status FROM DBA_USERS WHERE username = 'HR';
-- hr 계정 사용을 가능하게 unlock
ALTER USER hr IDENTIFIED BY hr ACCOUNT unlock;