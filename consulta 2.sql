SELECT
	Origin,
    AVG(ArrDelay) AS 'prom_arribades',
    AVG(DepDelay) AS 'prom_sortides'
FROM usairlineflights2.flights
GROUP BY Origin;