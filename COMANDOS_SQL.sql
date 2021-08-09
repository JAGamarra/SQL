
/* COMANDOS DDL (DATA DEFINITION LANGUAGE) */
/* CREAR TABLA CON CAMPOS */
CREATE TABLE persona (
	cedula numeric(10) NOT NULL PRIMARY KEY ,
	nombre varchar(30) NOT NULL,
	apellido varchar(30) NOT NULL,
	telefono varchar(15) NOT NULL
);

/* BORRAR TABLA */
DROP TABLE persona ;

/* AGREGAR CAMPOS */
ALTER TABLE persona ADD email varchar(255);

/* MODIFICAR CAMPOS (NO SE PUEDE EN SQLite) */
ALTER TABLE persona MODIFY COLUMN email varchar(100);

/* ELIMINAR UN CAMPO */
ALTER TABLE persona DROP email;

ALTER TABLE persona ADD email varchar(100);

/* Restricciones */
ALTER TABLE persona ADD CONSTRAINT persona_pk PRIMARY KEY (cedula);


/* AGREGAR ELEMENTOS A LA TABLA - DML */

INSERT INTO persona (cedula, nombre, apellido, telefono) 
	VALUES (1143413008, 'Julian Andres', 'Gamarra Gamarra', '3218408343');
	
INSERT INTO persona 
	VALUES (1143413009, 'Pablo Felipe', 'Torres Gomez', '3218408344', 'email@email.com'); 

INSERT INTO persona (cedula, nombre, apellido, telefono, email)
	VALUES (1143431007, 'Mariana', 'Hernandez Chavez', '3213453214', 'mariherc1@email.com'); 

/* ACTUALIZAR DATOS */
UPDATE persona SET cedula = 12345678 WHERE cedula = 1143413008;

UPDATE persona SET nombre = 'Jeimmy', apellido = 'Valencia Arteaga' WHERE cedula = 1143413008;
UPDATE persona SET email = 'jeimmy.valencia@email.com' WHERE cedula = 1143413008;

/* SELECCIONAR DATOS */
SELECT nombre, apellido FROM persona WHERE email = 'NULL';

/* BORRAR DATOS */
DELETE FROM persona WHERE cedula = 1143413009;
DELETE FROM persona ; -- NO OLVIDAR LA CLAUSÚLA WHERE, SE BORRAN TODOS LOS REGISTROS DE LA BBDD


/* */







