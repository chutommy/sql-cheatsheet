-- is null
-- return whether the valus is null or not

--  value IS [NOT] NULL

-- MySQL does not have Boolean date type
SELECT
  1 IS NULL, -- 0
  0 IS NULL, -- 0
  NULL IS NULL; -- 1
-- date null = '0000-00-00'

select
  firstname,
  lastname
from
  students
where
  email is null
order by
  lastname asc,
  firstname asc;
