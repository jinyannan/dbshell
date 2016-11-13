\echo -----------------------TRN_CHK_GOODS------------------------
select now();
\timing
delete from TRN_CHK_GOODS using TRN_CHK_GOODS_GPTMP_TODAY where TRN_CHK_GOODS.CHK_CODE_TS=TRN_CHK_GOODS_GPTMP_TODAY.CHK_CODE_TS ;
insert into TRN_CHK_GOODS (CHK_CODE_TS,CHK_G_NAME,USE_1,USE_2,USE_3) select CHK_CODE_TS,CHK_G_NAME,USE_1,USE_2,USE_3 from TRN_CHK_GOODS_GPTMP_TODAY  where CMD_TYPE='I';
\timing
