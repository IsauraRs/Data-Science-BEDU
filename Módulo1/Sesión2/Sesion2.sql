SHOW DATABASES;
--
USE tienda;
--
SHOW TABLES;
--
-- Encontrar patrones
SELECT *
FROM empleado
WHERE nombre LIKE 'M%';
--
-- Reto 1: Busqueda de patrones mediante LIKE
--
SELECT *
FROM articulo
WHERE nombre LIKE '%Pasta%';
--
SELECT *
FROM articulo
WHERE nombre LIKE '%Cannelloni%';
--
SELECT *
FROM articulo
WHERE nombre LIKE '%-%';
--
DESCRIBE puesto;
--
SELECT *
FROM puesto
WHERE nombre LIKE '%Designer%';
--
SELECT * 
FROM puesto
WHERE nombre LIKE '%Developer%';
--
