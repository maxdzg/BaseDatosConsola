USE consola

CREATE TABLE SistemaOperativo
(
	soID int IDENTITY(1,1) NOT NULL,
	nombre varchar(30) NOT NULL,
	fechaLanzamiento smalldatetime,
	finSoporte smalldatetime,
	finSoporteExt smalldatetime,
	activo bit,
	user_alta varchar(50),
	fecha_alta datetime,
	user_mod varchar(50),
	fecha_mod datetime,
	user_baja varchar(50),
	fecha_baja datetime,

	CONSTRAINT PK_SistemaOperativo PRIMARY KEY
	(
		soID ASC
	),

	CONSTRAINT UQ_SistOpUnico UNIQUE
	(
		nombre
	)
)

select * from SistemaOperativo