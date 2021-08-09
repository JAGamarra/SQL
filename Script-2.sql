create database escuela

use escuela

-- CARRERA 
create table carrera(
	clave_c int not null,
	nombre_c varchar(50),
	durac_c float,
	constraint pk_clave_c primary key(clave_c)
)

drop table carrera 

-- MATERIA
create table materia(
	clave_m int not null,
	nombre_m varchar(50),
	cred_m float,
	constraint pk_clave_m primary key(clave_m)
)