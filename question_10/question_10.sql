SELECT cl.ad, cl.soyad, cl.maas
FROM calisanlar cl
INNER JOIN (
    SELECT calisan_birim_id, MAX(maas) AS max_maas
    FROM calisanlar
    GROUP BY calisan_birim_id
) AS max_maas_tablosu ON cl.calisan_birim_id = max_maas_tablosu.calisan_birim_id
AND cl.maas = max_maas_tablosu.max_maas;