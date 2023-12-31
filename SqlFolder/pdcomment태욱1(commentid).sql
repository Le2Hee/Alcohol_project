--------------------------------------------------------
--  파일이 생성됨 - 화요일-6월-20-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PDCOMMENT
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PDCOMMENT" 
   (	"COMMENTID" NUMBER(8,0), 
	"PID" NUMBER(10,0), 
	"PNAME" VARCHAR2(40 BYTE), 
	"NICKNAME" VARCHAR2(20 BYTE), 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"TIME" DATE DEFAULT systimestamp
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."TABLE1_PK" ON "SCOTT"."PDCOMMENT" ("COMMENTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger PDCOMMENT_TRG2
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."PDCOMMENT_TRG2" 
BEFORE INSERT ON PDCOMMENT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."PDCOMMENT_TRG2" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PDCOMMENT_TRG3
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."PDCOMMENT_TRG3" 
BEFORE INSERT ON PDCOMMENT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.PID IS NULL THEN
      SELECT PDCOMMENT_SEQ3.NEXTVAL INTO :NEW.PID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."PDCOMMENT_TRG3" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PDCOMMENT_TRG1
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."PDCOMMENT_TRG1" 
BEFORE INSERT ON PDCOMMENT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."PDCOMMENT_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PDCOMMENT_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."PDCOMMENT_TRG" 
BEFORE INSERT ON PDCOMMENT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."PDCOMMENT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PDCOMMENT_TRG4
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."PDCOMMENT_TRG4" 
BEFORE INSERT ON PDCOMMENT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.COMMENTID IS NULL THEN
      SELECT PDCOMMENT_SEQ4.NEXTVAL INTO :NEW.COMMENTID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."PDCOMMENT_TRG4" ENABLE;
--------------------------------------------------------
--  Constraints for Table PDCOMMENT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PDCOMMENT" MODIFY ("COMMENTID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."PDCOMMENT" MODIFY ("PID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."PDCOMMENT" MODIFY ("PNAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."PDCOMMENT" MODIFY ("NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."PDCOMMENT" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."PDCOMMENT" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("COMMENTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PDCOMMENT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PDCOMMENT" ADD CONSTRAINT "PDCOMMENT_PID_FK" FOREIGN KEY ("PID")
	  REFERENCES "SCOTT"."PRODUCTS" ("PID") ENABLE;
