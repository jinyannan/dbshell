\echo ------------------DCG_BAK_LIST----------------
select now();
\timing
insert into DCG_BAK_LIST_GPTMP (CMD_TYPE,DCG_NO) select CMD_TYPE,DCG_NO from DCG_BAK_LIST_INC_EXT;

delete from DCG_BAK_LIST using DCG_BAK_LIST_GPTMP where DCG_BAK_LIST_GPTMP.DCG_NO=DCG_BAK_LIST.DCG_NO ;

insert into DCG_BAK_LIST(DCG_NO,CREATE_DATE) select DCG_NO,CREATE_DATE from DCG_BAK_LIST_INC_EXT where CMD_TYPE='I';

delete from DCG_BAK_LIST_GPTMP;

\timing
