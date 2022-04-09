-- La academia está trabajando en mejorar su plataforma de estudio y planea crear un espacio
-- que sirva como una red social entre estudiantes y docentes, por lo que necesita almacenar
-- en una base de datos los post y comentarios que se generen.
-- ● Parte 1: Creación, inserciones, modificaciones y eliminaciones en la tabla “Posts”.
-- ● Parte 2: Creación e inserciones en la tabla “comentarios”.



-- Parte 1
--* 1. Crear una base de datos con nombre “Posts”. (1 Punto)
\c zerep
DROP DATABASE posts;
CREATE DATABASE posts;
\c posts
--* 2. Crear una tabla “post”, con los atributos id, nombre de usuario, fecha de creación,
--* contenido y descripción. (1 Punto)
CREATE TABLE post(
    id SERIAL,
    userName VARCHAR(30),
    createdAt DATE,
    content VARCHAR,
    descripcion VARCHAR,
    PRIMARY KEY (id)
);
\dt
-- 3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos". (0.6 Puntos)
INSERT INTO post (userName, createdAt, content, descripcion)
VALUES('Pamela', '2021-04-07', 'Como sabes que creciste?', 'Cuando nadie te pregunta tu dinosaurio favorito');
INSERT INTO post (userName, createdAt, content, descripcion)
VALUES('Pamela', '2021-04-08', 'Como sabes que creciste?', 'Cuando ningun cura te guiña el ojo');
INSERT INTO post (userName, createdAt, content, descripcion)
VALUES('Carlos', '2021-04-09', 'Como se usa esto?', 'Mi hijo bajó esto yo no se usarlo');
SELECT * FROM post;
-- 4. Modificar la tabla post, agregando la columna título. (1 Punto)
ALTER TABLE post ADD title VARCHAR(100);
SELECT * FROM post;
-- 5. Agregar título a las publicaciones ya ingresadas. (1 Punto)
UPDATE post SET title = 'Crecer es triste' WHERE id = 1;
UPDATE post SET title = 'Crecer es bueno a veces' WHERE id = 2;
UPDATE post SET title = 'Como borro esto' WHERE id = 3;
SELECT * FROM post;
-- 6. Insertar 2 post para el usuario "Pedro". (0.4 Puntos)
INSERT INTO post (userName, createdAt, content, descripcion, title)
VALUES('Pedro', '2021-04-10', 'el de arriba me cae mal', 'no puedo esperar a que lo borren', 'chao carlitos');
INSERT INTO post (userName, createdAt, content, descripcion, title)
VALUES('Pedro', '2021-04-10', 'hablamos y ahora me cae bien', 'lo siento por todo lo que dije', 'carlitos te quiero');
SELECT * FROM post;
-- 7. Eliminar el post de Carlos. (1 Punto)
DELETE FROM post WHERE userName = 'Carlos';
SELECT * FROM post;
-- 8. Ingresar un nuevo post para el usuario "Carlos". (0.6 Puntos)
INSERT INTO post (userName, createdAt, content, descripcion, title)
VALUES('Carlos', '2021-04-11', 'Jamás podrán deshacerse de mi', 'Carlitos vuelve para quedarse', 'Carlitos: ahora es personal');
SELECT * FROM post;
-- Parte 2
-- 1. Crear una nueva tabla llamada “comentarios”, con los atributos id, fecha, hora de
-- creación y contenido, que se relacione con la tabla posts. (1 Punto)
-- 2. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos". (0.4 Puntos)
-- 3. Crear un nuevo post para "Margarita". (1 Punto)
-- 4. Ingresar 5 comentarios para el post de Margarita. (1 Punto)
