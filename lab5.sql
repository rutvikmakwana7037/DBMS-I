----------------  PART = A  ----------------

SELECT * FROM DEPOSIT
 
--1. Add two more columns City VARCHAR (20) and Pincode INT. 
ALTER TABLE DEPOSIT
ADD CITY VARCHAR(20),
	PINCODE INT

--2. Add column state VARCHAR(20). 
ALTER TABLE DEPOSIT
ADD STATE VARCHAR(20)

--3. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35). 
ALTER TABLE DEPOSIT
ALTER COLUMN CNAME VARCHAR(35)

--4. Change the data type DECIMAL to INT in amount Column. 
ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT

--5. Delete Column City from the DEPOSIT table. 
ALTER TABLE DEPOSIT
DROP COLUMN CITY

--6. Rename Column ActNo to ANO. 
EXEC SP_RENAME 'DEPOSIT.ACTNO','ANO'

----7. Change name of table DEPOSIT to DEPOSIT_DETAIL. 
EXEC SP_RENAME 'DEPOSIT','DEPOSIT_DETAIL'

----------------  PART = B  ----------------

SELECT * FROM DEPOSIT_DETAIL


--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table. 
EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE'


--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table. 
ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN AOPENDATE

--3. Rename Column CNAME to CustomerName. 
EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME','CustomerName'

--4. Add Column country.
ALTER TABLE DEPOSIT_DETAIL
ADD COUNTRY VARCHAR(20) 

----------------  PART = C  ----------------

CREATE TABLE STUDENT_DETAIL (
	Enrollment_No VARCHAR(20),
	Name VARCHAR(25),
	CPI DECIMAL(5,2),
	Birthdate DATETIME
);

SELECT * FROM  STUDENT_DETAIL


--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null). 
ALTER TABLE STUDENT_DETAIL
ADD City VARCHAR (20) NOT NULL DEFAULT 'RAJKOT',
	Backlog INT 

--2. Add column department VARCHAR (20) Not Null. 
ALTER TABLE STUDENT_DETAIL
ADD Department VARCHAR (20) NOT NULL DEFAULT 'CSE'

--3. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35). 
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN NAME VARCHAR(35)

--4. Change the data type DECIMAL to INT in CPI Column. 
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN CPI INT

--5. Delete Column City from the student_detail table. 
ALTER TABLE STUDENT_DETAIL
DROP COLUMN CITY

--6. Rename Column Enrollment_No to ENO. 
SP_RENAME 'STUDENT_DETAIL.Enrollment_No','ENO'

--7. Change name of table student_detail to STUDENT_MASTER.
EXEC SP_RENAME 'STUDENT_DETAIL','STUDENT_MASTER'


-------------- DELETE, Truncate, Drop Operation --------------
----------------  PART = A  ----------------
SELECT * FROM DEPOSIT_DETAIL

--1. Delete all the records of DEPOSIT_DETAIL table having amount less than and equals to 4000.  
DELETE FROM DEPOSIT_DETAIL
WHERE AMOUNT <= 4000

--2. Delete all the accounts CHANDI BRANCH. 
DELETE FROM DEPOSIT_DETAIL
WHERE BNAME = 'CHANDI'

--3. Delete all the accounts having account number (ANO) is greater than 102 and less than 105. 
DELETE FROM DEPOSIT_DETAIL
WHERE ANO > 102 AND ANO < 105

--4. Delete all the accounts whose branch is ‘AJNI’ or ‘POWAI’ 
DELETE FROM DEPOSIT_DETAIL
WHERE BNAME IN ('AJNI','POWAI')

--5. Delete all the accounts whose account number is NULL. 
DELETE FROM DEPOSIT_DETAIL
WHERE ANO IS NULL

--6. Delete all the remaining records using Delete command. 
DELETE  DEPOSIT_DETAIL

--7. Delete all the records of Deposit_Detail table. (Use Truncate) 
Truncate TABLE DEPOSIT_DETAIL

--8. Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL


----------------  PART = B  ----------------

CREATE TABLE EMPLOYEE_MASTER(
	EmpNo INT, 
	EmpName VARCHAR(25), 
	JoiningDate DATETIME, 
	Salary DECIMAL (8,2), 
	City VARCHAR(20)
);

INSERT INTO EMPLOYEE_MASTER VALUES
(101, 'Keyur', '5-1-02', 12000.00, 'Rajkot'), 
(102,'Hardik', '5-2-04', 14000.00, 'Ahmedabad'), 
(103, 'Kajal', '14-3-06', 15000.00, 'Baroda' ),
(104, 'Bhoomi', '23-6-05', 12500.00, 'Ahmedabad'), 
(105, 'Harmit', '15-2-04', 14000.00, 'Rajkot'), 
(106, 'Mitesh', '25-9-01', 5000.00, 'Jamnagar'), 
(107, 'Meera', 'Null', 7000.00, 'Morbi'), 
(108, 'Kishan', '6-2-03', 10000.00, 'NULL') 