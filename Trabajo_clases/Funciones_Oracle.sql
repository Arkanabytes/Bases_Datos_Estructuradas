Funciones en Oracle
1. Funciones de una sola fila en Oracle
Definición:
Las funciones de una sola fila en Oracle son aquellas que se aplican a cada registro de
forma individual y devuelven un único valor por fila. Se utilizan principalmente en la
cláusula SELECT, WHERE o ORDER BY.
Tipos principales:
- Funciones de carácter: trabajan sobre cadenas de texto.
- Funciones numéricas: realizan operaciones matemáticas.
- Funciones de conversión: convierten datos de un tipo a otro.
- Funciones de fechas: manipulan valores de tipo DATE.
- Funciones misceláneas: trabajan con expresiones lógicas o de sistema.
Ejemplos
Funciones de carácter:
SELECT LOWER(NOM_EMP), LOWER(APE_EMP) FROM EMPLEADO
ORDER BY APE_EMP ASC;
--todo en minúsculasSELECT UPPER(NOM_EMP) AS NOMBRE, LOWER(APE_EMP) AS APELLIDO
FROM EMPLEADO
ORDER BY APE_EMP ASC;
--nombre en mayúscula y apellido en minúsculas.
Funciones numéricas:
SELECT NOM_EMP,(SUELD_EMP/0.56) AS SUELDO_absoluto,
ROUND((SUELD_EMP/0.56),2) AS SUELDO_redondeado
FROM EMPLEADO;
--redondea a dos decimales.
SELECT NOM_EMP,(SUELD_EMP/0.56) AS SUELDO_absoluto,
ROUND((SUELD_EMP/0.56),0) AS SUELDO_redondeado
FROM EMPLEADO;
--redondea a cero decimales.
Funciones de conversión:
SELECT TO_CHAR(SYSDATE, 'DD/MM/YYYY') AS fecha_hoy FROM dual;
--entrega la fecha de hoy en formato 23/09/2025
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD') AS fecha_hoy FROM dual;
--entrega la fecha de hoy en formato 2025/09/23
Funciones misceláneas:
SELECT NVL(NULL, 'Sin valor') AS reemplazo FROM EMPLEADO;
--La sentencia SELECT NVL(NULL, 'Sin valor') AS reemplazo FROM EMPLEADO; en Oracle
significa que se reemplaza cualquier valor nulo encontrado en la columna de la
tabla EMPLEADO por la cadena de texto 'Sin valor', y se presenta este resultado en una
columna llamada reemplazo. La función NVL es específica de Oracle y se usa para
sustituir un valor nulo por uno alternativo en una consulta, asegurando que la salida sea
un valor significativo en lugar de nulo.
2. Funciones de manipulación de fechas en Oracle
Definición:
Oracle proporciona funciones especiales para consultar, comparar y calcular con valores
de tipo DATE. Un dato de tipo fecha en Oracle incluye: año, mes, día, hora, minutos y
segundos.
Principales funciones:
- SYSDATE → Devuelve la fecha y hora actuales del sistema.
- ADD_MONTHS(fecha, n) → Suma o resta meses a una fecha.
- MONTHS_BETWEEN(f1, f2) → Devuelve el número de meses entre dos
fechas.
- NEXT_DAY(fecha, día_semana) → Devuelve la siguiente fecha que cae en
el día indicado.
- LAST_DAY(fecha) → Último día del mes de una fecha.
- ROUND/ TRUNC(fecha, formato) → Redondea o trunca una fecha a cierto
nivel (mes, año, día).
Ejemplos
Fecha actual:
SELECT SYSDATE FROM dual;
Agregar 6 meses a la fecha actual:
SELECT ADD_MONTHS(SYSDATE, 6) FROM dual;
Calcular meses entre dos fechas:
SELECT MONTHS_BETWEEN(SYSDATE, TO_DATE('23-10-2025','DD-MMYYYY')) AS MESES FROM dual;
Próximo lunes desde la fecha actual:
SELECT NEXT_DAY(SYSDATE, 'LUNES') AS proximo_lunes FROM dual;
--entrega la fecha del próximo lunes
SELECT NEXT_DAY(SYSDATE, 'MARTES') AS proximo_lunes
FROM dual;
--entrega la Fecha del próximo martes
Último día del mes actual:
SELECT LAST_DAY(SYSDATE) AS fin_mes FROM dual;
--entrega el ultimo día del mes
