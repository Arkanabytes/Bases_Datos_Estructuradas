--1. Mostrar el sueldo promedio por comuna.

SELECT C.nom_com AS comuna,
ROUND(AVG(E.sueld_emp), 2) AS sueldo_promedio
FROM empleado E
JOIN comuna C ON E.comuna_cod_com = C.cod_com
GROUP BY C.nom_com
ORDER BY C.nom_com;

--2. Listar la cantidad de empleados por cargo y el sueldo máximo dentro de
cada cargo.

SELECT C.nom_cargo AS cargo,
COUNT(E.id_emp) AS cantidad_empleados,
MAX(E.sueld_emp) AS sueldo_maximo
FROM empleado E
JOIN cargo C ON E.cargo_id_cargo = C.id_cargo
GROUP BY C.nom_cargo
ORDER BY C.nom_cargo;

--3. Usar UNION para mostrar todos los nombres (empleados y
departamentos) en una sola lista.

SELECT nom_emp AS nombre FROM empleado
UNION
SELECT nom_dpto AS nombre FROM departamento
ORDER BY nombre;


--4. Obtener el total de sueldos por departamento y ordenarlos de mayor a
menor.

SELECT D.nom_dpto AS departamento,
SUM(E.sueld_emp) AS total_sueldos
FROM empleado E
JOIN departamento D ON E.departamento_id_dpto = D.id_dpto
GROUP BY D.nom_dpto
ORDER BY total_sueldos DESC;


--5. Listar a todos los empleados que fueron contratados después del día 10
de marzo.

SELECT NOM_EMP AS nombre, APE_EMP AS apellido, FECHACONT_EMP AS fecha_contratacion
FROM EMPLEADO
WHERE FECHACONT_EMP > TO_DATE('10-03-2023', 'DD-MM-YYYY')
ORDER BY FECHACONT_EMP;

--6. Listar a todos los empleados, nombre, apellido con su fecha de
contratación usando el siguiente formato 'DD "de" Month, YYYY'

SELECT NOM_EMP AS nombre,APE_EMP AS apellido,
TO_CHAR(FECHACONT_EMP,'DD "de" Month, YYYY','NLS_DATE_LANGUAGE=SPANISH') AS fecha_contratacion_formateada
FROM EMPLEADO
ORDER BY FECHACONT_EMP;
