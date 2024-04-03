USE FutureCompanyDB;

CREATE TABLE birimler (
  birim_id int PRIMARY KEY NOT NULL,
  birim_ad char(25) NOT NULL,
);

CREATE TABLE calisanlar (
  calisan_id int PRIMARY KEY NOT NULL,
  ad char(25) NULL,
  soyad char(25) NULL,
  maas int NULL,
  katilmaTarihi datetime NULL,
  calisan_birim_id int NOT NULL,
  FOREIGN KEY (calisan_birim_id) REFERENCES birimler (birim_id)
);

CREATE TABLE unvan (
  unvan_calisan_id int  NOT NULL,
  unvan_calisan char(25) NULL,
  unvan_tarih datetime NULL,
  FOREIGN KEY (unvan_calisan_id) REFERENCES calisanlar (calisan_id)
);

CREATE TABLE ikramiye (
  ikramiye_calisan_id int NOT NULL,
  ikramiye_ucret int NULL,
  ikramiye_tarih datetime NULL,
  FOREIGN KEY (ikramiye_calisan_id) REFERENCES calisanlar (calisan_id)
);
