\echo -----------------------CCTS_RSK_RESULT------------------------
select now();
\timing
delete from CCTS_RSK_RESULT using CCTS_RSK_RESULT_GPTMP_TODAY where CCTS_RSK_RESULT.CCTS_CODE=CCTS_RSK_RESULT_GPTMP_TODAY.CCTS_CODE AND CCTS_RSK_RESULT.CUSTOMS_CODE=CCTS_RSK_RESULT_GPTMP_TODAY.CUSTOMS_CODE ;
insert into CCTS_RSK_RESULT (CCTS_CODE,CUSTOMS_CODE,RSK_TYPE,RSK_LEVEL,RSK_COMMENT,INPUT_ID,OP_TIME) select CCTS_CODE,CUSTOMS_CODE,RSK_TYPE,RSK_LEVEL,RSK_COMMENT,INPUT_ID,OP_TIME from CCTS_RSK_RESULT_GPTMP_TODAY  where CMD_TYPE='I';
\timing