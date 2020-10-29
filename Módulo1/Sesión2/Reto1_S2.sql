-- Reto 1: Búsqueda de patrones mediante LIKE
--
-- ¿Qué artículos incluyen la palabra Pasta en su nombre?
--
SELECT *
FROM articulo
WHERE nombre LIKE '%Pasta%';
--
-- ¿Qué artículos incluyen la palabra Cannelloni en su nombre?
--
SELECT *
FROM articulo
WHERE nombre LIKE '%Cannelloni%';
--
-- ¿Qué nombres están separados por un guión (-) por ejemplo Puree - Kiwi?
--
SELECT *
FROM articulo
WHERE nombre LIKE '%-%';
--
DESCRIBE puesto;
--
-- ¿Qué puestos incluyen la palabra Designer?
--
SELECT *
FROM puesto
WHERE nombre LIKE '%Designer%';
--
-- ¿Qué puestos incluyen la palabra Developer?
--
SELECT * 
FROM puesto
WHERE nombre LIKE '%Developer%';
--
