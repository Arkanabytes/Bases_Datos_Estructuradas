--1.¿Cuál de las siguientes afirmaciones es cierta con relación a la siguiente consulta?
--Seleccione una:
SELECT CONCAT(first_name, ' ', last_name) full_name
FROM employees;

--a.La consulta muestra el nombre completo de los empleados.
--b.La función CONCAT es una función de conversión de caracteres.
--c.La consulta falla debido a que CONCAT no acepta argumentos de columna.
--d.La consulta falla debido a que CONCAT sólo recibe 2 argumentos.

--2.Se desea mostrar la fecha de evaluación de los nuevos empleados, la que corresponde al siguiente lunes después de 6 meses de ser contratado el empleado. Se crea la siguiente consulta para mostrar la información. ¿Cuál es el resultado de la ejecución de la consulta?
--Seleccione una:

SELECT last_name, hire_date,
NEXT_DAY(ADD_MONTHS(hire_date, 6), 'MON') review
FROM employees;

--a.La consulta falla porque no se pueden anidar las funciones de una sola fila.
--b.La consulta falla porque NEXT_DAY no acepta cadenas como argumento.
--c.La consulta se ejecuta correctamente, pero no muestra el resultado deseado.
--d.La consulta se ejecuta correctamente y muestra el resultado deseado.
