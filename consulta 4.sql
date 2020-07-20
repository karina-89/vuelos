SELECT
	usairports.City,
    colYear,
    colMonth,
    AVG(ArrDelay) AS 'prom_arribades'
FROM
	usairlineflights2.flights
    INNER JOIN usairlineflights2.usairports
		ON usairports.IATA = flights.Origin
GROUP BY usairports.City,colYear,colMonth
ORDER BY usairports.City,colYear,colMonth;