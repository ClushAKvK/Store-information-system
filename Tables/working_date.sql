--------------------------------------------------------
--  File created - �������-������-22-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table WORKING_DATE
--------------------------------------------------------

  CREATE TABLE "PROJECT"."WORKING_DATE" 
   (	"PERSONAL_ID" NUMBER(8,0), 
	"WORKING_TIME" NUMBER(8,0), 
	"WORKING_DAY" DATE, 
	"START_OF_WORK" TIMESTAMP (6), 
	"END_OF_WORK" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C0020967
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."SYS_C0020967" ON "PROJECT"."WORKING_DATE" ("PERSONAL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table WORKING_DATE
--------------------------------------------------------

  ALTER TABLE "PROJECT"."WORKING_DATE" ADD PRIMARY KEY ("PERSONAL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WORKING_DATE
--------------------------------------------------------

  ALTER TABLE "PROJECT"."WORKING_DATE" ADD FOREIGN KEY ("PERSONAL_ID")
	  REFERENCES "PROJECT"."EMPLOYEES" ("PERSONAL_ID") ENABLE;