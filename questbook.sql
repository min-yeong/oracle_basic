-- Guestbook
CREATE TABLE guestbook (
    no number primary key,
    name varchar(20) NOT NULL,
    password varchar(20) NOT NULL,
    content varchar(256) NOT NULL,
    regdate date DEFAULT sysdate );

CREATE SEQUENCE seq_guestbook_no START WITH 1 INCREMENT BY 1;

INSERT INTO guestbook (no, name, password, content) 
    values (seq_guestbook_no.nextval, '�湮��', 'test', '�׽�Ʈ �����Դϴ�.');

SELECT * FROM guestbook;

commit;

