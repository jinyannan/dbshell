\echo -----------------------TEP_STATUS_QUERY------------------------
select now();
\timing
delete from TEP_STATUS_QUERY using TEP_STATUS_QUERY_GPTMP_TODAY where TEP_STATUS_QUERY.TRANS_NO=TEP_STATUS_QUERY_GPTMP_TODAY.TRANS_NO AND TEP_STATUS_QUERY.SENDER_ID=TEP_STATUS_QUERY_GPTMP_TODAY.SENDER_ID AND TEP_STATUS_QUERY.DEAL_TIME=TEP_STATUS_QUERY_GPTMP_TODAY.DEAL_TIME ;
insert into TEP_STATUS_QUERY (TRANS_NO,SENDER_ID,DEAL_TIME,TRANS_STATUS,SENDT_FLAG,RESERVE) select TRANS_NO,SENDER_ID,DEAL_TIME,TRANS_STATUS,SENDT_FLAG,RESERVE from TEP_STATUS_QUERY_GPTMP_TODAY  where CMD_TYPE='I';
\timing
