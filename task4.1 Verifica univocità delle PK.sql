--- AreaGeografica
SELECT AreaGeograficaID, COUNT(*) FROM AreaGeografica
GROUP BY AreaGeograficaID HAVING COUNT(*) > 1;

--- Regione
SELECT RegioneID, COUNT(*) FROM Regione
GROUP BY RegioneID HAVING COUNT(*) > 1;

--- Tipologia
SELECT TipologiaID, COUNT(*) FROM Tipologia
GROUP BY TipologiaID HAVING COUNT(*) > 1;

--- Frantoio
SELECT FrantoioID, COUNT(*) FROM Frantoio
GROUP BY FrantoioID HAVING COUNT(*) > 1;

--- Prodotto
SELECT ProdottoID, COUNT(*) FROM Prodotto
GROUP BY ProdottoID HAVING COUNT(*) > 1;

--- Vendita
SELECT CodiceDocumento, COUNT(*) FROM Vendita
GROUP BY CodiceDocumento HAVING COUNT(*) > 1;