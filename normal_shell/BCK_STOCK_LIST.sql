\echo ------------------BCK_STOCK_LIST----------------
select now();
\timing
insert into BCK_STOCK_LIST_GPTMP (CMD_TYPE,SEQ_NO, LIST_NO) select CMD_TYPE,SEQ_NO, LIST_NO from BCK_STOCK_LIST_INC_EXT;

delete from BCK_STOCK_LIST using BCK_STOCK_LIST_GPTMP where BCK_STOCK_LIST_GPTMP.SEQ_NO=BCK_STOCK_LIST.SEQ_NO AND BCK_STOCK_LIST_GPTMP.LIST_NO=BCK_STOCK_LIST.LIST_NO ;

insert into BCK_STOCK_LIST(SEQ_NO,LIST_NO,TRADE_CODE,COP_INNER_NO,ITEM_NO,CODE_T_S,G_NAME,G_MODEL,UNIT,IMG_STOCK_QTY,IMG_ONLINE_QTY,IMG_IN_QTY,EXG_CONV_QTY,OUT_IMG_QTY,ABAN_QTY,ON_WAY_QTY,T_STOCK_QTY) select SEQ_NO,LIST_NO,TRADE_CODE,COP_INNER_NO,ITEM_NO,CODE_T_S,G_NAME,G_MODEL,UNIT,IMG_STOCK_QTY,IMG_ONLINE_QTY,IMG_IN_QTY,EXG_CONV_QTY,OUT_IMG_QTY,ABAN_QTY,ON_WAY_QTY,T_STOCK_QTY from BCK_STOCK_LIST_INC_EXT where CMD_TYPE='I';

delete from BCK_STOCK_LIST_GPTMP;

\timing