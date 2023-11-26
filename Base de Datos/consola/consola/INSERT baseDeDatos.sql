USE consola

INSERT INTO BaseDeDatos
(nombre,fechaLanzamiento,finSoporte,finSoporteExt,activo,user_alta,fecha_alta)
VALUES
('SQL Server 2012', '20120520','20170711','20220712',1,'sysAdmin', CURRENT_TIMESTAMP),
('SQL Server 2014', '20140714','20190709','20240709',1,'sysAdmin', CURRENT_TIMESTAMP),
('SQL Server 2016', '20160701','20210713','20260714',1,'sysAdmin', CURRENT_TIMESTAMP),
('SQL Server 2017', '20170929','20221011','20221011',1,'sysAdmin', CURRENT_TIMESTAMP),
('SQL Server 2019', '20191104','20250228','20300108',1,'sysAdmin', CURRENT_TIMESTAMP)

select * from BaseDeDatos

