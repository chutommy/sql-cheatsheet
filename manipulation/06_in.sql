-- in
-- determine if value or expression is in the set (item1, item2, ...)

--  SELECT 
--      column1,column2,...
--  FROM
--      table_name
--  WHERE 
--      (expr|column_1) IN ('value1','value2',...);

select
  office_id,
  city
from
  offices
where
  country in ("USA", "UK", "Czech")
  or salary * employees > 1000000
order by
  ofice_id asc;

select
  office_id,
  city
from
  offices
where
  country not in ("USA", "UK");

-- in with subquery
select
  delivery_id,
  package_id,
  destination
from
  deliveries
where
  package_id in (
    select
      pakage_id
    from
      packages
    where
      time * priority > 1000
  );
