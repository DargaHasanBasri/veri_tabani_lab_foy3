SELECT cl.ad, cl.soyad, unv.unvan_calisan
FROM calisanlar cl
INNER JOIN unvan unv ON cl.calisan_id = unv.unvan_calisan_id
WHERE unv.unvan_calisan IN ('Yönetici', 'Müdür');