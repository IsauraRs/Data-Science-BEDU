--
-- Reto 3
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