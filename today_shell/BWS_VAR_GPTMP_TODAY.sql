\echo ------------------BWS_VAR----------------
select now();
\timing
delete from BWS_VAR_GPTMP;
insert into BWS_VAR_GPTMP (CMD_TYPE,VAR_TYPE, VAR_ID, VAR_SUB_ID, CUSTOMS_CODE) select CMD_TYPE,VAR_TYPE, VAR_ID, VAR_SUB_ID, CUSTOMS_CODE from BWS_VAR_INC_EXT;
delete from BWS_VAR_GPTMP_TODAY using BWS_VAR_GPTMP where BWS_VAR_GPTMP.VAR_TYPE=BWS_VAR_GPTMP_TODAY.VAR_TYPE AND BWS_VAR_GPTMP.VAR_ID=BWS_VAR_GPTMP_TODAY.VAR_ID AND BWS_VAR_GPTMP.VAR_SUB_ID=BWS_VAR_GPTMP_TODAY.VAR_SUB_ID AND BWS_VAR_GPTMP.CUSTOMS_CODE=BWS_VAR_GPTMP_TODAY.CUSTOMS_CODE ;
insert into BWS_VAR_GPTMP_TODAY (CMD_TYPE,VAR_TYPE,VAR_ID,VAR_SUB_ID,CUSTOMS_CODE,VAR_VALUE,VAR_VALUE1,VAR_VALUE2,VAR_VALUE3,VAR_DESC,MODIFY_TIME,VAR_ENABLED) select CMD_TYPE,VAR_TYPE,VAR_ID,VAR_SUB_ID,CUSTOMS_CODE,VAR_VALUE,VAR_VALUE1,VAR_VALUE2,VAR_VALUE3,VAR_DESC,MODIFY_TIME,VAR_ENABLED from BWS_VAR_INC_EXT;
delete from BWS_VAR_GPTMP;
\timing
