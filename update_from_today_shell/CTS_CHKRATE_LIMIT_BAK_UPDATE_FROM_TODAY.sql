\echo -----------------------CTS_CHKRATE_LIMIT_BAK------------------------
select now();
\timing
delete from CTS_CHKRATE_LIMIT_BAK using CTS_CHKRATE_LIMIT_BAK_GPTMP_TODAY where CTS_CHKRATE_LIMIT_BAK.ID=CTS_CHKRATE_LIMIT_BAK_GPTMP_TODAY.ID AND CTS_CHKRATE_LIMIT_BAK.OP_BAK_TIME=CTS_CHKRATE_LIMIT_BAK_GPTMP_TODAY.OP_BAK_TIME ;
insert into CTS_CHKRATE_LIMIT_BAK (ID,CUSTOMS_CODE,I_E_FLAG,MAX_CHK_RATE,MAX_OPEN_RATE,QUICK_CHK_RATE,QUICKUNI_CHK_RATE,UNI_CHK_RATE,UNI_NOCHK_RATE,RANDOM_RECHK_RATE,OP_BAK_TYPE,OP_BAK_CUSTOMS,OP_BAK_MAN,OP_BAK_TIME,RANDOM_FOCUS_CHK_RATE) select ID,CUSTOMS_CODE,I_E_FLAG,MAX_CHK_RATE,MAX_OPEN_RATE,QUICK_CHK_RATE,QUICKUNI_CHK_RATE,UNI_CHK_RATE,UNI_NOCHK_RATE,RANDOM_RECHK_RATE,OP_BAK_TYPE,OP_BAK_CUSTOMS,OP_BAK_MAN,OP_BAK_TIME,RANDOM_FOCUS_CHK_RATE from CTS_CHKRATE_LIMIT_BAK_GPTMP_TODAY  where CMD_TYPE='I';
\timing
