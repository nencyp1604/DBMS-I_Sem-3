SELECT * FROM STUDENT WHERE FIRSTNAME LIKE '[A,H]%';

SELECT * FROM STUDENT WHERE FIRSTNAME LIKE 'H[A,E,I,O,U]%';

SELECT * FROM STUDENT WHERE LASTNAME NOT LIKE '%A';

SELECT * FROM STUDENT WHERE FIRSTNAME NOT LIKE '[A,E,I,O,U]%';

SELECT * FROM STUDENT WHERE WEBSITE LIKE '%.NET%';