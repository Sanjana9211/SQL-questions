1. WITH Salaries AS
(
    SELECT 
       SalaryAmount, ROW_NUMBER() OVER(ORDER BY SalaryAmount DESC) AS 'RowNum'
    FROM 
       dbo.SalaryTable
)
SELECT SalaryAmount FROM Salaries WHERE RowNum <= 5

  
2. SELECT  name,category FROM product GROUP BY name, category HAVING COUNT(id) > 1;


3.---EVEN---  
  select * from
  (select *,ROW_NUMBER() OVER(ORDER BY customer_id ASC) AS 'RowNum'
  from Customers)
  where  RowNum%2 = 0;

---ODD---
  select * from
  (select *,ROW_NUMBER() OVER(ORDER BY customer_id ASC) AS 'RowNum'
  from Customers)
  where  RowNum%2 <> 0;

4. (select *from DemoTable694 order by EmployeeId ASC LIMIT 1)
UNION
(select *from DemoTable694 order by EmployeeId DESC LIMIT 1);


5. INSERT INTO table_name1 (columns) SELECT columns FROM table_name2;


6. SELECT E.first_name, E.last_name, E.department_id FROM employees E WHERE dept_name='name';


7. SELECT * FROM ( SELECT * FROM reset ORDER BY id DESC LIMIT 3) as r ORDER BY id;

8.SELECT * FROM employees WHERE emp_name LIKE '%5%A';

9. DELETE FROM DETAILS
WHERE SN NOT IN (
    SELECT MIN(SN)
    FROM DETAILS
    GROUP BY EMPNAME, DEPT, CONTACTNO, CITY
);
