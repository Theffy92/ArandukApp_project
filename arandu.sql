CREATE DATABASE aranduka 

use [aranduka] 

CREATE TABLE personas (
	idpersona INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	idbarrio INT NOT NULL,
	idsexo INT NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	dni VARCHAR(8) NOT NULL,
	direccion VARCHAR(100) NOT NULL,
	fechaNac DATETIME NOT NULL,
	email VARCHAR(100) NULL,
	telefono VARCHAR(15) NOT NULL,
	idestadopersona INT NOT NULL DEFAULT(1)
)

CREATE TABLE estado_personas(
	idestadopersona INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	descripcion VARCHAR(100) NOT NULL,
	
)
CREATE TABLE socios (
	idpersona INT NOT NULL,
	idsocio INT IDENTITY(1,1) NOT NULL,
	nomPersuno VARCHAR(30) NOT NULL,
	nomPersDos VARCHAR(30) NULL,
	nomPersTres VARCHAR(30) NULL,
	PRIMARY KEY (idpersona, idsocio)
)


CREATE TABLE empleados (
	idpersona INT NOT NULL,
	idempleado INT IDENTITY(1,1) NOT NULL,
	idperfil INT NOT NULL,
	fechaingreso DATE NOT NULL,
	clave VARCHAR(8) NOT NULL,
	PRIMARY KEY (idpersona, idempleado)
)


CREATE TABLE barrios (
	idbarrio INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	descripcion VARCHAR(100) NOT NULL
)

CREATE TABLE perfiles (
	idperfil INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	descripcion VARCHAR(100) NOT NULL
)

CREATE TABLE sexos (
	idsexo INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	descripcion VARCHAR(100) NOT NULL
)

CREATE TABLE autores (
	idautor INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	nomyape VARCHAR(100) NOT NULL
)

CREATE TABLE temas (
	idtema INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	descripcion VARCHAR(100) NOT NULL
)

CREATE TABLE colecciones (
	idcoleccion INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	descripcion VARCHAR(100) NOT NULL
)

CREATE TABLE editoriales (
	ideditorial INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	descripcion VARCHAR(100) NOT NULL
)

CREATE TABLE libros (
	idlibro INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	titulo VARCHAR(100) NOT NULL,
	isbn VARCHAR(10) NOT NULL,
	anioedicion INT NULL,
	descripcion VARCHAR(200) NULL,
	imagen_libro VARCHAR(200) NULL,
	ideditorial INT NOT NULL,
	idestadolibro INT NOT NULL,
	stock INT NOT NULL,
)

CREATE TABLE estado_libro (
	idestadolibro INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	descripcion VARCHAR(50) NOT NULL,
)

CREATE TABLE colecciones_temas (
	idlibro INT NOT NULL,
	idtema INT NOT NULL,
	idcoleccion INT NOT NULL,
	PRIMARY KEY (idlibro, idtema, idcoleccion)
)

CREATE TABLE libros_autores (
	idlibro INT NOT NULL,
	idautor INT NOT NULL,
	PRIMARY KEY (idlibro, idautor)
)

CREATE TABLE factura_cabecera (
	idcabecera INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	fecha DATE NOT NULL,
	idsocio INT NOT NULL,
	cuit VARCHAR(13) NOT NULL,
	idpersona INT NOT NULL,
)

CREATE TABLE cuota (
	idcabecera INT NOT NULL,
	idcuota INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	cantMeses INT NOT NULL,
	precioUnit DECIMAL (6,2) NOT NULL,
	precioTotal DECIMAL  (6,2) NOT NULL,
)

CREATE TABLE factura_detalle (
	idcabecera INT NOT NULL,
	iddetalle INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	idlibro INT NOT NULL,
	cantidad INT NOT NULL
)

INSERT INTO colecciones VALUES ('Infantil')

INSERT INTO temas VALUES ('Ficción')

INSERT INTO estado_libro(descripcion) VALUES ('Activo')

select * from libros

select * from editoriales