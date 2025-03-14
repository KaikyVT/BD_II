select concat(e.fname, ' ', e.lname) funcionario, posse.data, e.dept_id
from (SELECT e.fname, min(start_date) data, d.dept_id id
FROM employee e, department d 
WHERE e.dept_id = d.dept_id
group by d.dept_id) posse, employee e
where posse.data = e.start_date and posse.id = e.dept_id