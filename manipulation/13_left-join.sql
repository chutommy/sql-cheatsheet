-- left join
-- join two or more tables
-- evaluate new rows if the values of both tables cause
--   the join condition to evaluate to true
--   + include all rows from the left table (use null values for all columns in the right table)

--  SELECT 
--      select_list
--  FROM
--      t1
--  LEFT JOIN t2 ON 
--      join_condition;

select
  s.firstname,
  s.lastname,
  c.email
from
  students as s
  inner join contacts as c on s.contact_id = c.contact_id
order by
  s.lastname asc,
  s.firstname asc;

-- left join on and
select
  o.ordernumber,
  customernumber,
  productcode
from
  orders o
  left join orderdetails d on o.ordernumber = d.ordernumber
  and o.ordernumber = 10123;
