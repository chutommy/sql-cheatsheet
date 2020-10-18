-- like
-- query data based ona pattern
-- used with where (select, update, delete)

--  expression [NOT] LIKE pattern ESCAPE escape_character

-- wildcard characters
  -- % any string of zero or more characters
  -- _ any single character

-- % wildcard
select
  firstname,
  lastname
from
  students
where
  lastname like 'A%'; -- lastname starts with A

-- _ wildcard
select
  firstname,
  lastname
from
  students
where
  firstname like 'T_m'; -- Tim, Tom

-- not like
select
  firstname,
  lastname
from
  students
where
  firstname not like 'B%';

-- custom escape clause
select
  id,
  firstname,
  lastname
from
  students
where
  id like '%\_2014';
-- student_id like '%$_2014' escape '$';
