--------------------------------------------------------
--  파일이 생성됨 - 화요일-6월-20-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PAYMENT
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PAYMENT" 
   (	"ORDER_ID" VARCHAR2(50 BYTE), 
	"ORDER_PHONE" VARCHAR2(20 BYTE), 
	"ORDER_EMAIL" VARCHAR2(50 BYTE), 
	"ORDER_ADRESS" VARCHAR2(100 BYTE), 
	"PRODUCT_PRICE" NUMBER(10,0), 
	"TOTAL_PRICE" NUMBER(10,0), 
	"PRODUCT_NAME" VARCHAR2(100 BYTE), 
	"PRODUCT_QUANTITY" NUMBER(3,0), 
	"PRODUCT_INFO" VARCHAR2(100 BYTE), 
	"DERIVERY_FEE" NUMBER(10,0), 
	"CARD_NUMBER" VARCHAR2(50 BYTE), 
	"ORDER_NAME" VARCHAR2(20 BYTE), 
	"SELLER_NAME" VARCHAR2(50 BYTE), 
	"ORDERDATE_TIME" TIMESTAMP (6) DEFAULT systimestamp
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PAYMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."PAYMENT_PK" ON "SCOTT"."PAYMENT" ("ORDER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger PAYMENT_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."PAYMENT_TRG" 
BEFORE INSERT ON PAYMENT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."PAYMENT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PAYMENT_TRG1
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."PAYMENT_TRG1" 
BEFORE INSERT ON PAYMENT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."PAYMENT_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PAYMENT_TRG2
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."PAYMENT_TRG2" 
BEFORE INSERT ON PAYMENT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."PAYMENT_TRG2" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PAYMENT_TRG3
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."PAYMENT_TRG3" 
BEFORE INSERT ON PAYMENT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."PAYMENT_TRG3" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PAYMENT_TRG4
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."PAYMENT_TRG4" 
BEFORE INSERT ON PAYMENT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ORDER_ID IS NULL THEN
      SELECT PAYMENT_SEQ3.NEXTVAL INTO :NEW.ORDER_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."PAYMENT_TRG4" ENABLE;
--------------------------------------------------------
--  Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PAYMENT" MODIFY ("ORDER_ID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."PAYMENT" MODIFY ("ORDER_PHONE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."PAYMENT" MODIFY ("ORDER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."PAYMENT" MODIFY ("ORDER_ADRESS" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."PAYMENT" MODIFY ("ORDERDATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."PAYMENT" ADD CONSTRAINT "PAYMENT_PK" PRIMARY KEY ("ORDER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SCOTT"."PAYMENT" MODIFY ("ORDER_NAME" NOT NULL ENABLE);
