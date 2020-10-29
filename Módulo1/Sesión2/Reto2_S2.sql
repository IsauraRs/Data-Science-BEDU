--
-- Reto 2
--
-- ¿Cuál es el promedio de salario de los puestos?
SELECT AVG(salario)
FROM puesto;
--
-- ¿Cuántos artículos incluyen la palabra Pasta en su nombre?
--
SELECT COUNT(*)
FROM articulo
WHERE nombre LIKE '%pasta%';
--
-- ¿Cuál es el salario mínimo y máximo?
--
SELECT MIN(salario), MAX(salario)
FROM puesto;
--
-- ¿Cuál es la suma del salario de los últimos cinco puestos agregados?
--
SELECT MAX(id_puesto) -5
FROM puesto;
