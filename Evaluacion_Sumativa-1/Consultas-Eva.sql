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
