--  order by
-- sort the result set
-- from -> select -> order

--  SELECT 
--     select_list
--  FROM 
--     table_name
--  ORDER BY 
--     column1 [ASC|DESC], 
--     column2 [ASC|DESC],
--     ...;

-- order selection
select
  firstname,
  lastname,
  age
from
  students
order by
  age, -- asc by default
  lastname asc,
  firstname desc;

-- expression
select
  product,
  price,
  orders,
  price * orders as total -- alias
from
  order_details
order by
  total desc;

-- custom field values
select
  id,
  destination,
  status
from
  packages
order by
  field(
    status,
    'in process',
    'on hold',
    'cancelled',
    'resolved',
    'disputed',
    'shipped'
  );
