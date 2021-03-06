/*
 * TABLAS DEL EJERCICIO 2 - MUEBLES
 * 
 * DDL (LENGUAJE DE DEFINICION DE DATOS
 * OBJETOS -> TABLAS, VISTAS, SECUENCIAS, INDICES
 * 
 * CREATE -> CREAR OBJETOS
 * ALTER -> MODIFICAR OBJETOS
 * DROP -> BORRAR OBJETOS 
 * 
 */

CREATE TABLE CLIENTE(
	NIF INTEGER NOT NULL PRIMARY KEY,
	NOMBRE VARCHAR(100) NOT NULL,
	DIRECCION VARCHAR(200) NOT NULL,
	TELEFONO VARCHAR(10)
);

CREATE TABLE MODELO_DORMITORIO (
	COD INTEGER NOT NULL PRIMARY KEY,
	NOMBRE VARCHAR(100)
);

CREATE TABLE MONTADOR (
	NIF INTEGER NOT NULL PRIMARY KEY,
	NOMBRE VARCHAR(100) NOT NULL,
	DIRECCION VARCHAR(200) NOT NULL,
	TELEFONO VARCHAR(10)
	
);


CREATE TABLE COMPRA (
	NIF_CLIENTE INTEGER NOT NULL,
	CODIGO_MODELO INTEGER NOT NULL,
	FECHA_COMPRA DATE NOT NULL,
	PRIMARY KEY(NIF_CLIENTE, CODIGO_MODELO, FECHA_COMPRA),
	FOREIGN KEY (NIF_CLIENTE) REFERENCES CLIENTE(NIF),
	FOREIGN KEY (CODIGO_MODELO) REFERENCES MODELO_DORMITORIO(COD)
);

CREATE TABLE MONTA (
	MODELO INTEGER NOT NULL,
	NIF_MONTADOR INTEGER NOT NULL,
	FECHA_MONTAJE DATE NOT NULL,
	PRIMARY KEY(MODELO, NIF_MONTADOR, FECHA_MONTAJE),
	FOREIGN KEY (NIF_MONTADOR) REFERENCES MONTADOR(NIF),
	FOREIGN KEY (MODELO) REFERENCES MODELO_DORMITORIO(COD)
);

DROP TABLE COMPRA ;

ALTER TABLE CLIENTE RENAME TO CLIENTES; -- RENOMBRAR UNA TABLA















