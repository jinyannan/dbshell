\echo -----------------------BAK_FASCICLE_HEAD------------------------
select now();
\timing
delete from BAK_FASCICLE_HEAD using BAK_FASCICLE_HEAD_GPTMP_TODAY where BAK_FASCICLE_HEAD.FASCICLE_NO=BAK_FASCICLE_HEAD_GPTMP_TODAY.FASCICLE_NO ;
insert into BAK_FASCICLE_HEAD (MANUAL_NO,FASCICLE_NO,PRE_FASCICLE_NO,I_E_PORT,TYPE_ER,TYPE_DATE,LIMIT_DATE,TRADE_CO,CHK_ER,RECHK_ER,PR_DATE,FASCICLE_TYPE,EXE_MARK,CONTR_IN,CONTR_OUT,IN_PNT,EX_PNT,SUPV_MARK,NOTE_S) select MANUAL_NO,FASCICLE_NO,PRE_FASCICLE_NO,I_E_PORT,TYPE_ER,TYPE_DATE,LIMIT_DATE,TRADE_CO,CHK_ER,RECHK_ER,PR_DATE,FASCICLE_TYPE,EXE_MARK,CONTR_IN,CONTR_OUT,IN_PNT,EX_PNT,SUPV_MARK,NOTE_S from BAK_FASCICLE_HEAD_GPTMP_TODAY  where CMD_TYPE='I';
\timing
