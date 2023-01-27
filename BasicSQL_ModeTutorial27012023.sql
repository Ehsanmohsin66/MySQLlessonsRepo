SELECT *
  FROM tutorial.us_housing_units;
  
SELECT year,
       month,
       west
  FROM tutorial.us_housing_units;
  
  SELECT *
  FROM tutorial.us_housing_units
 WHERE month = 1;
 
 SELECT *
  FROM tutorial.us_housing_units
 WHERE month_name > 'J';
 
 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group" LIKE 'Snoop%';
 
 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group" ILIKE 'snoop%';
 
 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE artist ILIKE 'dr_ke';
 
 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year_rank BETWEEN 10 AND 5;
 
 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2012
   AND year_rank <= 10
   AND "group" ILIKE '%feat%' and artist ILIKE 'riha__a';
   
   
   SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2013
   AND ("group" ILIKE '%macklemore%' OR "group" ILIKE '%timberlake%');
   
   SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2013
   AND artist IS NULL;
   
   SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2013
 ORDER BY year_rank DESC;
 
 SELECT year,
       month,
       MAX(high) AS month_high
  FROM tutorial.aapl_historical_stock_price
 GROUP BY year, month
HAVING MAX(high) > 400
 ORDER BY year, month;