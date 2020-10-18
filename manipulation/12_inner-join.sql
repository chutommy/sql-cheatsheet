-- inner join
-- join two or more tables
-- evaluate new rows only if the values of both tables cause
--   the join condition to evaluate to true

--  SELECT
--      select_list
--  FROM t1
--  INNER JOIN t2 ON join_condition1
--  INNER JOIN t3 ON join_condition2
--  ...;

select
  m.name,
  m.year,
  r.rank
from
  movies as m
  inner join reviews as r on m.review_id = r.id
order by
  r.rank desc,
  m.name asc;

-- using
select
  productcode,
  productname,
  textdescription
from
  products
  inner join productlines using (productline);

-- group by
select
  t1.ordernumber,
  t1.status,
  sum(quantityordered * priceeach) total
from
  orders t1
  inner join orderdetails t2 on t1.ordernumber = t2.ordernumber
group by
  ordernumber;

-- using with group by
select
  ordernumber,
  status,
  sum(quantityordered * priceeach) total
from
  orders
  inner join orderdetails using (ordernumber)
group by
  ordernumber;

-- other operator
select
  ordernumber,
  productname,
  msrp,
  priceeach
from
  products p
  inner join orderdetails o on p.productcode = o.productcode
  and p.msrp > o.priceeach
where
  p.productcode = 'S10_1678';
