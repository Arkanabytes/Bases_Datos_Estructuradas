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


--3.Se requiere implementar la búsqueda de los datos de los empleados a partir de su apellido mediante la siguiente consulta mostrada. ¿Cuál de las siguientes afirmaciones es cierta con relación a la consulta?  
--Seleccione una:

SELECT employee_id, UPPER(last_name), department_id
FROM employees
WHERE INITCAP(last_name) = 'Higgins';

--a.La función UPPER retorna un valor numérico.
--b.La función INITCAP retorna un valor de cadena de caracteres.
--c.La consulta falla en la cláusula WHERE.
--d.La consulta falla porque la función INITCAP no existe.


--4.Usted intenta mostrar las fechas de contratación de los empleados con la consulta mostrada. ¿Cuál de los siguientes formatos produce la salida indicada?
--Seleccione una:

SELECT last_name, TO_CHAR(hire_date, '?????????') hire_date
FROM employees
WHERE LOWER(last_name) = 'smith';
--a.DD-MON-RR.
--b.DD-MON-YYYY.
--c.D-MM-YY.
--d.DD-MONTH-YY. 



--6.Caso: Obteniendo información desde de la base de datos de recurso humano con expresiones condicionales.
--En el contexto del desarrollo de la aplicación para el departamento de recurso humano, es necesario diseñar consultas que permitan realizar la obtención de datos mediante funciones de una fila. El equipo de desarrollo cree que sería mejor utilizar una lógica condicional en tales consultas en lugar de hacerlo en el código de programación de la aplicación. También cree que emplear funciones de conversión en las consultas permitirá evitar anomalías en su ejecución.¿Cuál es el resultado de la siguiente expresión condicional?
--Seleccione una:

SELECT last_name, salary,
CASE WHEN salary < 5000 THEN 'Low'
WHEN salary < 15000 THEN 'Good'
END salary_band
FROM employees;

--a.Se ejecuta correctamente, muestra 2 bandas salariales y una banda nula.
--b.Se ejecuta correctamente, muestra 3 bandas salariales.
--c.La consulta falla, la expresión CASE está incompleta.
--d.La consulta falla, falta la expresión ELSE. 
