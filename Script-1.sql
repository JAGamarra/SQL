
DROP TABLE grupos;

DROP TABLE persona ;

CREATE TABLE grupos(
	id_grupo integer,
	nombre varchar(50)
);

-- ALTER TABLE grupos MODIFY grupo;

CREATE TABLE persona(
	id_persona INT NOT NULL, 
	CONSTRAINT pk_id_persona PRIMARY KEY(id_persona) AUTOINCREMENT,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	edad INT(3) NOT NULL,
	direccion VARCHAR(200),
	ciudad VARCHAR(50)
);

ALTER TABLE persona ADD email VARCHAR(70);

ALTER TABLE persona RENAME TO personas;

ALTER TABLE persona RENAME COLUMN email TO correo;
