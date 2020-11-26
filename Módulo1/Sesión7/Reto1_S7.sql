-- Reto1: Realizando operaciones con tablas
--
/*2.- Crear la tabla movies (recuerda usar el mismo nombre del archivo 
sin la extensión para vincular nombres de tablas con archivos).*/
--
CREATE TABLE movies (
id_Pelicula INT PRIMARY KEY,
titulo VARCHAR(100),
genero VARCHAR(100)
);
/* Crear la tabla ratings (recuerda usar el mismo nombre del archivo sin 
la extensión para vincular nombres de tablas con archivos)*/
CREATE TABLE ratings (
id_Usuario INT NOT NULL,
id_Pelicula INT NOT NULL,
rating INT,
fecha BIGINT,
FOREIGN KEY (id_Usuario) REFERENCES users(id_Usuario),
FOREIGN KEY (id_Pelicula) REFERENCES movies(id_Pelicula)
);
