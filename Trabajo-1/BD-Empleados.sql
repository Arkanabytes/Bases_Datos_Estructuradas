--tablas

CREATE TABLE cargo 
	    ( 
	     id_cargo      NUMBER (10,3)  NOT NULL , 
	     nom_cargo     VARCHAR2 (50)  NOT NULL , 
	     descrip_cargo VARCHAR2 (200)  NOT NULL 
	    ) 
	;
	
	ALTER TABLE cargo 
	    ADD CONSTRAINT cargo_PK PRIMARY KEY ( id_cargo ) ;
	
	CREATE TABLE COMUNA 
	    ( 
	     cod_com VARCHAR2 (15)  NOT NULL , 
	     nom_com VARCHAR2 (50)  NOT NULL 
	    ) 
	;
	
	ALTER TABLE COMUNA 
	    ADD CONSTRAINT COMUNA_PK PRIMARY KEY ( cod_com ) ;
	
	CREATE TABLE departamento 
	    ( 
	     id_dpto  NUMBER (10,3)  NOT NULL , 
	     nom_dpto VARCHAR2 (50)  NOT NULL 
	    ) 
	;
	
	ALTER TABLE departamento 
	    ADD CONSTRAINT departamento_PK PRIMARY KEY ( id_dpto ) ;
	
	CREATE TABLE EMPLEADO 
	    ( 
	     ID_EMP               NUMBER (10,3)  NOT NULL , 
	     NOM_EMP              VARCHAR2 (50)  NOT NULL , 
	     APE_EMP              VARCHAR2 (50)  NOT NULL , 
	     SUELD_EMP            NUMBER (10,3)  NOT NULL , 
	     FECHACONT_EMP        DATE  NOT NULL , 
	     PORCENT_EMP          FLOAT (5)  NOT NULL , 
	     CALLE_EMP            VARCHAR2 (30)  NOT NULL , 
	     NUMER_EMP            VARCHAR2 (30)  NOT NULL , 
	     departamento_id_dpto NUMBER (10,3)  NOT NULL , 
	     cargo_id_cargo       NUMBER (10,3)  NOT NULL , 
	     COMUNA_cod_com       VARCHAR2 (15)  NOT NULL 
	    ) 
	;
	
	ALTER TABLE EMPLEADO 
	    ADD CONSTRAINT EMPLEADO_PK PRIMARY KEY ( ID_EMP ) ;
	
	ALTER TABLE EMPLEADO 
	    ADD CONSTRAINT EMPLEADO_cargo_FK FOREIGN KEY 
	    ( 
	     cargo_id_cargo
	    ) 
	    REFERENCES cargo 
	    ( 
	     id_cargo
	    ) 
	;
	
	ALTER TABLE EMPLEADO 
	    ADD CONSTRAINT EMPLEADO_COMUNA_FK FOREIGN KEY 
	    ( 
	     COMUNA_cod_com
	    ) 
	    REFERENCES COMUNA 
	    ( 
	     cod_com
	    ) 
	;
	
	ALTER TABLE EMPLEADO 
	    ADD CONSTRAINT EMPLEADO_departamento_FK FOREIGN KEY 
	    ( 
	     departamento_id_dpto
	    ) 
	    REFERENCES departamento 
	    ( 
	     id_dpto
	    ) 
	;
