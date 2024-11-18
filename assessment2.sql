
CREATE TABLE emp1 (
    Empno INT PRIMARY KEY,
    EName VARCHAR(50) NOT NULL,
    Job VARCHAR(50),
    Mgr INT,
    HireDate DATE,
    Sal DECIMAL(10, 2),
    Comm DECIMAL(10, 2),
    Deptno INT
);

Desc emp1;
+----------+---------------+------+-----+---------+-------+
| Field    | Type          | Null | Key | Default | Extra |
+----------+---------------+------+-----+---------+-------+
| Empno    | int           | NO   | PRI | NULL    |       |
| EName    | varchar(50)   | NO   |     | NULL    |       |
| Job      | varchar(50)   | YES  |     | NULL    |       |
| Mgr      | int           | YES  |     | NULL    |       |
| HireDate | date          | YES  |     | NULL    |       |
| Sal      | decimal(10,2) | YES  |     | NULL    |       |
| Comm     | decimal(10,2) | YES  |     | NULL    |       |
| Deptno   | int           | YES  |     | NULL    |       |
+----------+---------------+------+-----+---------+-------+

INSERT INTO emp1 VALUES (8369, 'SMITH', 'CLERK', 8902, '1990-12-18', 800.00, NULL, 20);
INSERT INTO emp1 VALUES (8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00, 300.00, 30);
INSERT INTO emp1 VALUES (8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30);
INSERT INTO emp1 VALUES (8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 20);
INSERT INTO emp1 VALUES (8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30);
INSERT INTO emp1 VALUES (8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, NULL, 30);
INSERT INTO emp1 VALUES (8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 10);
INSERT INTO emp1 VALUES (8888, 'SCOTT', 'ANALYST', 8566, '1992-12-09', 3000.00, NULL, 20);
INSERT INTO emp1 VALUES (8839, 'AMIR', 'PRESIDENT', NULL, '1991-11-18', 5000.00, NULL, 10);
INSERT INTO emp1 VALUES (8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);

select * from emp1;
+-------+-----------+-----------+------+------------+---------+---------+--------+
| Empno | EName     | Job       | Mgr  | HireDate   | Sal     | Comm    | Deptno |
+-------+-----------+-----------+------+------------+---------+---------+--------+
|  8369 | SMITH     | CLERK     | 8902 | 1990-12-18 |  800.00 |    NULL |     20 |
|  8499 | ANYA      | SALESMAN  | 8698 | 1991-02-20 | 1600.00 |  300.00 |     30 |
|  8521 | SETH      | SALESMAN  | 8698 | 1991-02-22 | 1250.00 |  500.00 |     30 |
|  8566 | MAHADEVAN | MANAGER   | 8839 | 1991-04-02 | 2985.00 |    NULL |     20 |
|  8654 | MOMIN     | SALESMAN  | 8698 | 1991-09-28 | 1250.00 | 1400.00 |     30 |
|  8698 | BINA      | MANAGER   | 8839 | 1991-05-01 | 2850.00 |    NULL |     30 |
|  8839 | AMIR      | PRESIDENT | NULL | 1991-11-18 | 5000.00 |    NULL |     10 |
|  8844 | KULDEEP   | SALESMAN  | 8698 | 1991-09-08 | 1500.00 |    0.00 |     30 |
|  8882 | SHIVANSH  | MANAGER   | 8839 | 1991-06-09 | 2450.00 |    NULL |     10 |
|  8888 | SCOTT     | ANALYST   | 8566 | 1992-12-09 | 3000.00 |    NULL |     20 |
+-------+-----------+-----------+------+------------+---------+---------+--------+

-- Display 'EName' and 'Sal' of employees whose salary is greater than or equal to 2200

SELECT EName, Sal FROM Emp1 WHERE Sal >= 2200;
+-----------+---------+
| EName     | Sal     |
+-----------+---------+
| MAHADEVAN | 2985.00 |
| BINA      | 2850.00 |
| AMIR      | 5000.00 |
| SHIVANSH  | 2450.00 |
| SCOTT     | 3000.00 |
+-----------+---------+

--  Display details of employees who are not getting commission

