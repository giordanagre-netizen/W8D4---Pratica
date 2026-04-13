SELECT ProdottoID, TotaleVenduto
FROM (
    SELECT ProdottoID, SUM(Quantita) AS TotaleVenduto, 
            AVG(SUM(Quantita)) OVER () AS MediaVenduto
    FROM Vendita
    WHERE YEAR(DataVendita) = (SELECT MAX(YEAR(DataVendita)) FROM Vendita)
    GROUP BY ProdottoID
) sub
WHERE TotaleVenduto > MediaVenduto;