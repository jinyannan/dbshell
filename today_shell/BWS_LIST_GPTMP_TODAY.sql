\echo ------------------BWS_LIST----------------
select now();
\timing
delete from BWS_LIST_GPTMP;
insert into BWS_LIST_GPTMP (CMD_TYPE,BWS_NO, G_NO) select CMD_TYPE,BWS_NO, G_NO from BWS_LIST_INC_EXT;
delete from BWS_LIST_GPTMP_TODAY using BWS_LIST_GPTMP where BWS_LIST_GPTMP.BWS_NO=BWS_LIST_GPTMP_TODAY.BWS_NO AND BWS_LIST_GPTMP.G_NO=BWS_LIST_GPTMP_TODAY.G_NO ;
insert into BWS_LIST_GPTMP_TODAY (CMD_TYPE,BWS_NO,G_NO,CODE_TS,CLASS_MARK,G_NAME,G_MODEL,UNIT,UNIT_1,UNIT_2,CURR,COUNTRY_CODE,DUTY_MODE,USE_TYPE,DEC_PRICE,QTY,MAX_QTY,FIRST_QTY,FIRST_AMOUNT,INC_AMOUNT,INC_QTY,CUT_AMOUNT,CUT_QTY,MODIFY_MARK,NOTE) select CMD_TYPE,BWS_NO,G_NO,CODE_TS,CLASS_MARK,G_NAME,G_MODEL,UNIT,UNIT_1,UNIT_2,CURR,COUNTRY_CODE,DUTY_MODE,USE_TYPE,DEC_PRICE,QTY,MAX_QTY,FIRST_QTY,FIRST_AMOUNT,INC_AMOUNT,INC_QTY,CUT_AMOUNT,CUT_QTY,MODIFY_MARK,NOTE from BWS_LIST_INC_EXT;
delete from BWS_LIST_GPTMP;
\timing
