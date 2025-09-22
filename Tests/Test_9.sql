--Validación de datos mediante disparadores en la base de datos de recurso humano.
--Para optimizar la administración de recursos en un departamento específico, se busca implementar triggers en la base de datos. Esta tarea 
--implica la creación de triggers que respondan a eventos específicos, como la actualización de datos o la inserción de registros. Estos 
--triggers buscan automatizar tareas recurrentes, mejorar la integridad de los datos y garantizar un rendimiento eficiente en la gestión de 
--recursos del departamento.

--Pregunta 1: ¿Cuál de las siguientes afirmaciones es cierta con relación a los disparadores o triggers? Seleccione una:
--a.Los usuarios pueden ejecutar explícitamente los disparadores.
--b.Los disparadores se pueden definir a nivel de base de datos.
--c.Los disparadores se pueden definir en tablas, pero no en vistas.
--d.Los disparadores sólo se ejecutan con sentencias DML.

  
--Pregunta 2: ¿Qué estrategia seguiría para mejorar la seguridad del servidor Oracle usando disparadores o triggers? Seleccione una:
--a.Los disparadores permiten el acceso a una tabla según los valores de datos.
--b.Los disparadores implantan las reglas complejas de integridad.
--c.Los disparadores copian tablas de forma síncrona en las réplicas.
--d.Los disparadores calculan los valores de datos derivados de forma automática.

  
--Pregunta 3: ¿Cuál de los siguientes tipos de temporización de un disparador ejecuta el cuerpo del disparador en lugar la sentencia 
--disparadora?

--a.BEFORE.
--b.AFTER.
--c.INSTEAD OF.
--d.FOR EACH ROW. 

--Pregunta 4:Usted crea un disparador llamado RESTRICT_SALARY con la sentencia mostrada a continuación: Tomando en cuenta que el empleado con el ID 121 
--existe, ¿cuál es el resultado de la ejecución la sentencia?

CREATE OR REPLACE TRIGGER restrict_salary
BEFORE INSERT OR UPDATE OF salary ON employees
FOR EACH ROW
BEGIN
IF :NEW.salary > 15000 THEN
RAISE_APPLICATION_ERROR (-20202,'Employee salary error.');
END IF;
END;

--Sentencia ejecutada por BOB:
UPDATE employees SET salary = 15550
WHERE employee_id = 121;

--a.La sentencia se ejecuta correctamente y una fila se actualiza.
--b.La sentencia se ejecuta correctamente, pero cero filas se actualizan.
--c.La sentencia falla con el error ORA-00933.
--d.La sentencia falla con el error ORA-20202.


--Pregunta 5: Usted crea un disparador llamado AUDIT_EMP_VALUES con la siguiente sentencia SQL. ¿Cuál de las siguientes afirmaciones es 
--cierta con relación a la creación del disparador?

CREATE OR REPLACE TRIGGER audit_emp_values
AFTER DELETE OR INSERT OR UPDATE ON employees
BEGIN
INSERT INTO audit_emps VALUES (USER, SYSDATE, :OLD.employee_id,
:OLD.last_name, :NEW.last_name, :OLD.job_id,
:NEW.job_id, :OLD.salary, :NEW.salary);
END;

--a.El disparador compila exitosamente.
--b.No es necesario que la tabla AUDIT_EMPS exista antes de crear el disparador.
--c.La compilación falla porque NEW y OLD no han sido declarados.
--d.La compilación falla porque el disparador es de nivel de sentencia.



