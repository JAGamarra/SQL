-- CREAR TABLA PERSONAS

CREATE TABLE persona(
	id_persona INTEGER NOT NULL,
	nombre TEXT(60) NOT NULL,
	apellido TEXT(60) NOT NULL,
	edad INTEGER NOT NULL DEFAULT 0,
	CONSTRAINT pk_id_persona PRIMARY KEY (id_persona)
);