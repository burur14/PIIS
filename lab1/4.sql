SELECT *
FROM flights
WHERE (arr_delay + dep_delay) > (
    SELECT AVG(arr_delay + dep_delay)
    FROM flights
);
