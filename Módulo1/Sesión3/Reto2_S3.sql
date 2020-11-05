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
ON v.id_empleado = e.id_empleado
ORDER BY clave;
--
SHOW TABLES;
DESCRIBE articulo;
--
-- ¿Cuál es el nombre de los artículos que se han vendido?
-- 
SELECT clave, nombre
FROM venta AS v
JOIN articulo AS a
ON v.id_articulo = a.id_articulo
ORDER BY clave;
--
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
