\echo ------------------CIC_MAXID----------------
select now();
\timing
insert into CIC_MAXID_GPTMP (CMD_TYPE,CUS_ID) select CMD_TYPE,CUS_ID from CIC_MAXID_INC_EXT;

delete from CIC_MAXID using CIC_MAXID_GPTMP where CIC_MAXID_GPTMP.CUS_ID=CIC_MAXID.CUS_ID ;

insert into CIC_MAXID(CUS_ID,MAX_ID,IPT_TIME,IPT_ER) select CUS_ID,MAX_ID,IPT_TIME,IPT_ER from CIC_MAXID_INC_EXT where CMD_TYPE='I';

delete from CIC_MAXID_GPTMP;

\timing
