--Instrucciones:
--Realice las siguientes consultas al BD.
--Consultas Simples

--1.	Seleccionar NOMBRE, APELLIDO Y SUELDO DE LOS empleados de la tabla EMPLEADO, cuyo sueldo sea menor o igual 675000, ordenados por apellido, use mascaras.          

	SELECT NOM_EMP, APE_EMP, SUELD_EMP
FROM EMPLEADO
WHERE SUELD_EMP > = 675000
ORDER BY APE_EMP;
