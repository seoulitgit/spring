CREATE TABLE EMPLOYEE (
  ID                 number(4)     primary key, 
  EMPLOYEE_NUMBER    NUMBER(4)        NOT NULL, 
  FIRST_NAME         VARCHAR2(20)     NOT NULL, 
  LAST_NAME          VARCHAR2(20)     NOT NULL, 
  TITLE              VARCHAR2(20)     NOT NULL
);
insert into employee values (1,10,'hoing','gildong','ceo');