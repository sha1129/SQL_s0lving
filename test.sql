
SELECT COUNT (s.ShipDateKey) 'Number_Of_Shipment', DATEPART(m,s.ShipDate) as 'MonthNumb'
FROM FactInternetSales s
WHERE YEAR(s.ShipDate) = 2013
GROUP BY DATEPART(m, s.ShipDate) 
ORDER BY DATEPART(m, s.ShipDate)
