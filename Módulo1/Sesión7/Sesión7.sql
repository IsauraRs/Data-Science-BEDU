-- Crear base de datos
CREATE DATABASE beduPba;
-- Borrar base de datos 
DROP DATABASE beduPba;
-- Es recomendable añadir "IF NOT EXISTS"
CREATE DATABASE IF NOT EXISTS beduPba;
-- Borrarla si existe
DROP DATABASE IF EXISTS beduPba;
USE beduPba;
-- Crear tabla
CREATE TABLE users (
id_Usuario INT PRIMARY KEY,
genero CHAR(1),
edad INT,
ocupacion INT,
cp VARCHAR(20)
);
-- Eliminar tabla
DROP TABLE users;
DESCRIBE users;
-- Subir captura de las tablas creadas
-- RETO
CREATE TABLE movies (
id_Pelicula INT PRIMARY KEY,
titulo VARCHAR(100),
genero VARCHAR(100)
);
-- DROP TABLE movies;
-- La fecha está como entero por UNIX time
SHOW TABLES;
CREATE TABLE ratings (
id_Usuario INT NOT NULL,
id_Pelicula INT NOT NULL,
rating INT,
fecha BIGINT,
FOREIGN KEY (id_Usuario) REFERENCES users(id_Usuario),
FOREIGN KEY (id_Pelicula) REFERENCES movies(id_Pelicula)
);
-- DROP TABLE ratings;
/*CREATE TABLE IF NOT EXISTS ratings (
userid INT,
movieid INT, 
rating INT, 
time_stamp BIGINT,
FOREIGN KEY (userid) REFERENCES users(id),
FOREIGN KEY (movieid) REFERENCES movies(id)
); -- cambiar | por ; y :: por | en movies
*/
SELECT * 
FROM movies;
SELECT *
FROM ratings;