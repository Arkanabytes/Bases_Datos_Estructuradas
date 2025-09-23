--1. Evaluación final (3 ejercicios)
-- De la tabla EMPLEADOS, mostrar el nombre completo (nombre + apellido en minúsculas).
--Obtener el número de meses transcurridos desde la fecha de contratación hasta hoy para cada empleado.
--Mostrar la fecha actual (SYSDATE), la fecha del próximo viernes
--Mostrar el último día del mes actual.

--a) Mostrar el nombre completo (nombre + apellido en minúsculas).
SELECT LOWER(NOM_EMP || ' ' || APE_EMP) AS nombre_completo
FROM EMPLEADO;

--b) Obtener el número de meses transcurridos desde la fecha de contratación hasta hoy.
SELECT NOM_EMP, APE_EMP,
       MONTHS_BETWEEN(SYSDATE, FECHACONT_EMP) AS meses_transcurridos
FROM EMPLEADO;


--c) Mostrar la fecha actual, la fecha del próximo viernes y el último día del mes actual.
SELECT SYSDATE AS fecha_hoy,
       NEXT_DAY(SYSDATE, 'VIERNES') AS proximo_viernes,
       LAST_DAY(SYSDATE) AS fin_mes
FROM dual;



--2. Mostrar el nombre de cada empleado en mayúsculas de la tabla EMPLEADO.
--Divida le sueldo por 7 y redondéelo con 2 decimales de la tabla EMPLEADO,
--muestre el sueldo divido en 7 y en redondeado con 2 decimales.
--Convertir la fecha de contratación (FECHACONT_EMP) al formato YYYY/MM/DD.

--a) Mostrar el nombre de cada empleado en mayúsculas.
SELECT UPPER(NOM_EMP) AS nombre
FROM EMPLEADO;

--b) Dividir el sueldo por 7 y redondearlo con 2 decimales.
SELECT NOM_EMP,
       (SUELD_EMP/7) AS sueldo_dividido,
       ROUND((SUELD_EMP/7), 2) AS sueldo_redondeado
FROM EMPLEADO;

--c) Convertir la fecha de contratación al formato YYYY/MM/DD.
SELECT NOM_EMP, 
       TO_CHAR(FECHACONT_EMP, 'YYYY/MM/DD') AS fecha_contratacion
FROM EMPLEADO;
