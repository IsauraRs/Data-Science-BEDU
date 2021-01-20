USE beduPba;
-- Porqué una es mejor que la otra
CREATE TABLE Propuesta1DatosGeneracion(
id_plantP1 INT PRIMARY KEY,
dateAndTime VARCHAR(20),
sourceKey VARCHAR(40),
dcPower DECIMAL(10,10),
acPower DECIMAL(10,10),
dailyYield DECIMAL(10,10),
totalYield BIGINT
);
CREATE TABLE Propuesta2DatosGeneracion (
id_plantP2 INT PRIMARY KEY,
dateAndTime VARCHAR(20),
sourceKey VARCHAR(40),
dcPower DECIMAL(10,10),
acPower DECIMAL(10,10),
dailyYield DECIMAL(10,10),
totalYield BIGINT
);
/*CREATE TABLE sensoresPropuesta1(
id_plantP1 INT NOT NULL,
dateAndTime TIMESTAMP,
sourceKey VARCHAR(40),
ambientTemperature DECIMAL (4,10),
moduleTemperature DECIMAL (4,10),
irradiation DECIMAL (2,10),
FOREIGN KEY (id_plantP1) REFERENCES generacionPropuesta1(id_plantP1)
);*/
-- DROP TABLE Propuesta2DatosGeneracion;
/*
La temperatura de los módulos solares deben coincidir 
con la temperatura ambiente, */