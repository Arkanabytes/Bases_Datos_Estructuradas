Funciones de Grupo y Consultas con Múltiples Tablas en Oracle
1. Funciones de grupo y agrupamiento de filas en Oracle
Definición:
Las funciones de grupo permiten realizar cálculos sobre un conjunto de
filas y devolver un único resultado. Se utilizan comúnmente junto con la
cláusula GROUP BY para agrupar filas y obtener resultados por
categorías.
Funciones más comunes:
COUNT() → cuenta filas.
SUM() → suma valores.
AVG() → calcula el promedio.
MAX() → devuelve el valor máximo.
MIN() → devuelve el valor mínimo.
Ejemplos:
  
1. Promedio de sueldos de todos los empleados, redondeado a cero
decimal
SELECT round (AVG(SUELD_EMP) )AS promedio_sueldo
FROM EMPLEADO;

2. Total de empleados por departamento
SELECT departamento.nom_dpto, COUNT(empleado.id_emp) AS
cantidad_empleados
FROM departamento
JOIN empleado
ON DEPARTAMENTO_ID_DPTO = Empleado.departamento_id_dpto
GROUP BY departamento.nom_dpto
order by departamento.nom_dpto;

3. Sueldo máximo y mínimo por cargo
SELECT Cargo.nom_cargo, MAX(Empleado.sueld_emp) AS
sueldo_maximo, MIN(Empleado.sueld_emp) AS sueldo_minino
FROM Cargo
JOIN Empleado
ON Cargo.id_cargo = Empleado.cargo_id_cargo
GROUP BY Cargo.nom_cargo;

2. Consultas sobre múltiples tablas en Oracle
Definición:
Para combinar información de varias tablas se utilizan uniones y autouniones.
Tipos de combinaciones:
INNER JOIN → Devuelve solo las filas que cumplen la condición en
ambas tablas.
LEFT/RIGHT JOIN → Devuelve todas las filas de una tabla y las
coincidentes de la otra.
UNION → Combina resultados de dos consultas distintas (elimina
duplicados por defecto).
Ejemplos:

1. Listar empleados con su cargo y departamento
SELECT EMPLEADO.nom_emp AS NOMBRE, EMPLEADO.ape_emp AS
APELLIDO, CARGO.nom_cargo AS CARGO ,
DEPARTAMENTO.nom_dpto AS DEPARTAMENTO
FROM EMPLEADO
JOIN CARGO
ON EMPLEADO.CARGO_id_cargo = CARGO.id_cargo
JOIN DEPARTAMENTO
ON EMPLEADO.DEPARTAMENTO_id_dpto =
DEPARTAMENTO.id_dpto;

2. Empleados y la comuna en la que viven
SELECT EMPLEADO.nom_emp AS NOMBRE, EMPLEADO.ape_emp AS
APELLIDO, COMUNA.nom_com AS COMUNA
FROM EMPLEADO
JOIN COMUNA
ON EMPLEADO.COMUNA_cod_com = COMUNA.cod_com
ORDER BY COMUNA.NOM_COM ASC;

3. UNION – Listar nombres de empleados y nombres de comunas en
una sola columna
SELECT nom_emp AS nombres FROM empleado
UNION
SELECT nom_com FROM comuna;

4. Comparar sueldos de empleados (quién gana más que otro)
SELECT nom_emp as NOMBRE, ape_emp as APELLIDO, sueld_emp AS
SUELDO
FROM empleado
WHERE sueld_emp = (SELECT MAX(sueld_emp) FROM empleado) or
sueld_emp = (SELECT Min(sueld_emp) FROM empleado);
3. Ejercicios propuestos
1. Mostrar el sueldo promedio por comuna.
2. Listar la cantidad de empleados por cargo y el sueldo máximo dentro de
cada cargo.
3. Usar UNION para mostrar todos los nombres (empleados y
departamentos) en una sola lista.
4. Obtener el total de sueldos por departamento y ordenarlos de mayor a
menor.
5. Listar a todos los empleados que fueron contratados después del día 10
de marzo.
6. Listar a todos los empleados, nombre, apellido con su fecha de
contratación usando el siguiente formato 'DD "de" Month, YYYY'
