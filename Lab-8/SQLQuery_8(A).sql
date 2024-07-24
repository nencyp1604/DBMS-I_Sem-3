CREATE TABLE SALES_DATA(
    REGION VARCHAR(20),
    PRODUCT VARCHAR(20),
    SALES_AMOUNT INT,
    YR DATE
);

INSERT INTO SALES_DATA VALUES('NORTH AMERICA','WATCH',1500,'2023');
INSERT INTO SALES_DATA VALUES('EUROPE','MOBILE',1200,'2023');
INSERT INTO SALES_DATA VALUES('ASIA','WATCH',1800,'2023');
INSERT INTO SALES_DATA VALUES('NORTH AMERICA','TV',900,'2024');
INSERT INTO SALES_DATA VALUES('EUROPE','WATCH',2000,'2024');
INSERT INTO SALES_DATA VALUES('ASIA','MOBILE',1000,'2024');
INSERT INTO SALES_DATA VALUES('NORTH AMERICA','MOBILE',1600,'2023');
INSERT INTO SALES_DATA VALUES('EUROPE','TV',1500,'2023');
INSERT INTO SALES_DATA VALUES('ASIA','TV',1100,'2024');
INSERT INTO SALES_DATA VALUES('NORTH AMERICA','WATCH',1700,'2024');

SELECT * FROM SALES_DATA

SELECT COUNT(SALES_AMOUNT) AS AVG_AMOUNT ,REGION FROM SALES_DATA GROUP BY REGION

SELECT AVG(SALES_AMOUNT)AS AVG_SALES ,PRODUCT FROM SALES_DATA GROUP BY PRODUCT

SELECT REGION,YR,MIN(SALES_AMOUNT) AS MIN_AMOUNT  FROM SALES_DATA GROUP BY REGION,YR;

SELECT REGION ,COUNT(PRODUCT) AS TOTAL_PRODUCT FROM SALES_DATA GROUP BY REGION;

SELECT YR,PRODUCT,SUM(SALES_AMOUNT) FROM SALES_DATA GROUP BY YR,PRODUCT

SELECT REGION,SUM(SALES_AMOUNT) FROM SALES_DATA GROUP BY REGION HAVING SUM(SALES_AMOUNT)>5000

SELECT PRODUCT,AVG(SALES_AMOUNT) FROM SALES_DATA GROUP BY PRODUCT HAVING AVG(SALES_AMOUNT)<10000

SELECT YR,MAX(SALES_AMOUNT) FROM SALES_DATA GROUP BY YR HAVING MAX(SALES_AMOUNT)>500

SELECT REGION, COUNT(DISTINCT PRODUCT) FROM SALES_DATA GROUP BY REGION HAVING COUNT(PRODUCT)>=3

SELECT YR,MIN(SALES_AMOUNT) FROM SALES_DATA GROUP BY YR HAVING MIN(SALES_AMOUNT)<1000;

SELECT REGION,SUM(SALES_AMOUNT) FROM SALES_DATA WHERE YR='2023' GROUP BY REGION  ORDER BY SUM(SALES_AMOUNT);