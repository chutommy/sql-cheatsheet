-- or
-- used in where (select, update, delete) + (inner join, left join)

--          TRUE	FALSE	NULL
--  TRUE	true	true	true
--  FALSE	true	false	null
--  NULL	true	null	null

-- short-circuit evaluation
select 1 = 1 or 1 / 0;
  -- sql evaluates only the first expression (true)
  -- does not print error

select
  firstname,
  lastname
from
  employees
where
  qualified = true
  or certified = true
  or experienced = true;

-- operator precedence
-- the or operator always evaluates after and

--  select true or false and false;
  -- output: 1
--  select (true or false) and false;
  -- output: 0
