CREATE VIEW viewProdotto AS
SELECT p.ProdottoID, p.NomeProdotto, t.NomeTipologia
FROM Prodotto p
JOIN Tipologia t ON p.TipologiaID = t.TipologiaID;