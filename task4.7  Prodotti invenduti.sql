SELECT p.ProdottoID, p.NomeProdotto
FROM Prodotto p
LEFT JOIN Vendita v ON p.ProdottoID = v.ProdottoID
WHERE v.CodiceDocumento IS NULL;

SELECT ProdottoID, NomeProdotto 
FROM Prodotto p
WHERE NOT EXISTS ( SELECT 1 FROM Vendita v 
WHERE v.ProdottoID = p.ProdottoID);
