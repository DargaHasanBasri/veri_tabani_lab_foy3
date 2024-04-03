SELECT cl.ad, cl.soyad, cl.maas
FROM calisanlar cl
INNER JOIN birimler brm ON cl.calisan_birim_id = brm.birim_id
WHERE brm.birim_ad = 'Yazılım' OR brm.birim_ad = 'Donanım';