SELECT
	UniqueCarrier,
    AVG(ArrDelay) AS 'avgDelay'
FROM
	usairlineflights2.flights
WHERE
	Cancelled = 0
GROUP BY UniqueCarrier
HAVING AVG(ArrDelay) > 10
ORDER BY AVG(ArrDelay) DESC