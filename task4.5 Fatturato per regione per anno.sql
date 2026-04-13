SELECT r.NomeRegione, YEAR(v.DataVendita) AS Anno, SUM(v.Importo) AS Fatturato
FROM Vendita v
JOIN Regione r ON v.RegioneVenditaID = r.RegioneID
GROUP BY r.NomeRegione, Anno
ORDER BY Anno, Fatturato DESC;