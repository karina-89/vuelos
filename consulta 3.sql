SELECT
	Origin,
    colYear,
    colMonth,
    AVG(ArrDelay) AS 'prom_arribades'
FROM usairlineflights2.flights
GROUP BY Origin,colYear,colMonth
ORDER BY Origin,colYear,colMonth;