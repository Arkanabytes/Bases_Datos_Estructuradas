INSERT INTO COMUNA VALUES(1,'PUENTE ALTO');
INSERT INTO COMUNA VALUES(2,'LA FLORIDA');
INSERT INTO COMUNA VALUES(3,'PIRQUE');
INSERT INTO COMUNA VALUES(4,'EL BOSQUE');
INSERT INTO COMUNA VALUES(5,'LA PINTANA');


INSERT	INTO	CARGO	VALUES(1,'OPERARIO','O');	
INSERT	INTO	CARGO	VALUES(2,'ADMINISTRATIVO','A');	
INSERT	INTO	CARGO	VALUES(3,'GERENCIA','G');	
INSERT	INTO	CARGO	VALUES(4,'SUPERVISOR','S');	

insert into DEPARTAMENTO VALUES(1,'VENTAS');
insert into DEPARTAMENTO VALUES(2,'OPERACIONES');
insert into DEPARTAMENTO VALUES(3,'GERENCIA');
insert into DEPARTAMENTO VALUES(4,'ADQUISICIONES');


INSERT	INTO	EMPLEADO	VALUES(1,'PEDRO','GONZALEZ',537000,'25-mar-1993',1.5,'LAS GUALTATAS','9',1,2,4);
INSERT	INTO	EMPLEADO	VALUES(2,'JUAN','RAMIREZ',637000,'5-mar-1993',2.5,'LA CORUÑA','39',2,3,3);	
INSERT	INTO	EMPLEADO	VALUES(3,'DIEGO','GONZALEZ',397000,'2-mar-1993',1.7,'LAS PALOMAS','379',2,3,4);	
INSERT	INTO	EMPLEADO	VALUES(4,'BADULAQUE','BARRAZA',937000,'11-mar-1993',1.4,'LAS PALTAS','375',2,4,1);	
INSERT	INTO	EMPLEADO	VALUES(5,'HERMINIA','MURILLO',967000,'1-mar-1993',1.3,'LAS PAILAS','207',2,5,3);	
INSERT	INTO	EMPLEADO	VALUES(6,'PANDOLFO','GONZALEZ',667000,'3-mar-1993',1.5,'RIO LOCO','79',2,5,2);	
INSERT	INTO	EMPLEADO	VALUES(7,'EFIGENIO','LOPEZ',887000,'4-mar-1993',1.5,'SAL SI PUEDES','37',3,3,4);
INSERT	INTO	EMPLEADO	VALUES(8,'DORALISA','MONTERO',777000,'4-mar-1993',1.2,'NI AHI','88',3,4,1);
INSERT	INTO	EMPLEADO	VALUES(9,'PERPEUTO','INOCENCIO',897000,'6-mar-1993',1.6,'EL TIUQUE','771',4,2,3);	
INSERT	INTO	EMPLEADO	VALUES(10,'FEDERICO','LORCA',757000,'7-mar-1993',1.2,'LOS ERAN','379',4,1,2);	
INSERT	INTO	EMPLEADO	VALUES(11,'EDUARDA','PEREIRA',557000,'8-mar-1993',1.7,'LALALAN','2199',2,1,4);	
INSERT	INTO	EMPLEADO	VALUES(12,'INOCENCIO','FULGENCIA',747000,'9-mar-1993',1.9,'LO OSCURITO','321',1,1,3);	
INSERT	INTO	EMPLEADO	VALUES(13,'MARTIN','FIERRO',457000,'31-mar-1993',1.9,'LE PETIT','333',4,1,2);	
INSERT	INTO	EMPLEADO	VALUES(14,'EULALIA','LIRA',457000,'22-mar-1993',1.3,'LE PUFF','454',3,1,5);


--Realice las siguientes consultas a la BD.
--Consultas Simples

--1.	Seleccionar todos los empleados de la tabla EMPLEADO. 
	
	SELECT * FROM EMPLEADO;

--2.	Seleccionar el nombre, apellido y sueldo de los empleados con un sueldo superior a $580000, ordenados por apellido. 

	SELECT NOM_EMP, APE_EMP, SUELD_EMP
FROM EMPLEADO
WHERE SUELD_EMP > 580000
ORDER BY APE_EMP;


--3.	Contar el número total de empleados en la tabla. 

SELECT COUNT(*) AS total_empleados FROM EMPLEADO;

--4.	Seleccionar la fecha de contratación más antigua. 

SELECT MIN(FECHACONT_EMP) AS fecha_contratacion_mas_antigua FROM EMPLEADO;


--5.	Seleccionar todos los nombres de los cargos de la tabla cargo. 

SELECT nom_cargo FROM cargo;

--Consultas Complejas

--1.	Obtener el nombre completo del empleado, su sueldo, el nombre del departamento y el nombre del cargo. --
--Esto requiere unir la tabla EMPLEADO con departamento y cargo. 

SELECT 
    e.NOM_EMP || ' ' || e.APE_EMP AS nombre_completo,
    e.SUELD_EMP,
    d.nom_dpto,
    c.nom_cargo
FROM EMPLEADO e
JOIN departamento d ON e.departamento_id_dpto = d.id_dpto
JOIN cargo c ON e.cargo_id_cargo = c.id_cargo;


--2.	Calcular el sueldo promedio por departamento. -- La consulta agrupa los empleados por departamento y luego calcula el promedio. 

SELECT 
    d.nom_dpto,
    AVG(e.SUELD_EMP) AS sueldo_promedio
FROM EMPLEADO e
JOIN departamento d ON e.departamento_id_dpto = d.id_dpto
GROUP BY d.nom_dpto;


--3.	Encontrar el empleado con el sueldo más alto en el departamento de 'Ventas'. 
a.	Se usa una subconsulta para encontrar el ID del departamento de 'Ventas' y luego se busca el empleado con el sueldo máximo en ese departamento. 

SELECT 
    e.NOM_EMP || ' ' || e.APE_EMP AS nombre_completo,
    e.SUELD_EMP
FROM EMPLEADO e
WHERE e.departamento_id_dpto = (
    SELECT id_dpto FROM departamento WHERE nom_dpto = 'VENTAS'
)
AND e.SUELD_EMP = (
    SELECT MAX(SUELD_EMP) FROM EMPLEADO 
    WHERE departamento_id_dpto = (
        SELECT id_dpto FROM departamento WHERE nom_dpto = 'VENTAS'
    )
);

--4.	Obtener el nombre completo de los empleados que ganan más que el sueldo promedio de todos los empleados. 


SELECT 
    NOM_EMP || ' ' || APE_EMP AS nombre_completo,
    SUELD_EMP
FROM EMPLEADO
WHERE SUELD_EMP > (
    SELECT AVG(SUELD_EMP) FROM EMPLEADO
);
	
