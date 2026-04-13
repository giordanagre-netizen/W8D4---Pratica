SELECT t.NomeTipologia, SUM(v.Quantita) AS TotaleQuantita
FROM Vendita v
JOIN Prodotto  p ON v.ProdottoID  = p.ProdottoID
JOIN Tipologia t ON p.TipologiaID = t.TipologiaID
GROUP BY t.NomeTipologia       
ORDER BY TotaleQuantita DESC    
/* inserendo alla fine LIMIT =1 mi restituirebbe solo la prima riga */

