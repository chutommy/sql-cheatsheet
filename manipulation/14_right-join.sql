-- right join
-- join two or more tables
-- evaluate new rows if the values of both tables cause
--   the join condition to evaluate to true
--   + include all rows from the right table (use null values for all columns in the left table)

--  SELECT 
--      select_list
--  FROM
--      t1
--  RIGHT JOIN t2 ON 
--      join_condition;

select
  c.contact_id,
  s.firstname,
  s.lastname,
  s.class
from
  students s
right join contacts c using (contact_id)
where
  c.email is null
order by
  s.lastname asc,
  s.firstname asc,
  s.student_id asc;
