-- having
-- specify a filter condition for groups of rows or aggregates

--  SELECT 
--      select_list
--  FROM 
--      table_name
--  WHERE 
--      search_condition
--  GROUP BY 
--      group_by_expression
--  HAVING 
--      group_condition;

-- MySQL evaluates the HAVING clause after the FROM, WHERE, SELECT and GROUP BY clauses and before ORDER BY, and LIMIT

-- having applies to whole group
-- where applies to each individual row

SELECT
  ordernumber,
  SUM(quantityOrdered) AS itemsCount,
  SUM(priceeach * quantityOrdered) AS total
FROM
  orderdetails
GROUP BY
  ordernumber
HAVING
  total > 1000
  OR itemsCount > 600;
