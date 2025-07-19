
--------------------Part – A:--------------------


CREATE TABLE EMP (
	EID INT,
	EName VARCHAR(25),
	Department VARCHAR(25),
	Salary DECIMAL(8,2),
	JoiningDate DATETIME,
	City VARCHAR(25),
	Gender VARCHAR(10)
);

INSERT INTO EMP VALUES
(101, 'Rahul', 'Admin', 56000, '1990-Jan-1' ,'Rajkot', 'Male'),
(102, 'Hardik', 'IT', 18000, '1990-Sep-25' ,'Ahmedabad', 'Male'),
(103, 'Bhavin', 'HR', 25000, '1991-May-14' ,'Baroda', 'Male'),
(104, 'Bhoomi', 'Admin', 39000, '1991-Feb-8' ,'Rajkot', 'Female'),
(105, 'Rohit', 'IT', 17000, '1990-Jul-23' ,'Jamnagar', 'Male'),
(106, 'Priya', 'IT', 9000, '1990-Oct-18' ,'Ahmedabad', 'Female'),
(107, 'Bhoomi', 'HR', 34000, '1991-Dec-25' ,'Rajkot', 'Female');


--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(Salary) AS Maximum, MIN(Salary) AS Minimum
FROM EMP;

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.
SELECT SUM(Salary) AS Total_Sal, AVG(Salary) AS Average_Sal
FROM EMP;

--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(EID)
FROM EMP;

--4. Find highest salary from Rajkot city.SELECT MAX(Salary) AS MAX_SALRYFROM EMPWHERE City='RAJKOT';--5. Give maximum salary from IT department.
SELECT MAX(Salary) AS MAX_SALARY FROM EMP WHERE Department='IT';

--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(EID) AS EMP_COUNT
FROM EMP
WHERE JoiningDate>'1991-FEB-8';

--7. Display average salary of Admin department.
SELECT AVG(Salary) AS AVG_SALARY
FROM EMP
WHERE Department='Admin';

--8. Display total salary of HR department.
SELECT SUM(Salary) AS TOTL_SALARY
FROM EMP
WHERE Department='HR';

--9. Count total number of cities of employee without duplication.
SELECT DISTINCT COUNT(City) AS CITY_COUNT
FROM EMP;

--10. Count unique departments.
SELECT DISTINCT COUNT(Department) AS CITY_COUNT
FROM EMP;

--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(Salary) AS MIN_SALARY
FROM EMP
WHERE City='Ahmedabad';

--12. Find city wise highest salary.
SELECT City,MAX(Salary) AS MAX_SAL_CITY
FROM EMP
GROUP BY City;

--13. Find department wise lowest salary.
SELECT Department,MIN(Salary) AS MIN_SAL_DEPRT
FROM EMP
GROUP BY Department;

--14. Display city with the total number of employees belonging to each city.
SELECT City,COUNT(EID) AS COUNT_EMP_CITY
FROM EMP
GROUP BY City;

--15. Give total salary of each department of EMP table.
SELECT Department,SUM(Salary) AS TOTAL_SAL_DEPRT
FROM EMP
GROUP BY Department;

--16. Give average salary of each department of EMP table without displaying the respective department name.
SELECT SUM(Salary) AS TOTAL_SAL_DEPRT
FROM EMP
GROUP BY Department;

--17. Count the number of employees for each department in every city.
SELECT Department,City,COUNT(EID) AS COUNT_EMP_DEPRT
FROM EMP
GROUP BY Department,City;

--18. Calculate the total salary distributed to male and female employees.
SELECT Gender,SUM(Salary) AS TOTAL_SAL_GENDER
FROM EMP
GROUP BY Gender;

--19. Give city wise maximum and minimum salary of female employees.
SELECT City,MAX(Salary) AS MAX_SAL_F, MIN(Salary) AS MIN_SAL_F
FROM EMP
WHERE Gender='Female'
GROUP BY City;
--20. Calculate department, city, and gender wise average salary.
Select Department,City,Gender,AVG(Salary) AS Avrage_Salary
From EMP
Group by Department,City,Gender


--------------------Part – B:--------------------


--1. Count the number of employees living in Rajkot.
SELECT COUNT(EID) AS COUNT_EMP FROM EMP WHERE City='RAJKOT';

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT (MAX(Salary)-MIN(Salary)) AS DIFFERENCE
FROM EMP;

--3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(EID) AS EMP_COUNT
FROM EMP
WHERE JoiningDate<'1991-JAN-1';


--------------------Part – C:--------------------


--1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(EID) AS COUNT_EMP FROM EMP WHERE City='RAJKOT' OR City='BARODA';

--2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(EID) AS EMP_COUNT
FROM EMP
WHERE JoiningDate<'1991-JAN-1' AND Department='IT';

--3. Find the Joining Date wise Total Salaries.
SELECT SUM(Salary) AS TOTAL_SALARY_JD
FROM EMP
GROUP BY JoiningDate;
--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT Department,City,MAX(Salary) AS MAX_EMP_DC
FROM EMP
WHERE City LIKE 'R%'
GROUP BY Department,City;