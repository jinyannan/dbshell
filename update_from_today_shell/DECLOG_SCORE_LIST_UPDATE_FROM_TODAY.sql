\echo -----------------------DECLOG_SCORE_LIST------------------------
select now();
\timing
delete from DECLOG_SCORE_LIST using DECLOG_SCORE_LIST_GPTMP_TODAY where DECLOG_SCORE_LIST.DECL_CO=DECLOG_SCORE_LIST_GPTMP_TODAY.DECL_CO AND DECLOG_SCORE_LIST.FORM_ID=DECLOG_SCORE_LIST_GPTMP_TODAY.FORM_ID AND DECLOG_SCORE_LIST.SCORE_TIME=DECLOG_SCORE_LIST_GPTMP_TODAY.SCORE_TIME AND DECLOG_SCORE_LIST.ITEM_NO=DECLOG_SCORE_LIST_GPTMP_TODAY.ITEM_NO ;
insert into DECLOG_SCORE_LIST (DECL_CO,FORM_ID,SCORE_TIME,ITEM_NO,ERROR_TYPE,SEQ_NO,SCORE_DESC) select DECL_CO,FORM_ID,SCORE_TIME,ITEM_NO,ERROR_TYPE,SEQ_NO,SCORE_DESC from DECLOG_SCORE_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing
