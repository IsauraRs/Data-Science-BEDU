SHOW DATABASES; -- Para mostrar las bases en el servidor
USE tienda; -- Para conectarse a una base del servidor
SHOW TABLES; -- Para mostrar las tablas en la base 
DESCRIBE empleado; -- Muestra las columnas de la tabla
-- SHOW TABLES;
DESCRIBE articulo;
-- SHOW TABLES;
DESCRIBE puesto;
-- SHOW TABLES;
DESCRIBE venta;
--
-- Consultas
--
-- Todas las columnas
SELECT *
FROM empleado;
-- Una sola columna
SELECT nombre 
FROM empleado;
-- Más de una columna
SELECT nombre, apellido_paterno
FROM empleado;
--
-- Filtrar busqueda
--
-- WHERE
SELECT * 
FROM empleado
WHERE apellido_paterno = 'Risom';
-- 
SELECT * 
FROM empleado
WHERE id_empleado = 10;
-- 
-- Comparaciones
-- 
SELECT * 
FROM empleado
WHERE id_puesto > 100;
-- 
SELECT * 
FROM empleado
WHERE id_puesto >= 100 AND id_puesto <= 200;
--
SELECT * 
FROM empleado 
WHERE id_puesto = 100 OR id_puesto = 200;
-- 
SELECT *
FROM empleado
WHERE id_puesto IN (100,200,300);
--
-- EJERCICIO
--
SELECT nombre
FROM empleado
WHERE id_puesto = 4;
--
DESCRIBE puesto;
--
SELECT *
FROM puesto
WHERE salario > 10000;
--
DESCRIBE articulo;
--
SELECT *
FROM articulo
WHERE precio >1000 AND iva >100;
--
DESCRIBE articulo;
--
DESCRIBE ventas;
-- 
SELECT * 
FROM venta 
WHERE id_articulo IN (135,963) AND id_empleado IN (835,369); 
--
USE classicmodels;
--
SHOW TABLES;
--
SELECT * 
FROM customers;
--
-- Ordenar datos
--
SELECT * 
FROM customers
WHERE creditlimit > 10000;
-- 
SELECT * 
FROM customers ORDER BY contactLastName;
--
SELECT * 
FROM customers ORDER BY contactLastName DESC;
--
SELECT * 
FROM customers ORDER BY creditLimit DESC;
--
-- Limitar cantidad de resultados
--
SELECT * 
FROM customers ORDER BY creditLimit DESC LIMIT 10;
--
SELECT *
FROM customers LIMIT 10;