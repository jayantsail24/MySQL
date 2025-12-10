use group_by;
SELECT * FROM emp;

-- intermediate
-- 1.Find the total salary paid in each department where average salary > 60000, ordered by total salary.
select department, sum(salary) `total salary`, round(avg(salary), 2) `average salary`
from emp
group by department
having `average salary` > 60000
order by `total salary` desc;

-- 2. Count employees in each department where performance_score > 80, ordered by count descending.
select department, count(*) `emp count`
from emp
where performance_score > 80
group by department
order by `emp count` desc;

-- 3. Find the average bonus per department where total bonus > 30000, ordered by average bonus descending.
select department, round(avg(bonus), 2) `average bonus`, round(sum(bonus), 2) `total bonus`
from emp
group by department
having `total bonus` > 30000
order by `average bonus` desc;

-- 4.Show maximum salary in each department where department is not 'Sales', ordered by max salary.
select department, max(salary) `maximum salary`
from emp
group by department
having department != 'sales'
order by `maximum salary` desc;

-- 5. Show minimum performance score per department where employee count > 3, ordered by min score.
select department, min(performance_score) `min score`
from emp
group by department
having count(employee_id) > 3
order by `min score`;

-- 6.Find departments where total salary > 200000, ordered by employee count. 
select department, sum(salary) `total salary`
from emp
group by department
having `total salary` = 200000
order by count(employee_id);

-- 7.Find departments where maximum bonus > 12000, ordered by maximum salary.
select department, max(bonus) `max bonus`
from emp
group by department
having `max bonus` > 12000
order by max(salary) desc;

-- 8.Show average performance_score by hire year where average > 75, ordered by hire year.
select year(hire_date) `hire year`, avg(performance_score) `average`
from emp
group by `hire year`
having `average` > 75
order by `hire year`;

-- 9. Count employees per hire year where total salary > 100000, ordered by count descending. 
select year(hire_date) `hire year`, count(employee_id) `count of employee`
from emp
group by `hire year`
having sum(salary) > 100000
order by `count of employee` desc;

-- 10.Find total salary + bonus per department where average salary > 50000, ordered by total compensation.
select department, sum(salary + bonus) `total compensation`
from emp
group by department
having avg(salary) > 50000
order by `total compensation`;

-- 11. Show departments where min salary > 40000, ordered by max bonus. 
select department, min(salary) `min salary`
from emp
group by department
having `min salary` > 4000
order by max(bonus);

-- 12. List departments where avg bonus > 10000, ordered by avg salary. 
select department, round(avg(bonus), 2) `average bonus`
from emp
group by department
having `average bonus` > 1000
order by avg(salary);

-- 13.Find hire years where employees hired > 5, ordered by total performance_score.
select Year(hire_date) `hire year`, count(employee_id) `emp`
from emp
group by Year(hire_date)
having `emp` > 5
order by sum(performance_score);

-- 14. Show departments where max salary > 90000, ordered by avg bonus descending. 
select department, max(salary) `max`
from emp
group by department
having `max` > 90000
order by avg(bonus) desc;

-- 15.Count employees per department where hire_date is after 2018, ordered by count descending 
select department, count(employee_id) `count of emp`
from emp
where year(hire_date) > 2018
group by department
order by `count of emp` desc;

-- 16.Show departments where avg performance_score > 85, ordered by total salary.
select department, round(avg(performance_score), 2) `avg score`
from emp
group by department
having `avg score` > 8
order by sum(salary);

-- 17.List departments with less than 4 employees, ordered by avg salary.
select department, count(*) `emp count`
from emp
group by department
having `emp count` <= 40 
order by avg(salary);

-- 18.Find departments with total bonus > 40000, ordered by employee count descending.
select department, sum(bonus) `total bonus`
from emp
group by department
having sum(bonus) > 40000
order by count(*) desc;

-- 19.Show hire years where min salary > 45000, ordered by avg performance_score. 
select year(hire_date) `hire years`, min(salary) `min salary`, round(avg(performance_score), 2) `avg score`
from emp
group by year(hire_date)
having `min salary` > 4500
order by avg(performance_score);

-- 20.Find departments with max bonus > 15000, ordered by total bonus.
select department, max(bonus) `max bonus`, round(sum(bonus), 2) `total bonus`
from emp
group by department
having `max bonus` > 1500
order by `total bonus`;

-- 21.List departments where avg salary > 75000, ordered by employee count.
select department, round(avg(salary), 2) `average salary`, count(employee_id) `emp count`
from emp
group by department
having `average salary` > 75000
order by count(employee_id) desc;

