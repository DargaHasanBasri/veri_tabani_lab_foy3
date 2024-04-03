SELECT unvan_calisan, COUNT(*) AS calisan_sayisi
FROM unvan
GROUP BY unvan_calisan
HAVING COUNT(*) > 1;