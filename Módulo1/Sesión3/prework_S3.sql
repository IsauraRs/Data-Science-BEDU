-- Prework sesion 3
--
-- Joins
-- Un join, relaciona dos tablas, trayendo todos los campos de éstas 
-- siempre y cuando se cumpla la condición de relación
--
SELECT *
FROM persona
JOIN mascota
ON persona.id = mascota.id_persona;
-- Obtiene una tabla con todos los campos de la tabla persona, 
-- todos los campos de la tabla mascota y agrega únicamente aquellos 
-- registros donde el id de la persona sea igual al id de la persona 
-- asociada a la mascota.
--
-- Left join
-- relaciona dos tablas siempre y cuando se cumpla la condición de 
-- relación, sin embargo, traerá todos los registros de la tabla 
-- izquierda y únicamente aquellos registros que cumplan con la condición
-- de relación de la otra tabla.
--
SELECT *
FROM persona
LEFT JOIN mascota
ON persona.id = mascota.id_persona;
-- Obtiene una tabla con todos los registros de la tabla persona, 
-- pero sólo aquellos de la tabla mascota en donde el id de persona 
-- sea igual
--
-- Right join
-- relaciona dos tablas siempre y cuando se cumpla la condición de 
-- relación, sin embargo, traerá todos los registros de la tabla derecha 
-- y únicamente aquellos registros que cumplan con la condición de 
-- relación de la otra tabla. 
--
SELECT * 
FROM persona
RIGHT JOIN mascota
ON persona.id = mascota.id_persona;
-- Obtiene una tabla con todos los registros de la tabla mascota, 
-- pero sólo aquellos de la tabla persona en donde el id de persona sea
-- igual
--
-- Vistas
-- es la representación virtual de una consulta en formato de tabla o 
-- dicho de otro modo, es el resultado de guardar una consulta para poder
-- consultarla como a cualquier otra tabla. Son útiles cuando el tiempo 
-- de procesamiento de una consulta es alto y por lo tanto no tenemos 
-- que ejecutarla una y otra vez pues estará disponible.
--
CREATE VIEW duenio AS
SELECT * 
FROM persona
JOIN mascota
ON persona.id = mascota.id_persona;
--
-- Ahora se pueden consulotar los campos que arroja la consulta asociada 
-- a una vista pero se llama a la vista con el nombre que se le dió.
--
SELECT *
FROM duenios 
WHERE id_persona = 2;
