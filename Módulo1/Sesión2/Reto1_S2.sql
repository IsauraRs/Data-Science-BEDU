-- Reto 1: Busqueda de patrones mediante LIKE
--
-- ¿Que artículos incluyen la palabra Pasta en su nombre?
--
SELECT *
FROM articulo
WHERE nombre LIKE '%Pasta%';
--
-- ¿Que artículos incluyen la palabra Cannelloni en su nombre?
--
SELECT *
FROM articulo
WHERE nombre LIKE '%Cannelloni%';
--
-- ¿Que nombres están separados por un guión (-) por ejemplo Puree - Kiwi?
--
SELECT *
FROM articulo
WHERE nombre LIKE '%-%';
--
DESCRIBE puesto;
--
-- ¿Que puestos incluyen la palabra Designer?
--
SELECT *
FROM puesto
WHERE nombre LIKE '%Designer%';
--
-- ¿Que puestos incluyen la palabra Developer?
--
SELECT * 
FROM puesto
WHERE nombre LIKE '%Developer%';
--
