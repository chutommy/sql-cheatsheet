-- group by
-- group rows into cubrows based on values of columns
-- return one row for each group
-- aggragate functions: SUM, AVG, MAX, MIN, COUNT

--  SELECT 
--      c1, c2,..., cn, aggregate_function(ci)
--  FROM
--      table
--  WHERE
--      where_conditions
--  GROUP BY c1 , c2,...,cn;
-- MySQL evaluates the GROUP BY clause after the FROM, WHERE and SELECT clauses and before the HAVING , ORDER BY and LIMIT clauses

-- expression
SELECT
  orderNumber,
  SUM(quantityOrdered * priceEach) AS total
FROM
  orderdetails
GROUP BY
  orderNumber;

-- expression
SELECT
  YEAR(orderDate) AS year,
  SUM(quantityOrdered * priceEach) AS total
FROM
  orders
  INNER JOIN orderdetails USING (orderNumber)
WHERE
  status = 'Shipped'
GROUP BY
  YEAR(orderDate);

-- having
SELECT
  YEAR(orderDate) AS year,
  SUM(quantityOrdered * priceEach) AS total
FROM
  orders
  INNER JOIN orderdetails USING (orderNumber)
WHERE
  status = 'Shipped'
GROUP BY
  year
HAVING
  year > 2003;
