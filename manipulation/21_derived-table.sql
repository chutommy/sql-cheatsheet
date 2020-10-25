-- derived table
-- virtual table returned from a SELECT statement
  -- subquery in FROM clause of SELECT statement\
-- must have its own alias

SELECT
  productName,
  sales
FROM
  (
    SELECT
      productCode,
      ROUND(SUM(quantityOrdered * priceEach)) sales
    FROM
      orderdetails
      INNER JOIN orders USING (orderNumber)
    WHERE
      YEAR(shippedDate) = 2003
    GROUP BY
      productCode
    ORDER BY
      sales DESC
    LIMIT
      5
  ) top5products2003
  INNER JOIN products USING (productCode);
