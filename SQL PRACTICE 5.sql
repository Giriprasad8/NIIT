use hr;

-- task 1 emp id,firstname ,lastname ,department_name
select employee_id,first_name,last_name,department_name from employees
join departments using(department_id);

-- task 2  greater than avg salary

SELECT first_name, last_name, salary, department_id
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees)
GROUP BY department_id, first_name, last_name, salary
ORDER BY department_id;

-- task 3  less than avg salary

SELECT first_name, last_name, salary, department_id
FROM Employees
WHERE salary < (SELECT AVG(salary) FROM Employees)
GROUP BY department_id, first_name, last_name, salary
ORDER BY department_id;

-- task 4 salary greater than it_program

SELECT first_name, last_name, salary
FROM Employees
WHERE salary > (SELECT MAX(salary) from employees where job_id='it_prog')
ORDER BY salary ASC;

-- task 5  employees records with minimum salary

select * from employees where (job_id,salary) in (select job_id,min(salary) from employees 
group by job_id
order by salary);

-- task 6 60% of sum of salary
SELECT first_name, last_name, department_id
FROM Employees e
WHERE salary > 0.6 * (
    SELECT SUM(salary)
    FROM Employees
    WHERE department_id = e.department_id
);

-- task 7  first name ,last name ,manager id of uk

select employees.first_name,employees.last_name
from employees
where employees.manager_id in (select employees.employee_id
from employees
join departments on employees.department_id = departments.department_id
join locations on departments.location_id = locations.location_id
where locations.country_id = 'UK')
or employees.manager_id is null;

-- task 8 first name,last name and salary of top 5 highestv paid

select first_name,last_name,salary from employees
order by salary desc
limit 5
into outfile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\uploads\\task8.csv'
fields terminated by ','
lines terminated by '\n';









