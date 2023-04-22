--------------------------------------------------------
--  File created - �������-������-22-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACCEPTED_GOODS
--------------------------------------------------------

  CREATE TABLE "PROJECT"."ACCEPTED_GOODS" 
   (	"ACCEPTED_ID" NUMBER(6,0), 
	"BATCH_ID" NUMBER(15,0), 
	"MISMATCH_ID" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C0020114
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."SYS_C0020114" ON "PROJECT"."ACCEPTED_GOODS" ("ACCEPTED_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table ACCEPTED_GOODS
--------------------------------------------------------

  ALTER TABLE "PROJECT"."ACCEPTED_GOODS" ADD PRIMARY KEY ("ACCEPTED_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ACCEPTED_GOODS
--------------------------------------------------------

  ALTER TABLE "PROJECT"."ACCEPTED_GOODS" ADD FOREIGN KEY ("BATCH_ID")
	  REFERENCES "PROJECT"."BATCHES" ("BATCH_ID") ENABLE;
  ALTER TABLE "PROJECT"."ACCEPTED_GOODS" ADD FOREIGN KEY ("MISMATCH_ID")
	  REFERENCES "PROJECT"."MISMATCHES" ("MISMATCH_ID") ENABLE;