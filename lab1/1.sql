SELECT origin AS city, SUM(arr_delay + dep_delay) AS total_delay
FROM flights
GROUP BY origin
UNION ALL
SELECT dest AS city, SUM(arr_delay + dep_delay) AS total_delay
FROM flights
GROUP BY dest;
