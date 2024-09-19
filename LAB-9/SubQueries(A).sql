CREATE TABLE STUDENT_DATA(
    NO INT,
    FNAME VARCHAR(20),
    CITY VARCHAR(50),
    DID INT
);

INSERT INTO STUDENT_DATA VALUES(101,'RAJU','RAJKOT',10);
INSERT INTO STUDENT_DATA VALUES(102,'AMIT','AHMEDABAD',20);
INSERT INTO STUDENT_DATA VALUES(103,'SANJAY','BARODA',40);
INSERT INTO STUDENT_DATA VALUES(104,'NEHA','RAJKOT',20);
INSERT INTO STUDENT_DATA VALUES(105,'MEERA','AHMEDABAD',30);
INSERT INTO STUDENT_DATA VALUES(106,'MAHESH','BARODA',10);

SELECT * FROM STUDENT_DATA;

CREATE TABLE ACADEMIC(
    RNO INT,
    SPI DECIMAL(8,2),
    BKLOG INT
);

INSERT INTO ACADEMIC VALUES(101,8.8,0);
INSERT INTO ACADEMIC VALUES(102,9.2,2);
INSERT INTO ACADEMIC VALUES(103,7.6,1);
INSERT INTO ACADEMIC VALUES(104,8.2,4);
INSERT INTO ACADEMIC VALUES(105,7.0,2);
INSERT INTO ACADEMIC VALUES(106,8.9,3);

SELECT * FROM ACADEMIC;

CREATE TABLE DEPARTMENT(
    DID INT,
    DNAME VARCHAR(20)
);

INSERT INTO DEPARTMENT VALUES(10,'COMPUTER');
INSERT INTO DEPARTMENT VALUES(20,'ELECTRICAL');
INSERT INTO DEPARTMENT VALUES(30,'MECHANICAL');
INSERT INTO DEPARTMENT VALUES(40,'CIVIL');

SELECT * FROM DEPARTMENT;

-- PART - A

SELECT * FROM STUDENT_DATA 
WHERE DID = (SELECT DID FROM DEPARTMENT WHERE DNAME = 'COMPUTER');

SELECT FNAME FROM STUDENT_DATA
WHERE NO IN (SELECT RNO FROM ACADEMIC WHERE SPI > 8);

SELECT * FROM STUDENT_DATA 
WHERE CITY IN (SELECT CITY FROM STUDENT_DATA WHERE CITY = 'RAJKOT' AND DID IN (SELECT DID FROM DEPARTMENT WHERE DNAME = 'COMPUTER'));

SELECT COUNT(NO) FROM STUDENT_DATA 
WHERE DID IN (SELECT DID FROM DEPARTMENT WHERE DNAME='ELECTRICAL');

SELECT FNAME FROM STUDENT_DATA 
WHERE NO = (SELECT RNO FROM ACADEMIC WHERE SPI =(SELECT MAX(SPI) FROM ACADEMIC));

SELECT * FROM STUDENT_DATA 
WHERE NO IN (SELECT Rno FROM ACADEMIC WHERE BKLOG>1);

-- PART - B

SELECT FNAME FROM STUDENT_DATA 
WHERE DID IN (SELECT DID FROM DEPARTMENT WHERE DNAME IN ('COMPUTER','MECHANICAL'));
	
SELECT FNAME FROM STUDENT_DATA 
WHERE DID = (SELECT DID FROM STUDENT_DATA WHERE NO = 102);

--PART - C

SELECT FNAME FROM STUDENT_DATA 
WHERE NO = (SELECT Rno FROM ACADEMIC WHERE SPI > 9 AND DID IN (SELECT DID FROM DEPARTMENT WHERE DNAME = 'ELECTRICAL'));

SELECT FNAME FROM STUDENT_DATA 
WHERE NO IN (SELECT Rno FROM ACADEMIC WHERE SPI = (SELECT MAX(SPI) FROM ACADEMIC WHERE SPI < (SELECT MAX(SPI) FROM ACADEMIC)));

SELECT CITY FROM STUDENT_DATA 
WHERE NO IN (SELECT Rno FROM ACADEMIC WHERE SPI = 9.2);