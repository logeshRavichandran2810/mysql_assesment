CREATE DATABASE ASSIGNMENT_1;
	   
USE ASSIGNMENT_1;
	   
	   CREATE TABLE Worker (
       WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
       FIRST_NAME CHAR(25),
       LAST_NAME CHAR(25),
       SALARY INT(15),
       JOINING_DATE DATETIME,
       DEPARTMENT CHAR(25)
       );

           INSERT INTO Worker
           (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
           (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
           (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
           (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
           (004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
           (005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
           (006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
           (007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
           (008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
		   
SELECT*FROM WORKER;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+


        CREATE TABLE Bonus (
        WORKER_REF_ID INT,
        BONUS_AMOUNT INT(10),
        BONUS_DATE DATETIME,
        FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
        );

            INSERT INTO Bonus
            (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
            (001, 5000, '16-02-20'),
            (002, 3000, '16-06-11'),
            (003, 4000, '16-02-20'),
            (001, 4500, '16-02-20'),
            (002, 3500, '16-06-11');
			
SELECT*FROM BONUS;
+---------------+--------------+---------------------+
| WORKER_REF_ID | BONUS_AMOUNT | BONUS_DATE          |
+---------------+--------------+---------------------+
|             1 |         5000 | 2016-02-20 00:00:00 |
|             2 |         3000 | 2016-06-11 00:00:00 |
|             3 |         4000 | 2016-02-20 00:00:00 |
|             1 |         4500 | 2016-02-20 00:00:00 |
|             2 |         3500 | 2016-06-11 00:00:00 |
+---------------+--------------+---------------------+

       CREATE TABLE Title (
       WORKER_REF_ID INT,
       WORKER_TITLE CHAR(25),
       AFFECTED_FROM DATETIME,
       FOREIGN KEY (WORKER_REF_ID)
       REFERENCES Worker(WORKER_ID)
       ON DELETE CASCADE
       );

          INSERT INTO Title
          (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
          (001, 'Manager', '2016-02-20 00:00:00'),
          (002, 'Executive', '2016-06-11 00:00:00'),
          (008, 'Executive', '2016-06-11 00:00:00'),
          (005, 'Manager', '2016-06-11 00:00:00'),
          (004, 'Asst. Manager', '2016-06-11 00:00:00'),
          (007, 'Executive', '2016-06-11 00:00:00'),
          (006, 'Lead', '2016-06-11 00:00:00'),
          (003, 'Lead', '2016-06-11 00:00:00');
		  
SELECT*FROM TITLE;
+---------------+---------------+---------------------+
| WORKER_REF_ID | WORKER_TITLE  | AFFECTED_FROM       |
+---------------+---------------+---------------------+
|             1 | Manager       | 2016-02-20 00:00:00 |
|             2 | Executive     | 2016-06-11 00:00:00 |
|             8 | Executive     | 2016-06-11 00:00:00 |
|             5 | Manager       | 2016-06-11 00:00:00 |
|             4 | Asst. Manager | 2016-06-11 00:00:00 |
|             7 | Executive     | 2016-06-11 00:00:00 |
|             6 | Lead          | 2016-06-11 00:00:00 |
|             3 | Lead          | 2016-06-11 00:00:00 |
+---------------+---------------+---------------------+



ASSIGNMENTS:

-- Write a query to display all the first_name  in upper case

 SELECT UPPER(FIRST_NAME) AS FIRST_NAME FROM WORKER;
 
+------------+
| FIRST_NAME |
+------------+
| MONIKA     |
| NIHARIKA   |
| VISHAL     |
| AMITABH    |
| VIVEK      |
| VIPUL      |
| SATISH     |
| GEETIKA    |
+------------+

-- Write a querty to display unique department from workers table

 SELECT DISTINCT DEPARTMENT FROM Worker;
 
+------------+
| DEPARTMENT |
+------------+
| HR         |
| Admin      |
| Account    |
+------------+

-- Write an SQL query to print the first three characters of FIRST_NAME from Worker table

 SELECT SUBSTRING(FIRST_NAME, 1, 3) AS FIRST_NAME FROM Worker;
 
+------------+
| FIRST_NAME |
+------------+
| Mon        |
| Nih        |
| Vis        |
| Ami        |
| Viv        |
| Vip        |
| Sat        |
| Gee        |
+------------+

-- Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.

SELECT POSITION('a' IN FIRST_NAME) AS POSITION_OF_A FROM Worker WHERE FIRST_NAME = 'Amitabh';
 
+---------------+
| POSITION_OF_A |
+---------------+
|             1 |
+---------------+

-- Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length

SELECT DISTINCT DEPARTMENT, LENGTH(DEPARTMENT) AS DEPARTMENT_LENGTH;

+------------+-------------------+
| DEPARTMENT | DEPARTMENT_LENGTH |
+------------+-------------------+
| HR         |                 2 |
| Admin      |                 5 |
| Account    |                 7 |
+------------+-------------------+


-- Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending

SELECT * FROM Worker ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;
 
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+

-- Write a query to get workers whose name are Vipul and Satish

SELECT * FROM Worker WHERE FIRST_NAME IN ('Vipul', 'Satish');

+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
+-----------+------------+-----------+--------+---------------------+------------+

-- Write an SQL query to print details of the Workers whose FIRST_NAME contains 'a'

SELECT * FROM Worker WHERE FIRST_NAME LIKE '%a%';

+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+

-- Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets

select*from worker where first_name like '_____h';

+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
+-----------+------------+-----------+--------+---------------------+------------+

-- Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000

SELECT * FROM Worker WHERE SALARY BETWEEN 100000 AND 500000;

+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
+-----------+------------+-----------+--------+---------------------+------------+
-- Write an SQL query to print details of the Workers who have joined in Feb’2014

SELECT * FROM Worker WHERE JOINING_DATE BETWEEN '2014-02-01' AND '2014-02-28';

+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+

-- Write an SQL query to fetch the count of employees working in the department ‘Admin’

SELECT COUNT(*) AS Admin FROM Worker WHERE DEPARTMENT = 'Admin';
 
+-------+
| Admin |
+-------+
|     4 |
+-------+
-- Write an SQL query to fetch the no. of workers for each department in the descending order

SELECT DEPARTMENT, COUNT(*) AS Worker_Count FROM Worker GROUP BY DEPARTMENT ORDER BY Worker_Count DESC;
 
+------------+--------------+
| DEPARTMENT | Worker_Count |
+------------+--------------+
| Admin      |            4 |
| HR         |            2 |
| Account    |            2 |
+------------+--------------+

-- Write a query to display workerrs who are managers

SELECT * FROM Title WHERE WORKER_TITLE = 'Manager';

+---------------+--------------+---------------------+
| WORKER_REF_ID | WORKER_TITLE | AFFECTED_FROM       |
+---------------+--------------+---------------------+
|             1 | Manager      | 2016-02-20 00:00:00 |
|             5 | Manager      | 2016-06-11 00:00:00 |
+---------------+--------------+---------------------+

-- Write query to find duplicate rows title table

SELECT WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM, COUNT(*) 
FROM Title
GROUP BY WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1;

[ Empty set ]

-- Write an SQL query to show all workers who got the bonus along with bonus amount

SELECT * FROM Worker WHERE WORKER_ID in (SELECT WORKER_REF_ID FROM Bonus);

+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
+-----------+------------+-----------+--------+---------------------+------------+

-- Write a query to find employees in worker table that do not exist in bonus table (ie did not get bonus)

SELECT * FROM Worker WHERE WORKER_ID NOT IN (SELECT WORKER_REF_ID FROM Bonus);
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+

-- Write a query to find the highest 2 salaries

 SELECT SALARY FROM Worker ORDER BY SALARY DESC LIMIT 2;
 
+--------+
| SALARY |
+--------+
| 500000 |
| 500000 |
+--------+

-- Find 2nd highest without using LIMIT)

SELECT MAX(SALARY) AS SECOND_HIGHEST_SALARY
FROM Worker
WHERE SALARY < (SELECT MAX(SALARY) FROM Worker);

+-----------------------+
| SECOND_HIGHEST_SALARY |
+-----------------------+
|                300000 |
+-----------------------+

-- Find people who have the same salary

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM Worker
WHERE SALARY IN (SELECT SALARY FROM Worker GROUP BY SALARY HAVING COUNT(SALARY) > 1);

+------------+-----------+--------+
| FIRST_NAME | LAST_NAME | SALARY |
+------------+-----------+--------+
| Amitabh    | Singh     | 500000 |
| Vivek      | Bhati     | 500000 |
+------------+-----------+--------+
   
-- Write a query to fetch 1st 50% records without using limit 

SELECT * FROM Worker WHERE WORKER_ID <= (SELECT COUNT(*) / 2 FROM Worker);

+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+


-- Write a query to select a department with more than 3 people in worker table

SELECT DEPARTMENT FROM Worker
GROUP BY DEPARTMENT
HAVING COUNT(*) > 3;

+------------+
| DEPARTMENT |
+------------+
| Admin      |
+------------+

-- Write a query to select 1st and last row of a worker table

select*from worker where worker_id = (select min(worker_id) from worker) 
UNION 
select*from worker where worker_id = (select max(worker_id) from worker);

+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+

-- Write a query to select last 5 entries from worker table

SELECT * FROM Worker
ORDER BY WORKER_ID DESC
LIMIT 5;

+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+

-- Write a query to select people with highest salary in each group

SELECT WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT
FROM Worker W1
WHERE SALARY = (SELECT MAX(SALARY) FROM Worker W2 WHERE W2.DEPARTMENT = W1.DEPARTMENT);

+-----------+------------+-----------+--------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | DEPARTMENT |
+-----------+------------+-----------+--------+------------+
|         3 | Vishal     | Singhal   | 300000 | HR         |
|         4 | Amitabh    | Singh     | 500000 | Admin      |
|         5 | Vivek      | Bhati     | 500000 | Admin      |
|         6 | Vipul      | Diwan     | 200000 | Account    |
+-----------+------------+-----------+--------+------------+

-- Write a query to fetch departments along with the total salaries paid for each of them

SELECT DEPARTMENT, SUM(SALARY) AS TOTAL_SALARY
FROM Worker
GROUP BY DEPARTMENT;

+------------+--------------+
| DEPARTMENT | TOTAL_SALARY |
+------------+--------------+
| HR         |       400000 |
| Admin      |      1170000 |
| Account    |       275000 |
+------------+--------------+
-- Write a query to fetch the names of workers who earn the highest salary

SELECT FIRST_NAME, LAST_NAME
FROM Worker
WHERE SALARY = (SELECT MAX(SALARY) FROM Worker);

+------------+-----------+
| FIRST_NAME | LAST_NAME |
+------------+-----------+
| Amitabh    | Singh     |
| Vivek      | Bhati     |
+------------+-----------+









          