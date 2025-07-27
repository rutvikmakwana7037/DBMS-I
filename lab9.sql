
----------------------------------------Math functions----------------------------------------


--------------------Part � A:--------------------


--1. Display the result of 5 multiply by 30.
SELECT 5*30;

--2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25),ABS(25),ABS(50),ABS(50);

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2);

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2);

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT 5%2, 5%3;

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3,2), POWER(4,3);

--7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25), SQRT(30), SQRT(50);

--8. Find out the square of 5, 15, and 25.
SELECT SQUARE(5), SQUARE(15), SQUARE(25);

--9. Find out the value of PI.
SELECT PI();

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732,2), ROUND(157.732,0), ROUND(157.732,-2);

--11. Find out exponential value of 2 and 3.
SELECT EXP(2), EXP(3);

--12. Find out logarithm having base e of 10 and 2.
SELECT LOG(10), LOG(2);

--13. Find out logarithm having base b having value 10 of 5 and 100.
SELECT LOG10(5), LOG10(100);

--14. Find sine, cosine and tangent of 3.1415.
SELECT SIN(3.1415), COS(3.1415), TAN(3.1415);

--15. Find sign of -25, 0 and 25.
SELECT SIGN(-25), SIGN(0), SIGN(25);

--16. Generate random number using function
SELECT RAND();


--------------------Part � B:--------------------


CREATE TABLE EMP_MASTER (
    EmpNo INT PRIMARY KEY,
    EmpName VARCHAR(50),
    JoiningDate DATE,
    Salary DECIMAL(10, 2),
    Commission DECIMAL(10, 2),
    City VARCHAR(50),
    DeptCode VARCHAR(10)
);


INSERT INTO EMP_MASTER VALUES 
(101, 'Keyur',  '2002-01-5', 12000.00, 4500.00, 'Rajkot',     '3@g'),
(102, 'Hardik', '2004-02-15', 14000.00, 2500.00, 'Ahmedabad', '3@'),
(103, 'Kajal',  '2006-03-14', 15000.00, 3000.00, 'Baroda',     '3-GD'),
(104, 'Bhoomi', '2005-06-23', 12500.00, 1000.00, 'Ahmedabad', '1A3D'),
(105, 'Harmit', '2004-02-15', 14000.00, 2000.00, 'Rajkot',     '312A');


--1. Display the result of Salary plus Commission.
SELECT (Salary+Commission)
FROM EMP_MASTER;

--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
SELECT CEILING(55.2),CEILING(35.7),CEILING(-55.2);

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
SELECT FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2);

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
SELECT 55%2, 55%3;

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
SELECT POWER(23,2), POWER(14,3);


--------------------Part � C:--------------------


--1. Retrieve the details of employees whose total earnings (Salary + Commission) are greater than 15000.
SELECT *
FROM EMP_MASTER
WHERE (Salary+Commission)>15000;

--2. Find the details of employees whose commission is more than 25% of their salary.
SELECT *
FROM EMP_MASTER
WHERE Commission>(Salary*25/100);

--3. List the employees who joined before 2005 and whose total earnings (Salary + Commission) are greater than 15000.
SELECT *
FROM EMP_MASTER
WHERE YEAR(JoiningDate)<2005 AND (Salary+Commission)>15000;

--4. Find employees whose total earnings (Salary + Commission) are at least double their salary.
SELECT *
FROM EMP_MASTER
WHERE (Salary+Commission)>=Salary*2;





----------------------------------------String functions----------------------------------------


--------------------Part � A:--------------------


--1. Find the length of following. (I) NULL (II) � hello � (III) Blank
SELECT LEN(NULL), LEN(' HELLO '), LEN('');

--2. Display your name in lower & upper case.
SELECT LOWER('RUTVIK MAKWANA'), UPPER('RUTVIK MAKWANA');

--3. Display first three characters of your name.
SELECT SUBSTRING('RUTVIK MAKWANA',0,4);

--4. Display 3rd to 10th character of your name.
SELECT SUBSTRING('RUTVIK MAKWANA',3,11);

--5. Write a query to convert �abc123efg� to �abcXYZefg� & �abcabcabc� to �ab5ab5ab5� using REPLACE.
SELECT REPLACE('abc123efg', '123', 'XYZ'), REPLACE('abcabcabc', 'C', '5');

