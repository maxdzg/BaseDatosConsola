USE Consola
CREATE TABLE Servidor
(
	servidorID int IDENTITY(1,1),	
	ipServidor varchar(20) NOT NULL,
	hostname varchar(35) NOT NULL,
	soID int,
	deptoID int,
	personaID int,
	cpu varchar(50),
	ram smallint,
	discoDuro smallint,
	usuarioWin varchar(10),
	estatus bit,
	usu_alta varchar(50),
	fecha_alta smalldatetime,
	usu_mod varchar(50),
	fecha_mod smalldatetime,
	usu_baja varchar(50),
	fecha_baja smalldatetime
	
	CONSTRAINT PK_Servidor PRIMARY KEY
	(
		servidorID ASC
	),

	CONSTRAINT fk_servidor_sistemaOperativo FOREIGN KEY (soID)
	REFERENCES SistemaOperativo(soID),

	CONSTRAINT fk_servidor_departamento FOREIGN KEY (deptoID)
	REFERENCES Departamento(deptoID),

	CONSTRAINT fk_servidor_personal FOREIGN KEY (personaID)
	REFERENCES Personal(personaID),


	CONSTRAINT UQ_IP_Unica UNIQUE
	(
		ipServidor
	),

	CONSTRAINT UQ_Hostname_Unico UNIQUE
	(
		hostname
	),

	CONSTRAINT UQ_Servidor_Unico UNIQUE
	(
		ipServidor, hostname
	),

);

select * from Servidor

/*
INSERT INTO Servidor
 VALUES ('10.191.152.153','CONSOWINDES',3,2,1,'CORE 2 DUO 2.45GHz',8,160,'SVDCDB01',1,'sysAdmin',GETDATE(),NULL,NULL,NULL,NULL ),
        ('10.191.152.154','CONSOWINQA',3,3,1,'CORE 2 DUO 2.45GHz',8,160,'SVDCDB02',1,'sysAdmin',GETDATE(),NULL,NULL,NULL,NULL ),
		('10.191.152.155','CONSOWINOPAM',2,1,1,'CORE 2 DUO 2.45GHz',16,250,'SVDCDB03',1,'sysAdmin',GETDATE(),NULL,NULL,NULL,NULL )
*/