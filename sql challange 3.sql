use hr;

select * from employees;

--/*task 1 count total employees*/

select count(employee_id) from employees;


---/*task 2 count department id wise employees*/

select count(department_id) from employees;

---/*task 3 greater than 6000*/

select first_name,last_name from employees
where salary>6000;

---/*task 4 count employees greatwer than 20000*/

select count(employee_id) from employees
where salary>20000;

---/*task 5 commission pect*/

select * from employees
where commission_pct>0;

---/*task 6 employess who as commission*/

select concat(first_name,' ',last_name)as name from employees
where commission_pct>0;

---/*task 7 emp id,name,email,ph,no who as commission*/

select employee_id,concat(first_name,' ',last_name) as name ,email,phone_number from employees
where commission_pct>0;

---/*task 8 top 3 department id */

select department_id from employees
order by 1 desc
limit 3;

---/* task 9  IT employees */

select * from employees
where job_id='it_prog';
 
 ---/*task 10 count and average of IT employees*/
 
select count(*),avg(salary) from employees
where job_id='it_prog';

---/*task 11  dept id and number of employees whose salary range between 7000 and 10000*/

select department_id,count(employee_id) as number
from employees
where salary between 7000 and 10000
group by 1;





