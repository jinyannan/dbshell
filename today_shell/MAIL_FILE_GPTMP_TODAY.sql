\echo ------------------MAIL_FILE----------------
select now();
\timing
delete from MAIL_FILE_GPTMP;
insert into MAIL_FILE_GPTMP (CMD_TYPE,NO) select CMD_TYPE,NO from MAIL_FILE_INC_EXT;
delete from MAIL_FILE_GPTMP_TODAY using MAIL_FILE_GPTMP where MAIL_FILE_GPTMP.NO=MAIL_FILE_GPTMP_TODAY.NO ;
insert into MAIL_FILE_GPTMP_TODAY (CMD_TYPE,NO,SEND_PORT,RECV_PORT,NOTE,PROCESS_MARK,RECV_NAME,RECV_DATE,CA_KEY,HASH_SIGN) select CMD_TYPE,NO,SEND_PORT,RECV_PORT,NOTE,PROCESS_MARK,RECV_NAME,RECV_DATE,CA_KEY,HASH_SIGN from MAIL_FILE_INC_EXT;
delete from MAIL_FILE_GPTMP;
\timing
