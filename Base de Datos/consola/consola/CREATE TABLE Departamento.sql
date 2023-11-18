USE Consola
CREATE TABLE Departamento
(
	deptoID int IDENTITY(1,1),
	nombre varchar(50) NOT NULL,
	abreviatura varchar (10) NOT NULL,
	activo bit NOT NULL,
	usu_alta varchar(50),
	fecha_alta smalldatetime,
	usu_mod varchar(50),
	fecha_mod smalldatetime,
	usu_baja varchar(50),
	fecha_baja smalldatetime

	CONSTRAINT PK_Departamento PRIMARY KEY
	(
		deptoID ASC
	),

	CONSTRAINT UQ_DepartamentoUnico UNIQUE
	(
		nombre, abreviatura
	)
);

select * from Departamento

