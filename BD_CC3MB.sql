/*select distinct open_emp_id from account;
select o.fname, o.lname, b.name
from officer as o, business as b
where o.cust_id = b.cust_id;*/
/*select account_id, cust_id, avail_balance
from account
where status = 'ACTIVE' 
	and avail_balance > 2500; */


/*select a.account_id, c.city, i.fname, i.lname, a.avail_balance
from account as a, customer as c, individual as i
where a.cust_id = c.cust_id and c.cust_id = i.cust_id
and a.avail_balance > 2500 and status = 'ACTIVE';*/

select e.fname Empregado, sup.fname Superior from (select fname, emp_id, superior_emp_id from employee) as sup, employee as e
where e.superior_emp_id = sup.emp_id

/*select concat(e.fname, ' ',  e.lname) Nome, e.superior_emp_id ID_superior, d.name
from employee as e, department as d
where superior_emp_id is not null and e.dept_id = d.dept_id;*/