\echo -----------------------MAIL_FILE------------------------
select now();
\timing
delete from MAIL_FILE using MAIL_FILE_GPTMP_TODAY where MAIL_FILE.NO=MAIL_FILE_GPTMP_TODAY.NO ;
insert into MAIL_FILE (NO,SEND_PORT,RECV_PORT,NOTE,PROCESS_MARK,RECV_NAME,RECV_DATE,CA_KEY,HASH_SIGN) select NO,SEND_PORT,RECV_PORT,NOTE,PROCESS_MARK,RECV_NAME,RECV_DATE,CA_KEY,HASH_SIGN from MAIL_FILE_GPTMP_TODAY  where CMD_TYPE='I';
\timing
