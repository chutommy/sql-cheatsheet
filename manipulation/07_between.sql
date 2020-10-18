-- between
-- determine if value is in range of values
-- used in where (select, update, delete)
-- all values must be same data type
-- both begin and end are included

--  expr [NOT] BETWEEN begin_expr AND end_expr;

-- with numbers
select
  firstname,
  lastname,
  class
from
  students
where
  age between 11
  and 18;
-- age >= 11
-- and age <= 18

-- not
select
  firstname,
  lastname,
  class
from
  students
where
  age not between 6
  and 11;

-- with date type
select
  ordernumber,
  requireddate,
  status
from
  orders
where
  requireddate between cast('2003-01-01' as date)
  and cast('2003-01-31' as date);
