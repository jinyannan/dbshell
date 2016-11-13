\echo ------------------EMS_COMPLEX----------------
select now();
\timing
insert into EMS_COMPLEX_GPTMP (CMD_TYPE,GOODS_TYPE, G_TYPE, CODE_TS, CLASSIFY) select CMD_TYPE,GOODS_TYPE, G_TYPE, CODE_TS, CLASSIFY from EMS_COMPLEX_INC_EXT;

delete from EMS_COMPLEX using EMS_COMPLEX_GPTMP where EMS_COMPLEX_GPTMP.GOODS_TYPE=EMS_COMPLEX.GOODS_TYPE AND EMS_COMPLEX_GPTMP.G_TYPE=EMS_COMPLEX.G_TYPE AND EMS_COMPLEX_GPTMP.CODE_TS=EMS_COMPLEX.CODE_TS AND EMS_COMPLEX_GPTMP.CLASSIFY=EMS_COMPLEX.CLASSIFY ;

insert into EMS_COMPLEX(GOODS_TYPE,G_TYPE,CODE_TS,G_NAME,CLASSIFY,INPUT_DATE,LIMIT_TYPE,LIMIT_DESC,NOTE) select GOODS_TYPE,G_TYPE,CODE_TS,G_NAME,CLASSIFY,INPUT_DATE,LIMIT_TYPE,LIMIT_DESC,NOTE from EMS_COMPLEX_INC_EXT where CMD_TYPE='I';

delete from EMS_COMPLEX_GPTMP;

\timing