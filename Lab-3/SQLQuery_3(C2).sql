UPDATE BORROW SET LOANNO = NULL
WHERE LOANNO=321

SELECT * FROM BORROW

UPDATE BORROW SET CNAME=NULL
WHERE CNAME = 'KRANTI'

SELECT CNAME FROM BORROW WHERE AMOUNT IS NULL

SELECT CNAME FROM BORROW WHERE BNAME IS NOT NULL

UPDATE BORROW SET AMOUNT=5000,BNAME='VRCE',CNAME='DARSHAN'
WHERE LOANNO=481

UPDATE DEPOSIT SET ADATE='2021-01-01'
WHERE AMOUNT<2000

SELECT * FROM DEPOSIT

UPDATE DEPOSIT SET ADATE=NULL,BNAME='ANDHERI'
WHERE ACTNO = 110