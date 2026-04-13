SELECT p.NomeProdotto, YEAR(v.DataVendita) AS Anno, SUM(v.Importo) AS Fatturato
FROM Vendita v
JOIN Prodotto p ON v.ProdottoID = p.ProdottoID
GROUP BY p.NomeProdotto, Anno
ORDER BY p.NomeProdotto, Anno;