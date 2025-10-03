
--1. Listar los empleados cuyo sueldo es menor o igual al sueldo promedio de todos los empleados. Use mascaras

SELECT sueld_emp AS salario, ape_emp as apellido, nom_emp as nombre
FROM empleado
WHERE sueld_emp >= (SELECT AVG(sueld_emp) FROM empleado)
order by apellido asc;

--2. Mostrar los empleados que ganan menos que el empleado 'DOROTEA LOPEZ'. Use mascaras

SELECT nom_emp AS nombre, ape_emp as apellido, sueld_emp as salario
FROM empleado
WHERE sueld_emp <(
SELECT sueld_emp
FROM empleado
WHERE nom_emp = 'DOROTEA'AND ape_emp = 'LOPEZ')
order by apellido desc;


--3 Mostrar los empleados que tienen el mismo departamento que algún empleado del cargo operador.

SELECT nom_emp, ape_emp, nom_cargo, nom_dpto
FROM empleado 
JOIN cargo ON cargo_id_cargo = id_cargo
JOIN departamento ON departamento_id_dpto = id_dpto
WHERE departamento_id_dpto IN (
    SELECT departamento_id_dpto
    FROM empleado
    JOIN cargo ON empleado.cargo_id_cargo = cargo.id_cargo
    WHERE UPPER(cargo.nom_cargo) = 'OPERARIO'
);

--4 Listar empleados cuyo sueldo es mayor que todos los de la comuna el bosque

SELECT nom_emp, ape_emp, sueld_emp, nom_com
FROM empleado
JOIN comuna ON comuna_cod_com = cod_com
WHERE sueld_emp > ALL (
    SELECT sueld_emp
    FROM empleado
    JOIN comuna ON empleado.comuna_cod_com = comuna.cod_com
    WHERE UPPER(comuna.nom_com) = 'EL BOSQUE'
);

--5 Calcular el sueldo promedio de los empleados por comuna, cual comuna consume más?

SELECT nom_com, ROUND(AVG(sueld_emp),2) AS promedio_sueldo
FROM empleado
JOIN comuna ON comuna_cod_com = cod_com
GROUP BY nom_com
ORDER BY promedio_sueldo DESC;


--6. Contar la cantidad de empleados por comuna, que comuna tiene más empleados

SELECT nom_com, COUNT(id_emp) AS cantidad_empleados
FROM empleado JOIN comuna ON comuna_cod_com = cod_com
GROUP BY nom_com ORDER BY cantidad_empleados DESC;


--7. Calcular el gasto total en sueldos por cargo. ¿Qué cargo consume más recursos?

SELECT nom_cargo, SUM(sueld_emp) AS gasto_total
FROM empleado JOIN cargo ON cargo_id_cargo = id_cargo
GROUP BY nom_cargo
ORDER BY gasto_total DESC;


--8. Mostrar el promedio de sueldos por departamento, solo si es inferior a $710.500

SELECT nom_dpto, AVG(sueld_emp) AS promedio_sueldo
FROM empleado
JOIN departamento ON departamento_id_dpto = id_dpto
GROUP BY nom_dpto
HAVING AVG(sueld_emp) < 710500
ORDER BY promedio_sueldo ASC;


--9. Crear una consulta que obtenga, la suma de sueldos por departamento y calcula el porcentaje que representa respecto al total y la muestra de forma ascendente por el porcentaje. ¿Qué departamento es el más relevante?

SELECT nom_dpto,
       SUM(sueld_emp) AS total_sueldos,
       ROUND((SUM(sueld_emp) / (SELECT SUM(sueld_emp) FROM empleado)) * 100, 1) AS porcentaje_total
FROM empleado
JOIN departamento ON departamento_id_dpto = id_dpto
GROUP BY nom_dpto
ORDER BY porcentaje_total ASC;

 
--10. Crear una consulta que calcule la antigüedad promedio en años de los empleados por cargo.


SELECT nom_cargo,
       ROUND(AVG(MONTHS_BETWEEN(SYSDATE, fechacont_emp)/12), 1) AS antiguedad_promedio
FROM empleado
JOIN cargo ON cargo_id_cargo = id_cargo
GROUP BY nom_cargo
ORDER BY antiguedad_promedio DESC;


--11. Crear una consulta que obtenga el sueldo máximo, mínimo y la diferencia entre ambos valores agrupados por cargo. Sería ideal que además la diferencia la expresará en porcentaje.

SELECT nom_cargo,
       MAX(sueld_emp) AS sueldo_max,
       MIN(sueld_emp) AS sueldo_min,
       (MAX(sueld_emp) - MIN(sueld_emp)) AS diferencia,
       ROUND(((MAX(sueld_emp) - MIN(sueld_emp))/ MAX(sueld_emp)) * 100, 2) AS dif_porcentaje
FROM empleado
JOIN cargo ON cargo_id_cargo = id_cargo
GROUP BY nom_cargo
ORDER BY diferencia DESC;

--12. Crear una consulta que ordene los cargos según el costo total en sueldos utilizando una función analítica (RANK). ¿Qué cargo esta primero?

SELECT nom_cargo,
       SUM(sueld_emp) AS gasto_total,
       RANK() OVER (ORDER BY SUM(sueld_emp) DESC) AS ranking_sueldos
FROM empleado
JOIN cargo ON cargo_id_cargo = id_cargo
GROUP BY nom_cargo;
