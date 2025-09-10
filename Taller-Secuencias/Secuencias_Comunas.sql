
—-Comunas

-—1. Cree una secuencia para ingresar comunas

CREATE SEQUENCE comuna_seq
START WITH 10
INCREMENT by 1
MAXVALUE 20
NOCACHE
NOCYCLE


—-2.  Insertar al menos tres comunas del área metropolitana

INSERT INTO COMUNA(COD_COM, NOM_COM)
VALUES(COMUNA_SEQ.nextval,'SAN FRANCISCO DE MOSTAZAL');

INSERT INTO COMUNA(COD_COM, NOM_COM)
VALUES(COMUNA_SEQ.nextval,'GRANEROS');

INSERT INTO COMUNA(COD_COM, NOM_COM)
VALUES(COMUNA_SEQ.nextval,'RANCAGUA');


-—3.Mostrar último número de la secuencia.

SELECT comuna_seq. nextval
FROM DUAL;
