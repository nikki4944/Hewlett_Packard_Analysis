Select e.emp_no, 
	e.first_name, 
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
into retirement_titles
from employees as e
left join titles as t
on e.emp_no=t.emp_no
where (e.birth_date between '1952-01-01' AND '1955-12-31')
order by e.emp_no;

select * from retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

select* from unique_titles;

--Create a table with count of retiring employees by title
Select count(ut.emp_no), ut.title
into retiring_titles
from unique_titles as ut
group by ut.title
order by count(ut.emp_no) desc;

--Create a table for mentorship
Select distinct on (e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
into mentorship_eligibilty
from employees as e
left join dept_employees as de
on (e.emp_no=de.emp_no)
left join titles as t
on (e.emp_no=t.emp_no)
where (de.to_date= '9999-01-01')
and (e.birth_date between '1965-01-01' AND '1965-12-31')
order by e.emp_no;