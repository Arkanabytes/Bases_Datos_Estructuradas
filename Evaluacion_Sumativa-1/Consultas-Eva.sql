--Instrucciones:
--Realice las siguientes consultas al BD.
--Consultas Simples

--1.	Seleccionar NOMBRE, APELLIDO Y SUELDO DE LOS empleados de la tabla EMPLEADO, cuyo sueldo sea menor o igual 675000, ordenados por apellido, use mascaras.          

	SELECT NOM_EMP, APE_EMP, SUELD_EMP
FROM EMPLEADO
WHERE SUELD_EMP > = 675000
ORDER BY APE_EMP;

--2.	Seleccionar el nombre, apellido y sueldo de los empleados con un sueldo superior a $580000, ordenados por apellido.                            			 

SELECT NOM_EMP, APE_EMP, SUELD_EMP
FROM EMPLEADO
WHERE SUELD_EMP > 580000
ORDER BY APE_EMP;

--4.	Seleccionar la fecha de contratación más nueva.                                 

SELECT MAX(FECHACONT_EMP) AS fecha_contratacion_mas_nueva FROM EMPLEADO;

--5.	Seleccionar todos los nombres de los cargos de la tabla cargo
SELECT nom_cargo FROM cargo;

--Consultas complejas
--1.	Obtener el nombre completo del empleado, su sueldo, el nombre del departamento y el nombre del cargo. use mascaras.



--6. 	Calcular el total de sueldos por Cargo.                                                     
	
CREATE OR REPLACE VIEW VISTA_SUELDO_CARGOS AS
SELECT d.nom_cargo, SUM(e.Sueld_emp) AS SUELDO_TOTAL_CARGO
FROM EMPLEADO e
JOIN CARGO d ON e.DEPARTAMENTO_ID_DPTO = d.ID_CARGO
GROUP BY d.NOM_CARGO;

SELECT * FROM VISTA_SUELDO_CARGOS;
