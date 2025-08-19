-- Generado por Oracle SQL Developer Data Modeler 21.4.1.349.1605
--   en:        2025-08-19 19:48:02 CLT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE cargo (
    id_cargo    NUMBER NOT NULL,
    nombre      VARCHAR2(50) NOT NULL,
    descripcion VARCHAR2(200)
);

ALTER TABLE cargo ADD CONSTRAINT cargo_pk PRIMARY KEY ( id_cargo );

CREATE TABLE comuna (
    codigo_com              NUMBER,
    nombre_com              VARCHAR2(50),
    empleado_id_empleado    NUMBER NOT NULL,
    empleado_cargo_id_cargo NUMBER NOT NULL
);

ALTER TABLE comuna ADD CONSTRAINT comuna_pk PRIMARY KEY ( empleado_id_empleado,
                                                          empleado_cargo_id_cargo );

CREATE TABLE departamento (
    id_departamento NUMBER NOT NULL,
    nombre          VARCHAR2(50),
    ubicacion       VARCHAR2(50)
);

ALTER TABLE departamento ADD CONSTRAINT departamento_pk PRIMARY KEY ( id_departamento );

CREATE TABLE empleado (
    id_empleado                  NUMBER NOT NULL,
    nombre                       VARCHAR2(50),
    apellido                     VARCHAR2(50) NOT NULL,
    sueldo                       NUMBER,
    fecha_contratacion           DATE,
    porcentaje_comision          NUMBER,
    cargo_id_cargo               NUMBER NOT NULL,
    departamento_id_departamento NUMBER NOT NULL
);

ALTER TABLE empleado ADD CONSTRAINT empleado_pk PRIMARY KEY ( id_empleado,
                                                              cargo_id_cargo );

ALTER TABLE comuna
    ADD CONSTRAINT comuna_empleado_fk FOREIGN KEY ( empleado_id_empleado,
                                                    empleado_cargo_id_cargo )
        REFERENCES empleado ( id_empleado,
                              cargo_id_cargo );

ALTER TABLE empleado
    ADD CONSTRAINT empleado_cargo_fk FOREIGN KEY ( cargo_id_cargo )
        REFERENCES cargo ( id_cargo );

ALTER TABLE empleado
    ADD CONSTRAINT empleado_departamento_fk FOREIGN KEY ( departamento_id_departamento )
        REFERENCES departamento ( id_departamento );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              7
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
