--------------------------------------------------------
--  File created - �������-������-22-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table WORK_STATISTIC
--------------------------------------------------------

  CREATE TABLE "PROJECT"."WORK_STATISTIC" 
   (	"PERSONAL_ID" NUMBER(8,0), 
	"HOURS_WORKED" NUMBER(8,0), 
	"DAYS_WORKED" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C0020965
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."SYS_C0020965" ON "PROJECT"."WORK_STATISTIC" ("PERSONAL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table WORK_STATISTIC
--------------------------------------------------------

  ALTER TABLE "PROJECT"."WORK_STATISTIC" ADD PRIMARY KEY ("PERSONAL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WORK_STATISTIC
--------------------------------------------------------

  ALTER TABLE "PROJECT"."WORK_STATISTIC" ADD FOREIGN KEY ("PERSONAL_ID")
	  REFERENCES "PROJECT"."EMPLOYEES" ("PERSONAL_ID") ENABLE;