-- APEX PORT ����
-- APEX �� HTTPPORT Ȯ��
-- ���� ��ƮȮ��
SELECT DBMS_XDB.GETHTTPPORT() FROM DUAL; 
-- APEX ��Ʈ ����
EXEC DBMS_XDB.SETHTTPPORT(8090); 

-- hr���� Ȯ�� (lock�Ǿ�����)
SELECT username, account_status FROM DBA_USERS WHERE username = 'HR';
-- hr ���� ����� �����ϰ� unlock
ALTER USER hr IDENTIFIED BY hr ACCOUNT unlock;