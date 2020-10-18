-- limit
-- constrain number of returned rows
-- offset 10 skips first 10 rows
-- limit constrain result to 4 rows
-- from -> where -> select -> order by -> limit

--  SELECT select_list
--  FROM table_name
--  LIMIT [offset,] row_count;
--  alter: LIMIT row_count OFFSET offset;

-- limit with order by (good practice)
--  SELECT select_list
--  FROM table_name
--  ORDER BY order_expression
--  LIMIT offset, row_count;

-- select youngest employees
select
  firstname,
  lastname
from
  employees
order by
  age asc,
  id asc -- add consistency (more employees with the same age)
limit
  10;

-- pagination

-- get total rows
SELECT COUNT(*) FROM table_name;

-- paging
SELECT
  id,
  name
FROM
  products
ORDER BY
  id asc
LIMIT
  10, 10; -- return 11-20th items
-- 0, 10
-- 10, 10
-- 20, 10
