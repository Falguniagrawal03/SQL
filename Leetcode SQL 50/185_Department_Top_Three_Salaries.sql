select d.name as Department, e.name as Employee, e.salary as Salary
from(
    select name, salary, departmentId,
    DENSE_RANK() OVER(
        PARTITION BY departmentId
        ORDER BY salary desc
    )as rnk
    from Employee
) as e
join Department d
on e.departmentId = d.id
where e.rnk <= 3;
