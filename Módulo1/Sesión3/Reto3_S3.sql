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