-- 22.Show hire years where max salary > 100000, ordered by max performance_score. 
select year(hire_date) `hire years`, max(salary) `maximum salary`, max(performance_score)
from emp
group by year(hire_date)
having `maximum salary` > 100000
order by max(performance_score) desc;

-- 23. Count employees per department where avg performance_score < 80, ordered by count ascending.
select department, count(*) `employees count`, round(avg(performance_score), 2) `avg_score`
from emp
group by department
having `avg_score` < 80
order by `employees count` asc;

-- 24.Find departments with total salary > 300000, ordered by avg bonus. 
select department, sum(salary) `total salary`, round(avg(bonus), 2) `avg bonus`
from emp
group by department
having `total salary` > 300000
order by `avg bonus` desc;

-- 25.Show departments where total performance_score > 400, ordered by min salary. 
select department, sum(performance_score) `total score`, min(salary) `minimum salary`
from emp
group by department
having `total score` > 400
order by `minimum salary` desc;

-- 26.List departments with avg bonus > 12000, ordered by max salary descending.
select department, round(avg(bonus), 2) `average bonus`, max(salary) `maximum salary`
from emp
group by department
having `average bonus` > 1200
order by `maximum salary` desc;

-- 27.Find hire years where avg salary > 70000, ordered by total salary.
select year(hire_date) `hire years`, round(avg(salary), 2) `average salary`, sum(salary) `total salary`
from emp
group by `hire years`
having `average salary` > 70000
order by `total salary`;

-- 28.Show departments with more than 6 employees, ordered by avg performance_score. 
select department, count(*) `employee count`, round(avg(performance_score), 2) `average score`
from emp
group by department
having `employee count` > 6
order by `average score` desc;

-- 29.Find departments where min performance_score > 7, ordered by total salary. 
select department, min(performance_score) `minimum score`, sum(salary) `total salary`
from emp
group by department
having `minimum score` > 7
order by `total salary`;

-- 30.Count employees per hire year where avg bonus > 8000, ordered by count descending.
select count(*) `employee count`, year(hire_date) `hire year`, round(avg(bonus), 2) `average bonus`
from emp
group by year(hire_date)
having `average bonus` > 8000
order by `employee count` desc;

-- 31.Show departments where total salary > 500000, ordered by avg performance_score. 
select department, sum(salary) `total salary`, round(avg(performance_score), 2) `avg score`
from emp
group by department
having `total salary` > 500000
order by `avg score` desc;

-- 32.Find hire years where avg performance_score > 80, ordered by employee count.
select year(hire_date) `hire year`, round(avg(performance_score), 2) `avg score`, count(*) `employee count`
from emp
group by year(hire_date)
having `avg score` > 8
order by `employee count`;

-- 33.Show departments with avg salary > 60000, ordered by max bonus.
select department, round(avg(salary), 2) `average salary`, max(bonus) `maximum bonus`
from emp
group by department
having `average salary` > 60000
order by `maximum bonus`;

-- 34.Find hire years where max bonus > 15000, ordered by avg salary. 
select year(hire_date) `hire years`, max(bonus) `maximum bonus`, round(avg(salary), 2) `average salary`
from emp
group by year(hire_date)
having `maximum bonus` > 1500
order by `average salary`;

-- 35.List departments where avg bonus < 7000, ordered by total salary. 
select department, round(avg(bonus), 2) `average bonus`, sum(salary) `total salary`
from emp
group by department
having `average bonus` < 7000
order by `total salary`;

-- 36.Show hire years where min performance_score > 60, ordered by max salary. 
select year(hire_date) `hire years`, min(performance_score) `min score`, max(salary) `max salary`
from emp
group by year(hire_date)
having `min score` > 6
order by `max salary`;

-- 37.Find departments with avg salary between 60000 and 90000, ordered by employee count.
select department, round(avg(salary), 2) `average salary`, count(*) `emp count`
from emp
group by department
having `average salary` between 60000 and 90000
order by `emp count` desc;

-- 38.Show hire years where total bonus > 50000, ordered by avg bonus.
select year(hire_date) `hire years`, round(sum(bonus), 2) `total bonus`, round(avg(bonus), 2) `average bonus`
from emp
group by year(hire_date) 
having `total bonus` > 50000
order by `average bonus`;

-- 39.Find departments with total performance_score > 500, ordered by total salary. 
select department, sum(performance_score) `total score`, sum(salary) `total salary`
from emp
group by department
having `total score` > 500
order by `total salary`;

-- 40.Show hire years with more than 10 employees, ordered by avg salary descending. 
select year(hire_date) `hire years`, count(*) `emp count`, round(avg(salary), 2) `avg salary`
from emp
group by year(hire_date)
having `emp count` > 10
order by `avg salary`;