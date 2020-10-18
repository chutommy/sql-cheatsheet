-- where
-- filter rows from the result
-- select, update, delete
-- from -> where -> select -> order by

--  SELECT 
--      select_list
--  FROM
--      table_name
--  WHERE
--      search_condition;

-- select where
select
  first_name,
  last_name
from
  users
where
  age >= 18;

-- and
select
  first_name,
  last_name
from
  users
where
  first_name = 'John'
  and last_name = 'Smith';

-- or
select
  first_name,
  last_name
from
  users
where
  vip = true
  or enough_money = true
order by
  first_name asc;

-- between
select
  first_name,
  last_name
from
  users
where
  age between 20 and 29; -- 21, 22, ... , 29

-- like
select
  title
from
  movies
where
  -- _ = any single character
  -- $ = any string of zero or more chars
  title like '%potter%'
order by
  title asc;

-- in
select
  name
from
  companies
where
  name in ('Facebook', 'Amazon', 'Apple', 'Netflix', 'Google');

-- is null
select
  firstname,
  lastname
from
  employees
where
  email is null
order by
  lastname asc,
  firstname asc;

-- comparison operators
--  =	equal to (almost any data types)
--  <> or !=	not equal to
--  <	less than (numeric and date/time data types)
--  >	greater than
--  <=	less than or equal to
--  >=	greater than or equal to
select
  firstname,
  lastname,
  title
from
  employees
where
  title !=  'bachelor'
order by
  lastname desc,
  firstname desc;
