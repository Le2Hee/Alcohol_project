--------------------------------------------------------
--  파일이 생성됨 - 화요일-6월-20-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "SCOTT"."ORDERS" 
   (	"PAYMENTID" NUMBER, 
	"PRODUCTID" NUMBER, 
	"QUANTITY" NUMBER, 
	"PRICE" NUMBER, 
	"USERNICKNAME" VARCHAR2(20 BYTE), 
	"BASKETID" NUMBER, 
	"STATUS" NUMBER DEFAULT 0, 
	"PAYDATE" TIMESTAMP (6) DEFAULT systimestamp, 
	"TOTALAMOUNT" NUMBER(12,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "SCOTT"."ORDERS"."STATUS" IS '배송상태';
--------------------------------------------------------
--  DDL for Trigger TRIGGER1
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."TRIGGER1" 
BEFORE INSERT OR UPDATE OF price, quantity ON ORDERS
FOR EACH ROW
BEGIN
  :NEW.totalamount := :NEW.price * :NEW.quantity;
END;
/
ALTER TRIGGER "SCOTT"."TRIGGER1" ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "SCOTT"."ORDERS" MODIFY ("PAYMENTID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."ORDERS" MODIFY ("PRODUCTID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."ORDERS" MODIFY ("QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."ORDERS" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."ORDERS" MODIFY ("USERNICKNAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."ORDERS" MODIFY ("BASKETID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."ORDERS" MODIFY ("STATUS" NOT NULL ENABLE);