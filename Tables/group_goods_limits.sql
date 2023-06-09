--------------------------------------------------------
--  File created - �������-������-22-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GROUP_GOODS_LIMITS
--------------------------------------------------------

  CREATE TABLE "PROJECT"."GROUP_GOODS_LIMITS" 
   (	"GROUP_ID" NUMBER(10,0), 
	"MARGIN_LIMIT" NUMBER(5,0), 
	"CHANGE_LIMIT" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GROUP_GOODS_LIMITS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."GROUP_GOODS_LIMITS_PK" ON "PROJECT"."GROUP_GOODS_LIMITS" ("GROUP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table GROUP_GOODS_LIMITS
--------------------------------------------------------

  ALTER TABLE "PROJECT"."GROUP_GOODS_LIMITS" MODIFY ("GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "PROJECT"."GROUP_GOODS_LIMITS" ADD CONSTRAINT "GROUP_GOODS_LIMITS_PK" PRIMARY KEY ("GROUP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GROUP_GOODS_LIMITS
--------------------------------------------------------

  ALTER TABLE "PROJECT"."GROUP_GOODS_LIMITS" ADD FOREIGN KEY ("GROUP_ID")
	  REFERENCES "PROJECT"."GROUPS_OF_GOODS" ("GROUP_ID") ENABLE;
