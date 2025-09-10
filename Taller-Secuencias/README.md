# 🔢 Taller de Secuencias - Oracle Database

<div align="center">

![Oracle](https://img.shields.io/badge/Oracle-Database-red?style=for-the-badge&logo=oracle&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-PL/SQL-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)
![PseInt](https://img.shields.io/badge/Tool-PseInt-orange?style=for-the-badge)

**Implementación práctica de secuencias en Oracle Database para automatización de claves primarias**

[🔢 **Ver Secuencias**](#-creación-de-secuencias) • [💾 **Scripts SQL**](#-scripts-prácticos) • [🧪 **Ejercicios**](#-ejercicios-prácticos) • [📊 **Ejemplos**](#-ejemplos-de-uso)

</div>

---

## 📍 Información del Proyecto

| 🌿 **Branch** | 📂 **Ruta** | 🎯 **Tema** | 🛠️ **SGBD** |
|:---:|:---:|:---:|:---:|
| `Pseint` | `/Taller-Secuencias` | Sequences en Oracle | Oracle Database |

**🔗 Repositorio:** [Bases_Datos_Estructuradas](https://github.com/Arkanabytes/Bases_Datos_Estructuradas/tree/Pseint/Taller-Secuencias)

---

## 🎯 Objetivos del Taller

<table>
<tr>
<td align="center">
<img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Objects/Gear.png" width="50">
<br><strong>Automatización</strong>
<br><sub>Generación automática de IDs</sub>
</td>
<td align="center">
<img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Objects/Shield.png" width="50">
<br><strong>Integridad</strong>
<br><sub>Valores únicos garantizados</sub>
</td>
<td align="center">
<img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Objects/Chart%20Increasing.png" width="50">
<br><strong>Performance</strong>
<br><sub>Optimización de inserciones</sub>
</td>
<td align="center">
<img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Objects/Books.png" width="50">
<br><strong>Aprendizaje</strong>
<br><sub>Dominio de NEXTVAL/CURRVAL</sub>
</td>
</tr>
</table>

---

## 📚 ¿Qué son las Secuencias en Oracle?

Las secuencias en Oracle son objetos de base de datos que generan automáticamente números únicos de forma secuencial, utilizadas principalmente para crear claves primarias automáticas, simulando el comportamiento de campos auto-incrementales que encontramos en otros SGBD.

### 🔍 **Características Principales:**

- ✅ **Generación automática** de valores únicos
- ✅ **Thread-safe** para entornos multi-usuario
- ✅ **Configurable** (inicio, incremento, máximo, etc.)
- ✅ **Reutilizable** en múltiples tablas
- ✅ **Persistente** en la base de datos

---

## 🔢 Creación de Secuencias

### 🏗️ **Sintaxis Básica**

```sql
-- =============================================
-- CREACIÓN DE SECUENCIAS ORACLE
-- =============================================

-- Secuencia básica
CREATE SEQUENCE nombre_secuencia;

-- Secuencia con parámetros personalizados
CREATE SEQUENCE nombre_secuencia
    START WITH valor_inicial
    INCREMENT BY incremento
    MAXVALUE valor_maximo
    MINVALUE valor_minimo
    CACHE cantidad_cache
    CYCLE | NOCYCLE
    ORDER | NOORDER;
```

### 📊 **Parámetros de Configuración**

| 🎛️ **Parámetro** | 📝 **Descripción** | 🔢 **Valor por Defecto** | 💡 **Ejemplo** |
|:---|:---|:---:|:---|
| `START WITH` | Valor inicial de la secuencia | 1 | `START WITH 100` |
| `INCREMENT BY` | Valor de incremento | 1 | `INCREMENT BY 5` |
| `MAXVALUE` | Valor máximo permitido | 10²⁷ | `MAXVALUE 9999` |
| `MINVALUE` | Valor mínimo permitido | 1 | `MINVALUE 1` |
| `CACHE` | Números precargados en memoria | 20 | `CACHE 50` |
| `CYCLE` | Reinicia al alcanzar límite | NOCYCLE | `CYCLE` |
| `ORDER` | Garantiza orden en RAC | NOORDER | `ORDER` |

---

## 💾 Scripts Prácticos

### 🔨 **Ejemplo 1: Secuencia para Empleados**

```sql
-- =============================================
-- SECUENCIA PARA TABLA EMPLEADOS
-- =============================================

-- Crear la secuencia
CREATE SEQUENCE EMPLEADOS_NOM
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 999999
    MINVALUE 1
    CACHE 20
    NOCYCLE
    NOORDER;

-- Crear tabla de empleados
CREATE TABLE EMPLEADO (
    ID_EMPLEADO     NUMBER(6) PRIMARY KEY,
    NOMBRE          VARCHAR2(50) NOT NULL,
    APELLIDO        VARCHAR2(50) NOT NULL,
    SALARIO         NUMBER(10,2),
    FECHA_NACIMIENTO DATE,
    FACTOR          NUMBER(3,2),
    DIRECCION       VARCHAR2(100),
    NUMERO          VARCHAR2(10),
    ID_DEPARTAMENTO NUMBER(2),
    ID_CARGO        NUMBER(2),
    ID_SUCURSAL     NUMBER(2)
);

-- Insertar usando la secuencia
INSERT INTO EMPLEADO VALUES(
    EMPLEADOS_NOM.NEXTVAL, 
    'PEDRO', 
    'GONZALEZ', 
    537000, 
    '25-mar-1993', 
    1.5, 
    'LAS GUALTATAS', 
    '9', 
    1, 
    2, 
    4
);
```

### 🔍 **Ejemplo 2: Múltiples Secuencias por Módulo**

```sql
-- =============================================
-- SECUENCIAS ORGANIZADAS POR MÓDULO
-- =============================================

-- Secuencia para Departamentos
CREATE SEQUENCE SEQ_DEPARTAMENTO
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 99
    CACHE 10;

-- Secuencia para Cargos
CREATE SEQUENCE SEQ_CARGO
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 999
    CACHE 15;

-- Secuencia para Sucursales
CREATE SEQUENCE SEQ_SUCURSAL
    START WITH 100
    INCREMENT BY 5
    MAXVALUE 9999
    CACHE 25;

-- Ejemplo de uso conjunto
INSERT INTO DEPARTAMENTO VALUES(SEQ_DEPARTAMENTO.NEXTVAL, 'RECURSOS HUMANOS', 'RRHH');
INSERT INTO CARGO VALUES(SEQ_CARGO.NEXTVAL, 'ANALISTA PROGRAMADOR', 'DESARROLLO');
INSERT INTO SUCURSAL VALUES(SEQ_SUCURSAL.NEXTVAL, 'SUCURSAL CENTRO', 'SANTIAGO');
```

### ⚡ **Ejemplo 3: Secuencias Avanzadas**

```sql
-- =============================================
-- SECUENCIAS AVANZADAS CON CARACTERÍSTICAS ESPECIALES
-- =============================================

-- Secuencia que inicia en 1000 y va de 10 en 10
CREATE SEQUENCE SEQ_ORDEN_COMPRA
    START WITH 1000
    INCREMENT BY 10
    MAXVALUE 999999
    CACHE 50
    NOCYCLE;

-- Secuencia para códigos con formato específico
CREATE SEQUENCE SEQ_FACTURA
    START WITH 2024001
    INCREMENT BY 1
    MAXVALUE 2024999
    CACHE 100;

-- Secuencia cíclica para turnos
CREATE SEQUENCE SEQ_TURNO
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 3
    MINVALUE 1
    CYCLE
    CACHE 1;

-- Uso práctico
SELECT 
    'ORD-' || LPAD(SEQ_ORDEN_COMPRA.NEXTVAL, 6, '0') AS codigo_orden,
    'FAC-' || SEQ_FACTURA.NEXTVAL AS numero_factura,
    CASE SEQ_TURNO.NEXTVAL
        WHEN 1 THEN 'MAÑANA'
        WHEN 2 THEN 'TARDE' 
        WHEN 3 THEN 'NOCHE'
    END AS turno
FROM DUAL;
```

---

## 🛠️ Operaciones con Secuencias

### 📖 **Comandos Fundamentales**

```sql
-- =============================================
-- OPERACIONES BÁSICAS CON SECUENCIAS
-- =============================================

-- 1. NEXTVAL - Obtener siguiente valor
SELECT EMPLEADOS_NOM.NEXTVAL FROM DUAL;

-- 2. CURRVAL - Obtener valor actual (después de usar NEXTVAL)
SELECT EMPLEADOS_NOM.CURRVAL FROM DUAL;

-- 3. Ver información de la secuencia
SELECT 
    sequence_name,
    min_value,
    max_value,
    increment_by,
    cycle_flag,
    cache_size,
    last_number
FROM USER_SEQUENCES 
WHERE sequence_name = 'EMPLEADOS_NOM';

-- 4. Modificar secuencia existente
ALTER SEQUENCE EMPLEADOS_NOM
    INCREMENT BY 2
    MAXVALUE 9999999
    CACHE 30;

-- 5. Reiniciar secuencia (truco avanzado)
-- Primero obtenemos el valor actual
SELECT EMPLEADOS_NOM.CURRVAL FROM DUAL;

-- Calculamos el incremento negativo necesario
ALTER SEQUENCE EMPLEADOS_NOM INCREMENT BY -999;  -- Ajustar según valor actual
SELECT EMPLEADOS_NOM.NEXTVAL FROM DUAL;

-- Restauramos incremento normal
ALTER SEQUENCE EMPLEADOS_NOM INCREMENT BY 1;

-- 6. Eliminar secuencia
DROP SEQUENCE EMPLEADOS_NOM;
```

### 🔧 **Funciones Útiles con Secuencias**

```sql
-- =============================================
-- FUNCIONES Y TÉCNICAS AVANZADAS
-- =============================================

-- Generar múltiples IDs consecutivos
SELECT EMPLEADOS_NOM.NEXTVAL as id
FROM (SELECT LEVEL FROM DUAL CONNECT BY LEVEL <= 10);

-- Usar secuencia en función PL/SQL
CREATE OR REPLACE FUNCTION GET_NEXT_EMPLOYEE_ID
RETURN NUMBER
IS
BEGIN
    RETURN EMPLEADOS_NOM.NEXTVAL;
END;
/

-- Procedimiento para inserción automática
CREATE OR REPLACE PROCEDURE INSERT_EMPLOYEE(
    p_nombre VARCHAR2,
    p_apellido VARCHAR2,
    p_salario NUMBER
)
IS
BEGIN
    INSERT INTO EMPLEADO (ID_EMPLEADO, NOMBRE, APELLIDO, SALARIO)
    VALUES (EMPLEADOS_NOM.NEXTVAL, p_nombre, p_apellido, p_salario);
    
    DBMS_OUTPUT.PUT_LINE('Empleado insertado con ID: ' || EMPLEADOS_NOM.CURRVAL);
END;
/
```

---

## 🧪 Ejercicios Prácticos

### 📝 **Ejercicio 1: Secuencias Básicas**

<details>
<summary><strong>🎯 Ver Ejercicio y Solución</strong></summary>

**Enunciado:** 
Crea una secuencia llamada `SEQ_CLIENTE` que:
- Comience en 1000
- Se incremente de 5 en 5
- Tenga un máximo de 99999
- Use cache de 25

```sql
-- SOLUCIÓN
CREATE SEQUENCE SEQ_CLIENTE
    START WITH 1000
    INCREMENT BY 5
    MAXVALUE 99999
    CACHE 25
    NOCYCLE;

-- Prueba
SELECT SEQ_CLIENTE.NEXTVAL FROM DUAL;  -- Resultado: 1000
SELECT SEQ_CLIENTE.NEXTVAL FROM DUAL;  -- Resultado: 1005
SELECT SEQ_CLIENTE.NEXTVAL FROM DUAL;  -- Resultado: 1010
```

</details>

### 📝 **Ejercicio 2: Inserción con Secuencias**

<details>
<summary><strong>🎯 Ver Ejercicio y Solución</strong></summary>

**Enunciado:**
Usando la secuencia `EMPLEADOS_NOM`, inserta 5 empleados diferentes con datos realistas.

```sql
-- SOLUCIÓN
INSERT INTO EMPLEADO VALUES(EMPLEADOS_NOM.NEXTVAL, 'MARIA', 'RODRIGUEZ', 685000, '12-jul-1988', 2.1, 'AV. LIBERTADOR', '234', 2, 1, 3);

INSERT INTO EMPLEADO VALUES(EMPLEADOS_NOM.NEXTVAL, 'CARLOS', 'MARTINEZ', 720000, '03-nov-1985', 1.8, 'CALLE PRINCIPAL', '567', 3, 3, 1);

INSERT INTO EMPLEADO VALUES(EMPLEADOS_NOM.NEXTVAL, 'ANA', 'SILVA', 598000, '18-sep-1991', 1.3, 'PASAJE LOS OLIVOS', '89', 1, 4, 2);

INSERT INTO EMPLEADO VALUES(EMPLEADOS_NOM.NEXTVAL, 'JOSE', 'MORALES', 812000, '07-feb-1982', 2.5, 'CAMINO REAL', '1456', 4, 2, 4);

INSERT INTO EMPLEADO VALUES(EMPLEADOS_NOM.NEXTVAL, 'LUCIA', 'TORRES', 654000, '29-dic-1994', 1.7, 'VILLA ESPERANZA', '78', 2, 1, 3);

-- Verificar inserciones
SELECT ID_EMPLEADO, NOMBRE, APELLIDO, SALARIO FROM EMPLEADO ORDER BY ID_EMPLEADO;
```

</details>

### 📝 **Ejercicio 3: Manejo de CURRVAL y NEXTVAL**

<details>
<summary><strong>🎯 Ver Ejercicio Avanzado</strong></summary>

**Enunciado:**
Crea un script que:
1. Use NEXTVAL para obtener un nuevo ID
2. Inserte un empleado con ese ID
3. Use CURRVAL para crear un registro relacionado en otra tabla

```sql
-- SOLUCIÓN
-- 1. Crear tabla relacionada
CREATE TABLE EMPLEADO_DETALLE (
    ID_DETALLE NUMBER PRIMARY KEY,
    ID_EMPLEADO NUMBER REFERENCES EMPLEADO(ID_EMPLEADO),
    OBSERVACIONES VARCHAR2(200),
    FECHA_REGISTRO DATE DEFAULT SYSDATE
);

-- 2. Script integrado
DECLARE
    v_nuevo_id NUMBER;
BEGIN
    -- Obtener nuevo ID
    SELECT EMPLEADOS_NOM.NEXTVAL INTO v_nuevo_id FROM DUAL;
    
    -- Insertar empleado
    INSERT INTO EMPLEADO VALUES(
        v_nuevo_id, 
        'PATRICIA', 
        'VARGAS', 
        750000, 
        '15-abr-1990', 
        2.0, 
        'CALLE NUEVA', 
        '123', 
        1, 
        3, 
        2
    );
    
    -- Usar CURRVAL para tabla relacionada
    INSERT INTO EMPLEADO_DETALLE VALUES(
        1,
        EMPLEADOS_NOM.CURRVAL,  -- Usa el mismo ID
        'Empleado ingresado via script',
        SYSDATE
    );
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Empleado creado con ID: ' || v_nuevo_id);
END;
/
```

</details>

---

## 📊 Ejemplos de Uso Avanzado

### 🎨 **Generación de Códigos Personalizados**

```sql
-- =============================================
-- CÓDIGOS PERSONALIZADOS CON SECUENCIAS
-- =============================================

-- Secuencia para códigos de producto
CREATE SEQUENCE SEQ_PRODUCTO
    START WITH 1
    INCREMENT BY 1
    CACHE 20;

-- Generar códigos con formato personalizado
SELECT 
    'PROD-' || TO_CHAR(SYSDATE, 'YYYY') || '-' || LPAD(SEQ_PRODUCTO.NEXTVAL, 4, '0') AS codigo_producto,
    'EMP-' || LPAD(EMPLEADOS_NOM.NEXTVAL, 6, '0') AS codigo_empleado
FROM DUAL;

-- Resultado ejemplo: PROD-2024-0001, EMP-000123
```

### 🔄 **Secuencias en Triggers**

```sql
-- =============================================
-- AUTO-INCREMENTO CON TRIGGERS
-- =============================================

-- Trigger para auto-asignar ID
CREATE OR REPLACE TRIGGER TRG_EMPLEADO_ID
    BEFORE INSERT ON EMPLEADO
    FOR EACH ROW
BEGIN
    -- Solo asignar ID si no viene especificado
    IF :NEW.ID_EMPLEADO IS NULL THEN
        :NEW.ID_EMPLEADO := EMPLEADOS_NOM.NEXTVAL;
    END IF;
END;
/

-- Ahora se puede insertar sin especificar ID
INSERT INTO EMPLEADO (NOMBRE, APELLIDO, SALARIO) 
VALUES ('FERNANDO', 'SOTO', 690000);
```

### 📈 **Análisis de Secuencias**

```sql
-- =============================================
-- MONITOREO Y ANÁLISIS DE SECUENCIAS
-- =============================================

-- Ver todas las secuencias del usuario
SELECT 
    sequence_name,
    min_value,
    max_value,
    increment_by,
    last_number,
    cache_size,
    cycle_flag
FROM USER_SEQUENCES
ORDER BY sequence_name;

-- Calcular uso de la secuencia
SELECT 
    sequence_name,
    last_number,
    max_value,
    ROUND((last_number / max_value) * 100, 2) AS porcentaje_uso
FROM USER_SEQUENCES
WHERE sequence_name = 'EMPLEADOS_NOM';

-- Ver gaps en secuencias (números faltantes)
SELECT 
    e1.ID_EMPLEADO + 1 AS inicio_gap,
    MIN(e2.ID_EMPLEADO) - 1 AS fin_gap
FROM EMPLEADO e1
LEFT JOIN EMPLEADO e2 ON e1.ID_EMPLEADO < e2.ID_EMPLEADO
WHERE e2.ID_EMPLEADO IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM EMPLEADO e3 
      WHERE e3.ID_EMPLEADO = e1.ID_EMPLEADO + 1
  )
GROUP BY e1.ID_EMPLEADO
HAVING MIN(e2.ID_EMPLEADO) > e1.ID_EMPLEADO + 1;
```

---

## ⚡ Mejores Prácticas

### ✅ **Recomendaciones**

<table>
<tr>
<td align="center">
<strong>🎯 DO's</strong>
</td>
<td align="center">
<strong>❌ DON'Ts</strong>
</td>
</tr>
<tr>
<td>
• Usar nombres descriptivos<br>
• Configurar CACHE apropiado<br>
• Documentar rangos de valores<br>
• Monitorear uso de secuencias<br>
• Usar NOCYCLE por defecto
</td>
<td>
• No usar CURRVAL sin NEXTVAL<br>
• No compartir secuencias entre entornos<br>
• No modificar secuencias en producción<br>
• No usar CYCLE sin justificación<br>
• No crear secuencias innecesarias
</td>
</tr>
</table>

### 🔧 **Configuración Óptima según Uso**

| 🎯 **Escenario** | ⚙️ **Configuración Recomendada** | 💡 **Justificación** |
|:---|:---|:---|
| **Tabla transaccional** | `CACHE 100, NOCYCLE` | Alto volumen de inserciones |
| **Tabla maestra** | `CACHE 20, NOCYCLE` | Pocas inserciones, valores únicos |
| **Códigos temporales** | `CACHE 1, CYCLE` | Reutilización controlada |
| **Entorno desarrollo** | `START WITH 90000` | Evitar conflictos con producción |

---

## 🧪 Testing y Validación

### ✅ **Script de Pruebas**

```sql
-- =============================================
-- TESTING DE SECUENCIAS
-- =============================================

-- Test 1: Verificar creación
SELECT COUNT(*) as secuencias_creadas 
FROM USER_SEQUENCES 
WHERE sequence_name IN ('EMPLEADOS_NOM', 'SEQ_CLIENTE');

-- Test 2: Verificar incremento
SELECT 
    EMPLEADOS_NOM.NEXTVAL as valor1,
    EMPLEADOS_NOM.NEXTVAL as valor2,
    EMPLEADOS_NOM.NEXTVAL as valor3
FROM DUAL;

-- Test 3: Verificar CURRVAL
SELECT EMPLEADOS_NOM.CURRVAL as valor_actual FROM DUAL;

-- Test 4: Performance con gran volumen
SET TIMING ON;
INSERT INTO EMPLEADO 
SELECT 
    EMPLEADOS_NOM.NEXTVAL,
    'EMPLEADO_' || LEVEL,
    'APELLIDO_' || LEVEL,
    500000 + (LEVEL * 1000),
    SYSDATE - (LEVEL * 365),
    1.0 + (LEVEL * 0.1),
    'DIRECCION ' || LEVEL,
    LEVEL,
    MOD(LEVEL, 5) + 1,
    MOD(LEVEL, 3) + 1,
    MOD(LEVEL, 4) + 1
FROM DUAL
CONNECT BY LEVEL <= 1000;
SET TIMING OFF;
```

---

## 📚 Recursos Adicionales

### 📖 **Documentación Oracle**
- [Oracle Database SQL Reference - CREATE SEQUENCE](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/CREATE-SEQUENCE.html)
- [Oracle Database Administrator's Guide - Managing Sequences](https://docs.oracle.com/en/database/oracle/oracle-database/19/admin/)

### 🎓 **Tutoriales Recomendados**
- Ejercicios resueltos de secuencias Oracle
- Conceptos básicos de Oracle Database

### 🔗 **Enlaces Útiles**
- [Oracle Live SQL](https://livesql.oracle.com/) - Para practicar online
- [Oracle Developer Community](https://community.oracle.com/) - Foro de ayuda

---

## 🏆 Conclusiones del Taller

### ✅ **Conceptos Dominados**

1. ✅ **Creación de secuencias** con parámetros personalizados
2. ✅ **Uso de NEXTVAL y CURRVAL** en inserciones
3. ✅ **Modificación y eliminación** de secuencias
4. ✅ **Integración con triggers** para auto-incremento
5. ✅ **Optimización y monitoreo** de secuencias
6. ✅ **Mejores prácticas** en entornos productivos

### 📈 **Beneficios Obtenidos**

- **🚀 Automatización** completa de claves primarias
- **🛡️ Integridad** garantizada en valores únicos  
- **⚡ Performance** optimizada en inserciones masivas
- **🔧 Flexibilidad** en configuración de rangos
- **📊 Control** total sobre generación de IDs

---

## 👨‍💻 Información del Desarrollador

<div align="center">

**🎓 Taller desarrollado por:** [Arkanabytes](https://github.com/Arkanabytes)  
**📚 Materia:** Bases de Datos Estructuradas  
**🏫 Contexto:** Taller Práctico - Secuencias Oracle  
**📅 Fecha:** 2024  

---

**⭐ Si este taller te resulta útil, ¡dale una estrella en GitHub! ⭐**

*Desarrollado con 💻 y dedicación académica*

</div>
