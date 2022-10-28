-- crear db
-- CREATE DATABASE IF NOT EXISTS `db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE `appsalon`;

create table if not exists `servicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `precio` decimal(6,3) NOT NULL,
  PRIMARY KEY (`id`)
);

create table if not exists `reservaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `hora` time DEFAULT  NULL,
  `fecha` date DEFAULT  NULL,
  `servicios` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

-- borrar la tabla
DROP TABLE `servicios`;

-- insertar datos
INSERT INTO `servicios` (`nombre`, `precio`) VALUES
  ('Corte de cabello', 20.000),
  ('Corte de barba', 10.000),
  ('Corte de cabello y barba', 25.000),
  ('Corte de cabello y barba y bigote', 30.000),
  ('Corte de cabello y bigote', 25.000),
  ('Corte de cabello y barba y bigote y cejas', 35.000),
  ('Corte de cabello y bigote y cejas', 30.000),
  ('Corte de cabello y cejas', 25.000),
  ('Corte de barba y bigote', 15.000),
  ('Corte de barba y bigote y cejas', 20.000),
  ('Corte de barba y cejas', 15.000),
  ('Corte de bigote', 10.000),
  ('Corte de bigote y cejas', 15.000),
  ('Corte de cejas', 10.000),
  ('Corte de Niño', 65.000);


INSERT INTO reservaciones (nombre, apellido, hora, fecha, servicios) VALUES
  ('Juan', 'De la torre', '10:30:00', '2021-06-28', 'Corte de Cabello Adulto, Corte de Barba' ),
  ('Antonio', 'Hernandez', '14:00:00', '2021-07-30', 'Corte de Cabello Niño'),
  ('Pedro', 'Juarez', '20:00:00', '2021-06-25', 'Corte de Cabello Adulto'),
  ('Mireya', 'Perez', '19:00:00', '2021-06-25', 'Peinado Mujer'),
  ('Jose', 'Castillo', '14:00:00', '2021-07-30', 'Peinado Hombre'),
  ('Maria', 'Diaz', '14:30:00', '2021-06-25', 'Tinte'),
  ('Clara', 'Duran', '10:00:00', '2021-07-01', 'Uñas, Tinte, Corte de Cabello Mujer'),
  ('Miriam', 'Ibañez', '09:00:00', '2021-07-01', 'Tinte'),
  ('Samuel', 'Reyes', '10:00:00', '2021-07-02', 'Tratamiento Capilar'),
  ('Joaquin', 'Muñoz', '19:00:00', '2021-06-28', 'Tratamiento Capilar'),
  ('Julia', 'Lopez', '08:00:00', '2021-06-25', 'Tinte'),
  ('Carmen', 'Ruiz', '20:00:00', '2021-07-01', 'Uñas'),
  ('Isaac', 'Sala', '09:00:00', '2021-07-30', 'Corte de Cabello Adulto'),
  ('Ana', 'Preciado', '14:30:00', '2021-06-28', 'Corte de Cabello Mujer'),
  ('Sergio', 'Iglesias', '10:00:00', '2021-07-02', 'Corte de Cabello Adulto'),
  ('Aina', 'Acosta', '14:00:00', '2021-07-30', 'Uñas'),
  ('Carlos', 'Ortiz', '20:00:00', '2021-06-25', 'Corte de Cabello Niño'),
  ('Roberto', 'Serrano', '10:00:00', '2021-07-30', 'Corte de Cabello Niño'),
  ('Carlota', 'Perez', '14:00:00', '2021-07-01', 'Uñas'),
  ('Ana Maria', 'Igleias', '14:00:00', '2021-07-02', 'Uñas, Tinte'),
  ('Jaime', 'Jimenez', '14:00:00', '2021-07-01', 'Corte de Cabello Niño'),
  ('Roberto', 'Torres', '10:00:00', '2021-07-02', 'Corte de Cabello Adulto'),
  ('Juan', 'Cano', '09:00:00', '2021-07-02', 'Corte de Cabello Niño'),
  ('Santiago', 'Hernandez', '19:00:00', '2021-06-28', 'Corte de Cabello Niño'),
  ('Berta', 'Gomez', '09:00:00', '2021-07-01', 'Uñas'),
  ('Miriam', 'Dominguez', '19:00:00', '2021-06-28', 'Corte de Cabello Niño'),
  ('Antonio', 'Castro', '14:30:00', '2021-07-02', 'Corte de Cabello Adulti'),
  ('Hugo', 'Alonso', '09:00:00', '2021-06-28', 'Corte de Barba'),
  ('Victoria', 'Perez', '10:00:00', '2021-07-02', 'Uñas, Tinte'),
  ('Jimena', 'Leon', '10:30:00', '2021-07-30', 'Uñas, Corte de Cabello Mujer'),
  ('Raquel' ,'Peña', '20:30:00', '2021-06-25', 'Corte de Cabello Mujer');


INSERT INTO servicios ( nombre, precio ) VALUES
  ('Corte de Cabello Niño', 60),
  ('Corte de Cabello Hombre', 80),
  ('Corte de Barba', 60),
  ('Peinado Mujer', 80),
  ('Peinado Hombre', 60),
  ('Tinte',300),
  ('Uñas', 400),
  ('Lavado de Cabello', 50),
  ('Tratamiento Capilar', 150);


INSERT INTO `servicios` (`nombre`, `precio`, `nueva`) VALUES
  ('Corte para Gatos', 70.000, 'Probando DB');

-- Ordenar por precio
SELECT * FROM `servicios` ORDER BY `precio` ASC;

-- Ordenar por precio y nombre
SELECT * FROM `servicios` ORDER BY `precio` ASC, `nombre` ASC;

-- Ordenar por precio
SELECT * FROM `servicios` ORDER BY `precio`;

-- Ordenar por nombre y precio
SELECT `nombre`, `precio` FROM `servicios`;

-- Buscar por nombre y id (WHERE)
SELECT `id`, `nombre`, `precio` FROM `servicios` WHERE `id` = 1;

--* Actualizar datos (UPDATE) usar siempre WHERE para no modificar todo
UPDATE `servicios` SET `precio` = 25.000 WHERE `id` = 1;

UPDATE `servicios` SET `nombre` = 'Corte de niño actualizado' WHERE `id` = 15;

-- Actualizar un id
UPDATE `servicios` SET `id` = 15 WHERE `id` = 30;

--* Actualizar precio y nombre (UPDATE) usar siempre WHERE para no modificar todo
UPDATE `servicios` SET `nombre` = 'Corte de niño', `precio` = 25.000 WHERE `id` = 15;

--* Borrar datos (DELETE) usar siempre WHERE para no modificar todo
DELETE FROM `servicios` WHERE `id` = 15;
DELETE FROM `servicios` WHERE `id` = 30;

-- Agrergar un campo a la tabla
ALTER TABLE `servicios` ADD `descripcion` VARCHAR(255) NOT NULL AFTER `precio`;

--Insertar datos en el campo descripcion
UPDATE `servicios` SET `nueva` = 'Corte de cabello para hombres' WHERE `id` = 10;

-- Modificar el campo descripcion
ALTER TABLE `servicios` MODIFY `descripcion` VARCHAR(100) NOT NULL;

-- Cambiar el nombre de un campo
ALTER TABLE `servicios` CHANGE `nueva` `descripcion` VARCHAR(100) NOT NULL;

-- Eliminar una columna
ALTER TABLE `servicios` DROP `descripcion`;

-- Seleccionar servicios que sean mayores a 90
SELECT * FROM `servicios` WHERE `precio` > 90;

-- Seleccionar servicios que sean mayores o iguales a 80
SELECT * FROM `servicios` WHERE `precio` >= 80;

-- Seleccionar servicios que sean iguales a 80
SELECT * FROM `servicios` WHERE `precio` = 80;

-- Seleccionar servicios que esten entre 80 y 150
SELECT * FROM `servicios` WHERE `precio` BETWEEN 80 AND 150;

-- Funciones agregadoras (COUNT, SUM, AVG, MIN, MAX)
SELECT COUNT(*) FROM `servicios`;
SELECT COUNT(`id`),`fecha` FROM `reservaciones` GROUP BY `fecha` ORDER BY COUNT(`id`) DESC;
SELECT SUM(`precio`) AS `totalServicios` FROM `servicios`;
SELECT MIN(`precio`) AS `precioMenor` FROM `servicios`;
SELECT MAX(`precio`) AS `precioMayor` FROM `servicios`;
SELECT AVG(`precio`) AS `precioPromedio` FROM `servicios`;


-- Buscar por palabra clave
SELECT * FROM `servicios` WHERE `nombre` LIKE 'Corte%'; -- Buscar por palabra clave al inicio
SELECT * FROM `servicios` WHERE `nombre` LIKE '%Lavado'; -- Buscar por palabra clave al final
SELECT * FROM `servicios` WHERE `nombre` LIKE '%Lavado%'; -- Buscar por palabra clave en cualquier parte


SELECT CONCAT(`nombre`, ' ', `apellido`) AS `nombreCompleto` FROM `clientes`; -- Concatenar nombre y apellido
SELECT * FROM `reservaciones` WHERE `fecha` = '2021-06-28' AND `hora` = '09:00:00'; -- Buscar por fecha y hora
SELECT * FROM `reservaciones` WHERE CONCAT(`nombre`, ' ', `apellido`) LIKE '%Ana Preciado%'; -- Buscar por nombre completo trae todos los datos
SELECT `hora`, `fecha`, CONCAT(`nombre`, ' ', `apellido`) AS `nombreCompleto` FROM `reservaciones` WHERE CONCAT(`nombre`, ' ', `apellido`) LIKE '%Ana Preciado%'; -- Buscar por nombre completo y mostrar solo hora y fecha


-- Buscar por funciones
SELECT * FROM `reservaciones` WHERE `id` IN (1, 2, 3); -- Buscar por id
SELECT * FROM `reservaciones` WHERE `fecha` = '2021-06-28'; -- Buscar por fecha
SELECT * FROM `reservaciones` WHERE `fecha` = '2021-06-28' AND `id` = 1; -- Buscar por fecha y id

-- Normalización de bases de datos
--* Es el proceso de dividir una tabla en dos o mas tablas y definir las relaciones entre ellas

--* 1NF: Cada columna debe tener un solo valor (no se pueden guardar dos valores en una misma columna)
--* 2NF: Cada columna debe depender de la clave primaria 
--* 3NF: Cada columna debe depender de la clave primaria y no de otra columna (no debe haber dependencia transiva)

-- Denormalización de bases de datos
--* Es el proceso de agregar datos redundantes a una base de datos para mejorar el rendimiento de las consultas

-- Diagrama entidad relación (ER)
--* Es una representación gráfica de una base de datos

create table if not exists `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL UNIQUE,
  primary key (`id`)
);

insert into `clientes` (`nombre`, `apellido`, `telefono`, `email`) values
('Ana', 'Preciado', '123456789', 'ana@ana.com');

create table if not exists `citas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `clienteId` int(11) NOT NULL,
  primary key (`id`),
  key `clienteId` (`clienteId`),
  constraint `cliente_fk` foreign key (`clienteId`) references `clientes` (`id`)
);

insert into `citas` (`fecha`, `hora`, `clienteId`) values
('2022-06-28', '10:30:00', 1);