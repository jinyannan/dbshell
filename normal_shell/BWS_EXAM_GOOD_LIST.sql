\echo ------------------BWS_EXAM_GOOD_LIST----------------
select now();
\timing
insert into BWS_EXAM_GOOD_LIST_GPTMP (CMD_TYPE,BWS_EXAM_NO, G_NO) select CMD_TYPE,BWS_EXAM_NO, G_NO from BWS_EXAM_GOOD_LIST_INC_EXT;

delete from BWS_EXAM_GOOD_LIST using BWS_EXAM_GOOD_LIST_GPTMP where BWS_EXAM_GOOD_LIST_GPTMP.BWS_EXAM_NO=BWS_EXAM_GOOD_LIST.BWS_EXAM_NO AND BWS_EXAM_GOOD_LIST_GPTMP.G_NO=BWS_EXAM_GOOD_LIST.G_NO ;

insert into BWS_EXAM_GOOD_LIST(BWS_EXAM_NO,G_NO,CERT_NO,CERT_G_NO,G_NAME,QTY,UNIT) select BWS_EXAM_NO,G_NO,CERT_NO,CERT_G_NO,G_NAME,QTY,UNIT from BWS_EXAM_GOOD_LIST_INC_EXT where CMD_TYPE='I';

delete from BWS_EXAM_GOOD_LIST_GPTMP;

\timing
