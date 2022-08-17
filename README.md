First step with the data modeling was importing the tables into the database. 
We had six tables, titles, employees, departments, dept_manager, dept_employee, salaries.
Then did some analyzing to our database: 

Joining employees table with salaries table to find the wanted information for each employee (first_name, last_name, sex, and salary).

Find the employees that were hired in the year of 1986 by doing filter for the hire date in the employees table.

Find the managers name and departments by joining three tables employees, departments and dept_manager.

Pulling the department name for each employee by joining three tables employees, departments and dept_emp.

Find the employees with first name 'Hercules' and last_name start with B.

List all employees in the Sales department by joining three tables employees, departments, dept_emp then add a filter to the dept_name where dept_name = 'sales.

List all employees in the Sales and developments departments by joining three tables employees, departments, dept_emp then add a filter to the dept_name where dept_name = 'sales. OR dept_name = 'Development'

List the frequency count of employee last names in descending order by doing count to the last_name from emplyees table then GROUP BY last_name, ORDER BY "last_name count" DESC.
