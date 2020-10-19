-- rollup
-- generate subtotals and grand totals
-- used with group by
-- generate multiple grouping sets based on the columns or expression specified in the group by clause

--  SELECT 
--      select_list
--  FROM 
--      table_name
--  GROUP BY
--      c1, c2, c3 WITH ROLLUP;

SELECT
  productLine,
  SUM(orderValue) totalOrderValue
FROM
  sales
GROUP BY
  productline
WITH ROLLUP;

-- more columns
SELECT
  orderYear,
  productLine,
  SUM(orderValue) totalOrderValue
FROM
  sales
GROUP BY
  orderYear,
  productline
WITH ROLLUP;

-- group by c1, c2, c3 .. with rollup
-- (c1, c2, c3)
-- (c1, c2)
-- (c1)
-- ()

-- null is set on the row on which supper-aggregate is generated
-- use grouping(column) to show (1 - is super-aggregate)

SELECT
  productLine,
  SUM(orderValue) totalOrderValue,
  GROUPING(productLine)
FROM
  sales
GROUP BY
  productline
WITH ROLLUP;
