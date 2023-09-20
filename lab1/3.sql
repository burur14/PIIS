SELECT
  city,
  CASE
    WHEN avg_delay IS NULL THEN 'Немає даних'
    ELSE avg_delay
  END AS avg_delay
FROM (
    SELECT
      city,
      AVG(arr_delay) AS avg_delay
    FROM flights
    JOIN airports ON flights.origin = airports.iata_code
    GROUP BY city
    ORDER BY avg_delay DESC
    LIMIT 1
) AS min_delay_city
UNION ALL
SELECT
  city,
  CASE
    WHEN avg_delay IS NULL THEN 'Немає даних'
    ELSE avg_delay
  END AS avg_delay
FROM (
    SELECT
      city,
      AVG(arr_delay) AS avg_delay
    FROM flights
    JOIN airports ON flights.origin = airports.iata_code
    GROUP BY city
    ORDER BY avg_delay ASC
    LIMIT 1
) AS max_delay_city
