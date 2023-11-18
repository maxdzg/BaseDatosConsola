USE Consola

INSERT INTO Departamento
VALUES 
('Operación de Sistemas AM','OPAM',1,'sysadmin',GETDATE(),NULL,NULL,NULL,NULL),
('Desarrollo de Sistemas AM','DSAM',1,'sysAdmin',GETDATE(),NULL,NULL,NULL,NULL),
('Quality Assurance Sistemas AM','QASAM',1,'sysAdmin',GETDATE(),NULL,NULL,NULL,NULL),
('Business Analytics Sistemas AM','BASAM',1,'sysAdmin',GETDATE(),NULL,NULL,NULL,NULL),
('Gerencia de Sistemas AM','GSAM',1,'sysAdmin',GETDATE(),NULL,NULL,NULL,NULL)

SELECT * FROM Departamento
