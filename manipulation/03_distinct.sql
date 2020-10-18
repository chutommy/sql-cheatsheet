-- distinct
-- eliminate duplicate rows

--  SELECT DISTINCT
--      select_list
--  FROM
--      table_name;

-- select distinct
select distinct
  segment
from
  employees
where
  salary > '100000'
order by
  segment desc;

-- select distinct
select distinct
  head_office, segment -- select unique combinations only
from
  employees
order by
  segment desc;

-- select distinct vs group by
select
  city
from
  offices
group by
  city;
-- without aggregate function acts same as distinct

-- distinct with aggregate functions
select
  count(distinct city)
from
  offices
where
  country = 'New York';

-- distinct and limit
select
  firstname,
  lastname
from
  students
where
  id = 'CL7-A2001-10B'
limit 1; -- immediately stop searching
