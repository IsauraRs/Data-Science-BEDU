SHOW DATABASES;
--
USE tienda;
--
SHOW TABLES;
--
-- Encontrar patrones
--
SELECT * 
FROM empleado;
-- Comienza con la letra M
SELECT *
FROM empleado
WHERE nombre LIKE 'M%';
-- Termina con la letra a
SELECT * 
FROM empleado
WHERE nombre LIKE '%a';
-- Comienza con la letra M y termina con a
SELECT *
FROM empleado
WHERE nombre LIKE 'M%a';
--
SELECT *
FROM empleado
WHERE nombre LIKE 'M_losa';
--

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
-- Funciones de Agrupamiento
--
SELECT (1 + 7) * (10/(6 - 4));
--
SELECT * FROM articulo;
--
SELECT AVG(precio) 
FROM articulo;
--
-- Poner un alias al resultado
--
SELECT AVG(precio) AS promedio_precio
FROM articulo;
--
-- Contar cuantos articulos hay
--
SELECT COUNT(*) AS conteo_articulos
FROM articulo;
--
-- Cuenta cuántas filas hay
SELECT COUNT(*) AS conteo_articulos
FROM articulo;
--
SELECT max(precio) AS precio_maximo
FROM articulo;
--
SELECT min(precio) AS precio_minimo
FROM articulo;
--
SELECT sum(precio) AS suma_precio
FROM articulo;
--
-- Reto 2: Funciones de agrupamiento
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

SELECT SUM(salario)
FROM puesto
WHERE id_puesto > 995;
--
-- Group By
--
SELECT nombre, SUM(precio) AS precio_total
FROM articulo 
GROUP BY nombre;
-- Todas las filas del grupo
SELECT nombre , COUNT(*)
FROM articulo 
GROUP BY(nombre);
--
SELECT nombre , COUNT(*) AS cantidad 
FROM articulo 
GROUP BY nombre ORDER BY cantidad DESC;
--
SELECT nombre , MIN(salario) AS salario_minimo, MAX(salario) AS salario_maximo 
FROM puesto GROUP BY nombre;
--
-- Reto 3: Agrupamiento
--
-- ¿Cuántos registros hay por cada uno de los puestos?
--
SELECT nombre, COUNT(*)
FROM puesto
GROUP BY nombre;
--
-- ¿Cuánto dinero se paga en total por puesto?
--
SELECT nombre , SUM(salario)
FROM puesto
GROUP BY nombre;
--
-- ¿Cuál es el número total de ventas por vendedor?
--
SELECT id_empleado , COUNT(clave) AS ventas_totales
FROM venta
GROUP BY id_empleado;
--
DESCRIBE articulo;
--
-- ¿Cuál es el número total de ventas por artículo?
--
SELECT id_articulo , COUNT(*)
FROM venta
GROUP BY id_articulo;