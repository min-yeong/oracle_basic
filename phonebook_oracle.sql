-- PhoneBook_Oracle ������ ���� SQL
CREATE TABLE PHONE_BOOK (id number(10) primary key, name varchar2(10), hp varchar2(20), tel varchar2(20));
CREATE SEQUENCE seq_phone_book START WITH 1;

SELECT * FROM phone_book;
SELECT * FROM user_sequences;

INSERT INTO PHONE_BOOK values (seq_phone_book.nextval, '��浿', '010-1234-5678', '02-1234-5678');
INSERT INTO PHONE_BOOK values (seq_phone_book.nextval, '�����', '010-2345-6789', '02-2345-6789');
INSERT INTO PHONE_BOOK values (seq_phone_book.nextval, '������', '010-3456-7890', '02-3456-7890');
INSERT INTO PHONE_BOOK values (seq_phone_book.nextval, '��ġ', '010-4567-8901', '02-4567-8901');
INSERT INTO PHONE_BOOK values (seq_phone_book.nextval, '�̹ο�', '010-5678-9012', '02-5678-9012');
SELECT * FROM phone_book;
commit;
