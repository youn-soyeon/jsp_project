select * from users;

CREATE TABLE USERS(
id VARCHAR2(12) PRIMARY KEY,
passwd VARCHAR2(12),
addr VARCHAR2(50),
job VARCHAR2(30),
salary NUMBER,
name VARCHAR2(12));

select * from users;

INSERT INTO users values('java','java','서울시','강사',10000,'오강사')