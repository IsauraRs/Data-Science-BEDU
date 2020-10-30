-- Reto 3
-- Usando la base de datos tienda, 
-- escribe una consulta que permita obtener el top 5 de puestos 
-- por salarios.
SHOW DATABASES;
USE tienda;
SHOW TABLES;
DESCRIBE puesto;
SELECT *
FROM puesto
ORDER BY salario DESC LIMIT 5;