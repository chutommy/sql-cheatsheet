-- and
-- combine multiple boolean
-- used in where (select, update, delete) + (inner join, left join)

--  boolean_expression_1 AND boolean_expression_2

--          TRUE	FALSE	NULL
--  TRUE	true	false	null
--  FALSE	false	false	false
--  NULL	null	false	null

-- short-circuit evaluation
--  select (1 = 0) and (1 / 0);
  -- sql evaluates only the first expression (false)
  -- does not print error

select
  firstname,
  lastname
from
  students
where
  age = 18
  and city = 'New York'
  and parttime_job = true;
