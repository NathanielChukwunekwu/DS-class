CREATE TABLE employees_hr (
    emp_no              INT PRIMARY KEY,
    gender              TEXT,
    marital_status      TEXT,
    age_band            TEXT,           
    age                 SMALLINT,
    department          TEXT,
    education           TEXT,           
    education_field     TEXT,
    job_role            TEXT,
    business_travel     TEXT,
    employee_count      SMALLINT,
    attrition           TEXT,           
    attrition_label     TEXT,          
    job_satisfaction    SMALLINT,
    active_employee     SMALLINT 
	);

select *
from employees_hr;

/*
structure of any sql queries follows this fundamental way:
select
from 
where, ***etc***
group by
order by
limit
*/

/* number of employee in each department */
select department, 
count (*) as employee_count
from employees_hr
group by department;

/* calculate the average age for each department */
select department, avg(age) as average_age
from employees_hr
group by department;

/* count number of married and unmarried employess */
select marital_status, 
count (*) marital_count
from employees_hr
group by marital_status;

/* most common jobrole in each department */
select department, job_role, 
count (*) as role_count
from employees_hr
group by department, job_role
order by department, job_role
desc;

/* calculate the average job_satisfaction for each educational level */
select education, avg(job_satisfaction) as avg_Satisfy
from employees_hr
group by education;

/* identify the department with the highest and lowest job satisfactiion */
select department, avg(job_satisfaction) as avg_satisfy
from employees_hr
group by department, job_satisfaction
order by avg_satisfy
desc, department

/* -- find the education level with the highest average job satisfaction among employees who travel frequently */
select education, avg(job_satisfaction) as average_satisfaction 
from employees_hr
where business_travel = 'Travel_Frequently'
group by education
order by average_satisfaction DESC;

