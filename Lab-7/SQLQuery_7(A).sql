CREATE TABLE EMP(
    EID INT,
    ENAME VARCHAR(50),
    DEPARTMENT VARCHAR(50),
    SALARY DECIMAL(8,2),
    JOININGDATE DATETIME,
    CITY VARCHAR(20)
);

INSERT INTO EMP VALUES(101,'RAHUL','ADMIN',56000,'1990-01-01','RAJKOT')
INSERT INTO EMP VALUES(102,'HARDIK','IT',18000,'1990-09-25','AHMEDABAD')
INSERT INTO EMP VALUES(103,'BHAVIN','HR',25000,'1991-05-14','BARODA')
INSERT INTO EMP VALUES(104,'BOOMI','ADMIN',39000,'1991-02-08','RAJKOT')
INSERT INTO EMP VALUES(105,'ROHIT','IT',17000,'1990-07-23','JAMNAGAR')
INSERT INTO EMP VALUES(106,'PRIYA','IT',9000,'1990-10-18','AHMEDABAD')
INSERT INTO EMP VALUES(107,'BHOOMI','HR',34000,'1991-12-25','RAJKOT')

SELECT * FROM EMP;

SELECT MAX(SALARY) AS MAXIMUM , MIN(SALARY) AS MINIUM FROM EMP

SELECT SUM(SALARY) AS TOTAL_SAL , AVG(SALARY) AS AVERAGE_SAL FROM EMP

SELECT COUNT(EID) AS TOTAL_EMP FROM EMP

SELECT MAX(SALARY) AS MAXIMUM FROM EMP WHERE CITY = 'RAJKOT';

SELECT MAX(SALARY) AS MAXIMUM FROM EMP WHERE DEPARTMENT = 'IT';

SELECT COUNT(*) FROM EMP WHERE JOININGDATE > '1991-02-08';

SELECT AVG(SALARY) AS AVG FROM EMP WHERE DEPARTMENT = 'ADMIN';

SELECT SUM(SALARY) AS TOTAL FROM EMP WHERE DEPARTMENT = 'HR';

SELECT COUNT(DISTINCT CITY) AS CITY_COUNT FROM EMP;

SELECT COUNT(DISTINCT DEPARTMENT) AS DEPART FROM EMP;

SELECT MIN(SALARY) AS MIN_SALARY FROM EMP WHERE CITY = 'AHMEDABAD';

SELECT CITY, MAX(SALARY) AS HIGHEST_SALARY FROM EMP GROUP BY CITY;

SELECT DEPARTMENT, MIN(SALARY) AS LOWEST_SALARY FROM EMP GROUP BY DEPARTMENT;

SELECT CITY, COUNT(*) AS TOTAL_EMP FROM EMP GROUP BY CITY;

SELECT DEPARTMENT, SUM(SALARY) AS TOTAL_SAL FROM EMP GROUP BY DEPARTMENT;

SELECT AVG(SALARY) AS AVG_SAL FROM EMP GROUP BY DEPARTMENT;