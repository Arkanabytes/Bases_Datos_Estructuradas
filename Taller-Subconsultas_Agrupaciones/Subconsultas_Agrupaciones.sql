--Ejercicios de Subconsultas y Agrupamientos en Oracle
--Ejercicios de Subconsultas de una sola fila
  
--1. Listar los empleados cuyo sueldo es mayor al sueldo
--promedio de todos los empleados.
  
SELECT sueld_emp AS salario, ape_emp as apellido,
nom_emp as nombre
FROM empleado
WHERE sueld_emp > (SELECT AVG(sueld_emp) FROM
empleado)
order by apellido asc;


--2. Mostrar los empleados que ganan más que el empleado
'DOROTEA LOPEZ'.
SELECT nom_emp AS nombre, ape_emp as apellido,
sueld_emp as salario
FROM empleado
WHERE sueld_emp > (
SELECT sueld_emp
FROM empleado
WHERE nom_emp = 'DOROTEA' AND ape_emp = 'LOPEZ'
)
order by apellido desc;


--Ejercicios de Subconsultas de varias filas
  
--3. Mostrar los empleados que tienen el mismo cargo que algún empleado del departamento 2.
SELECT nom_emp, ape_emp, nom_cargo, nom_dpto
FROM empleado
JOIN CARGO
ON empleado.CARGO_ID_CARGO=CARGO.ID_CARGO
join DEPARTAMENTO
on
empleado.DEPARTAMENTO_ID_DPTO=DEPARTAMENTO.ID_
DPTO
WHERE empleado.departamento_id_dpto =2;


4. Listar empleados cuyo sueldo es mayor que todos los de la
comuna= 1.
SELECT nom_emp, ape_emp, sueld_emp, nom_com
FROM empleado
join COMUNA
on empleado.COMUNA_COD_COM= COMUNA.COD_COM
WHERE sueld_emp > ALL (
SELECT sueld_emp
FROM empleado
WHERE comuna_cod_com = '1'
);


Ejercicios con agrupamientos y operaciones matemáticas
  
5. Calcular el sueldo promedio de los empleados por
departamento.
SELECT departamento.nom_dpto,
ROUND(AVG(empleado.sueld_emp),2) AS promedio_sueldo
FROM empleado
JOIN departamento ON empleado.departamento_id_dpto =
departamento.id_dpto
GROUP BY departamento.nom_dpto
ORDER BY promedio_sueldo DESC;


6. Contar la cantidad de empleados por cargo.
SELECT cargo.nom_cargo, COUNT(empleado.id_emp) AS
cantidad_empleados
FROM empleado
JOIN cargo
ON empleado.cargo_id_cargo = cargo.id_cargo
GROUP BY cargo.nom_cargo
ORDER BY cantidad_empleados ASC;

7. Calcular el gasto total en sueldos por comuna.
SELECT comuna.nom_com, SUM(empleado.sueld_emp) AS gasto_total
FROM empleado
JOIN comuna ON empleado.comuna_cod_com =
comuna.cod_com
GROUP BY comuna.nom_com
ORDER BY gasto_total ASC;

8. Mostrar el promedio de sueldos por cargo, solo si supera $711.500
  
SELECT cargo.nom_cargo, AVG(empleado.sueld_emp) AS promedio_sueldo
FROM empleado
JOIN cargo ON empleado.cargo_id_cargo = cargo.id_cargo
GROUP BY cargo.nom_cargo
HAVING AVG(empleado.sueld_emp) < 711500
ORDER BY promedio_sueldo DESC;
9. Consulta que obtiene la suma de sueldos por cargo y calcula el
porcentaje que representa respecto al total y la muestra de forma
ascendente por el porcentaje.
SELECT cargo.nom_cargo,
SUM(empleado.sueld_emp) AS total_sueldos,
ROUND((SUM(empleado.sueld_emp) / (SELECT
SUM(sueld_emp) FROM empleado)) * 100, 1) AS
porcentaje_total
FROM empleado
JOIN cargo
ON empleado.cargo_id_cargo = cargo.id_cargo
GROUP BY cargo.nom_cargo
ORDER BY porcentaje_total ASC;

10. Consulta que calcula la antigüedad promedio en años de los empleados por departamento.
SELECT departamento.nom_dpto,
ROUND(AVG(MONTHS_BETWEEN(SYSDATE,
empleado.fechacont_emp) / 12), 1) AS
antiguedad_promedio
FROM empleado
JOIN departamento
ON empleado.departamento_id_dpto =
departamento.id_dpto
GROUP BY departamento.nom_dpto
ORDER BY antiguedad_promedio DESC;

11. Consulta que obtiene el sueldo máximo, mínimo y la
diferencia entre ambos valores agrupados por comuna.
SELECT comuna.nom_com,
MAX(empleado.sueld_emp) AS sueldo_max,
MIN(empleado.sueld_emp) AS sueldo_min,
(MAX(empleado.sueld_emp) -
MIN(empleado.sueld_emp)) AS DIFERENCIA
FROM empleado
JOIN comuna
ON empleado.comuna_cod_com = comuna.cod_com
GROUP BY comuna.nom_com
ORDER BY diferencia DESC;

12.Consulta que ordena los departamentos según el gasto total
en sueldos utilizando una función analítica (RANK).
SELECT departamento.nom_dpto,
SUM(empleado.sueld_emp) AS gasto_total,
RANK() OVER (ORDER BY
SUM(empleado.sueld_emp) DESC) AS ranking_sueldos
FROM empleado
JOIN departamento
ON empleado.departamento_id_dpto =
departamento.id_dpto
GROUP BY departamento.nom_dpto;