--6. Write a query to display ASCII code for �a�,�A�,�z�,�Z�, 0, 9.
SELECT ASCII('a'), ASCII('A'), ASCII('z'), ASCII('Z'), ASCII(0), ASCII(9);

--7. Write a query to display character based on number 97, 65,122,90,48,57.
SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57);

--8. Write a query to remove spaces from left of a given string �hello world �.
SELECT LTRIM('hello world ');

--9. Write a query to remove spaces from right of a given string � hello world �.
SELECT RTRIM(' hello world');

--10. Write a query to display first 4 & Last 5 characters of �SQL Server�.
SELECT SUBSTRING('SQL Server',0,5), SUBSTRING('SQL Server',LEN('SQL Server')-4,LEN('SQL Server'));

--11. Write a query to convert a string �1234.56� to number (Use cast and convert function).
SELECT CAST('1234.56' AS decimal(6,2)), CONVERT(decimal(6,2), '1234.56');

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
SELECT CAST('10.58' AS int), CONVERT(int, '10.58');

--13. Put 10 space before your name using function.
SELECT SPACE(10)+'RUTVIK MAKWANA';

--14. Combine two strings using + sign as well as CONCAT ().
SELECT 'ABC'+'abc', CONCAT('ABC', 'abc');

--15. Find reverse of �Darshan�.
SELECT REVERSE('Darshan');

--16. Repeat your name 3 times.
SELECT REPLICATE('RUTVIK MAKWANA', 3);


--------------------Part � C:--------------------


--1. Find the length of EMP Name and City columns.
SELECT LEN(EmpName), LEN(City)
FROM EMP_MASTER;

--2. Display EMP Name and City columns in lower & upper case.
SELECT LOWER(EmpName), LOWER(City), UPPER(EmpName), UPPER(City)
FROM EMP_MASTER;

--3. Display first three characters of EMP Name column.
SELECT SUBSTRING(EmpName, 0,4)
FROM EMP_MASTER;

--4. Display 3rd to 10th character of city column.
SELECT SUBSTRING(City,3,11)
FROM EMP_MASTER;

--5. Write a query to display first 4 & Last 5 characters of EMP Name column.
SELECT SUBSTRING(EmpName,0,5), SUBSTRING(EmpName,LEN(EmpName)-4,LEN(EmpName))
FROM EMP_MASTER;


--------------------Part � C:--------------------


--1. Put 10 space before EMP Name using function.
SELECT SPACE(10)+EmpName
FROM EMP_MASTER;

--2. Combine EMP Name and city columns using + sign as well as CONCAT ().
SELECT EmpName+City, CONCAT(EmpName, City)
FROM EMP_MASTER;

--3. Combine all columns using + sign as well as CONCAT ().
SELECT EmpNo+EmpName+JoiningDate+Salary+Commission+City+DeptCode, CONCAT(EmpNo,EmpName,JoiningDate,Salary,Commission,City,DeptCode)
FROM EMP_MASTER;

--4. Combine the result as < EMP Name > Lives in <City>.
SELECT EmpName+' Lives in '+City
FROM EMP_MASTER;

--5. Combine the result as �EMP no of < EMP Name> is <EmpNo> .
SELECT CONCAT('EMP no of ', EmpName,' is ', EmpNo)
FROM EMP_MASTER;

--6. Retrieve the names of all employee where the third character of the Name is a vowel.
SELECT EmpName
FROM EMP_MASTER
GROUP BY EmpName
HAVING SUBSTRING(EmpName,3,1) IN ('A','E','I','O','U');

--7. Concatenate the name and city of students who have a name that ends with the letter 'r' and a city starts with 'R'.
SELECT CONCAT(EmpName,City)
FROM EMP_MASTER
WHERE EmpName LIKE '%r' AND City LIKE 'R%'



-----------------Date Functions------------------
--------------------Part � A:--------------------

--1. Write a query to display the current date & time. Label the column Today_Date.
--2. Write a query to find new date after 365 day with reference to today.
--3. Display the current date in a format that appears as may 5 1994 12:00AM.
--4. Display the current date in a format that appears as 03 Jan 1995.
--5. Display the current date in a format that appears as Jan 04, 96.
--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
--7. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
--8. Write a query to extract Day, Month, Year from given date 12-May-16.
--9. Write a query that adds 5 years to current date.
--10. Write a query to subtract 2 months from current date.
--11. Extract month from current date using datename () and datepart () function.
--12. Write a query to find out last date of current month.
--13. Calculate your age in years and months.
