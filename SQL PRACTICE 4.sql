use hr;
---/*task 1*/


select first_name,last_name,department_name from employees
inner join departments on employees.department_id=departments.department_id
where department_name='it';


---/*task 2*/


select min(salary),department_name from employees inner  join departments using(department_id) group by 2; 
select max(salary),department_name from employees inner  join departments using(department_id) group by 2;

---/*task 3*/



select city,count(employees.employee_id) as employee_count from employees
inner join departments using(department_id)
inner join locations using(location_id)
group by city
order by employee_count desc
limit 10;

---/*task 4*/

select * from job_history;
select employee_id,first_name,last_name from employees
inner join job_history using(employee_id)
where end_date='1999-12-31';

---/*task 5*/

SELECT e.employee_id, e.first_name, d.department_name, YEAR(CURRENT_DATE()) - YEAR(e.hire_date) AS total_exp
FROM employees e
INNER JOIN departments d USING (department_id)
WHERE YEAR(CURRENT_DATE()) - YEAR(e.hire_date) >= 25;


