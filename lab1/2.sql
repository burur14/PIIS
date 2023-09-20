SELECT origin AS city, COUNT(*) AS flight_count
FROM flights
GROUP BY origin
UNION ALL
SELECT dest AS city, COUNT(*) AS flight_count
FROM flights
GROUP BY dest;
