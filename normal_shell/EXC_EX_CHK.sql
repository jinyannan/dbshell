\echo ------------------EXC_EX_CHK----------------
select now();
\timing
insert into EXC_EX_CHK_GPTMP (CMD_TYPE,HXD_NO) select CMD_TYPE,HXD_NO from EXC_EX_CHK_INC_EXT;

delete from EXC_EX_CHK using EXC_EX_CHK_GPTMP where EXC_EX_CHK_GPTMP.HXD_NO=EXC_EX_CHK.HXD_NO ;

insert into EXC_EX_CHK(HXD_NO,ENTRY_ID,TRADE_CO,AUTO_CHKFLAG,CHK_DATE,TRADE_TOTAL,RECV_AMT,MAT_AMT,HX_STATE,DIFF_RSNCODE1,DIFF_AMT1,DIFF_RSNCODE2,DIFF_AMT2,DIFF_RSNCODE3,DIFF_AMT3,DIFF_RSNCODE4,DIFF_AMT4,DIFF_RSNCODE5,DIFF_AMT5,DIFF_RSNCODE6,DIFF_AMT6,TRADE_CURR) select HXD_NO,ENTRY_ID,TRADE_CO,AUTO_CHKFLAG,CHK_DATE,TRADE_TOTAL,RECV_AMT,MAT_AMT,HX_STATE,DIFF_RSNCODE1,DIFF_AMT1,DIFF_RSNCODE2,DIFF_AMT2,DIFF_RSNCODE3,DIFF_AMT3,DIFF_RSNCODE4,DIFF_AMT4,DIFF_RSNCODE5,DIFF_AMT5,DIFF_RSNCODE6,DIFF_AMT6,TRADE_CURR from EXC_EX_CHK_INC_EXT where CMD_TYPE='I';

delete from EXC_EX_CHK_GPTMP;

\timing
