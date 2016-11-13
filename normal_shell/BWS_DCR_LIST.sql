\echo ------------------BWS_DCR_LIST----------------
select now();
\timing
insert into BWS_DCR_LIST_GPTMP (CMD_TYPE,BWS_NO, DCR_TIMES, G_NO) select CMD_TYPE,BWS_NO, DCR_TIMES, G_NO from BWS_DCR_LIST_INC_EXT;

delete from BWS_DCR_LIST using BWS_DCR_LIST_GPTMP where BWS_DCR_LIST_GPTMP.BWS_NO=BWS_DCR_LIST.BWS_NO AND BWS_DCR_LIST_GPTMP.DCR_TIMES=BWS_DCR_LIST.DCR_TIMES AND BWS_DCR_LIST_GPTMP.G_NO=BWS_DCR_LIST.G_NO ;

insert into BWS_DCR_LIST(BWS_NO,DCR_TIMES,G_NO,COP_G_NO,CODE_TS,G_NAME,G_MODEL,REMAIN_QTY,FACT_REMAIN_QTY,UNIT,REMAIN_AMOUNT,FACT_REMAIN_AMOUNT,CURR,NOTE,QTY,AMOUNT,H_REMAIN_QTY,H_REMAIN_AMOUNT) select BWS_NO,DCR_TIMES,G_NO,COP_G_NO,CODE_TS,G_NAME,G_MODEL,REMAIN_QTY,FACT_REMAIN_QTY,UNIT,REMAIN_AMOUNT,FACT_REMAIN_AMOUNT,CURR,NOTE,QTY,AMOUNT,H_REMAIN_QTY,H_REMAIN_AMOUNT from BWS_DCR_LIST_INC_EXT where CMD_TYPE='I';

delete from BWS_DCR_LIST_GPTMP;

\timing
