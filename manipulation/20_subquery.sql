-- subquery
-- nesting queries
-- select, insert, update, delete
-- subqueries run first
-- subqueries can be run independently

-- in
SELECT
  lastName,
  firstName
FROM
  employees
WHERE
  officeCode IN (
    SELECT
      officeCode
    FROM
      offices
    WHERE
      country = 'USA'
  );

-- is equal
SELECT
  customerNumber,
  checkNumber,
  amount
FROM
  payments
WHERE
  amount = (
    SELECT
      MAX(amount)
    FROM
      payments
  );

-- other operator
SELECT
  customerNumber,
  checkNumber,
  amount
FROM
  payments
WHERE
  amount > (
    SELECT
      AVG(amount)
    FROM
      payments
  );

-- not in
SELECT
  customerName
FROM
  customers
WHERE
  customerNumber NOT IN (
    SELECT
      DISTINCT customerNumber
    FROM
      orders
  );

-- with exist/not exist
--  SELECT 
--      *
--  FROM
--      table_name
--  WHERE
--      EXISTS( subquery );
