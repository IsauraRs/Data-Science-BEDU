-- Sesión 3
--
USE tienda;
--
SELECT *
FROM puesto;
SELECT MAX(id_puesto)-5
FROM puesto;
SELECT SUM(salario)
FROM puesto
WHERE id_puesto > 995;
--
-- Subconsultas
--
-- Se puede escribir como subconsulta (consulta anidada)
-- 
-- Sub consulta en WHERE 
-- WHERE >
SELECT SUM(salario)
FROM puesto
WHERE id_puesto > (SELECT MAX(id_puesto)-5
FROM puesto);
--
-- WHERE IN
--
SELECT id_puesto
FROM puesto
WHERE nombre = 'Junior Executive';
--
SELECT *
FROM empleado
WHERE id_puesto IN 
(SELECT id_puesto
FROM puesto
WHERE nombre = 'Junior Executive');
--
-- Subconsulta en FROM
--
-- MENOR Y MAYOR CANTIDAD DE VENTAS DE UN ARTÍCULO
--
SELECT *
FROM venta;
--
-- Doble agrupación
--
SELECT clave, id_articulo, count(*) AS cantidad
FROM venta
GROUP BY clave, id_articulo
ORDER By cantidad DESC;
-- 
-- Final:
SELECT id_articulo, MIN(cantidad) AS cantidad_min, MAX(cantidad) AS cantidad_max
FROM
(SELECT clave, id_articulo, count(*) AS cantidad
FROM venta
GROUP BY clave, id_articulo
ORDER By cantidad DESC) AS subconsulta
GROUP BY id_articulo; 
-- Se generó una nueva tabla y en ella se generó la consulta
--
-- Reto 1
--
-- ¿Cuál es el nombre de los empleados cuyo sueldo es menor a $10,000?
--
SELECT nombre, apellido_paterno, apellido_materno
FROM empleado
WHERE id_puesto IN (SELECT id_puesto
FROM  puesto
WHERE salario < 10000); -- En el reto se piden los salarios menores, 
-- sin embargo no los hay, por lo que se agrega la nueva donde se piden 
-- mayores a 10,000
SELECT nombre
FROM empleado
WHERE id_puesto IN (SELECT id_puesto
FROM  puesto
WHERE salario > 10000);
--
DESCRIBE empleado;
SHOW TABLES;
--
-- ¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?
-- 
SELECT id_empleado, MIN(total_ventas) AS min_vent, MAX(total_ventas) AS max_vent
FROM (SELECT clave, id_empleado, COUNT(*) total_ventas
FROM venta
GROUP BY clave, id_empleado) AS total
GROUP BY id_empleado;
--
-- ¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a
-- $5,000?
--
SELECT clave, id_articulo
FROM venta
WHERE id_articulo IN (SELECT id_articulo
FROM articulo
WHERE precio > 5000); 
--
-- JOINS
--
SHOW KEYS FROM venta; -- Muestra las llaves de la tabla, ¿qué tablas están relacionadas?
-- 
-- INNER JOIN
--
SELECT * 
FROM puesto;
SELECT *
FROM empleado;
--
-- Une tabla empleado con tabla puesto, donde los id de puesto estén en empleado
--
SELECT *
FROM empleado AS e
JOIN puesto AS p
ON e.id_puesto = p.id_puesto;
--
-- LEFT JOIN
-- De las columnas de la tabla puesto hacer un left join con empleado
-- 
SELECT *
FROM puesto AS p
LEFT JOIN empleado AS e
ON p.id_puesto = e.id_puesto;
--
-- RIGHT JOIN
--
SELECT *
FROM empleado AS e
RIGHT JOIN puesto AS p
ON p.id_puesto = e.id_puesto;
--
-- Reto 2
--
-- 
DESCRIBE venta;
--
-- ¿Cuál es el nombre de los empleados que realizaron cada venta?
--
SELECT  clave, nombre, apellido_paterno, apellido_materno
FROM venta as v
JOIN empleado as e
ON v.id_empleado = e.id_empleado;
--
SHOW TABLES;
DESCRIBE articulo;
--
-- ¿Cuál es el nombre de los artículos que se han vendido?
-- 
SELECT clave, nombre
FROM venta AS v
JOIN articulo AS a
ON v.id_articulo = a.id_articulo;
DESCRIBE venta;
--
-- ¿Cuál es el total de cada venta?
-- 
SELECT clave, ROUND(SUM(precio),2) AS total_v
FROM venta AS v
JOIN articulo AS a
ON v.id_articulo = a.id_articulo
GROUP BY clave
ORDER BY clave;
--
-- Vistas
--
SELECT v.clave, v.fecha, a.nombre AS producto, a.precio, CONCAT(e.nombre, ' ' , e.apellido_paterno) AS empleado
FROM venta AS v
JOIN empleado AS e
ON v.id_empleado = e.id_empleado
JOIN articulo AS a
ON v.id_articulo = a.id_articulo;
--
CREATE VIEW tickets_160 AS 
(SELECT v.clave, v.fecha, a.nombre AS producto, a.precio, CONCAT(e.nombre, ' ' , e.apellido_paterno) AS empleado
FROM venta AS v
JOIN empleado AS e
ON v.id_empleado = e.id_empleado
JOIN articulo AS a
ON v.id_articulo = a.id_articulo);

SELECT clave, ROUND(SUM(precio),2) AS total
FROM tickets_160
GROUP BY clave;
--
-- Reto 3
--
-- Obtener el puesto de un empleado.
CREATE VIEW puestos AS
SELECT CONCAT(e.nombre, ' ', e.apellido_paterno, ' ', e.apellido_materno), p.nombre
FROM empleado AS e
JOIN puesto AS p
ON e.id_puesto = p.id_puesto;
--
-- Saber qué artículos ha vendido cada empleado.
-- 
CREATE VIEW articulos_vendidos AS
SELECT v.clave, CONCAT(e.nombre, ' ', e.apellido_paterno, ' ', e.apellido_materno), a.nombre
FROM venta AS v
JOIN empleado AS e
ON v.id_empleado = e.id_empleado
JOIN articulo AS a
ON v.id_articulo = a.id_articulo
ORDER BY v.clave;
DESCRIBE venta;
--
-- Saber qué puesto ha tenido más ventas.
--
CREATE VIEW puesto_ventas AS
SELECT p.nombre, COUNT(v.clave) AS final
FROM venta AS v
JOIN empleado AS e
ON v.id_empleado = e.id_empleado
JOIN puesto AS p
ON e.id_puesto = p.id_puesto
GROUP BY p.nombre;
-- 
SELECT *
FROM puesto_ventas
ORDER BY final DESC
LIMIT 1;