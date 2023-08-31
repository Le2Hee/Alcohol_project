--------------------------------------------------------
--  파일이 생성됨 - 화요일-6월-20-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AUCTIONPRODUCTS
--------------------------------------------------------

  CREATE TABLE "SCOTT"."AUCTIONPRODUCTS" 
   (	"PRODUCTID" NUMBER(8,0), 
	"PNAME" VARCHAR2(100 CHAR), 
	"CATEGORY" NUMBER(10,0), 
	"CONSTRUCTOR" VARCHAR2(100 CHAR), 
	"BRANDNAME" VARCHAR2(100 CHAR) DEFAULT NULL, 
	"COST" NUMBER(20,0) DEFAULT 0, 
	"USERID" VARCHAR2(15 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ACP_PID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."ACP_PID_PK" ON "SCOTT"."AUCTIONPRODUCTS" ("PRODUCTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger AUCTIONPRODUCTS_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."AUCTIONPRODUCTS_TRG" 
BEFORE INSERT ON AUCTIONPRODUCTS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "SCOTT"."AUCTIONPRODUCTS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger AUCTIONPRODUCTS_TRG2
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."AUCTIONPRODUCTS_TRG2" 
BEFORE INSERT ON AUCTIONPRODUCTS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."AUCTIONPRODUCTS_TRG2" ENABLE;
--------------------------------------------------------
--  DDL for Trigger AUCTIONPRODUCTS_TRG1
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SCOTT"."AUCTIONPRODUCTS_TRG1" 
BEFORE INSERT ON AUCTIONPRODUCTS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.PRODUCTID IS NULL THEN
      SELECT AUCTIONPRODUCTS_SEQ.NEXTVAL INTO :NEW.PRODUCTID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SCOTT"."AUCTIONPRODUCTS_TRG1" ENABLE;
--------------------------------------------------------
--  Constraints for Table AUCTIONPRODUCTS
--------------------------------------------------------

  ALTER TABLE "SCOTT"."AUCTIONPRODUCTS" MODIFY ("PNAME" CONSTRAINT "ACP_PNAME_NN" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."AUCTIONPRODUCTS" MODIFY ("CATEGORY" CONSTRAINT "ACP_CG_NN" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."AUCTIONPRODUCTS" MODIFY ("CONSTRUCTOR" CONSTRAINT "ACP_CT_NN" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."AUCTIONPRODUCTS" ADD CONSTRAINT "ACP_PID_PK" PRIMARY KEY ("PRODUCTID")
  USING INDEX "SCOTT"."ACP_PID_PK"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AUCTIONPRODUCTS
--------------------------------------------------------

  ALTER TABLE "SCOTT"."AUCTIONPRODUCTS" ADD CONSTRAINT "AUP_CTGR_FK" FOREIGN KEY ("CATEGORY")
	  REFERENCES "SCOTT"."CATEGORY" ("CATEGORYID") ENABLE;
