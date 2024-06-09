use hr;

---/*task 1   top 5 employoees in cities*/
create view my_view1 as
select city,count(employees.employee_id) as employee_count from employees
inner join departments using(department_id)
inner join locations using(location_id)
group by city
order by employee_count desc
limit 5;

---/*task 2  first name,last name,country name ,city,department name ,salary */

select first_name,last_name,country_name,city,department_name,salary from employees
inner join departments using (department_id)
inner join locations using (location_id)
inner join countries using(country_id)
join my_view1 using(city);


---/*task 3 city and employee_count less than 10*/
select city,count(employees.employee_id) as employee_count from employees
join departments using(department_id)
join locations using(location_id)
group by city
having count(employees.employee_id)<10;


---/*task 4  avg of experience*/


select city, avg(year(current_date())-year(hire_date))as experience from employees
join departments using(department_id)
join locations using(location_id)
group by city
having count(employees.employee_id)<10;


---/*task 5 first name ,last name , emial,ph.no,experience from task 1*/

create view my_view2 as
select first_name,last_name,email,phone_number,year(current_date())-year(hire_date) as experience,employee_id from employees
join departments using(department_id)
join locations using(location_id)
join my_view1 using(city)
where year(current_date())-year(hire_date)>10;

---/* task 6 manager_id */

select employees.manager_id,employees.first_name,employees.last_name,locations.city from employees
join departments using(department_id)
join locations using(location_id)
join countries using(country_id)
join my_view2 using(employee_id);



