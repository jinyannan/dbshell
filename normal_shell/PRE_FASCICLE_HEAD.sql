\echo ------------------PRE_FASCICLE_HEAD----------------
select now();
\timing
insert into PRE_FASCICLE_HEAD_GPTMP (CMD_TYPE,FASCICLE_NO) select CMD_TYPE,FASCICLE_NO from PRE_FASCICLE_HEAD_INC_EXT;

delete from PRE_FASCICLE_HEAD using PRE_FASCICLE_HEAD_GPTMP where PRE_FASCICLE_HEAD_GPTMP.FASCICLE_NO=PRE_FASCICLE_HEAD.FASCICLE_NO ;

insert into PRE_FASCICLE_HEAD(MANUAL_NO,FASCICLE_NO,PRE_FASCICLE_NO,I_E_PORT,TYPE_ER,TYPE_DATE,LIMIT_DATE,TRADE_CO,CHK_ER,RECHK_ER,PR_DATE,FASCICLE_TYPE,EXE_MARK,CONTR_IN,CONTR_OUT,IN_PNT,EX_PNT,SUPV_MARK,NOTE_S) select MANUAL_NO,FASCICLE_NO,PRE_FASCICLE_NO,I_E_PORT,TYPE_ER,TYPE_DATE,LIMIT_DATE,TRADE_CO,CHK_ER,RECHK_ER,PR_DATE,FASCICLE_TYPE,EXE_MARK,CONTR_IN,CONTR_OUT,IN_PNT,EX_PNT,SUPV_MARK,NOTE_S from PRE_FASCICLE_HEAD_INC_EXT where CMD_TYPE='I';

delete from PRE_FASCICLE_HEAD_GPTMP;

\timing
