--------------------  PART A  --------------------

CREATE TABLE STUDENT(
	StuID INT, 
	FirstName VARCHAR(25), 
	LastName VARCHAR(25) ,
	Website VARCHAR(50) ,
	City VARCHAR(25) ,
	Address VARCHAR(100)
);

INSERT INTO STUDENT VALUES
(1011 ,'Keyur'  ,'Patel'   ,'techonthenet.com'  ,'Rajkot'    ,'A-303 ''Vasant Kunj'', Rajkot'), 
(1022 ,'Hardik' ,'Shah'    ,'digminecraft.com'  ,'Ahmedabad' ,' ''Ram Krupa'', Raiya Road'), 
(1033 ,'Kajal'  ,'Trivedi' ,'bigactivities.com' ,'Baroda'    ,'Raj bhavan plot, near garden'), 
(1044 ,'Bhoomi' ,'Gajera'  ,'checkyourmath.com' ,'Ahmedabad' ,' ''Jigs Home'', Narol'),  
(1055 ,'Harmit' ,'Mitel'   ,'@me.darshan.com'   ,'Rajkot'    ,'B-55, Raj Residency'), 
(1066 ,'Ashok'  ,'Jani'    ,NULL                ,'Baroda'    ,'A502, Club House Building');

SELECT  * FROM STUDENT


--1. Display the name of students whose name starts with ‘k’. 
SELECT FirstName from STUDENT
WHERE FirstName LIKE 'K%'

--2. Display the name of students whose name consists of five characters. 
SELECT FirstName from STUDENT
WHERE FirstName LIKE '_____'

--3. Retrieve the first name & last name of students whose city name ends with ‘a’ & contains six characters. 
SELECT FirstName ,LastName from STUDENT
WHERE CITY LIKE '_____a'

--4. Display all the students whose last name ends with ‘tel’. 
SELECT * FROM STUDENT
WHERE LastName like '%tel'

--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’. 
SELECT * FROM STUDENT
WHERE FirstName like 'ha%t'

--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’. 
SELECT * FROM STUDENT
WHERE FirstName like 'k_y%'

--7. Display the name of students having no website and name consists of five characters. 
select * from STUDENT
where website is NULL and FirstName  like '_____'

--8. Display all the students whose last name consist of ‘jer’.   
select * from STUDENT
where LastName like '%jer%'

--9. Display all the students whose city name starts with either ‘r’ or ‘b’. 
select * from STUDENT
where City like 'r%' OR City like 'b%'

--10. Display all the name students having websites. 
select FirstName from STUDENT
where website not like 'NULL' 

--11. Display all the students whose name starts from alphabet A to H. 
select  * from STUDENT
where FirstName like '[A-H]%'

--12. Display all the students whose name’s second character is vowel. 
select * from STUDENT
where FirstName like '_[a,e,i,o,u,A,E,I,O,U]%'

--13. Display the name of students having no website and name consists of minimum five characters. 
select FirstName from STUDENT
where website is NULL AND FirstName like '_____%'

--14. Display all the students whose last name starts with ‘Pat’.
select * from STUDENT
where LastName like 'Pat%'

--15. Display all the students whose city name does not starts with ‘b’. 
select * from STUDENT
where City not like 'b%'

--16. Display all the students whose student ID ends with digit. 
select * from STUDENT
where StuID like '%[0-9]'

--17. Display all the students whose address does not contain any digit. 
select * from STUDENT
where Address not like '%[0-9]%'

--18. Find students whose first name starts with 'B', last name ends with 'A', and their website contains either 
--'math' or 'science'. Ensure that their city does not start with 'B'. 
select * from STUDENT
where FirstName like 'b%' AND LastName like '%a' AND (Website like '%math%' OR Website like '%science%') AND City not like 'b%'

--19. Retrieve students who have 'Shah' in their last name and whose city ends with 'd'. Additionally, their 
--website should be either null or contain 'com'. 
select * from STUDENT
where LastName like 'Shah' AND City like '%d' AND   (Website like '%com%' OR Website is NULL)

--20. Select students whose first and second character is a vowel. Their city should start with 'R' and they must 
--have a website containing '.com'.
select * from STUDENT
where FirstName like '[a,e,i,o,u][a,e,i,o,u]%' AND City like 'r%' AND Website like '%com%'


--------------------  PART B  --------------------

--1. Display all the students whose name’s second character is vowel and of and start with H. 
select * from STUDENT
where FirstName like 'H[a,e,i,o,u]%'

--2. Display all the students whose last name does not ends with ‘a’. 
select * from STUDENT
where LastName not like '%a'

--3. Display all the students whose first name starts with consonant. 
select * from STUDENT
where FirstName not like '[a,e,i,o,u]%'

--4. Retrieve student details whose first name starts with 'K', last name ends with 'tel', and either their 
--website contains 'tech' or they live in a city starting with 'R'. 
select * from  STUDENT
where FirstName like 'k%' AND LastName like '%tel' AND (Website like '%tech%' OR City like 'r%') 

--5. Retrieve students whose address contains a hyphen '-' and whose city starts with either 'R' or 'B'. They 
--must have a website that ends with '.com' and their first name should not start with 'A'.
select * from STUDENT
where FirstName not like 'a%'  AND Address like '%-%' AND (City like 'r%' OR City like 'b%') AND Website like '%.com' 