\echo -----------------------BWS_LIST------------------------
select now();
\timing
delete from BWS_LIST using BWS_LIST_GPTMP_TODAY where BWS_LIST.BWS_NO=BWS_LIST_GPTMP_TODAY.BWS_NO AND BWS_LIST.G_NO=BWS_LIST_GPTMP_TODAY.G_NO ;
insert into BWS_LIST (BWS_NO,G_NO,CODE_TS,CLASS_MARK,G_NAME,G_MODEL,UNIT,UNIT_1,UNIT_2,CURR,COUNTRY_CODE,DUTY_MODE,USE_TYPE,DEC_PRICE,QTY,MAX_QTY,FIRST_QTY,FIRST_AMOUNT,INC_AMOUNT,INC_QTY,CUT_AMOUNT,CUT_QTY,MODIFY_MARK,NOTE) select BWS_NO,G_NO,CODE_TS,CLASS_MARK,G_NAME,G_MODEL,UNIT,UNIT_1,UNIT_2,CURR,COUNTRY_CODE,DUTY_MODE,USE_TYPE,DEC_PRICE,QTY,MAX_QTY,FIRST_QTY,FIRST_AMOUNT,INC_AMOUNT,INC_QTY,CUT_AMOUNT,CUT_QTY,MODIFY_MARK,NOTE from BWS_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing
