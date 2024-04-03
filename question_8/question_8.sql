SELECT cl.ad, cl.soyad, brm.birim_ad, unv.unvan_calisan, ikr.ikramiye_ucret
FROM calisanlar cl
INNER JOIN birimler brm ON cl.calisan_birim_id = brm.birim_id
INNER JOIN unvan unv ON cl.calisan_id = unv.unvan_calisan_id
INNER JOIN ikramiye ikr ON cl.calisan_id = ikr.ikramiye_calisan_id;