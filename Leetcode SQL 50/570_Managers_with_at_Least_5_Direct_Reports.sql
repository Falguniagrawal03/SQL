select a.name as name from employee as a
join employee as b
on a.id = b.managerId 
group by a.name, a.id
Having count(b.managerId) >= 5;
