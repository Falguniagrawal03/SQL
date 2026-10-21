select unique_id, name from employees as e
left join employeeUNI as eu
on e.id = eu.id;
