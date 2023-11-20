USE Consola
CREATE TABLE Personal
(
	personaID int IDENTITY(1,1),	
	deptoID int NOT NULL,
	empresaID int NOT NULL,
	nombre varchar(40) NOT NULL,
	aPaterno varchar(30),
	aMaterno varchar(30),
	puesto varchar(50),
	periodo varchar(20),
	noEmpleado int,
	usuUniversal varchar(10),
	email varchar(40),
	estatus bit,
	usu_alta varchar(50),
	fecha_alta smalldatetime,
	usu_mod varchar(50),
	fecha_mod smalldatetime,
	usu_baja varchar(50),
	fecha_baja smalldatetime

	CONSTRAINT PK_Personal PRIMARY KEY
	(
		personaID ASC
	),

	CONSTRAINT fk_personal_departamento FOREIGN KEY (deptoID)
	REFERENCES Departamento(deptoID),

	CONSTRAINT fk_personal_empresa FOREIGN KEY (empresaID)
	REFERENCES Empresa(empresaID),

	CONSTRAINT UQ_PersonaUnica UNIQUE
	(
		nombre, aPaterno, aMaterno
	),

	CONSTRAINT UQ_NumeroEMpleadoUnico UNIQUE
	(
		noEmpleado
	)
);

select * from Personal

/*
INSERT INTO Personal
 VALUES (2,1,'Max Eduardo', 'Díaz', 'García', 'Administrador de Desarrollo de Sistemas AM','Indefinido',58165,'VISH35','max.diaz@americamovil.com',1,'sysAdmin',GETDATE(),NULL,NULL,NULL,NULL)
 */

 