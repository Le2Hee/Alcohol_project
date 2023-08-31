--------------------------------------------------------
--  파일이 생성됨 - 화요일-6월-20-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BULLETINBOARD
--------------------------------------------------------

  CREATE TABLE "SCOTT"."BULLETINBOARD" 
   (	"BOARD_ID" NUMBER(8,0), 
	"TITLE" VARCHAR2(1000 CHAR), 
	"NICKNAME" VARCHAR2(100 CHAR), 
	"USER_ID" VARCHAR2(100 CHAR), 
	"TIME" DATE DEFAULT systimestamp, 
	"VIEWS" NUMBER(8,0) DEFAULT 0, 
	"RECOMMEND" NUMBER(8,0) DEFAULT 0, 
	"CONTENT" VARCHAR2(3000 CHAR), 
	"CATEGORY" NUMBER(1,0) DEFAULT 1, 
	"IMAGE" VARCHAR2(1000 CHAR) DEFAULT 'C:\workspace\lab-midproject\middlePj\alcohol\src\main\webapp\static\images\DefaultImage.png'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BULLETINBOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."BULLETINBOARD_PK" ON "SCOTT"."BULLETINBOARD" ("BOARD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger BULLETINBOARD_TRG1
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."BULLETINBOARD_TRG1" 
BEFORE INSERT ON BULLETINBOARD 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."BULLETINBOARD_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BULLETINBOARD_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."BULLETINBOARD_TRG" 
BEFORE INSERT ON BULLETINBOARD 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."BULLETINBOARD_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BULLETINBOARD_TRG2
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."BULLETINBOARD_TRG2" 
BEFORE INSERT ON BULLETINBOARD 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."BULLETINBOARD_TRG2" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BULLETINBOARD_TRG3
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."BULLETINBOARD_TRG3" 
BEFORE INSERT ON BULLETINBOARD 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."BULLETINBOARD_TRG3" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BULLETINBOARD_TRG4
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."BULLETINBOARD_TRG4" 
BEFORE INSERT ON BULLETINBOARD 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.BOARD_ID IS NULL THEN
      SELECT BULLETINBOARD_SEQ4.NEXTVAL INTO :NEW.BOARD_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."BULLETINBOARD_TRG4" ENABLE;
--------------------------------------------------------
--  Constraints for Table BULLETINBOARD
--------------------------------------------------------

  ALTER TABLE "SCOTT"."BULLETINBOARD" MODIFY ("NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BULLETINBOARD" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BULLETINBOARD" MODIFY ("BOARD_ID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BULLETINBOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BULLETINBOARD" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BULLETINBOARD" ADD CONSTRAINT "BULLETINBOARD_PK" PRIMARY KEY ("BOARD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
