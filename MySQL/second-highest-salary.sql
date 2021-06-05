# Time:  O(n)
# Space: O(1)

select Max(salary) as SecondHighestSalary

from Employee
where salary < (select MAX(salary)
                from Employee); 

#OR
select salary as SecondHighestSalary
from Employee
order by salary DESC
LIMIT 1 OFFSET 1;

#OR

SELECT (SELECT MAX(Salary) FROM Employee WHERE Salary NOT IN (SELECT MAX(Salary) FROM Employee)) SecondHighestSalary;
# or
SELECT (SELECT Salary FROM Employee GROUP BY Salary ORDER BY Salary DESC LIMIT 1,1) SecondHighestSalary;

