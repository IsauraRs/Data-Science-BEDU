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
