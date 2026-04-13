SELECT
    v.CodiceDocumento,  v.DataVendita, p.NomeProdotto,
    t.NomeTipologia         AS CategoriaProdotto,
    r.NomeRegione           AS NomeStato,
    ag.NomeArea             AS RegioneVendita,
    CASE
        WHEN v.DataVendita < CURDATE() - INTERVAL 180 DAY THEN 'True'
        ELSE 'False'
    END                     AS OltreSeiMesi
FROM Vendita        v
JOIN Prodotto       p  ON v.ProdottoID       = p.ProdottoID
JOIN Tipologia      t  ON p.TipologiaID      = t.TipologiaID
JOIN Regione        r  ON v.RegioneVenditaID = r.RegioneID
JOIN AreaGeografica ag ON r.AreaGeograficaID = ag.AreaGeograficaID;