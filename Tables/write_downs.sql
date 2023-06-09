--------------------------------------------------------
--  File created - �������-������-22-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table WRITE_DOWNS
--------------------------------------------------------

  CREATE TABLE "PROJECT"."WRITE_DOWNS" 
   (	"WRITE_DOWN_ID" NUMBER(6,0), 
	"INCOMING_ID" NUMBER(8,0), 
	"EXPENSE_ID" NUMBER(8,0), 
	"REASON_ID" NUMBER(4,0), 
	"GOODS_ID" NUMBER(8,0), 
	"AMOUNT" NUMBER(6,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C0020135
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."SYS_C0020135" ON "PROJECT"."WRITE_DOWNS" ("WRITE_DOWN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table WRITE_DOWNS
--------------------------------------------------------

  ALTER TABLE "PROJECT"."WRITE_DOWNS" ADD PRIMARY KEY ("WRITE_DOWN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WRITE_DOWNS
--------------------------------------------------------

  ALTER TABLE "PROJECT"."WRITE_DOWNS" ADD CONSTRAINT "WRITE_DOWNS_FK1" FOREIGN KEY ("GOODS_ID")
	  REFERENCES "PROJECT"."GOODS_OUTLET" ("GOODS_ID") ENABLE;
  ALTER TABLE "PROJECT"."WRITE_DOWNS" ADD FOREIGN KEY ("INCOMING_ID")
	  REFERENCES "PROJECT"."INCOMING_OPERATION" ("INCOMING_ID") ENABLE;
  ALTER TABLE "PROJECT"."WRITE_DOWNS" ADD FOREIGN KEY ("EXPENSE_ID")
	  REFERENCES "PROJECT"."EXPENSE_OPERATION" ("EXPENSE_ID") ENABLE;
  ALTER TABLE "PROJECT"."WRITE_DOWNS" ADD FOREIGN KEY ("REASON_ID")
	  REFERENCES "PROJECT"."REASONS" ("REASON_ID") ENABLE;
