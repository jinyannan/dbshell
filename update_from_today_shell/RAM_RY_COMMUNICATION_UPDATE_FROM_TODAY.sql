\echo -----------------------RAM_RY_COMMUNICATION------------------------
select now();
\timing
delete from RAM_RY_COMMUNICATION using RAM_RY_COMMUNICATION_GPTMP_TODAY where RAM_RY_COMMUNICATION.RAM_ID=RAM_RY_COMMUNICATION_GPTMP_TODAY.RAM_ID AND RAM_RY_COMMUNICATION.SEQ_NO=RAM_RY_COMMUNICATION_GPTMP_TODAY.SEQ_NO ;
insert into RAM_RY_COMMUNICATION (RAM_ID,SEQ_NO,SEND_CUSTOMS_CODE,SEND_DATE,SEND_CONTENT,SEND_ER,REC_CUSTOMS_CODE,FEEDBACK_DATE,FEEDBACK_ER,FEEDBACK_CONTENT) select RAM_ID,SEQ_NO,SEND_CUSTOMS_CODE,SEND_DATE,SEND_CONTENT,SEND_ER,REC_CUSTOMS_CODE,FEEDBACK_DATE,FEEDBACK_ER,FEEDBACK_CONTENT from RAM_RY_COMMUNICATION_GPTMP_TODAY  where CMD_TYPE='I';
\timing
