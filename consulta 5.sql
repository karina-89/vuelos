SELECT
	UniqueCarrier,
    colYear,
    colMonth,
    SUM(Cancelled) AS 'total_cancelled'
FROM
	usairlineflights2.flights
GROUP BY UniqueCarrier,colYear,colMonth
ORDER BY SUM(Cancelled) DESC;