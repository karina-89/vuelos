SELECT
	TailNum,
    SUM(Distance) AS 'totalDistance'
FROM
	usairlineflights2.flights
WHERE
	TailNum <> ''
GROUP BY TailNum
ORDER BY SUM(Distance) DESC
LIMIT 10;