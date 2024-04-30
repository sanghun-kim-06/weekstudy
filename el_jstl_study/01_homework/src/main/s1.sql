create table student(
	student_no number primary key,
	student_name varchar2(50) not null,
	age number,
	grade number,
	classnumber number,
	height number,
	address varchar2(100),
	phone varchar2(100) not null,
	gender varchar2(5)
);

CREATE SEQUENCE SEQ_STUDENT
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999999999
NOCYCLE
NOCACHE;