SELECT * FROM Emp1 WHERE Comm IS NULL;
+-------+-----------+-----------+------+------------+---------+------+--------+
| Empno | EName     | Job       | Mgr  | HireDate   | Sal     | Comm | Deptno |
+-------+-----------+-----------+------+------------+---------+------+--------+
|  8369 | SMITH     | CLERK     | 8902 | 1990-12-18 |  800.00 | NULL |     20 |
|  8566 | MAHADEVAN | MANAGER   | 8839 | 1991-04-02 | 2985.00 | NULL |     20 |
|  8698 | BINA      | MANAGER   | 8839 | 1991-05-01 | 2850.00 | NULL |     30 |
|  8839 | AMIR      | PRESIDENT | NULL | 1991-11-18 | 5000.00 | NULL |     10 |
|  8882 | SHIVANSH  | MANAGER   | 8839 | 1991-06-09 | 2450.00 | NULL |     10 |
|  8888 | SCOTT     | ANALYST   | 8566 | 1992-12-09 | 3000.00 | NULL |     20 |
+-------+-----------+-----------+------+------------+---------+------+--------+

-- Display employee name and salary of those whose salary is not in the range of 2500 to 4000

SELECT EName, Sal FROM Empl WHERE Sal NOT BETWEEN 2500 AND 4000;
+----------+---------+
| EName    | Sal     |
+----------+---------+
| SMITH    |  800.00 |
| ANYA     | 1600.00 |
| SETH     | 1250.00 |
| MOMIN    | 1250.00 |
| AMIR     | 5000.00 |
| KULDEEP  | 1500.00 |
| SHIVANSH | 2450.00 |
+----------+---------+

--  Display the name, job title, and salary of employees who don’t have a manager

SELECT EName, Job, Sal FROM Emp1 WHERE Mgr IS NULL;
+-------+-----------+---------+
| EName | Job       | Sal     |
+-------+-----------+---------+
| AMIR  | PRESIDENT | 5000.00 |
+-------+-----------+---------+

--  Display the name of the employee whose name contains 'A' as the third alphabet

SELECT EName FROM Emp1 WHERE EName LIKE '__A%';
Empty set

-- Display the name of the employee whose name contains 'T' as the last alphabet

SELECT EName FROM Emp1 WHERE EName LIKE '%T';
+-------+
| EName |
+-------+
| SCOTT |
+-------+

-- Display the name of the employee whose name contains 'M' as the first and 'L' as the third alphabet

SELECT EName FROM Emp1 WHERE EName LIKE 'M_L%';
Empty set

-- Display details of employees with the text 'Not given' if the commission is NULL

SELECT Empno,Ename,Job,Mgr,HireDate,Sal,IFNULL(comm,'Not given') as Comm,Deptno from Emp1;
+-------+-----------+-----------+------+------------+---------+-----------+--------+
| Empno | Ename     | Job       | Mgr  | HireDate   | Sal     | Comm      | Deptno |
+-------+-----------+-----------+------+------------+---------+-----------+--------+
|  8369 | SMITH     | CLERK     | 8902 | 1990-12-18 |  800.00 | Not given |     20 |
|  8499 | ANYA      | SALESMAN  | 8698 | 1991-02-20 | 1600.00 | 300.00    |     30 |
|  8521 | SETH      | SALESMAN  | 8698 | 1991-02-22 | 1250.00 | 500.00    |     30 |
|  8566 | MAHADEVAN | MANAGER   | 8839 | 1991-04-02 | 2985.00 | Not given |     20 |
|  8654 | MOMIN     | SALESMAN  | 8698 | 1991-09-28 | 1250.00 | 1400.00   |     30 |
|  8698 | BINA      | MANAGER   | 8839 | 1991-05-01 | 2850.00 | Not given |     30 |
|  8839 | AMIR      | PRESIDENT | NULL | 1991-11-18 | 5000.00 | Not given |     10 |
|  8844 | KULDEEP   | SALESMAN  | 8698 | 1991-09-08 | 1500.00 | 0.00      |     30 |
|  8882 | SHIVANSH  | MANAGER   | 8839 | 1991-06-09 | 2450.00 | Not given |     10 |
|  8888 | SCOTT     | ANALYST   | 8566 | 1992-12-09 | 3000.00 | Not given |     20 |
+-------+-----------+-----------+------+------------+---------+-----------+--------+
