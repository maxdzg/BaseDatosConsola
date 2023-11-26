USE consola

INSERT INTO SistemaOperativo
(nombre,fechaLanzamiento,finSoporte,finSoporteExt,activo,user_alta,fecha_alta)
VALUES
('Wiindows Server 2012 R2', '20131125','20181009','20231010',1,'sysAdmin', CURRENT_TIMESTAMP),
('Wiindows Server 2016', '20161015','20220111','20270112',1,'sysAdmin', CURRENT_TIMESTAMP),
('Wiindows Server 2019', '20181113','20240109','20290109',1,'sysAdmin', CURRENT_TIMESTAMP),
('Wiindows Server 2022', '20210818','20261013','20311014',1,'sysAdmin', CURRENT_TIMESTAMP)


select * from SistemaOperativo

