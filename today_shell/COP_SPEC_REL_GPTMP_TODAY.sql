\echo ------------------COP_SPEC_REL----------------
select now();
\timing
delete from COP_SPEC_REL_GPTMP;
insert into COP_SPEC_REL_GPTMP (CMD_TYPE,ENTRY_ID, AUTH_ID) select CMD_TYPE,ENTRY_ID, AUTH_ID from COP_SPEC_REL_INC_EXT;
delete from COP_SPEC_REL_GPTMP_TODAY using COP_SPEC_REL_GPTMP where COP_SPEC_REL_GPTMP.ENTRY_ID=COP_SPEC_REL_GPTMP_TODAY.ENTRY_ID AND COP_SPEC_REL_GPTMP.AUTH_ID=COP_SPEC_REL_GPTMP_TODAY.AUTH_ID ;
insert into COP_SPEC_REL_GPTMP_TODAY (CMD_TYPE,ENTRY_ID,STEP_STATUS,PASS_CODE,AUTH_ID,AUTH_DATETIME,AUTH_PORT,AUTH_NOTE,PASS_ID,PASS_DATETIME,PASS_PORT) select CMD_TYPE,ENTRY_ID,STEP_STATUS,PASS_CODE,AUTH_ID,AUTH_DATETIME,AUTH_PORT,AUTH_NOTE,PASS_ID,PASS_DATETIME,PASS_PORT from COP_SPEC_REL_INC_EXT;
delete from COP_SPEC_REL_GPTMP;
\timing
