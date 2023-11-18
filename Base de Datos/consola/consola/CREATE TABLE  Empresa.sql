USE Consola
CREATE TABLE Empresa
(
	empresaID int IDENTITY(1,1),
	nombre varchar(50) NOT NULL,
	activo bit NOT NULL,
	usu_alta varchar(50),
	fecha_alta smalldatetime,
	usu_mod varchar(50),
	fecha_mod smalldatetime,
	usu_baja varchar(50),
	fecha_baja smalldatetime

	CONSTRAINT PK_Empresa PRIMARY KEY
	(
		empresaID ASC
	),

	CONSTRAINT UQ_EmpresaUnica UNIQUE
	(
		nombre
	)
);

select * from Empresa