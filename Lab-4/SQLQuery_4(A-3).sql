CREATE TABLE STUDENT_DETAIL(
    ENROLLMENT_NO VARCHAR(20),
    NAME VARCHAR(25),
    CPI DECIMAL(5,2),
    BIRTHDATE DATETIME
)

ALTER TABLE STUDENT_DETAIL
ADD CITY VARCHAR(20), BACKLOG INT;
ALTER TABLE STUDENT_DETAIL 
ALTER COLUMN CITY VARCHAR(35) NOT NULL;

SELECT * FROM STUDENT_DETAIL;

ALTER TABLE STUDENT_DETAIL 
ALTER COLUMN NAME VARCHAR(35);

ALTER TABLE STUDENT_DETAIL 
ALTER COLUMN CPI INT;

EXEC SP_RENAME 'STUDENT_DETAIL.ENROLLMENT_NO' , 'ENO';

ALTER TABLE STUDENT_DETAIL
DROP COLUMN CITY;

EXEC SP_RENAME 'STUDENT_DETAIL', 'STUDENT_MASTER';

SELECT * FROM STUDENT_MASTER;