-- alias
-- improve readability
-- column/table aliases

-- alias for column
-- [column_1 | expression] AS descriptive_name

    -- as can be omitted

select
  concat_ws(', ', lastname, firstname) as 'Full name'
from
  students
order by
  'Full name' asc;

-- alias for table
-- table_name AS table_alias

select
  e.id,
  e.firstname,
  e.lastname
from
  employees e
order by
  e.id;

-- with inner join
select
  c.name,
  count(o.number) total
from
  customers c
  inner join orders o on c.number = o.customernumber
group by
  c.name
order by
  total desc;
