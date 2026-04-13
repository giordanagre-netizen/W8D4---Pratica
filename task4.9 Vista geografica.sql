CREATE VIEW viewGeografica AS
SELECT r.RegioneID, r.NomeRegione, ag.NomeArea
FROM Regione r
JOIN AreaGeografica ag ON r.AreaGeograficaID = ag.AreaGeograficaID;