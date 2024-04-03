SELECT brm.birim_ad, COUNT(cl.calisan_id) AS calisan_sayisi
FROM birimler brm
LEFT JOIN calisanlar cl ON brm.birim_id = cl.calisan_birim_id
GROUP BY brm.birim_ad;