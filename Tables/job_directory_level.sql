--------------------------------------------------------
--  File created - �������-������-22-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table JOB_DIRECTORY_LEVEL
--------------------------------------------------------

  CREATE TABLE "PROJECT"."JOB_DIRECTORY_LEVEL" 
   (	"JOB_DIRECTORY_ID" NUMBER(8,0), 
	"LEVEL_ID" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C0021152
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."SYS_C0021152" ON "PROJECT"."JOB_DIRECTORY_LEVEL" ("JOB_DIRECTORY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table JOB_DIRECTORY_LEVEL
--------------------------------------------------------

  ALTER TABLE "PROJECT"."JOB_DIRECTORY_LEVEL" ADD PRIMARY KEY ("JOB_DIRECTORY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JOB_DIRECTORY_LEVEL
--------------------------------------------------------

  ALTER TABLE "PROJECT"."JOB_DIRECTORY_LEVEL" ADD FOREIGN KEY ("JOB_DIRECTORY_ID")
	  REFERENCES "PROJECT"."JOB_DIRECTORY" ("JOB_DIRECTORY_ID") ENABLE;