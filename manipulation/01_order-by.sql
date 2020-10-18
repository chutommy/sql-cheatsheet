--  order by
-- from -> select -> order
-- order results output

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
  first_name,
  last_name,
  age
from
  students
order by
  age, -- asc by default
  last_name asc,
  first_name desc;

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
  package_id,
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
