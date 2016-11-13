\timing

select now(); 

\echo --------------ACCOUNT------------
drop external table IF EXISTS ACCOUNT_INC_EXT;

create external table ACCOUNT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO         VARCHAR(12)  ,
  ID_STAT           VARCHAR(2)  ,
  CONTR_NO          VARCHAR(32),
  OWNER_NAME        VARCHAR(255),
  LIMIT_DATE        TIMESTAMP,
  ACCOUNT_AMT_RMB   NUMERIC(19,5),
  ACCOUNT_AMT       NUMERIC(19,5),
  ACCOUNT_AMT_ORG   NUMERIC(19,5),
  ACCOUNT_CURR      VARCHAR(3),
  IM_AMT            NUMERIC(19,5),
  TAX_AMT           NUMERIC(19,5),
  DEFER_TAX_AMT     NUMERIC(19,5),
  DEAL_MARK         VARCHAR(1),
  TYPE_ER           VARCHAR(8),
  TYPE_DATE         TIMESTAMP,
  BANK_NOTE_NO      VARCHAR(32),
  BANK_OPEN_DATE    TIMESTAMP,
  BANK_NOTE_DATE    TIMESTAMP,
  APPR_DATE         TIMESTAMP,
  BANK_ID           VARCHAR(64),
  NEXT_FLAG         VARCHAR(2),
  NOTE_S            VARCHAR(255),
  GUA_ID            VARCHAR(32),
  GUA_APPL_DATE     TIMESTAMP,
  GUA_OPEN_DATE     TIMESTAMP,
  GUA_APPR_DATE     TIMESTAMP,
  GUA_REGISTER_ER   VARCHAR(8),
  GUA_REGISTER_DATE TIMESTAMP,
  GUA_COPY          NUMERIC(19),
  GUA_TYPE          VARCHAR(1),
  GUA_OWNER_NAME    VARCHAR(32),
  GUA_LIMIT_DATE    TIMESTAMP,
  GUARANTEE_ADD     NUMERIC(19,5),
  GUARANTEE_AMT     NUMERIC(19,5),
  GUARANTEE_CURR    VARCHAR(3),
  GUARANTEE_RMB     NUMERIC(19,5),
  GUARANTEE_ORG     VARCHAR(70),
  GUA_MARK          VARCHAR(1),
  PROCESS_MARK      VARCHAR(5),
  PROCESS_ER        VARCHAR(8),
  PROCESS_DATE      TIMESTAMP,
  OTHER_AMT         NUMERIC(19,5),
  OTHER_NO          VARCHAR(20),
  SEQ_NO            VARCHAR(12),
  DOCUMENT_NO       VARCHAR(12),
  DOCUMENT_DATE     TIMESTAMP,
  DOCUMENT_MARK     VARCHAR(1),
  DOCUMENT_ER       VARCHAR(8),
  NOTE_MARK         VARCHAR(10),
  PORT_CODE         VARCHAR(4),
  ZQ_PRINT_FLAG     VARCHAR(1),
  SECRECT_KEY       VARCHAR(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/ACCOUNT.txt',
'gpfdist://mdw-2:8081/ACCOUNT.txt',
'gpfdist://mdw-3:8081/ACCOUNT.txt',
'gpfdist://mdw-4:8081/ACCOUNT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------AGREEMENT_GOODS_LIST------------
drop external table IF EXISTS AGREEMENT_GOODS_LIST_INC_EXT;

create external table AGREEMENT_GOODS_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID       VARCHAR(18)  ,
  G_NO           NUMERIC(19)  ,
  D_DATE         TIMESTAMP,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  AGREEMENT_ID   VARCHAR(2),
  QTY_1          NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  ORIGIN_COUNTRY VARCHAR(3),
  RMB_PRICE      NUMERIC(19,5),
  USD_PRICE      NUMERIC(19,5),
  CREATE_DATE    TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/AGREEMENT_GOODS_LIST.txt',
'gpfdist://mdw-2:8081/AGREEMENT_GOODS_LIST.txt',
'gpfdist://mdw-3:8081/AGREEMENT_GOODS_LIST.txt',
'gpfdist://mdw-4:8081/AGREEMENT_GOODS_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------AMS_MODI_LOG------------
drop external table IF EXISTS AMS_MODI_LOG_INC_EXT;

create external table AMS_MODI_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO       VARCHAR(12)  ,
  OP_TIME      TIMESTAMP  ,
  MODI_TYPE    NUMERIC(19)  ,
  ITEM_NAME    VARCHAR(255)  ,
  ITEM_SOURCE  VARCHAR(255),
  ITEM_CURRENT VARCHAR(255),
  OP_ER        VARCHAR(8),
  NOTE         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/AMS_MODI_LOG.txt',
'gpfdist://mdw-2:8081/AMS_MODI_LOG.txt',
'gpfdist://mdw-3:8081/AMS_MODI_LOG.txt',
'gpfdist://mdw-4:8081/AMS_MODI_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------AMSLIST_BODY------------
drop external table IF EXISTS AMSLIST_BODY_INC_EXT;

create external table AMSLIST_BODY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_ID        VARCHAR(18)  ,
  G_NO           NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  CONTR_ITEM     NUMERIC(19),
  DECL_PRICE     NUMERIC(19,5),
  REF_VALUE      NUMERIC(19,5),
  CUS_VALUE      NUMERIC(19,4),
  G_QTY          NUMERIC(19,5),
  G_UNIT         VARCHAR(3),
  DUTY_VALUE     NUMERIC(19),
  TARIFF_MARK    VARCHAR(32),
  DUTY_TYPE      VARCHAR(1),
  REAL_DUTY      NUMERIC(19,4),
  DUTY_CUT       NUMERIC(19,4),
  DUTY_RATE      NUMERIC(19,5),
  D_RATE         NUMERIC(19,5),
  QTY_DUTY_RATE  NUMERIC(19,5),
  QTY_D_RATE     NUMERIC(19,5),
  TAX_TYPE       VARCHAR(1),
  REAL_TAX       NUMERIC(19,4),
  TAX_CUT        NUMERIC(19,4),
  TAX_RATE       NUMERIC(19,5),
  T_RATE         NUMERIC(19,5),
  QTY_TAX_RATE   NUMERIC(19,5),
  QTY_T_RATE     NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/AMSLIST_BODY.txt',
'gpfdist://mdw-2:8081/AMSLIST_BODY.txt',
'gpfdist://mdw-3:8081/AMSLIST_BODY.txt',
'gpfdist://mdw-4:8081/AMSLIST_BODY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------AMSLIST_HEAD------------
drop external table IF EXISTS AMSLIST_HEAD_INC_EXT;

create external table AMSLIST_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_ID       VARCHAR(18)  ,
  LIST_TYPE     VARCHAR(1),
  REC_ID        VARCHAR(12),
  COP_LIST_ID   VARCHAR(20),
  CHK_ID        VARCHAR(70),
  D_DATE        TIMESTAMP,
  TAX_DATE      VARCHAR(6),
  TRADE_CODE    VARCHAR(10),
  TRADE_NAME    VARCHAR(255),
  OWNER_CODE    VARCHAR(10),
  OWNER_NAME    VARCHAR(255),
  PAYER_CODE    VARCHAR(10),
  PAYER_NAME    VARCHAR(70),
  CUT_MODE      VARCHAR(3),
  TRANS_MODE    VARCHAR(1),
  MANUAL_NO     VARCHAR(12),
  CODE_TS       VARCHAR(16),
  AUTO_RATE     NUMERIC(19,5),
  LOW_RATE      VARCHAR(1),
  SET_COUNT     NUMERIC(19),
  HAVE_PAY      VARCHAR(1),
  USE_TO        VARCHAR(1),
  NOTE          VARCHAR(255),
  INPUTER_IC_ID VARCHAR(18),
  INPUTER_NAME  VARCHAR(30),
  INPUT_DATE    TIMESTAMP,
  PRE_AMS_NO    VARCHAR(12),
  PROC_FLAG     VARCHAR(1),
  PROC_DATE     TIMESTAMP,
  PROC_ER       VARCHAR(8),
  PROC_NOTE     VARCHAR(255),
  LOG_FLAG      VARCHAR(18),
  LOG_DATE      TIMESTAMP,
  LOG_ER        VARCHAR(8),
  CHK_FLAG      VARCHAR(1),
  CHK_ER        VARCHAR(8),
  CHK_DATE      TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/AMSLIST_HEAD.txt',
'gpfdist://mdw-2:8081/AMSLIST_HEAD.txt',
'gpfdist://mdw-3:8081/AMSLIST_HEAD.txt',
'gpfdist://mdw-4:8081/AMSLIST_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------APPL_CLOSE------------
drop external table IF EXISTS APPL_CLOSE_INC_EXT;

create external table APPL_CLOSE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  APPL_NO        NUMERIC(19),
  APPL_DATE      TIMESTAMP,
  DECL_IN_AMT    NUMERIC(19,5),
  DECL_EX_AMT    NUMERIC(19,5),
  DECL_IN_COUNT  NUMERIC(19),
  DECL_EX_COUNT  NUMERIC(19),
  REMAIN_IN_AMT  NUMERIC(19,4),
  REMAIN_EX_AMT  NUMERIC(19,4),
  RESOR_IN_COUNT NUMERIC(19),
  PRODU_IN_COUNT NUMERIC(19),
  RESOR_EX_COUNT NUMERIC(19),
  PRODU_EX_COUNT NUMERIC(19),
  RESOR_IN_AMT   NUMERIC(19,4),
  PRODU_IN_AMT   NUMERIC(19,4),
  RESOR_EX_AMT   NUMERIC(19,4),
  PRODU_EX_AMT   NUMERIC(19,4),
  DC_DATE        TIMESTAMP,
  TYPE_ER        VARCHAR(8),
  DECL_CO        VARCHAR(6),
  CHK_ER         VARCHAR(8),
  RECHK_ER       VARCHAR(8),
  CHK_DATE       TIMESTAMP,
  RECHK_DATE     TIMESTAMP,
  NOTE_S         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/APPL_CLOSE.txt',
'gpfdist://mdw-2:8081/APPL_CLOSE.txt',
'gpfdist://mdw-3:8081/APPL_CLOSE.txt',
'gpfdist://mdw-4:8081/APPL_CLOSE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------APPL_CLOSE_CONSUME------------
drop external table IF EXISTS APPL_CLOSE_CONSUME_INC_EXT;

create external table APPL_CLOSE_CONSUME_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO    VARCHAR(12)  ,
  CONTR_ITEM   NUMERIC(19)  ,
  CODE_TS      VARCHAR(16),
  G_NAME       VARCHAR(32),
  G_MODEL      VARCHAR(32),
  EX_NO        NUMERIC(19)  ,
  DECL_CONSUME NUMERIC(19,10),
  DECL_DAMAGE  NUMERIC(19,10)
)
LOCATION( 
'gpfdist://mdw-1:8081/APPL_CLOSE_CONSUME.txt',
'gpfdist://mdw-2:8081/APPL_CLOSE_CONSUME.txt',
'gpfdist://mdw-3:8081/APPL_CLOSE_CONSUME.txt',
'gpfdist://mdw-4:8081/APPL_CLOSE_CONSUME.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------APPLY_HEAD------------
drop external table IF EXISTS APPLY_HEAD_INC_EXT;

create external table APPLY_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  APPL_NO      VARCHAR(16)  ,
  CONTACT_NO   VARCHAR(16),
  INPUT_DATE   TIMESTAMP,
  CONTR_NO     VARCHAR(40),
  LICENSE_NO   VARCHAR(20),
  MANUAL_NO    VARCHAR(12),
  TRADE_MODE   VARCHAR(4),
  OWNER_NAME   VARCHAR(255),
  OWNER_TELE   VARCHAR(32),
  OWNER_CONT   VARCHAR(32),
  VALID_TIME   TIMESTAMP,
  PRE_TIMES    NUMERIC(9),
  IMPORT_TIMES NUMERIC(9),
  REC_MARK     VARCHAR(1),
  INPUT_OP_ID  VARCHAR(8),
  EXAM_OP_ID   VARCHAR(8),
  EXAM_TIME    TIMESTAMP,
  DEL_OP_ID    VARCHAR(8),
  DEL_TIME     TIMESTAMP,
  DEL_REASON   VARCHAR(1),
  CHECK_OP_ID  VARCHAR(8),
  CHECK_TIME   TIMESTAMP,
  CHECK_MARK   VARCHAR(1),
  GOODS_NOTE   VARCHAR(255),
  DELI_MARK    VARCHAR(1),
  DELI_TIME    TIMESTAMP,
  PRE_FIEL     VARCHAR(32),
  SEND_PORT    VARCHAR(4),
  RECV_PORT    VARCHAR(4),
  TRANS_PRE_NO VARCHAR(18),
  CA_KEY       VARCHAR(380),
  HASH_SIGN    VARCHAR(380)
)
LOCATION( 
'gpfdist://mdw-1:8081/APPLY_HEAD.txt',
'gpfdist://mdw-2:8081/APPLY_HEAD.txt',
'gpfdist://mdw-3:8081/APPLY_HEAD.txt',
'gpfdist://mdw-4:8081/APPLY_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------APPLY_LIST------------
drop external table IF EXISTS APPLY_LIST_INC_EXT;

create external table APPLY_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  APPL_NO      VARCHAR(16)  ,
  CONTACT_NO   VARCHAR(16),
  G_NO         NUMERIC(9)  ,
  CODE_TS      VARCHAR(16),
  G_NAME       VARCHAR(255),
  PACK_TYPE    VARCHAR(1),
  GOODS_PIECE  NUMERIC(9) ,
  GOODS_AMOUNT NUMERIC(19,4) ,
  GOODS_WEIGHT NUMERIC(19,4) ,
  GOODS_PRICE  NUMERIC(19,4) 
)
LOCATION( 
'gpfdist://mdw-1:8081/APPLY_LIST.txt',
'gpfdist://mdw-2:8081/APPLY_LIST.txt',
'gpfdist://mdw-3:8081/APPLY_LIST.txt',
'gpfdist://mdw-4:8081/APPLY_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ARRIVAL_INFO_HEAD------------
drop external table IF EXISTS ARRIVAL_INFO_HEAD_INC_EXT;

create external table ARRIVAL_INFO_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  VOYAGE_NO     VARCHAR(32)  ,
  SHIP_ID       VARCHAR(32)  ,
  I_E_DATE      TIMESTAMP  ,
  CUSTOMS_CODE  VARCHAR(4)  ,
  TRAF_MODE     VARCHAR(1)  ,
  I_E_FLAG      VARCHAR(1),
  VOYAGE_NO_MOD VARCHAR(32),
  ARRIVE_DATE   TIMESTAMP,
  RECV_DATE     TIMESTAMP,
  SEQ_NO        VARCHAR(18)
)
LOCATION( 
'gpfdist://mdw-1:8081/ARRIVAL_INFO_HEAD.txt',
'gpfdist://mdw-2:8081/ARRIVAL_INFO_HEAD.txt',
'gpfdist://mdw-3:8081/ARRIVAL_INFO_HEAD.txt',
'gpfdist://mdw-4:8081/ARRIVAL_INFO_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ARRIVAL_INFO_LIST------------
drop external table IF EXISTS ARRIVAL_INFO_LIST_INC_EXT;

create external table ARRIVAL_INFO_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BILL_NO         VARCHAR(32)  ,
  VOYAGE_NO       VARCHAR(32)  ,
  SHIP_ID         VARCHAR(32)  ,
  I_E_DATE        TIMESTAMP  ,
  CUSTOMS_CODE    VARCHAR(4)  ,
  TRAF_MODE       VARCHAR(1)  ,
  I_E_FLAG        VARCHAR(1),
  VOYAGE_NO_MOD   VARCHAR(32),
  ARRIVE_DATE     TIMESTAMP,
  RECV_DATE       TIMESTAMP,
  DISCHARGE_PLACE VARCHAR(8),
  TAL_FLAG        VARCHAR(1),
  PACK_NO         NUMERIC(19,5),
  GROSS_WT        NUMERIC(19,5),
  SEQ_NO          VARCHAR(18)
)
LOCATION( 
'gpfdist://mdw-1:8081/ARRIVAL_INFO_LIST.txt',
'gpfdist://mdw-2:8081/ARRIVAL_INFO_LIST.txt',
'gpfdist://mdw-3:8081/ARRIVAL_INFO_LIST.txt',
'gpfdist://mdw-4:8081/ARRIVAL_INFO_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_BWS_EXAM_CERT_LIST------------
drop external table IF EXISTS BAK_BWS_EXAM_CERT_LIST_INC_EXT;

create external table BAK_BWS_EXAM_CERT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_EXAM_NO VARCHAR(16)  ,
  G_NO        NUMERIC(19)  ,
  CERT_NO     VARCHAR(18),
  PACK_NO     NUMERIC(19,5),
  GROSS_WT    NUMERIC(19,5),
  BILL_NO     VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_BWS_EXAM_CERT_LIST.txt',
'gpfdist://mdw-2:8081/BAK_BWS_EXAM_CERT_LIST.txt',
'gpfdist://mdw-3:8081/BAK_BWS_EXAM_CERT_LIST.txt',
'gpfdist://mdw-4:8081/BAK_BWS_EXAM_CERT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_BWS_EXAM_GOOD_LIST------------
drop external table IF EXISTS BAK_BWS_EXAM_GOOD_LIST_INC_EXT;

create external table BAK_BWS_EXAM_GOOD_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_EXAM_NO VARCHAR(16)  ,
  G_NO        NUMERIC(19)  ,
  CERT_NO     VARCHAR(18),
  CERT_G_NO   NUMERIC(19),
  G_NAME      VARCHAR(128),
  QTY         NUMERIC(19,5),
  UNIT        VARCHAR(3)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_BWS_EXAM_GOOD_LIST.txt',
'gpfdist://mdw-2:8081/BAK_BWS_EXAM_GOOD_LIST.txt',
'gpfdist://mdw-3:8081/BAK_BWS_EXAM_GOOD_LIST.txt',
'gpfdist://mdw-4:8081/BAK_BWS_EXAM_GOOD_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_BWS_EXAM_HEAD------------
drop external table IF EXISTS BAK_BWS_EXAM_HEAD_INC_EXT;

create external table BAK_BWS_EXAM_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_EXAM_NO    VARCHAR(16)  ,
  EPORT_NO       VARCHAR(18),
  EXAM_TYPE      VARCHAR(1),
  CERT_TYPE      VARCHAR(2),
  I_E_FLAG       VARCHAR(1),
  BWS_NO         VARCHAR(12),
  MASTER_CUSTOMS VARCHAR(4),
  TRADE_CODE     VARCHAR(10),
  TRADE_NAME     VARCHAR(128),
  TRANSIT_CODE   VARCHAR(10),
  TRANSIT_NAME   VARCHAR(128),
  ENTRUST_CODE   VARCHAR(10),
  ENTRUST_NAME   VARCHAR(128),
  VEHICLE_NT     NUMERIC(19,5),
  TOTAL_PACK_NO  NUMERIC(19,5),
  TOTAL_WEIGHT   NUMERIC(19,5),
  IC_CARD        VARCHAR(18),
  SHIP_ID        VARCHAR(18),
  CONTA_ID1      VARCHAR(32),
  SEAL_NO1       VARCHAR(101),
  CONTA_ID2      VARCHAR(32),
  SEAL_NO2       VARCHAR(101),
  INPUT_DATE     TIMESTAMP,
  INPUT_ER       VARCHAR(8),
  DECLARE_DATE   TIMESTAMP,
  NOTE           VARCHAR(255),
  CHK_MARK       VARCHAR(1),
  PASS_MODE      VARCHAR(10),
  PASS_TIME      TIMESTAMP,
  KK_CODE        VARCHAR(18),
  KK_PASS_WEIGHT NUMERIC(19,5),
  PASS_REASON    VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_BWS_EXAM_HEAD.txt',
'gpfdist://mdw-2:8081/BAK_BWS_EXAM_HEAD.txt',
'gpfdist://mdw-3:8081/BAK_BWS_EXAM_HEAD.txt',
'gpfdist://mdw-4:8081/BAK_BWS_EXAM_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_CONSUME------------
drop external table IF EXISTS BAK_CONSUME_INC_EXT;

create external table BAK_CONSUME_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO    VARCHAR(12)  ,
  CONTR_ITEM   NUMERIC(19)  ,
  EX_NO        NUMERIC(19)  ,
  APPR_CONSUME NUMERIC(19,10),
  APPR_DAMAGE  NUMERIC(19,10),
  DECL_CONSUME NUMERIC(19,10),
  DECL_DAMAGE  NUMERIC(19,10)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_CONSUME.txt',
'gpfdist://mdw-2:8081/BAK_CONSUME.txt',
'gpfdist://mdw-3:8081/BAK_CONSUME.txt',
'gpfdist://mdw-4:8081/BAK_CONSUME.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_CONTRACT_HEAD------------
drop external table IF EXISTS BAK_CONTRACT_HEAD_INC_EXT;

create external table BAK_CONTRACT_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO        VARCHAR(12)  ,
  PRE_MANUAL_NO    VARCHAR(12),
  TRADE_CO         VARCHAR(10),
  TRADE_NAME       VARCHAR(255),
  DISTRICT_CODE    VARCHAR(5),
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  FOREIGN_CO_NAME  VARCHAR(32),
  FOREIGN_MGR      VARCHAR(32),
  TRADE_MODE       VARCHAR(4),
  CUT_MODE         VARCHAR(3),
  TRADE_COUNTRY    VARCHAR(3),
  PORT_1           VARCHAR(4),
  PORT_2           VARCHAR(4),
  PORT_3           VARCHAR(4),
  PORT_4           VARCHAR(4),
  PORT_5           VARCHAR(4),
  AGREE_NO         VARCHAR(32),
  LICENSE_NO       VARCHAR(32),
  APPR_NO          VARCHAR(32),
  CONTR_IN         VARCHAR(32),
  CONTR_OUT        VARCHAR(32),
  EQUIP_MODE       VARCHAR(1),
  TRANS_MODE       VARCHAR(1),
  INVEST_MODE      VARCHAR(1),
  PAY_MODE         VARCHAR(1),
  EX_SOURCE        NUMERIC(19),
  PRODUCE_TYPE     VARCHAR(2),
  RATIO_RANGE      NUMERIC(19,4),
  IN_RATIO         NUMERIC(19,4),
  INVEST_AMT       NUMERIC(19,5),
  INVEST_CURR      VARCHAR(3),
  APPR_DEV_AMT     NUMERIC(19,5),
  FACT_DEV_AMT     NUMERIC(19,5),
  IN_AMT           NUMERIC(19,5),
  IN_CURR          VARCHAR(3),
  FACT_IN_AMT      NUMERIC(19,5),
  EX_AMT           NUMERIC(19,5),
  EX_CURR          VARCHAR(3),
  FACT_EX_AMT      NUMERIC(19,5),
  DECL_FLAG        VARCHAR(1),
  EXE_MARK         VARCHAR(1),
  SUPV_MARK        VARCHAR(10),
  IN_PNT           NUMERIC(19),
  EX_PNT           NUMERIC(19),
  CONTR_SEQNO      NUMERIC(19),
  IM_COUNT         NUMERIC(19),
  EX_COUNT         NUMERIC(19),
  I_DATE           TIMESTAMP,
  E_DATE           TIMESTAMP,
  LIMIT_DATE       TIMESTAMP,
  TYPE_ER          VARCHAR(8),
  TYPE_DATE        TIMESTAMP,
  CHK_ER           VARCHAR(8),
  APPR_DATE        TIMESTAMP,
  RECHK_ER         VARCHAR(8),
  CLEAR_ER         VARCHAR(8),
  CLEAR_APPL_DATE  TIMESTAMP,
  CLEAR_DATE       TIMESTAMP,
  CLOSE_ER         VARCHAR(8),
  CLOSE_DATE       TIMESTAMP,
  EXAM_MARK        VARCHAR(10),
  CLEAR_MARK       VARCHAR(10),
  CLOSE_MARK       VARCHAR(1),
  TAX_TYPE         VARCHAR(1),
  RECOVER_DUTY     NUMERIC(19,5),
  RECOVER_TAX      NUMERIC(19,5),
  RECOVER_REG      NUMERIC(19,5),
  DEFER_DUTY       NUMERIC(19,5),
  DEFER_TAX        NUMERIC(19,5),
  DEFER_REG        NUMERIC(19,5),
  FINE_AMT         NUMERIC(19,5),
  REAL_DUTY        NUMERIC(19,5),
  REAL_TAX         NUMERIC(19,5),
  REAL_REG         NUMERIC(19,5),
  SEQ_NO           VARCHAR(12),
  VER_NO           VARCHAR(12),
  VER_ER           VARCHAR(8),
  VER_DATE         TIMESTAMP,
  CUSTOMS_CODE     VARCHAR(4),
  SERVICE_FEE_RATE NUMERIC(19,5),
  PRE_SERVICE_FEE  NUMERIC(19,5),
  FACT_SERVICE_FEE NUMERIC(19,5),
  NOTE_S           VARCHAR(255),
  TR_PNT           NUMERIC(19),
  IN_RMB_RATE      NUMERIC(19,8),
  IN_USD_RATE      NUMERIC(19,8),
  EX_RMB_RATE      NUMERIC(19,8),
  EX_USD_RATE      NUMERIC(19,8),
  DEDUC_DATE       TIMESTAMP,
  CHECK_DATE       TIMESTAMP,
  HASH_SIGN        VARCHAR(380),
  CASE_MARK        VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_CONTRACT_HEAD.txt',
'gpfdist://mdw-2:8081/BAK_CONTRACT_HEAD.txt',
'gpfdist://mdw-3:8081/BAK_CONTRACT_HEAD.txt',
'gpfdist://mdw-4:8081/BAK_CONTRACT_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_DCG_BILL_HEAD------------
drop external table IF EXISTS BAK_DCG_BILL_HEAD_INC_EXT;

create external table BAK_DCG_BILL_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BILL_NO         VARCHAR(17)  ,
  BILL_FLAG       VARCHAR(1),
  EPORT_NO        VARCHAR(18),
  DCG_NO          VARCHAR(12),
  EX_COP_BILL_NO  VARCHAR(20),
  EX_TRADE_CODE   VARCHAR(10),
  EX_DECLARE_ER   VARCHAR(20),
  EX_DECLARE_DATE TIMESTAMP,
  IM_COP_BILL_NO  VARCHAR(20),
  IM_TRADE_CODE   VARCHAR(10),
  IM_DECLARE_ER   VARCHAR(20),
  IM_DECLARE_DATE TIMESTAMP,
  IM_DATE         TIMESTAMP,
  CONTR_NO        VARCHAR(20),
  VE_TYPE         VARCHAR(1),
  SHIP_ID         VARCHAR(32),
  EX_DATE         TIMESTAMP,
  STATUS          VARCHAR(1),
  PRE_FLAG        VARCHAR(3),
  EXE_MARK        VARCHAR(1),
  CUSTOMS_CODE    VARCHAR(4),
  BAR_CODE        VARCHAR(32),
  NOTE            VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_DCG_BILL_HEAD.txt',
'gpfdist://mdw-2:8081/BAK_DCG_BILL_HEAD.txt',
'gpfdist://mdw-3:8081/BAK_DCG_BILL_HEAD.txt',
'gpfdist://mdw-4:8081/BAK_DCG_BILL_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_DCG_BILL_LIST------------
drop external table IF EXISTS BAK_DCG_BILL_LIST_INC_EXT;

create external table BAK_DCG_BILL_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BILL_NO    VARCHAR(17)  ,
  G_TYPE     VARCHAR(1)  ,
  G_NO       NUMERIC(19)  ,
  DCG_G_NO   NUMERIC(19),
  QTY        NUMERIC(19,5),
  CHECK_DATE TIMESTAMP,
  COP_QTY    NUMERIC(19,5),
  COP_UNIT   VARCHAR(3),
  G_MARK     VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_DCG_BILL_LIST.txt',
'gpfdist://mdw-2:8081/BAK_DCG_BILL_LIST.txt',
'gpfdist://mdw-3:8081/BAK_DCG_BILL_LIST.txt',
'gpfdist://mdw-4:8081/BAK_DCG_BILL_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_DCG_DEDUCT------------
drop external table IF EXISTS BAK_DCG_DEDUCT_INC_EXT;

create external table BAK_DCG_DEDUCT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID    VARCHAR(18)  ,
  DCG_NO      VARCHAR(12)  ,
  G_TYPE      VARCHAR(1)  ,
  ENTRY_G_NO  NUMERIC(19)  ,
  DCG_G_NO    NUMERIC(19),
  EMS_NO      VARCHAR(12),
  EMS_G_NO    NUMERIC(19),
  QTY         NUMERIC(19,5),
  VERIFY_DATE TIMESTAMP,
  VERIFY_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_DCG_DEDUCT.txt',
'gpfdist://mdw-2:8081/BAK_DCG_DEDUCT.txt',
'gpfdist://mdw-3:8081/BAK_DCG_DEDUCT.txt',
'gpfdist://mdw-4:8081/BAK_DCG_DEDUCT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_DCG_DEDUCT_LOG------------
drop external table IF EXISTS BAK_DCG_DEDUCT_LOG_INC_EXT;

create external table BAK_DCG_DEDUCT_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID    VARCHAR(18)  ,
  DCG_NO      VARCHAR(12)  ,
  CREATE_DATE TIMESTAMP  ,
  JOU_MARK    VARCHAR(1)  ,
  NOTE        VARCHAR(1),
  VERIFY_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_DCG_DEDUCT_LOG.txt',
'gpfdist://mdw-2:8081/BAK_DCG_DEDUCT_LOG.txt',
'gpfdist://mdw-3:8081/BAK_DCG_DEDUCT_LOG.txt',
'gpfdist://mdw-4:8081/BAK_DCG_DEDUCT_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_DCG_HEAD------------
drop external table IF EXISTS BAK_DCG_HEAD_INC_EXT;

create external table BAK_DCG_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DCG_NO           VARCHAR(12)  ,
  DCG_TYPE         VARCHAR(1),
  EPORT_NO         VARCHAR(18),
  EX_EMS_NO        VARCHAR(12),
  EX_COP_EMS_NO    VARCHAR(20),
  EX_CUSTOMS_CODE  VARCHAR(4),
  EX_TRADE_CODE    VARCHAR(10),
  EX_TRADE_NAME    VARCHAR(255),
  EX_DECLARE_CODE  VARCHAR(10),
  EX_DECLARE_NAME  VARCHAR(255),
  EX_CORP_ER       VARCHAR(64),
  EX_DECLARE_ER    VARCHAR(20),
  EX_DISTRICT_CODE VARCHAR(5),
  EX_CONTR_NO      VARCHAR(20),
  EX_APPR_NO       VARCHAR(20),
  EX_NOTE          VARCHAR(64),
  EX_DECLARE_DATE  TIMESTAMP,
  EX_CHK_ER        VARCHAR(8),
  EX_CHK_DATE      TIMESTAMP,
  EX_CHK_NOTE      VARCHAR(255),
  IM_COP_EMS_NO    VARCHAR(20),
  IM_CUSTOMS_CODE  VARCHAR(4),
  IM_TRADE_CODE    VARCHAR(10),
  IM_TRADE_NAME    VARCHAR(255),
  IM_DECLARE_CODE  VARCHAR(10),
  IM_DECLARE_NAME  VARCHAR(255),
  IM_CORP_ER       VARCHAR(64),
  IM_DECLARE_ER    VARCHAR(20),
  IM_DISTRICT_CODE VARCHAR(5),
  IM_CONTR_NO      VARCHAR(20),
  IM_APPR_NO       VARCHAR(20),
  IM_NOTE          VARCHAR(64),
  IM_DECLARE_DATE  TIMESTAMP,
  IM_CHK_ER        VARCHAR(8),
  IM_CHK_DATE      TIMESTAMP,
  IM_CHK_NOTE      VARCHAR(255),
  INTEND_COST_TIME NUMERIC(19,5),
  DISTANCE         NUMERIC(19,5),
  CHK_MARK         VARCHAR(2),
  EXE_MARK         VARCHAR(1),
  PAUSE_MARK       VARCHAR(3),
  END_DATE         TIMESTAMP,
  FIRST_DATE       TIMESTAMP,
  LATE_DATE        TIMESTAMP,
  NOTE_1           VARCHAR(8),
  NOTE_2           VARCHAR(8),
  DECLARE_TYPE     VARCHAR(1),
  LW_MARK          VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_DCG_HEAD.txt',
'gpfdist://mdw-2:8081/BAK_DCG_HEAD.txt',
'gpfdist://mdw-3:8081/BAK_DCG_HEAD.txt',
'gpfdist://mdw-4:8081/BAK_DCG_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_DCG_LIST------------
drop external table IF EXISTS BAK_DCG_LIST_INC_EXT;

create external table BAK_DCG_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DCG_NO      VARCHAR(12)  ,
  G_TYPE      VARCHAR(1)  ,
  G_NO        NUMERIC(19)  ,
  EX_G_NO     NUMERIC(19),
  EMS_NO      VARCHAR(12),
  EMS_G_NO    NUMERIC(19),
  CODE_TS     VARCHAR(10),
  G_NAME      VARCHAR(255),
  G_MODEL     VARCHAR(255),
  UNIT        VARCHAR(3),
  QTY         NUMERIC(19,5),
  UNIT_1      VARCHAR(3),
  QTY_1       NUMERIC(19,5),
  FACT_QTY    NUMERIC(19,5),
  FACT_COUNT  NUMERIC(19),
  BACK_COUNT  NUMERIC(19),
  DEDUCT_QTY  NUMERIC(19,5),
  DEDUCT_DATE TIMESTAMP,
  G_MARK      VARCHAR(8),
  PAUSE_MARK  VARCHAR(3),
  BAK_CODE_TS VARCHAR(10),
  MODIFY_MARK VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_DCG_LIST.txt',
'gpfdist://mdw-2:8081/BAK_DCG_LIST.txt',
'gpfdist://mdw-3:8081/BAK_DCG_LIST.txt',
'gpfdist://mdw-4:8081/BAK_DCG_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_EMS_APPR_HEAD------------
drop external table IF EXISTS BAK_EMS_APPR_HEAD_INC_EXT;

create external table BAK_EMS_APPR_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  APPR_NO           VARCHAR(40)  ,
  RECEIVE_TIMES     NUMERIC(19)  ,
  MODIFY_NO         VARCHAR(40),
  EPORT_NO          VARCHAR(20),
  CORP_CODE         VARCHAR(13),
  CORP_NAME         VARCHAR(70),
  CORP_TYPE_NAME    VARCHAR(20),
  CORP_CUSTOMS_CODE VARCHAR(10),
  ENTP_CODE         VARCHAR(13),
  ENTP_NAME         VARCHAR(70),
  ENTP_TYPE_NAME    VARCHAR(20),
  ENTP_CUSTOMS_CODE VARCHAR(10),
  EMS_TYPE          VARCHAR(1),
  DECLARE_TYPE      VARCHAR(1),
  PRODUCT_RATIO     NUMERIC(19,5),
  BEGIN_DATE        TIMESTAMP,
  END_DATE          TIMESTAMP,
  CONTR_IN          VARCHAR(32),
  CONTR_OUT         VARCHAR(32),
  CONTR_OTHER       VARCHAR(32),
  AGREE_NO          VARCHAR(32),
  FOREIGN_CO_NAME   VARCHAR(255),
  IMG_CURR          VARCHAR(3),
  IMG_AMOUNT        NUMERIC(19,5),
  EXG_AMOUNT        NUMERIC(19,5),
  WORK_AMOUNT       NUMERIC(19,5),
  HOME_AMOUNT       NUMERIC(19,5),
  I_E_PORT          VARCHAR(255),
  NOTE              VARCHAR(255),
  ALLOW_TRANS       VARCHAR(1),
  HAS_EXG_1         VARCHAR(1),
  HAS_EXG_2         VARCHAR(1),
  MASTER_CUSTOMS    VARCHAR(4),
  APPR_FEC          VARCHAR(6),
  APPR_FEC_NAME     VARCHAR(40),
  APPR_DATE         TIMESTAMP,
  MODIFY_APPR_DATE  TIMESTAMP,
  EXG_CURR          VARCHAR(3),
  LICENSE_NO        VARCHAR(255),
  RECEIVE_TIME      TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_EMS_APPR_HEAD.txt',
'gpfdist://mdw-2:8081/BAK_EMS_APPR_HEAD.txt',
'gpfdist://mdw-3:8081/BAK_EMS_APPR_HEAD.txt',
'gpfdist://mdw-4:8081/BAK_EMS_APPR_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_EMS_APPR_LIST------------
drop external table IF EXISTS BAK_EMS_APPR_LIST_INC_EXT;

create external table BAK_EMS_APPR_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  APPR_NO        VARCHAR(40)  ,
  G_TYPE         VARCHAR(1)  ,
  G_NO           NUMERIC(19)  ,
  RECEIVE_TIMES  NUMERIC(19)  ,
  CODE_TS        VARCHAR(10),
  G_NAME         VARCHAR(50),
  G_MODEL        VARCHAR(50),
  UNIT           VARCHAR(3),
  UNIT_PRICE     NUMERIC(19,5),
  QTY            NUMERIC(19,5),
  AMT            NUMERIC(19,5),
  ORIGIN_COUNTRY VARCHAR(3),
  UNIT_1         VARCHAR(3),
  FACTOR_1       NUMERIC(18,9),
  NOTE           VARCHAR(10),
  CURR           VARCHAR(3),
  MODIFY_MARK    VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_EMS_APPR_LIST.txt',
'gpfdist://mdw-2:8081/BAK_EMS_APPR_LIST.txt',
'gpfdist://mdw-3:8081/BAK_EMS_APPR_LIST.txt',
'gpfdist://mdw-4:8081/BAK_EMS_APPR_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_EMS_CONSUME------------
drop external table IF EXISTS BAK_EMS_CONSUME_INC_EXT;

create external table BAK_EMS_CONSUME_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO       VARCHAR(12)  ,
  EXG_NO       NUMERIC(19)  ,
  EXG_VERSION  VARCHAR(32)  ,
  IMG_NO       NUMERIC(19)  ,
  MODIFY_TIMES NUMERIC(19)  ,
  DEC_CM       NUMERIC(19,9),
  DEC_DM       NUMERIC(19,9),
  OTHER_CM     NUMERIC(19,9),
  OTHER_DM     NUMERIC(19,9),
  CM_MARK      VARCHAR(1),
  PRODUCT_MARK VARCHAR(10),
  PRODUCT_TYPE VARCHAR(1),
  MODIFY_MARK  VARCHAR(1),
  CONTROL_MARK VARCHAR(1),
  NOTE         VARCHAR(10),
  ETL_MARK     VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_EMS_CONSUME.txt',
'gpfdist://mdw-2:8081/BAK_EMS_CONSUME.txt',
'gpfdist://mdw-3:8081/BAK_EMS_CONSUME.txt',
'gpfdist://mdw-4:8081/BAK_EMS_CONSUME.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_EMS_DEDUCT_CLR------------
drop external table IF EXISTS BAK_EMS_DEDUCT_CLR_INC_EXT;

create external table BAK_EMS_DEDUCT_CLR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO      VARCHAR(12)  ,
  IMG_NO      NUMERIC(19)  ,
  ENTRY_ID    VARCHAR(18)  ,
  ENTRY_G_NO  NUMERIC(19)  ,
  EXG_NO      NUMERIC(19),
  EXG_VERSION VARCHAR(32),
  IN_QTY      NUMERIC(19,5),
  DEC_CM      NUMERIC(19,9),
  DEC_DM      NUMERIC(19,9),
  DEC_CM_QTY  NUMERIC(19,9),
  DEC_DM_QTY  NUMERIC(19,9),
  I_E_FLAG    VARCHAR(1),
  TRADE_MODE  VARCHAR(4),
  TRAF_MODE   VARCHAR(1),
  VERIFY_MODE VARCHAR(2),
  JOU_MARK    VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_EMS_DEDUCT_CLR.txt',
'gpfdist://mdw-2:8081/BAK_EMS_DEDUCT_CLR.txt',
'gpfdist://mdw-3:8081/BAK_EMS_DEDUCT_CLR.txt',
'gpfdist://mdw-4:8081/BAK_EMS_DEDUCT_CLR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_EMS_HEAD------------
drop external table IF EXISTS BAK_EMS_HEAD_INC_EXT;

create external table BAK_EMS_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO            VARCHAR(12)  ,
  MODIFY_TIMES      NUMERIC(19)  ,
  PRE_EMS_NO        VARCHAR(12),
  COP_EMS_NO        VARCHAR(20),
  TRADE_CODE        VARCHAR(10),
  TRADE_NAME        VARCHAR(255),
  HOUSE_NO          VARCHAR(12),
  OWNER_CODE        VARCHAR(10),
  OWNER_NAME        VARCHAR(255),
  OWNER_TYPE        VARCHAR(1),
  DECLARE_ER_TYPE   VARCHAR(1),
  DECLARE_CODE      VARCHAR(10),
  DECLARE_NAME      VARCHAR(255),
  DISTRICT_CODE     VARCHAR(5),
  ADDRESS           VARCHAR(255),
  PHONE             VARCHAR(20),
  EMS_TYPE          VARCHAR(1),
  DECLARE_TYPE      VARCHAR(1),
  APPEND_TYPE       VARCHAR(1),
  INVEST_MODE       VARCHAR(1),
  TRADE_MODE        VARCHAR(4),
  BEGIN_DATE        TIMESTAMP,
  END_DATE          TIMESTAMP,
  IMG_AMOUNT        NUMERIC(19,5),
  EXG_AMOUNT        NUMERIC(19,5),
  IMG_WEIGHT        NUMERIC(19,5),
  EXG_WEIGHT        NUMERIC(19,5),
  STORE_VOL         NUMERIC(19,5),
  STORE_AREA        NUMERIC(19,5),
  IMG_ITEMS         NUMERIC(19),
  EXG_ITEMS         NUMERIC(19),
  EMS_APPR_NO       VARCHAR(40),
  LICENSE_NO        VARCHAR(20),
  LAST_EMS_NO       VARCHAR(12),
  CORR_EMS_NO       VARCHAR(12),
  CONTR_NO          VARCHAR(20),
  ID_CARD           VARCHAR(20),
  ID_CARD_PWD       VARCHAR(20),
  NOTE_1            VARCHAR(10),
  NOTE_2            VARCHAR(10),
  INVEST_AMOUNT     NUMERIC(19,5),
  NOTE_AMOUNT       NUMERIC(19,5),
  NOTE_QTY          NUMERIC(19,5),
  NOTE              VARCHAR(256),
  INPUT_DATE        TIMESTAMP,
  INPUT_ER          VARCHAR(8),
  DECLARE_DATE      TIMESTAMP,
  EMS_APPR_MARK     VARCHAR(10),
  EMS_CERTIFY       VARCHAR(10),
  PRODUCT_RATIO     NUMERIC(19,5),
  MODIFY_MARK       VARCHAR(1),
  DECLARE_MARK      VARCHAR(1),
  CHK_MARK          VARCHAR(1),
  EXE_MARK          VARCHAR(1),
  NEW_APPR_DATE     TIMESTAMP,
  CNG_APPR_DATE     TIMESTAMP,
  CLEAR_DATE        TIMESTAMP,
  SIGN_DATE         TIMESTAMP,
  SIGN_COPY         NUMERIC(19),
  PRINT_DATE        TIMESTAMP,
  PRINT_MARK        VARCHAR(1),
  RETURN_DATE       TIMESTAMP,
  RETURN_MARK       VARCHAR(1),
  EMS_ACE_MARK      VARCHAR(32),
  H883_ACE_MARK     VARCHAR(32),
  CONTROL_MARK      VARCHAR(32),
  PROCESS_MARK      VARCHAR(32),
  CLEAR_MODE        VARCHAR(1),
  CLEAR_TERM        NUMERIC(19),
  CLEAR_MARK        VARCHAR(32),
  CLEAR_TIMES       NUMERIC(19),
  SERVICE_FEE_MARK  VARCHAR(1),
  SERVICE_FEE_RATE  NUMERIC(19,5),
  SERVICE_FEE       NUMERIC(19,5),
  FILE_NO           VARCHAR(20),
  RECORDER_NO       VARCHAR(20),
  DOCUMENT_NO       VARCHAR(20),
  MASTER_CUSTOMS    VARCHAR(4),
  I_E_PORT          VARCHAR(255),
  FOREIGN_CO_NAME   VARCHAR(255),
  AGREE_NO          VARCHAR(32),
  CUT_MODE          VARCHAR(4),
  PAY_MODE          VARCHAR(1),
  PRODUCE_TYPE      VARCHAR(2),
  CONTR_OUT         VARCHAR(32),
  MESSAGE_TYPE      VARCHAR(8),
  EPORT_ID          VARCHAR(18),
  DIGITAL_SIGN_MARK VARCHAR(1),
  DIGITAL_SIGN_LEN  VARCHAR(255),
  DIGITAL_SIGN      VARCHAR(262),
  ETL_MARK          VARCHAR(1),
  I_DATE            TIMESTAMP,
  IMGED_AMOUNT      NUMERIC(19,5),
  CLEAR_APPR_MARK   VARCHAR(1),
  CLEAR_APPL_DATE   TIMESTAMP,
  CLOSE_MARK        VARCHAR(1),
  CLOSE_DATE        TIMESTAMP,
  CHECK_MARK        VARCHAR(1),
  CHECK_RESULT      VARCHAR(255),
  FOREIGN_MGR       VARCHAR(32),
  TRANS_MODE        VARCHAR(1),
  TRADE_COUNTRY     VARCHAR(3),
  EQUIP_MODE        VARCHAR(1),
  IN_RATIO          NUMERIC(19,4),
  EX_CURR           VARCHAR(3),
  IM_CURR           VARCHAR(3),
  OPER_MARK         VARCHAR(32),
  FACT_DEV_AMT      NUMERIC(19,5),
  APPR_IMG_AMT      NUMERIC(19,5),
  APPR_EXG_AMT      NUMERIC(19,5),
  CLOSE_RESULT      VARCHAR(32),
  DEDUCT_DATE       TIMESTAMP,
  ACCOUNT_FLAG      VARCHAR(2),
  HT_APPR_IMG_AMT   NUMERIC(19,5),
  CASE_MARK         VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_EMS_HEAD.txt',
'gpfdist://mdw-2:8081/BAK_EMS_HEAD.txt',
'gpfdist://mdw-3:8081/BAK_EMS_HEAD.txt',
'gpfdist://mdw-4:8081/BAK_EMS_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_EMS_LIST------------
drop external table IF EXISTS BAK_EMS_LIST_INC_EXT;

create external table BAK_EMS_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO        VARCHAR(12)  ,
  G_TYPE        VARCHAR(1)  ,
  G_NO          NUMERIC(19)  ,
  MODIFY_TIMES  NUMERIC(19)  ,
  COP_G_NO      VARCHAR(30),
  CODE_TS       VARCHAR(10),
  CLASS_MARK    VARCHAR(1),
  G_NAME        VARCHAR(255),
  G_MODEL       VARCHAR(255),
  UNIT          VARCHAR(3),
  UNIT_1        VARCHAR(3),
  UNIT_2        VARCHAR(3),
  COUNTRY_CODE  VARCHAR(4),
  SOURCE_MARK   VARCHAR(1),
  DEC_PRICE     NUMERIC(19,5),
  CURR          VARCHAR(4),
  DEC_PRICE_RMB NUMERIC(19,4),
  FACTOR_1      NUMERIC(19,4),
  FACTOR_2      NUMERIC(19,4),
  FACTOR_WT     NUMERIC(19,4),
  FACTOR_RATE   NUMERIC(19,5),
  QTY           NUMERIC(19,5),
  MAX_QTY       NUMERIC(19,5),
  FIRST_QTY     NUMERIC(19,5),
  I_E_TYPE      VARCHAR(1),
  USE_TYPE      VARCHAR(10),
  NOTE_1        VARCHAR(1),
  NOTE_2        VARCHAR(1),
  NOTE          VARCHAR(10),
  MODIFY_MARK   VARCHAR(1),
  G_MERGE       VARCHAR(10),
  G_TRADE       VARCHAR(10),
  QTY_MARK      VARCHAR(1),
  INC_AMOUNT    NUMERIC(19,5),
  INC_QTY       NUMERIC(19,5),
  INC_WT        NUMERIC(19,5),
  CUT_AMOUNT    NUMERIC(19,5),
  CUT_QTY       NUMERIC(19,5),
  CUT_WT        NUMERIC(19,5),
  CM_AMOUNT     NUMERIC(19,5),
  CM_QTY        NUMERIC(19,5),
  CM_WT         NUMERIC(19,5),
  CLR_INC_QTY   NUMERIC(19,5),
  CLR_CUT_QTY   NUMERIC(19,5),
  DUTY_MODE     VARCHAR(1),
  DUTY_RATE     NUMERIC(19,5),
  CHK_PRICE     NUMERIC(19,5),
  PROCESS_MARK  VARCHAR(10),
  ENTRY_ID      VARCHAR(18),
  LIMIT_DATE    TIMESTAMP,
  ETL_MARK      VARCHAR(1),
  USD_PRICE     NUMERIC(19,5),
  APPR_AMT      NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_EMS_LIST.txt',
'gpfdist://mdw-2:8081/BAK_EMS_LIST.txt',
'gpfdist://mdw-3:8081/BAK_EMS_LIST.txt',
'gpfdist://mdw-4:8081/BAK_EMS_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_EX_CONTRACT_LIST------------
drop external table IF EXISTS BAK_EX_CONTRACT_LIST_INC_EXT;

create external table BAK_EX_CONTRACT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  CONTR_ITEM     NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  CLASS_MARK     VARCHAR(1),
  G_NAME         VARCHAR(50),
  G_MODEL        VARCHAR(50),
  ORIGIN_COUNTRY VARCHAR(3),
  DUTY_MODE      VARCHAR(1),
  DUTY_RATIO     NUMERIC(19,5),
  LOCAL_CONTR    VARCHAR(20),
  APPR_AMT       NUMERIC(19,5),
  FACT_AMT       NUMERIC(19,5),
  UNIT_PRICE     NUMERIC(19,10),
  APPR_QTY       NUMERIC(19,5),
  FACT_QTY       NUMERIC(19,5),
  TRANSFER_QTY   NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  IN_COUNT       NUMERIC(19),
  WORK_PAY       NUMERIC(19),
  CURR_WORK      VARCHAR(3),
  CONSUME_NOTE   VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_EX_CONTRACT_LIST.txt',
'gpfdist://mdw-2:8081/BAK_EX_CONTRACT_LIST.txt',
'gpfdist://mdw-3:8081/BAK_EX_CONTRACT_LIST.txt',
'gpfdist://mdw-4:8081/BAK_EX_CONTRACT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_EX_FASCICLE_LIST------------
drop external table IF EXISTS BAK_EX_FASCICLE_LIST_INC_EXT;

create external table BAK_EX_FASCICLE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12),
  FASCICLE_NO VARCHAR(12)  ,
  CONTR_ITEM  NUMERIC(19)  ,
  APPR_QTY    NUMERIC(19,4),
  FACT_QTY    NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_EX_FASCICLE_LIST.txt',
'gpfdist://mdw-2:8081/BAK_EX_FASCICLE_LIST.txt',
'gpfdist://mdw-3:8081/BAK_EX_FASCICLE_LIST.txt',
'gpfdist://mdw-4:8081/BAK_EX_FASCICLE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_FASCICLE_HEAD------------
drop external table IF EXISTS BAK_FASCICLE_HEAD_INC_EXT;

create external table BAK_FASCICLE_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO       VARCHAR(12),
  FASCICLE_NO     VARCHAR(12)  ,
  PRE_FASCICLE_NO VARCHAR(12),
  I_E_PORT        VARCHAR(4),
  TYPE_ER         VARCHAR(8),
  TYPE_DATE       TIMESTAMP,
  LIMIT_DATE      TIMESTAMP,
  TRADE_CO        VARCHAR(10),
  CHK_ER          VARCHAR(8),
  RECHK_ER        VARCHAR(8),
  PR_DATE         TIMESTAMP,
  FASCICLE_TYPE   VARCHAR(1),
  EXE_MARK        VARCHAR(1),
  CONTR_IN        VARCHAR(32),
  CONTR_OUT       VARCHAR(32),
  IN_PNT          NUMERIC(19),
  EX_PNT          NUMERIC(19),
  SUPV_MARK       VARCHAR(1),
  NOTE_S          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_FASCICLE_HEAD.txt',
'gpfdist://mdw-2:8081/BAK_FASCICLE_HEAD.txt',
'gpfdist://mdw-3:8081/BAK_FASCICLE_HEAD.txt',
'gpfdist://mdw-4:8081/BAK_FASCICLE_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_IM_CONTRACT_LIST------------
drop external table IF EXISTS BAK_IM_CONTRACT_LIST_INC_EXT;

create external table BAK_IM_CONTRACT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  CONTR_ITEM     NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  CLASS_MARK     VARCHAR(1),
  G_NAME         VARCHAR(50),
  G_MODEL        VARCHAR(50),
  ORIGIN_COUNTRY VARCHAR(3),
  DUTY_MODE      VARCHAR(1),
  DUTY_RATIO     NUMERIC(19,5),
  LOCAL_CONTR    VARCHAR(20),
  APPR_AMT       NUMERIC(19,5),
  FACT_AMT       NUMERIC(19,5),
  UNIT_PRICE     NUMERIC(19,10),
  APPR_QTY       NUMERIC(19,5),
  FACT_QTY       NUMERIC(19,5),
  TRANSFER_QTY   NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  IN_COUNT       NUMERIC(19),
  IM_MODE        VARCHAR(1),
  CONSUME_NOTE   VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_IM_CONTRACT_LIST.txt',
'gpfdist://mdw-2:8081/BAK_IM_CONTRACT_LIST.txt',
'gpfdist://mdw-3:8081/BAK_IM_CONTRACT_LIST.txt',
'gpfdist://mdw-4:8081/BAK_IM_CONTRACT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BAK_IM_FASCICLE_LIST------------
drop external table IF EXISTS BAK_IM_FASCICLE_LIST_INC_EXT;

create external table BAK_IM_FASCICLE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12),
  FASCICLE_NO VARCHAR(12)  ,
  CONTR_ITEM  NUMERIC(19)  ,
  APPR_QTY    NUMERIC(19,4),
  FACT_QTY    NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/BAK_IM_FASCICLE_LIST.txt',
'gpfdist://mdw-2:8081/BAK_IM_FASCICLE_LIST.txt',
'gpfdist://mdw-3:8081/BAK_IM_FASCICLE_LIST.txt',
'gpfdist://mdw-4:8081/BAK_IM_FASCICLE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BANK_ACCOUNT------------
drop external table IF EXISTS BANK_ACCOUNT_INC_EXT;

create external table BANK_ACCOUNT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO        VARCHAR(12)  ,
  ID_STAT          VARCHAR(2)  ,
  RECEIVE_DATE     TIMESTAMP  ,
  M_CONTR_NO       VARCHAR(32),
  M_OWNER_NAME     VARCHAR(32),
  M_LIMIT_DATE     TIMESTAMP,
  M_ACCOUNT_AMT    NUMERIC(19,5),
  M_DEAL_MARK      VARCHAR(1),
  M_TYPE_DATE      TIMESTAMP,
  M_BANK_NOTE_NO   VARCHAR(32),
  M_BANK_OPEN_DATE TIMESTAMP,
  M_BANK_NOTE_DATE TIMESTAMP,
  M_APPR_DATE      TIMESTAMP,
  M_NEXT_FLAG      VARCHAR(2),
  CONTR_NO         VARCHAR(32),
  OWNER_NAME       VARCHAR(32),
  LIMIT_DATE       TIMESTAMP,
  ACCOUNT_AMT      NUMERIC(19,5),
  DEAL_MARK        VARCHAR(1),
  TYPE_DATE        TIMESTAMP,
  BANK_NOTE_NO     VARCHAR(32),
  BANK_OPEN_DATE   TIMESTAMP,
  BANK_NOTE_DATE   TIMESTAMP,
  APPR_DATE        TIMESTAMP,
  BANK_ID          VARCHAR(20),
  NEXT_FLAG        VARCHAR(2),
  PORT_CODE        VARCHAR(4),
  COMP_RESULT      VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/BANK_ACCOUNT.txt',
'gpfdist://mdw-2:8081/BANK_ACCOUNT.txt',
'gpfdist://mdw-3:8081/BANK_ACCOUNT.txt',
'gpfdist://mdw-4:8081/BANK_ACCOUNT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BCK_COP_HEAD------------
drop external table IF EXISTS BCK_COP_HEAD_INC_EXT;

create external table BCK_COP_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CODE      VARCHAR(12)  ,
  CUSTOMS_CODE    VARCHAR(4),
  REG_CO          VARCHAR(255),
  ADDR_CO         VARCHAR(255),
  RISK_VALUE      NUMERIC(19,5),
  RISK_TYPE       VARCHAR(1),
  LAW_MAN         VARCHAR(32),
  TEL_CO          VARCHAR(32),
  CONTAC_CO       VARCHAR(32),
  TEL_CONTAC      VARCHAR(32),
  INV_CO          VARCHAR(255),
  INV_COUNTRY     VARCHAR(3),
  RG_FUND         NUMERIC(19,5),
  TRADE_AREA      VARCHAR(255),
  STAFF_NUM       NUMERIC(6),
  EMS_TYPE        VARCHAR(1),
  EMS_NO          VARCHAR(12),
  LAST_CHECK_DATE TIMESTAMP,
  PRODUCE_TYPE    VARCHAR(1),
  NOTE            VARCHAR(255),
  RISK_VALUE_MARK VARCHAR(1),
  RISK_TYPE_MARK  VARCHAR(1),
  RISK_CALC_DATE  TIMESTAMP,
  RISK_AUTO_DATE  TIMESTAMP,
  MARK_1          VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/BCK_COP_HEAD.txt',
'gpfdist://mdw-2:8081/BCK_COP_HEAD.txt',
'gpfdist://mdw-3:8081/BCK_COP_HEAD.txt',
'gpfdist://mdw-4:8081/BCK_COP_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BCK_COP_LIST------------
drop external table IF EXISTS BCK_COP_LIST_INC_EXT;

create external table BCK_COP_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CODE   VARCHAR(12)  ,
  RISK_NO      NUMERIC(19)  ,
  CUSTOMS_CODE VARCHAR(4)  ,
  RISK_VALUE   NUMERIC(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/BCK_COP_LIST.txt',
'gpfdist://mdw-2:8081/BCK_COP_LIST.txt',
'gpfdist://mdw-3:8081/BCK_COP_LIST.txt',
'gpfdist://mdw-4:8081/BCK_COP_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BCK_COP_LIST_TEMP------------
drop external table IF EXISTS BCK_COP_LIST_TEMP_INC_EXT;

create external table BCK_COP_LIST_TEMP_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO     VARCHAR(12)  ,
  RISK_NO      NUMERIC(19)  ,
  CUSTOMS_CODE VARCHAR(4)  ,
  RISK_VALUE   NUMERIC(4),
  VALUE        NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/BCK_COP_LIST_TEMP.txt',
'gpfdist://mdw-2:8081/BCK_COP_LIST_TEMP.txt',
'gpfdist://mdw-3:8081/BCK_COP_LIST_TEMP.txt',
'gpfdist://mdw-4:8081/BCK_COP_LIST_TEMP.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BCK_COP_PARA_HEAD------------
drop external table IF EXISTS BCK_COP_PARA_HEAD_INC_EXT;

create external table BCK_COP_PARA_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RISK_NO      NUMERIC(19)  ,
  CUSTOMS_CODE VARCHAR(4)  ,
  RISK_NAME    VARCHAR(255),
  RISK_DESC    VARCHAR(255),
  WEIGHT_VALUE NUMERIC(4),
  WEIGHT_TYPE  VARCHAR(1),
  DEGREE       VARCHAR(1),
  SOURCE       VARCHAR(1),
  SWITCH       VARCHAR(1),
  NOTE         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/BCK_COP_PARA_HEAD.txt',
'gpfdist://mdw-2:8081/BCK_COP_PARA_HEAD.txt',
'gpfdist://mdw-3:8081/BCK_COP_PARA_HEAD.txt',
'gpfdist://mdw-4:8081/BCK_COP_PARA_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BCK_COP_PARA_LIST------------
drop external table IF EXISTS BCK_COP_PARA_LIST_INC_EXT;

create external table BCK_COP_PARA_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RISK_NO        NUMERIC(19)  ,
  RISK_VALUE     NUMERIC(4)  ,
  CUSTOMS_CODE   VARCHAR(4)  ,
  RISK_LIST_DESC VARCHAR(255)  
)
LOCATION( 
'gpfdist://mdw-1:8081/BCK_COP_PARA_LIST.txt',
'gpfdist://mdw-2:8081/BCK_COP_PARA_LIST.txt',
'gpfdist://mdw-3:8081/BCK_COP_PARA_LIST.txt',
'gpfdist://mdw-4:8081/BCK_COP_PARA_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BCK_EXECUTOR------------
drop external table IF EXISTS BCK_EXECUTOR_INC_EXT;

create external table BCK_EXECUTOR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BCK_NO   VARCHAR(12)  ,
  EXECUTOR VARCHAR(8)  
)
LOCATION( 
'gpfdist://mdw-1:8081/BCK_EXECUTOR.txt',
'gpfdist://mdw-2:8081/BCK_EXECUTOR.txt',
'gpfdist://mdw-3:8081/BCK_EXECUTOR.txt',
'gpfdist://mdw-4:8081/BCK_EXECUTOR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BCK_HANDOVER------------
drop external table IF EXISTS BCK_HANDOVER_INC_EXT;

create external table BCK_HANDOVER_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  HANDOVER_NO    VARCHAR(12)  ,
  CREATE_DATE    TIMESTAMP,
  HANDOVER_TYPE  VARCHAR(1),
  HANDOVER_DEP   VARCHAR(127),
  ACCEPT_DEP     VARCHAR(127),
  SUSPECT_CO     VARCHAR(127),
  SUSPECT_ER     VARCHAR(127),
  SUSPECT_NOTE   VARCHAR(255),
  ACCEPT_STATUS  VARCHAR(1),
  SUSPECT_STATUS VARCHAR(1),
  SUSPECT_AMT    NUMERIC(19,5),
  FEEDBACK       VARCHAR(2560),
  ADDENDA_LIST   VARCHAR(50),
  OTHER_DOC      VARCHAR(255),
  ACTOR_NOTION   VARCHAR(255),
  MASTER_NOTION  VARCHAR(255),
  DEP_NOTION     VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/BCK_HANDOVER.txt',
'gpfdist://mdw-2:8081/BCK_HANDOVER.txt',
'gpfdist://mdw-3:8081/BCK_HANDOVER.txt',
'gpfdist://mdw-4:8081/BCK_HANDOVER.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BCK_HANDOVER_TYPE------------
drop external table IF EXISTS BCK_HANDOVER_TYPE_INC_EXT;

create external table BCK_HANDOVER_TYPE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  HANDOVER_TYPE VARCHAR(1)  ,
  ID            NUMERIC(3)  ,
  DESCRIPTION   VARCHAR(100)
)
LOCATION( 
'gpfdist://mdw-1:8081/BCK_HANDOVER_TYPE.txt',
'gpfdist://mdw-2:8081/BCK_HANDOVER_TYPE.txt',
'gpfdist://mdw-3:8081/BCK_HANDOVER_TYPE.txt',
'gpfdist://mdw-4:8081/BCK_HANDOVER_TYPE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BCK_HEAD------------
drop external table IF EXISTS BCK_HEAD_INC_EXT;

create external table BCK_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BCK_NO                VARCHAR(12)  ,
  PRE_BCK_NO            VARCHAR(12),
  TRADE_CODE            VARCHAR(10),
  REG_CO                VARCHAR(255),
  CO_CLASS              VARCHAR(1),
  ADDR_CO               VARCHAR(255),
  CONTAC_CO             VARCHAR(32),
  TEL_CO                VARCHAR(32),
  RISK_VALUE            NUMERIC(19,5),
  EMS_NO                VARCHAR(12),
  CODE_TS_LIST          VARCHAR(255),
  CHECK_PROP            VARCHAR(1),
  CHECK_TYPE            VARCHAR(1),
  CHECK_MODE            VARCHAR(1),
  URGENT_DEGREE         VARCHAR(1),
  CHECK_LIST            VARCHAR(255),
  ASS_INFO              VARCHAR(255),
  APPLY_INPUTER         VARCHAR(8),
  APPLY_CUSTOMS_CODE    VARCHAR(4),
  APPLY_POS             VARCHAR(4),
  APPLY_COMMIT_DATE     TIMESTAMP,
  APPLY_CHECKER         VARCHAR(8),
  APPLY_CHECK_DATE      TIMESTAMP,
  APPLY_FLAG            VARCHAR(1),
  EVALUATE_NOTE         VARCHAR(1023),
  EVALUATER             VARCHAR(8),
  EVALUATE_DATE         TIMESTAMP,
  EVALUATE_FLAG         VARCHAR(1),
  ALC_ER                VARCHAR(8),
  ALC_DATE              TIMESTAMP,
  EXECUTOR              VARCHAR(255),
  CHECK_DETAIL          VARCHAR(2560),
  CHECK_DATE            TIMESTAMP,
  CHECK_RESULT          VARCHAR(1),
  CHECK_INPUTER         VARCHAR(8),
  EXEC_CHECKER          VARCHAR(8),
  EXEC_CHECK_DATE       TIMESTAMP,
  EXEC_CHECK_FLAG       VARCHAR(1),
  END_RESULT            VARCHAR(1),
  END_CHECKER           VARCHAR(8),
  END_CHECK_DATE        TIMESTAMP,
  RELATIVE_NO           VARCHAR(12),
  HANDOVER_NO           VARCHAR(12),
  CASE_NO               VARCHAR(32),
  DUTY                  NUMERIC(19,5),
  TAX                   NUMERIC(19,5),
  PAY_TAX               NUMERIC(19,5),
  EXE_MARK              VARCHAR(2),
  EXE_MARK_DATE         TIMESTAMP,
  NOTE                  VARCHAR(255),
  CHECK_LIMIT_DATE      TIMESTAMP,
  REQUIRE_SENDER        VARCHAR(8),
  REQUIRE_SEND_DATE     TIMESTAMP,
  REQUIRE_CUSTOMS_CODE  VARCHAR(4),
  REQUIRE_REJ_DATE      TIMESTAMP,
  CHECK_FEEDBACK_DATE   TIMESTAMP,
  IMPROVE_RESULT        VARCHAR(512),
  IMPROVE_FEEDBACK_DATE TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/BCK_HEAD.txt',
'gpfdist://mdw-2:8081/BCK_HEAD.txt',
'gpfdist://mdw-3:8081/BCK_HEAD.txt',
'gpfdist://mdw-4:8081/BCK_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BCK_SEQ------------
drop external table IF EXISTS BCK_SEQ_INC_EXT;

create external table BCK_SEQ_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BCK_KEY VARCHAR(10)  ,
  BCK_SEQ NUMERIC(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/BCK_SEQ.txt',
'gpfdist://mdw-2:8081/BCK_SEQ.txt',
'gpfdist://mdw-3:8081/BCK_SEQ.txt',
'gpfdist://mdw-4:8081/BCK_SEQ.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BCK_STOCK_HEAD------------
drop external table IF EXISTS BCK_STOCK_HEAD_INC_EXT;

create external table BCK_STOCK_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  SEQ_NO         VARCHAR(18)  ,
  TRADE_CODE     VARCHAR(10),
  COP_INNER_NO   VARCHAR(20),
  TRADE_NAME     VARCHAR(255),
  DECL_DATE      TIMESTAMP,
  DECL_TYPE      VARCHAR(1),
  CHECK_TIMES    NUMERIC(19),
  CHECK_DATE     TIMESTAMP,
  EMS_TYPE       VARCHAR(1),
  EMS_NO         VARCHAR(12),
  REG_NAME       VARCHAR(255),
  REG_ADDR       VARCHAR(255),
  LAW_MAN        VARCHAR(32),
  TELE_ENT       VARCHAR(32),
  CONTACT_PERSON VARCHAR(32),
  TEL_CO         VARCHAR(32),
  INVESTOR       VARCHAR(255),
  INV_COUNTRY    VARCHAR(3),
  RG_FUND        NUMERIC(19,5),
  ECO_CY         VARCHAR(1),
  COP_RANGE      VARCHAR(1024),
  EMPLOYER       NUMERIC(10),
  WORKSHOP_SRC   VARCHAR(255),
  EQUIP_SRC      VARCHAR(255),
  NOTE           VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/BCK_STOCK_HEAD.txt',
'gpfdist://mdw-2:8081/BCK_STOCK_HEAD.txt',
'gpfdist://mdw-3:8081/BCK_STOCK_HEAD.txt',
'gpfdist://mdw-4:8081/BCK_STOCK_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BCK_STOCK_LIST------------
drop external table IF EXISTS BCK_STOCK_LIST_INC_EXT;

create external table BCK_STOCK_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  SEQ_NO         VARCHAR(18)  ,
  LIST_NO        NUMERIC(19)  ,
  TRADE_CODE     VARCHAR(10),
  COP_INNER_NO   VARCHAR(20),
  ITEM_NO        NUMERIC(19),
  CODE_T_S       VARCHAR(10),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  UNIT           VARCHAR(3),
  IMG_STOCK_QTY  NUMERIC(19,5),
  IMG_ONLINE_QTY NUMERIC(19,5),
  IMG_IN_QTY     NUMERIC(19,5),
  EXG_CONV_QTY   NUMERIC(19,5),
  OUT_IMG_QTY    NUMERIC(19,5),
  ABAN_QTY       NUMERIC(19,5),
  ON_WAY_QTY     NUMERIC(19,5),
  T_STOCK_QTY    NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/BCK_STOCK_LIST.txt',
'gpfdist://mdw-2:8081/BCK_STOCK_LIST.txt',
'gpfdist://mdw-3:8081/BCK_STOCK_LIST.txt',
'gpfdist://mdw-4:8081/BCK_STOCK_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BCK_WORKFLOW------------
drop external table IF EXISTS BCK_WORKFLOW_INC_EXT;

create external table BCK_WORKFLOW_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BCK_NO      VARCHAR(12)  ,
  CREATE_DATE TIMESTAMP  ,
  STEP_ID     VARCHAR(2)  ,
  OPER_ID     VARCHAR(2)  ,
  NOTE        VARCHAR(255),
  OPER_ER     VARCHAR(8),
  REALTIVE_NO VARCHAR(12)
)
LOCATION( 
'gpfdist://mdw-1:8081/BCK_WORKFLOW.txt',
'gpfdist://mdw-2:8081/BCK_WORKFLOW.txt',
'gpfdist://mdw-3:8081/BCK_WORKFLOW.txt',
'gpfdist://mdw-4:8081/BCK_WORKFLOW.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BTI_DATA_CONTA_LIST------------
drop external table IF EXISTS BTI_DATA_CONTA_LIST_INC_EXT;

create external table BTI_DATA_CONTA_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  UCR_CODE     VARCHAR(35)  ,
  CONTAINER_ID VARCHAR(32)  ,
  SEAL_NO      VARCHAR(12)
)
LOCATION( 
'gpfdist://mdw-1:8081/BTI_DATA_CONTA_LIST.txt',
'gpfdist://mdw-2:8081/BTI_DATA_CONTA_LIST.txt',
'gpfdist://mdw-3:8081/BTI_DATA_CONTA_LIST.txt',
'gpfdist://mdw-4:8081/BTI_DATA_CONTA_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BTI_DATA_HEAD------------
drop external table IF EXISTS BTI_DATA_HEAD_INC_EXT;

create external table BTI_DATA_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  UCR_CODE         VARCHAR(35)  ,
  ENTRY_ID         VARCHAR(18),
  CREATE_DATE      TIMESTAMP  ,
  OP_MODE          VARCHAR(3),
  STATUS_CODE      VARCHAR(32),
  I_E_FLAG         VARCHAR(1),
  I_E_PORT         VARCHAR(11),
  TRADE_CO         VARCHAR(17),
  TRADE_NAME       VARCHAR(255),
  TRAF_NAME        VARCHAR(255),
  VOYAGE_NO        VARCHAR(32),
  BILL_NO          VARCHAR(35),
  OUT_PORT_DATE    TIMESTAMP,
  TRADE_PORT       VARCHAR(11),
  PACK_NO          NUMERIC(19),
  REL_DATE         TIMESTAMP,
  HASH_SIGN        VARCHAR(380),
  CUSTOMS_REMARK   VARCHAR(11),
  CONSIGNOR_NAME   VARCHAR(70),
  DESTINATION_PORT VARCHAR(11),
  SEND_DATE        TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/BTI_DATA_HEAD.txt',
'gpfdist://mdw-2:8081/BTI_DATA_HEAD.txt',
'gpfdist://mdw-3:8081/BTI_DATA_HEAD.txt',
'gpfdist://mdw-4:8081/BTI_DATA_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BTI_DATA_TS_LIST------------
drop external table IF EXISTS BTI_DATA_TS_LIST_INC_EXT;

create external table BTI_DATA_TS_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  UCR_CODE VARCHAR(35)  ,
  G_NO     NUMERIC(19)  ,
  CODE_TS  VARCHAR(16),
  G_NAME   VARCHAR(255),
  PACK_NO  NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/BTI_DATA_TS_LIST.txt',
'gpfdist://mdw-2:8081/BTI_DATA_TS_LIST.txt',
'gpfdist://mdw-3:8081/BTI_DATA_TS_LIST.txt',
'gpfdist://mdw-4:8081/BTI_DATA_TS_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_AUDIT_HEAD------------
drop external table IF EXISTS BWS_AUDIT_HEAD_INC_EXT;

create external table BWS_AUDIT_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  AUDIT_NO         VARCHAR(18)  ,
  EPORT_NO         VARCHAR(18),
  AUDIT_TYPE       VARCHAR(1),
  I_E_FLAG         VARCHAR(1),
  MASTER_CUSTOMS   VARCHAR(4),
  I_E_DATE         TIMESTAMP,
  DECL_DATE        TIMESTAMP,
  TRADE_CODE       VARCHAR(10),
  TRADE_NAME       VARCHAR(128),
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(128),
  DECLARE_CODE     VARCHAR(10),
  DECLARE_NAME     VARCHAR(128),
  BWS_NO           VARCHAR(12),
  AUDIT_NO_RELATED VARCHAR(18),
  BWS_NO_RELATED   VARCHAR(12),
  CHK_MARK         VARCHAR(1),
  PACK_NO          NUMERIC(19,5),
  GROSS_WT         NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_AUDIT_HEAD.txt',
'gpfdist://mdw-2:8081/BWS_AUDIT_HEAD.txt',
'gpfdist://mdw-3:8081/BWS_AUDIT_HEAD.txt',
'gpfdist://mdw-4:8081/BWS_AUDIT_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_AUDIT_LIST------------
drop external table IF EXISTS BWS_AUDIT_LIST_INC_EXT;

create external table BWS_AUDIT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  AUDIT_NO VARCHAR(18)  ,
  G_NO     NUMERIC(19)  ,
  G_TYPE   VARCHAR(1)  ,
  CODE_TS  VARCHAR(16),
  G_NAME   VARCHAR(128),
  G_MODEL  VARCHAR(128),
  BWS_G_NO NUMERIC(19),
  QTY      NUMERIC(19,5),
  UNIT     VARCHAR(3),
  AMOUNT   NUMERIC(19,5),
  CURR     VARCHAR(3)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_AUDIT_LIST.txt',
'gpfdist://mdw-2:8081/BWS_AUDIT_LIST.txt',
'gpfdist://mdw-3:8081/BWS_AUDIT_LIST.txt',
'gpfdist://mdw-4:8081/BWS_AUDIT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_DCR_BILL_LIST------------
drop external table IF EXISTS BWS_DCR_BILL_LIST_INC_EXT;

create external table BWS_DCR_BILL_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_NO       VARCHAR(12)  ,
  DCR_TIMES    NUMERIC(19)  ,
  G_TYPE       VARCHAR(2)  ,
  G_NO         VARCHAR(18)  ,
  CUSTOMS_CODE VARCHAR(4),
  TRANS_MODE   VARCHAR(1),
  DECLARE_DATE TIMESTAMP,
  TRANS_DATE   TIMESTAMP,
  DU_CODE      VARCHAR(2),
  NOTE         VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_DCR_BILL_LIST.txt',
'gpfdist://mdw-2:8081/BWS_DCR_BILL_LIST.txt',
'gpfdist://mdw-3:8081/BWS_DCR_BILL_LIST.txt',
'gpfdist://mdw-4:8081/BWS_DCR_BILL_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_DCR_HEAD------------
drop external table IF EXISTS BWS_DCR_HEAD_INC_EXT;

create external table BWS_DCR_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_NO       VARCHAR(12)  ,
  DCR_TIMES    NUMERIC(19)  ,
  DCR_TYPE     VARCHAR(1)  ,
  BWS_TYPE     VARCHAR(1),
  EPORT_NO     VARCHAR(18),
  TRADE_CODE   VARCHAR(10),
  TRADE_NAME   VARCHAR(128),
  BEGIN_DATE   TIMESTAMP,
  END_DATE     TIMESTAMP,
  IM_NUM       NUMERIC(19),
  EX_NUM       NUMERIC(19),
  CUSTOMS_CODE VARCHAR(4),
  INPUT_DATE   TIMESTAMP,
  INPUT_ER     VARCHAR(8),
  DCR_DATE     TIMESTAMP,
  NOTE         VARCHAR(128),
  CHK_MARK     VARCHAR(1),
  CHK_DATE     TIMESTAMP,
  MESSAGE_TYPE VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_DCR_HEAD.txt',
'gpfdist://mdw-2:8081/BWS_DCR_HEAD.txt',
'gpfdist://mdw-3:8081/BWS_DCR_HEAD.txt',
'gpfdist://mdw-4:8081/BWS_DCR_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_DCR_LIST------------
drop external table IF EXISTS BWS_DCR_LIST_INC_EXT;

create external table BWS_DCR_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_NO             VARCHAR(12)  ,
  DCR_TIMES          NUMERIC(19)  ,
  G_NO               NUMERIC(19)  ,
  COP_G_NO           VARCHAR(30),
  CODE_TS            VARCHAR(10),
  G_NAME             VARCHAR(128),
  G_MODEL            VARCHAR(128),
  REMAIN_QTY         NUMERIC(19,5),
  FACT_REMAIN_QTY    NUMERIC(19,5),
  UNIT               VARCHAR(3),
  REMAIN_AMOUNT      NUMERIC(19,5),
  FACT_REMAIN_AMOUNT NUMERIC(19,5),
  CURR               VARCHAR(4),
  NOTE               VARCHAR(1),
  QTY                NUMERIC(19,5),
  AMOUNT             NUMERIC(19,5),
  H_REMAIN_QTY       NUMERIC(19,5),
  H_REMAIN_AMOUNT    NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_DCR_LIST.txt',
'gpfdist://mdw-2:8081/BWS_DCR_LIST.txt',
'gpfdist://mdw-3:8081/BWS_DCR_LIST.txt',
'gpfdist://mdw-4:8081/BWS_DCR_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_DEDUCT------------
drop external table IF EXISTS BWS_DEDUCT_INC_EXT;

create external table BWS_DEDUCT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_ID       VARCHAR(18)  ,
  ENTRY_G_NO   NUMERIC(19)  ,
  BWS_NO       VARCHAR(12),
  BWS_G_NO     NUMERIC(19),
  BWS_G_TYPE   VARCHAR(2),
  DU_CODE      VARCHAR(2),
  IN_QTY       NUMERIC(19,5),
  I_ACCOUNT    NUMERIC(19,5),
  I_E_FLAG     VARCHAR(1),
  I_CURR       VARCHAR(4),
  I_E_PORT     VARCHAR(128),
  TRADE_MODE   VARCHAR(4),
  TRAF_MODE    VARCHAR(1),
  VERIFY_MODE  VARCHAR(2),
  VERIFY_DATE  TIMESTAMP,
  VERIFY_ER    VARCHAR(8),
  I_E_DATE     TIMESTAMP,
  USD_ACCOUNT  NUMERIC(19,5),
  JOU_MARK     VARCHAR(1),
  DECLARE_DATE TIMESTAMP,
  TRANS_MODE   VARCHAR(1),
  CUSTOMS_CODE VARCHAR(4),
  DCR_TIMES    NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_DEDUCT.txt',
'gpfdist://mdw-2:8081/BWS_DEDUCT.txt',
'gpfdist://mdw-3:8081/BWS_DEDUCT.txt',
'gpfdist://mdw-4:8081/BWS_DEDUCT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_DEDUCT_LOG------------
drop external table IF EXISTS BWS_DEDUCT_LOG_INC_EXT;

create external table BWS_DEDUCT_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_ID      VARCHAR(18)  ,
  BWS_NO      VARCHAR(12)  ,
  CREATE_DATE TIMESTAMP  ,
  JOU_MARK    VARCHAR(1)  ,
  NOTE        VARCHAR(1),
  VERIFY_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_DEDUCT_LOG.txt',
'gpfdist://mdw-2:8081/BWS_DEDUCT_LOG.txt',
'gpfdist://mdw-3:8081/BWS_DEDUCT_LOG.txt',
'gpfdist://mdw-4:8081/BWS_DEDUCT_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_EXAM_CERT_LIST------------
drop external table IF EXISTS BWS_EXAM_CERT_LIST_INC_EXT;

create external table BWS_EXAM_CERT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_EXAM_NO VARCHAR(16)  ,
  G_NO        NUMERIC(19)  ,
  CERT_NO     VARCHAR(18),
  PACK_NO     NUMERIC(19,5),
  GROSS_WT    NUMERIC(19,5),
  BILL_NO     VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_EXAM_CERT_LIST.txt',
'gpfdist://mdw-2:8081/BWS_EXAM_CERT_LIST.txt',
'gpfdist://mdw-3:8081/BWS_EXAM_CERT_LIST.txt',
'gpfdist://mdw-4:8081/BWS_EXAM_CERT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_EXAM_GOOD_LIST------------
drop external table IF EXISTS BWS_EXAM_GOOD_LIST_INC_EXT;

create external table BWS_EXAM_GOOD_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_EXAM_NO VARCHAR(16)  ,
  G_NO        NUMERIC(19)  ,
  CERT_NO     VARCHAR(18),
  CERT_G_NO   NUMERIC(19),
  G_NAME      VARCHAR(128),
  QTY         NUMERIC(19,5),
  UNIT        VARCHAR(3)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_EXAM_GOOD_LIST.txt',
'gpfdist://mdw-2:8081/BWS_EXAM_GOOD_LIST.txt',
'gpfdist://mdw-3:8081/BWS_EXAM_GOOD_LIST.txt',
'gpfdist://mdw-4:8081/BWS_EXAM_GOOD_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_EXAM_HEAD------------
drop external table IF EXISTS BWS_EXAM_HEAD_INC_EXT;

create external table BWS_EXAM_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_EXAM_NO    VARCHAR(16)  ,
  EPORT_NO       VARCHAR(18),
  EXAM_TYPE      VARCHAR(1),
  CERT_TYPE      VARCHAR(2),
  I_E_FLAG       VARCHAR(1),
  BWS_NO         VARCHAR(12),
  MASTER_CUSTOMS VARCHAR(4),
  TRADE_CODE     VARCHAR(10),
  TRADE_NAME     VARCHAR(128),
  TRANSIT_CODE   VARCHAR(10),
  TRANSIT_NAME   VARCHAR(128),
  ENTRUST_CODE   VARCHAR(10),
  ENTRUST_NAME   VARCHAR(128),
  VEHICLE_NT     NUMERIC(19,5),
  TOTAL_PACK_NO  NUMERIC(19,5),
  TOTAL_WEIGHT   NUMERIC(19,5),
  IC_CARD        VARCHAR(18),
  SHIP_ID        VARCHAR(18),
  CONTA_ID1      VARCHAR(32),
  SEAL_NO1       VARCHAR(101),
  CONTA_ID2      VARCHAR(32),
  SEAL_NO2       VARCHAR(101),
  INPUT_DATE     TIMESTAMP,
  INPUT_ER       VARCHAR(8),
  DECLARE_DATE   TIMESTAMP,
  NOTE           VARCHAR(255),
  CHK_MARK       VARCHAR(1),
  PASS_MODE      VARCHAR(10),
  PASS_TIME      TIMESTAMP,
  KK_CODE        VARCHAR(18),
  KK_PASS_WEIGHT NUMERIC(19,5),
  PASS_REASON    VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_EXAM_HEAD.txt',
'gpfdist://mdw-2:8081/BWS_EXAM_HEAD.txt',
'gpfdist://mdw-3:8081/BWS_EXAM_HEAD.txt',
'gpfdist://mdw-4:8081/BWS_EXAM_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_EXAM_PASSCERT------------
drop external table IF EXISTS BWS_EXAM_PASSCERT_INC_EXT;

create external table BWS_EXAM_PASSCERT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CERT_NO     VARCHAR(18)  ,
  CERT_TYPE   VARCHAR(2),
  FLAG        VARCHAR(1),
  FLAG1       VARCHAR(1),
  CREATE_DATE TIMESTAMP,
  NOTE        VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_EXAM_PASSCERT.txt',
'gpfdist://mdw-2:8081/BWS_EXAM_PASSCERT.txt',
'gpfdist://mdw-3:8081/BWS_EXAM_PASSCERT.txt',
'gpfdist://mdw-4:8081/BWS_EXAM_PASSCERT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_FORM_HEAD------------
drop external table IF EXISTS BWS_FORM_HEAD_INC_EXT;

create external table BWS_FORM_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FORM_ID        VARCHAR(18)  ,
  EPORT_NO       VARCHAR(18),
  BWS_NO         VARCHAR(12),
  I_E_FLAG       VARCHAR(1),
  RELATIVE_ID    VARCHAR(12),
  MASTER_CUSTOMS VARCHAR(4),
  TRADE_CODE     VARCHAR(10),
  TRADE_NAME     VARCHAR(128),
  OWNER_CODE     VARCHAR(10),
  OWNER_NAME     VARCHAR(128),
  DECLARE_CODE   VARCHAR(10),
  DECLARE_NAME   VARCHAR(128),
  BILL_NO        VARCHAR(32),
  PACK_NO        NUMERIC(19,5),
  WRAP_TYPE      VARCHAR(32),
  GROSS_NT       NUMERIC(19,5),
  GROSS_WT       NUMERIC(19,5),
  NOTE           VARCHAR(10),
  DECLARE_DATE   TIMESTAMP,
  CHK_MARK       VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_FORM_HEAD.txt',
'gpfdist://mdw-2:8081/BWS_FORM_HEAD.txt',
'gpfdist://mdw-3:8081/BWS_FORM_HEAD.txt',
'gpfdist://mdw-4:8081/BWS_FORM_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_FORM_LIST------------
drop external table IF EXISTS BWS_FORM_LIST_INC_EXT;

create external table BWS_FORM_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FORM_ID        VARCHAR(18)  ,
  G_NO           NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  CONTR_ITEM     NUMERIC(19),
  TRADE_CURR     VARCHAR(3),
  EXCHANGE_RATE  NUMERIC(19,7),
  DECL_PRICE     NUMERIC(19,5),
  DECL_TOTAL     NUMERIC(19,5),
  USE_TO         VARCHAR(2),
  DUTY_MODE      VARCHAR(1),
  G_QTY          NUMERIC(19,5),
  G_UNIT         VARCHAR(3),
  QTY_1          NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  QTY_2          NUMERIC(19,5),
  UNIT_2         VARCHAR(3),
  TRADE_TOTAL    NUMERIC(19,5),
  RMB_PRICE      NUMERIC(19),
  USD_PRICE      NUMERIC(19),
  DUTY_VALUE     NUMERIC(19),
  G_PROCESS_MARK VARCHAR(2),
  WORK_USD       NUMERIC(19,5),
  CLASS_MARK     VARCHAR(1),
  G_CERT_FLAG    VARCHAR(32),
  PRDT_NO        VARCHAR(32),
  GOODS_ID       VARCHAR(32),
  DECL_CODE_TS   VARCHAR(16),
  AGREEMENT_ID   VARCHAR(2)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_FORM_LIST.txt',
'gpfdist://mdw-2:8081/BWS_FORM_LIST.txt',
'gpfdist://mdw-3:8081/BWS_FORM_LIST.txt',
'gpfdist://mdw-4:8081/BWS_FORM_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_GB_LIST------------
drop external table IF EXISTS BWS_GB_LIST_INC_EXT;

create external table BWS_GB_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_NO       VARCHAR(12)  ,
  G_NO         NUMERIC(19)  ,
  BWS_G_NO     NUMERIC(19),
  COP_G_NO     VARCHAR(30),
  CODE_TS      VARCHAR(10),
  CLASS_MARK   VARCHAR(1),
  G_NAME       VARCHAR(128),
  G_MODEL      VARCHAR(128),
  UNIT         VARCHAR(3),
  UNIT_1       VARCHAR(3),
  UNIT_2       VARCHAR(3),
  DEC_PRICE    NUMERIC(19,5),
  CURR         VARCHAR(4),
  COUNTRY_CODE VARCHAR(4),
  DUTY_MODE    VARCHAR(1),
  USE_TYPE     VARCHAR(10),
  MODIFY_MARK  VARCHAR(1),
  NOTE         VARCHAR(10)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_GB_LIST.txt',
'gpfdist://mdw-2:8081/BWS_GB_LIST.txt',
'gpfdist://mdw-3:8081/BWS_GB_LIST.txt',
'gpfdist://mdw-4:8081/BWS_GB_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_HEAD------------
drop external table IF EXISTS BWS_HEAD_INC_EXT;

create external table BWS_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_NO          VARCHAR(12)  ,
  BWS_TYPE        VARCHAR(1),
  EPORT_NO        VARCHAR(18),
  MASTER_CUSTOMS  VARCHAR(4),
  REGION_NO       VARCHAR(9),
  DECLARE_TYPE    VARCHAR(1),
  TRADE_CODE      VARCHAR(10),
  TRADE_NAME      VARCHAR(128),
  OWNER_CODE      VARCHAR(10),
  OWNER_NAME      VARCHAR(128),
  DECLARE_CODE    VARCHAR(10),
  DECLARE_NAME    VARCHAR(128),
  ADDRESS         VARCHAR(128),
  PHONE           VARCHAR(20),
  STORE_TYPE      VARCHAR(1),
  STORE_VOL       NUMERIC(19,5),
  STORE_AREA      NUMERIC(19,5),
  STORE_ADDRESS   VARCHAR(128),
  INPUT_DATE      TIMESTAMP,
  DECLARE_DATE    TIMESTAMP,
  CHK_MARK        VARCHAR(1),
  EXE_MARK        VARCHAR(1),
  NEW_APPR_DATE   TIMESTAMP,
  CNG_APPR_DATE   TIMESTAMP,
  CLEAR_DATE      TIMESTAMP,
  NEXT_CLEAR_DATE TIMESTAMP,
  NOTE            VARCHAR(255),
  FIRST_QTY       NUMERIC(19,5),
  FIRST_AMOUNT    NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_HEAD.txt',
'gpfdist://mdw-2:8081/BWS_HEAD.txt',
'gpfdist://mdw-3:8081/BWS_HEAD.txt',
'gpfdist://mdw-4:8081/BWS_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_LIST------------
drop external table IF EXISTS BWS_LIST_INC_EXT;

create external table BWS_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_NO       VARCHAR(12)  ,
  G_NO         NUMERIC(19)  ,
  CODE_TS      VARCHAR(10),
  CLASS_MARK   VARCHAR(1),
  G_NAME       VARCHAR(128),
  G_MODEL      VARCHAR(128),
  UNIT         VARCHAR(3),
  UNIT_1       VARCHAR(3),
  UNIT_2       VARCHAR(3),
  CURR         VARCHAR(4),
  COUNTRY_CODE VARCHAR(4),
  DUTY_MODE    VARCHAR(1),
  USE_TYPE     VARCHAR(10),
  DEC_PRICE    NUMERIC(19,5),
  QTY          NUMERIC(19,5),
  MAX_QTY      NUMERIC(19,5),
  FIRST_QTY    NUMERIC(19,5),
  FIRST_AMOUNT NUMERIC(19,5),
  INC_AMOUNT   NUMERIC(19,5),
  INC_QTY      NUMERIC(19,5),
  CUT_AMOUNT   NUMERIC(19,5),
  CUT_QTY      NUMERIC(19,5),
  MODIFY_MARK  VARCHAR(1),
  NOTE         VARCHAR(10)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_LIST.txt',
'gpfdist://mdw-2:8081/BWS_LIST.txt',
'gpfdist://mdw-3:8081/BWS_LIST.txt',
'gpfdist://mdw-4:8081/BWS_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_MANIFEST_HEAD------------
drop external table IF EXISTS BWS_MANIFEST_HEAD_INC_EXT;

create external table BWS_MANIFEST_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_MANIFEST_NO   VARCHAR(18)  ,
  EPORT_NO          VARCHAR(18),
  BWS_NO            VARCHAR(12),
  MASTER_CUSTOMS    VARCHAR(4),
  DECLARE_CODE      VARCHAR(10),
  DECLARE_NAME      VARCHAR(128),
  DECLARE_DATE      TIMESTAMP,
  I_E_DATE          TIMESTAMP,
  I_E_PORT          VARCHAR(4),
  TRAF_MODE         VARCHAR(1),
  MANIFEST_NO       VARCHAR(18),
  SHIP_ID           VARCHAR(32),
  VOYAGE_NO         VARCHAR(32),
  SHIP_NAME_CN      VARCHAR(255),
  SHIP_NAME_EN      VARCHAR(255),
  BILL_NUM          NUMERIC(19),
  PACK_NO           NUMERIC(19,5),
  GROSS_WT          NUMERIC(19,5),
  CONTA_NUM         NUMERIC(19),
  CHK_MARK          VARCHAR(1),
  DESTINATION_PLACE VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_MANIFEST_HEAD.txt',
'gpfdist://mdw-2:8081/BWS_MANIFEST_HEAD.txt',
'gpfdist://mdw-3:8081/BWS_MANIFEST_HEAD.txt',
'gpfdist://mdw-4:8081/BWS_MANIFEST_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_MANIFEST_LIST------------
drop external table IF EXISTS BWS_MANIFEST_LIST_INC_EXT;

create external table BWS_MANIFEST_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_MANIFEST_NO VARCHAR(18)  ,
  G_NO            NUMERIC(19)  ,
  BILL_NO         VARCHAR(32),
  MAIN_G_NAME     VARCHAR(255),
  PACK_NO         NUMERIC(19,5),
  BILL_GROSS_WT   NUMERIC(19,5),
  CONTA_ID        VARCHAR(32),
  SEAL_NO         VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_MANIFEST_LIST.txt',
'gpfdist://mdw-2:8081/BWS_MANIFEST_LIST.txt',
'gpfdist://mdw-3:8081/BWS_MANIFEST_LIST.txt',
'gpfdist://mdw-4:8081/BWS_MANIFEST_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_SEQ------------
drop external table IF EXISTS BWS_SEQ_INC_EXT;

create external table BWS_SEQ_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_KEY VARCHAR(10)  ,
  BWS_SEQ NUMERIC(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_SEQ.txt',
'gpfdist://mdw-2:8081/BWS_SEQ.txt',
'gpfdist://mdw-3:8081/BWS_SEQ.txt',
'gpfdist://mdw-4:8081/BWS_SEQ.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_VAR------------
drop external table IF EXISTS BWS_VAR_INC_EXT;

create external table BWS_VAR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  VAR_TYPE     VARCHAR(16)  ,
  VAR_ID       VARCHAR(32)  ,
  VAR_SUB_ID   VARCHAR(32) ,
  CUSTOMS_CODE VARCHAR(4)  ,
  VAR_VALUE    VARCHAR(128),
  VAR_VALUE1   VARCHAR(128),
  VAR_VALUE2   VARCHAR(128),
  VAR_VALUE3   VARCHAR(128),
  VAR_DESC     VARCHAR(128),
  MODIFY_TIME  TIMESTAMP,
  VAR_ENABLED  VARCHAR(1) 
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_VAR.txt',
'gpfdist://mdw-2:8081/BWS_VAR.txt',
'gpfdist://mdw-3:8081/BWS_VAR.txt',
'gpfdist://mdw-4:8081/BWS_VAR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------BWS_WORKFLOW------------
drop external table IF EXISTS BWS_WORKFLOW_INC_EXT;

create external table BWS_WORKFLOW_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BWS_ID      VARCHAR(18)  ,
  STEP_ID     VARCHAR(8)  ,
  CREATE_DATE TIMESTAMP  ,
  PROC_ER     VARCHAR(20),
  PROC_ID     VARCHAR(8),
  PROC_POS    VARCHAR(4),
  PROC_RESULT VARCHAR(128)
)
LOCATION( 
'gpfdist://mdw-1:8081/BWS_WORKFLOW.txt',
'gpfdist://mdw-2:8081/BWS_WORKFLOW.txt',
'gpfdist://mdw-3:8081/BWS_WORKFLOW.txt',
'gpfdist://mdw-4:8081/BWS_WORKFLOW.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CCTS_ERROR_LOG------------
drop external table IF EXISTS CCTS_ERROR_LOG_INC_EXT;

create external table CCTS_ERROR_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  SEQUENCE_NO     VARCHAR(18)  ,
  FORM_TYPE       VARCHAR(1),
  ENTRY_ID        VARCHAR(18),
  G_NO            NUMERIC(19),
  POSITION_ID     INTEGER,
  SUB_POSITION_ID INTEGER,
  COMMENTS        VARCHAR(512),
  CREATE_DATE     TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/CCTS_ERROR_LOG.txt',
'gpfdist://mdw-2:8081/CCTS_ERROR_LOG.txt',
'gpfdist://mdw-3:8081/CCTS_ERROR_LOG.txt',
'gpfdist://mdw-4:8081/CCTS_ERROR_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CCTS_ONLINE_RESULT------------
drop external table IF EXISTS CCTS_ONLINE_RESULT_INC_EXT;

create external table CCTS_ONLINE_RESULT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  SEQUENCE_NO VARCHAR(18)  ,
  FORM_TYPE   VARCHAR(1),
  ENTRY_ID    VARCHAR(18),
  CCTS_CODE   VARCHAR(16),
  CREATE_DATE TIMESTAMP,
  COMMENTS    VARCHAR(255),
  G_NO        NUMERIC(19),
  CODE_TS     VARCHAR(16),
  G_NAME      VARCHAR(255),
  G_MODEL     VARCHAR(255),
  PROC_TYPE   VARCHAR(4),
  DERIVE_CODE VARCHAR(16),
  RSK_NO      VARCHAR(15),
  PROC_IDEA   VARCHAR(255),
  NOTE        VARCHAR(255),
  P_DEPT      VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CCTS_ONLINE_RESULT.txt',
'gpfdist://mdw-2:8081/CCTS_ONLINE_RESULT.txt',
'gpfdist://mdw-3:8081/CCTS_ONLINE_RESULT.txt',
'gpfdist://mdw-4:8081/CCTS_ONLINE_RESULT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CCTS_ONLINE_RESULT_BAK------------
drop external table IF EXISTS CCTS_ONLINE_RESULT_BAK_INC_EXT;

create external table CCTS_ONLINE_RESULT_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  SEQUENCE_NO VARCHAR(18)  ,
  FORM_TYPE   VARCHAR(1),
  ENTRY_ID    VARCHAR(18),
  CCTS_CODE   VARCHAR(16),
  CREATE_DATE TIMESTAMP,
  COMMENTS    VARCHAR(255),
  G_NO        NUMERIC(19),
  CODE_TS     VARCHAR(16),
  G_NAME      VARCHAR(255),
  G_MODEL     VARCHAR(255),
  PROC_TYPE   VARCHAR(4),
  DERIVE_CODE VARCHAR(16),
  RSK_NO      VARCHAR(15),
  PROC_IDEA   VARCHAR(255),
  NOTE        VARCHAR(255),
  P_DEPT      VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CCTS_ONLINE_RESULT_BAK.txt',
'gpfdist://mdw-2:8081/CCTS_ONLINE_RESULT_BAK.txt',
'gpfdist://mdw-3:8081/CCTS_ONLINE_RESULT_BAK.txt',
'gpfdist://mdw-4:8081/CCTS_ONLINE_RESULT_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CCTS_PERFORMANCE------------
drop external table IF EXISTS CCTS_PERFORMANCE_INC_EXT;

create external table CCTS_PERFORMANCE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  SEQUENCE_NO  VARCHAR(18)  ,
  FORM_TYPE    VARCHAR(1),
  ENTRY_ID     VARCHAR(18),
  CUSTOMS_CODE VARCHAR(4),
  CREATE_DATE  TIMESTAMP,
  DEL_DIGIT    INTEGER ,
  MODI_DIGIT   INTEGER ,
  REJECT_DIGIT INTEGER ,
  VAL_DIGIT    INTEGER ,
  CHK_DIGIT    INTEGER ,
  FIT_DIGIT    INTEGER ,
  SPARE_DIGIT  INTEGER ,
  VAL_TOTAL    NUMERIC(19,4) ,
  NOTE         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CCTS_PERFORMANCE.txt',
'gpfdist://mdw-2:8081/CCTS_PERFORMANCE.txt',
'gpfdist://mdw-3:8081/CCTS_PERFORMANCE.txt',
'gpfdist://mdw-4:8081/CCTS_PERFORMANCE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CCTS_RSK_RESULT------------
drop external table IF EXISTS CCTS_RSK_RESULT_INC_EXT;

create external table CCTS_RSK_RESULT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE    VARCHAR(16)  ,
  CUSTOMS_CODE VARCHAR(4)  ,
  RSK_TYPE     VARCHAR(1),
  RSK_LEVEL    VARCHAR(1),
  RSK_COMMENT  VARCHAR(255),
  INPUT_ID     VARCHAR(8),
  OP_TIME      TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/CCTS_RSK_RESULT.txt',
'gpfdist://mdw-2:8081/CCTS_RSK_RESULT.txt',
'gpfdist://mdw-3:8081/CCTS_RSK_RESULT.txt',
'gpfdist://mdw-4:8081/CCTS_RSK_RESULT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CCTS_RSK_RESULT_BAK------------
drop external table IF EXISTS CCTS_RSK_RESULT_BAK_INC_EXT;

create external table CCTS_RSK_RESULT_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE      VARCHAR(16)  ,
  CUSTOMS_CODE   VARCHAR(4)  ,
  RSK_TYPE       VARCHAR(1),
  RSK_LEVEL      VARCHAR(1),
  RSK_COMMENT    VARCHAR(255),
  INPUT_ID       VARCHAR(8),
  OP_TIME        TIMESTAMP,
  OP_BAK_TYPE    VARCHAR(8),
  OP_BAK_CUSTOMS VARCHAR(4),
  OP_BAK_MAN     VARCHAR(8),
  OP_BAK_TIME    TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/CCTS_RSK_RESULT_BAK.txt',
'gpfdist://mdw-2:8081/CCTS_RSK_RESULT_BAK.txt',
'gpfdist://mdw-3:8081/CCTS_RSK_RESULT_BAK.txt',
'gpfdist://mdw-4:8081/CCTS_RSK_RESULT_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_CERTIFICATE------------
drop external table IF EXISTS CDL_CERTIFICATE_INC_EXT;

create external table CDL_CERTIFICATE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_NO   VARCHAR(18)  ,
  DOCU_CODE VARCHAR(1)  ,
  CERT_CODE VARCHAR(32)  
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_CERTIFICATE.txt',
'gpfdist://mdw-2:8081/CDL_CERTIFICATE.txt',
'gpfdist://mdw-3:8081/CDL_CERTIFICATE.txt',
'gpfdist://mdw-4:8081/CDL_CERTIFICATE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_CHK------------
drop external table IF EXISTS CDL_CHK_INC_EXT;

create external table CDL_CHK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_NO     VARCHAR(18)  ,
  PRE_LIST_NO VARCHAR(18),
  SHIP_ID     VARCHAR(255),
  VOYAGE_NO   VARCHAR(32),
  BILL_NO     VARCHAR(32),
  TRAF_MODE   VARCHAR(32),
  I_E_FLAG    VARCHAR(32),
  DECL_PORT   VARCHAR(4),
  I_E_PORT    VARCHAR(4),
  I_E_DATE    TIMESTAMP,
  TRADE_NAME  VARCHAR(255),
  AGENT_NAME  VARCHAR(255),
  OWNER_NAME  VARCHAR(255),
  TRADE_MODE  VARCHAR(4),
  MANUAL_NO   VARCHAR(12),
  PACK_NO     NUMERIC(19,5),
  GROSS_WT    NUMERIC(19,4),
  GEN_DATE    TIMESTAMP,
  GEN_ER      VARCHAR(8),
  CHK_MARK    VARCHAR(1),
  CHK_DATE    TIMESTAMP,
  CHK_ER      VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_CHK.txt',
'gpfdist://mdw-2:8081/CDL_CHK.txt',
'gpfdist://mdw-3:8081/CDL_CHK.txt',
'gpfdist://mdw-4:8081/CDL_CHK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_COMMODITY------------
drop external table IF EXISTS CDL_COMMODITY_INC_EXT;

create external table CDL_COMMODITY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RECORDS_NO     VARCHAR(12)  ,
  PRE_RECORDS_NO VARCHAR(18),
  TRADE_CO       VARCHAR(10),
  G_NO           NUMERIC(19)  ,
  FIT_FLAG       VARCHAR(1),
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  G_UNIT         VARCHAR(3),
  DECL_PRICE     NUMERIC(19,5),
  TRADE_CURR     VARCHAR(3),
  I_E_FLAG       VARCHAR(1),
  ORIGIN_COUNTRY VARCHAR(3),
  DISTRICT_CODE  VARCHAR(5),
  LICENSE_NO     VARCHAR(20),
  LICENSE_COUNT  NUMERIC(19),
  LICENSE_DATE   TIMESTAMP,
  MOD_TYPE       VARCHAR(1),
  CUSTOMS_CODE   VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_COMMODITY.txt',
'gpfdist://mdw-2:8081/CDL_COMMODITY.txt',
'gpfdist://mdw-3:8081/CDL_COMMODITY.txt',
'gpfdist://mdw-4:8081/CDL_COMMODITY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_COMP_COMM_MODIFY_LOG------------
drop external table IF EXISTS CDL_COMP_COMM_MODIFY_LOG_INC_EXT;

create external table CDL_COMP_COMM_MODIFY_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO     VARCHAR(10)  ,
  RECORDS_NO   VARCHAR(12),
  OP_TIME      TIMESTAMP  ,
  MODI_TYPE    NUMERIC(19)  ,
  ITEM_NAME    VARCHAR(255)  ,
  ITEM_SOURCE  VARCHAR(255),
  ITEM_CURRENT VARCHAR(255),
  NOTES        VARCHAR(255),
  CUSTOMS_CODE VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_COMP_COMM_MODIFY_LOG.txt',
'gpfdist://mdw-2:8081/CDL_COMP_COMM_MODIFY_LOG.txt',
'gpfdist://mdw-3:8081/CDL_COMP_COMM_MODIFY_LOG.txt',
'gpfdist://mdw-4:8081/CDL_COMP_COMM_MODIFY_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_COMP_COMM_OP_LOG------------
drop external table IF EXISTS CDL_COMP_COMM_OP_LOG_INC_EXT;

create external table CDL_COMP_COMM_OP_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO       VARCHAR(10)  ,
  RECORDS_NO     VARCHAR(12),
  PRE_RECORDS_NO VARCHAR(18),
  CUSTOMS_CODE   VARCHAR(4),
  RECORDS_DATE   TIMESTAMP,
  PROC_TYPE      VARCHAR(2)  ,
  PROC_ER        VARCHAR(8),
  PROC_DATE      TIMESTAMP  ,
  R_NOTES        VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_COMP_COMM_OP_LOG.txt',
'gpfdist://mdw-2:8081/CDL_COMP_COMM_OP_LOG.txt',
'gpfdist://mdw-3:8081/CDL_COMP_COMM_OP_LOG.txt',
'gpfdist://mdw-4:8081/CDL_COMP_COMM_OP_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_COMPANY------------
drop external table IF EXISTS CDL_COMPANY_INC_EXT;

create external table CDL_COMPANY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO          VARCHAR(10)  ,
  TRADE_NAME        VARCHAR(255),
  CUSTOMS_CODE      VARCHAR(4)  ,
  APP_MOD_FLAG      VARCHAR(1),
  TRADE_BONDED_FLAG VARCHAR(2)  ,
  GRT_TYPE          VARCHAR(1),
  GRT_PRICE         NUMERIC(19,4),
  GRT_DATE          TIMESTAMP,
  APPROVE_DATE      TIMESTAMP,
  IE_COUNT          NUMERIC(19),
  PRE_COP_NO        VARCHAR(18)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_COMPANY.txt',
'gpfdist://mdw-2:8081/CDL_COMPANY.txt',
'gpfdist://mdw-3:8081/CDL_COMPANY.txt',
'gpfdist://mdw-4:8081/CDL_COMPANY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_CONTAINER------------
drop external table IF EXISTS CDL_CONTAINER_INC_EXT;

create external table CDL_CONTAINER_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_NO      VARCHAR(18)  ,
  CONTAINER_ID VARCHAR(32)  ,
  CONTAINER_WT NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_CONTAINER.txt',
'gpfdist://mdw-2:8081/CDL_CONTAINER.txt',
'gpfdist://mdw-3:8081/CDL_CONTAINER.txt',
'gpfdist://mdw-4:8081/CDL_CONTAINER.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_DEL_CERTIFICATE_LOG------------
drop external table IF EXISTS CDL_DEL_CERTIFICATE_LOG_INC_EXT;

create external table CDL_DEL_CERTIFICATE_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_NO   VARCHAR(18)  ,
  DOCU_CODE VARCHAR(1)  ,
  CERT_CODE VARCHAR(32)  
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_DEL_CERTIFICATE_LOG.txt',
'gpfdist://mdw-2:8081/CDL_DEL_CERTIFICATE_LOG.txt',
'gpfdist://mdw-3:8081/CDL_DEL_CERTIFICATE_LOG.txt',
'gpfdist://mdw-4:8081/CDL_DEL_CERTIFICATE_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_DEL_CONTAINER_LOG------------
drop external table IF EXISTS CDL_DEL_CONTAINER_LOG_INC_EXT;

create external table CDL_DEL_CONTAINER_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_NO      VARCHAR(18)  ,
  CONTAINER_ID VARCHAR(32)  ,
  CONTAINER_WT NUMERIC(19,5)  
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_DEL_CONTAINER_LOG.txt',
'gpfdist://mdw-2:8081/CDL_DEL_CONTAINER_LOG.txt',
'gpfdist://mdw-3:8081/CDL_DEL_CONTAINER_LOG.txt',
'gpfdist://mdw-4:8081/CDL_DEL_CONTAINER_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_DEL_HEAD_LOG------------
drop external table IF EXISTS CDL_DEL_HEAD_LOG_INC_EXT;

create external table CDL_DEL_HEAD_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_NO          VARCHAR(18)  ,
  PRE_LIST_NO      VARCHAR(18),
  I_E_FLAG         VARCHAR(1),
  I_E_PORT         VARCHAR(4),
  I_E_DATE         TIMESTAMP,
  D_DATE           TIMESTAMP,
  MANUAL_NO        VARCHAR(12),
  TRADE_CO         VARCHAR(10),
  TRADE_NAME       VARCHAR(255),
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  TRAF_MODE        VARCHAR(1),
  TRAF_NAME        VARCHAR(255),
  VOYAGE_NO        VARCHAR(32),
  BILL_NO          VARCHAR(32),
  TRADE_MODE       VARCHAR(4),
  LICENSE_NO       VARCHAR(20),
  TRADE_COUNTRY    VARCHAR(3),
  DESTINATION_PORT VARCHAR(4),
  PACK_NO          NUMERIC(19),
  WRAP_TYPE        VARCHAR(32),
  GROSS_WT         NUMERIC(19,5),
  NET_WT           NUMERIC(19,5),
  NOTE_S           VARCHAR(255),
  INPUT_NO         VARCHAR(32),
  INPUT_CO         VARCHAR(10),
  INPUT_NAME       VARCHAR(255),
  AGENT_CODE       VARCHAR(10),
  AGENT_NAME       VARCHAR(255),
  DECL_PORT        VARCHAR(4),
  INPUT_DATE       TIMESTAMP,
  CTR_NOTES        VARCHAR(255),
  STATUS_RESULT    VARCHAR(120),
  IS_DECL          VARCHAR(1),
  MODI_NO          NUMERIC(19),
  EDI_REMARK       VARCHAR(32),
  HASH_SIGN        VARCHAR(380),
  EXCHANGE_RATE    NUMERIC(19,7),
  RTX_DATE         TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_DEL_HEAD_LOG.txt',
'gpfdist://mdw-2:8081/CDL_DEL_HEAD_LOG.txt',
'gpfdist://mdw-3:8081/CDL_DEL_HEAD_LOG.txt',
'gpfdist://mdw-4:8081/CDL_DEL_HEAD_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_DEL_LIST_LOG------------
drop external table IF EXISTS CDL_DEL_LIST_LOG_INC_EXT;

create external table CDL_DEL_LIST_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_NO        VARCHAR(18)  ,
  G_NO           NUMERIC(19)  ,
  RECORDS_NO     VARCHAR(12),
  D_DATE         TIMESTAMP,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  G_QTY          NUMERIC(19,5),
  G_UNIT         VARCHAR(3),
  ORIGIN_COUNTRY VARCHAR(3),
  DECL_PRICE     NUMERIC(19,5),
  DECL_TOTAL     NUMERIC(19,4),
  TRADE_CURR     VARCHAR(3),
  DUTY_MODE      VARCHAR(1),
  D_RATE         NUMERIC(19,5),
  DUTY_RATE      NUMERIC(19,5),
  T_RATE         NUMERIC(19,5),
  TAX_RATE       NUMERIC(19,5),
  R_RATE         NUMERIC(19,5),
  REG_RATE       NUMERIC(19,5),
  TARIFF_MARK    VARCHAR(32),
  EXCH_RATE      NUMERIC(19,8),
  RMB_RATE       NUMERIC(19,8),
  USD_RATE       NUMERIC(19,8),
  G_CERT_FLAG    VARCHAR(32),
  LIST_CONDITION VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_DEL_LIST_LOG.txt',
'gpfdist://mdw-2:8081/CDL_DEL_LIST_LOG.txt',
'gpfdist://mdw-3:8081/CDL_DEL_LIST_LOG.txt',
'gpfdist://mdw-4:8081/CDL_DEL_LIST_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_EDI_MESS------------
drop external table IF EXISTS CDL_EDI_MESS_INC_EXT;

create external table CDL_EDI_MESS_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MESS_CODE  VARCHAR(4)  ,
  MESS_LEVEL VARCHAR(1),
  MESS       VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_EDI_MESS.txt',
'gpfdist://mdw-2:8081/CDL_EDI_MESS.txt',
'gpfdist://mdw-3:8081/CDL_EDI_MESS.txt',
'gpfdist://mdw-4:8081/CDL_EDI_MESS.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_EMS_DEDUCT------------
drop external table IF EXISTS CDL_EMS_DEDUCT_INC_EXT;

create external table CDL_EMS_DEDUCT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID    VARCHAR(18)  ,
  EMS_NO      VARCHAR(12)  ,
  G_TYPE      VARCHAR(1)  ,
  EMS_G_NO    NUMERIC(19),
  ENTRY_G_NO  NUMERIC(19)  ,
  EXG_VERSION VARCHAR(32),
  IN_QTY      NUMERIC(19,5),
  I_ACCOUNT   NUMERIC(19,5),
  I_WT        NUMERIC(19,5),
  I_E_FLAG    VARCHAR(1),
  I_CURR      VARCHAR(4),
  I_E_PORT    VARCHAR(255),
  TRADE_MODE  VARCHAR(4),
  TRAF_MODE   VARCHAR(1),
  VERIFY_MODE VARCHAR(2),
  VERIFY_DATE TIMESTAMP,
  VERIFY_ER   VARCHAR(8),
  JOU_MARK    VARCHAR(1),
  I_E_DATE    TIMESTAMP,
  USD_ACCOUNT NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_EMS_DEDUCT.txt',
'gpfdist://mdw-2:8081/CDL_EMS_DEDUCT.txt',
'gpfdist://mdw-3:8081/CDL_EMS_DEDUCT.txt',
'gpfdist://mdw-4:8081/CDL_EMS_DEDUCT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_EMS_DEDUCT_LOG------------
drop external table IF EXISTS CDL_EMS_DEDUCT_LOG_INC_EXT;

create external table CDL_EMS_DEDUCT_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID    VARCHAR(18)  ,
  EMS_NO      VARCHAR(12)  ,
  CREATE_DATE TIMESTAMP  ,
  JOU_MARK    VARCHAR(1)  ,
  NOTE        VARCHAR(1),
  VERIFY_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_EMS_DEDUCT_LOG.txt',
'gpfdist://mdw-2:8081/CDL_EMS_DEDUCT_LOG.txt',
'gpfdist://mdw-3:8081/CDL_EMS_DEDUCT_LOG.txt',
'gpfdist://mdw-4:8081/CDL_EMS_DEDUCT_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_ENTRY_HEAD------------
drop external table IF EXISTS CDL_ENTRY_HEAD_INC_EXT;

create external table CDL_ENTRY_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_ENTRY_ID     VARCHAR(18)  ,
  ENTRY_ID         VARCHAR(18),
  LIST_DATE        TIMESTAMP,
  I_E_PORT         VARCHAR(4),
  TRADE_CO         VARCHAR(10),
  OWNER_CODE       VARCHAR(10),
  TRADE_MODE       VARCHAR(4),
  TRADE_COUNTRY    VARCHAR(3),
  DESTINATION_PORT VARCHAR(4),
  TRAF_MODE        VARCHAR(1),
  DECL_PORT        VARCHAR(4),
  MANUAL_NO        VARCHAR(12)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_ENTRY_HEAD.txt',
'gpfdist://mdw-2:8081/CDL_ENTRY_HEAD.txt',
'gpfdist://mdw-3:8081/CDL_ENTRY_HEAD.txt',
'gpfdist://mdw-4:8081/CDL_ENTRY_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_ENTRY_LIST------------
drop external table IF EXISTS CDL_ENTRY_LIST_INC_EXT;

create external table CDL_ENTRY_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_ENTRY_ID   VARCHAR(18)  ,
  ENTRY_ID       VARCHAR(18),
  ENTRY_G_NO     NUMERIC(19)  ,
  LIST_NO        VARCHAR(18)  ,
  LIST_G_NO      NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  G_UNIT         VARCHAR(3),
  ORIGIN_COUNTRY VARCHAR(3),
  DECL_PRICE     NUMERIC(19,5),
  TRADE_CURR     VARCHAR(3),
  LIST_CONDITION VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_ENTRY_LIST.txt',
'gpfdist://mdw-2:8081/CDL_ENTRY_LIST.txt',
'gpfdist://mdw-3:8081/CDL_ENTRY_LIST.txt',
'gpfdist://mdw-4:8081/CDL_ENTRY_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_HEAD------------
drop external table IF EXISTS CDL_HEAD_INC_EXT;

create external table CDL_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_NO          VARCHAR(18)  ,
  PRE_LIST_NO      VARCHAR(18),
  I_E_FLAG         VARCHAR(1),
  I_E_PORT         VARCHAR(4),
  I_E_DATE         TIMESTAMP,
  D_DATE           TIMESTAMP,
  MANUAL_NO        VARCHAR(12),
  TRADE_CO         VARCHAR(10),
  TRADE_NAME       VARCHAR(255),
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  TRAF_MODE        VARCHAR(1),
  TRAF_NAME        VARCHAR(255),
  VOYAGE_NO        VARCHAR(32),
  BILL_NO          VARCHAR(32),
  TRADE_MODE       VARCHAR(4),
  LICENSE_NO       VARCHAR(20),
  TRADE_COUNTRY    VARCHAR(3),
  DESTINATION_PORT VARCHAR(4),
  PACK_NO          NUMERIC(19),
  WRAP_TYPE        VARCHAR(32),
  GROSS_WT         NUMERIC(19,5),
  NET_WT           NUMERIC(19,5),
  NOTE_S           VARCHAR(255),
  INPUT_NO         VARCHAR(32),
  INPUT_CO         VARCHAR(10),
  INPUT_NAME       VARCHAR(255),
  AGENT_CODE       VARCHAR(10),
  AGENT_NAME       VARCHAR(255),
  DECL_PORT        VARCHAR(4),
  INPUT_DATE       TIMESTAMP,
  CTR_NOTES        VARCHAR(255),
  STATUS_RESULT    VARCHAR(120),
  IS_DECL          VARCHAR(1),
  MODI_NO          NUMERIC(19),
  EDI_REMARK       VARCHAR(32),
  HASH_SIGN        VARCHAR(380),
  EXCHANGE_RATE    NUMERIC(19,7),
  RTX_DATE         TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_HEAD.txt',
'gpfdist://mdw-2:8081/CDL_HEAD.txt',
'gpfdist://mdw-3:8081/CDL_HEAD.txt',
'gpfdist://mdw-4:8081/CDL_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_LICENSE_DEDUCT------------
drop external table IF EXISTS CDL_LICENSE_DEDUCT_INC_EXT;

create external table CDL_LICENSE_DEDUCT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_NO     VARCHAR(18)  ,
  G_NO        NUMERIC(19)  ,
  TRADE_CO    VARCHAR(10)  ,
  QTY_ORI     NUMERIC(19,5),
  QTY         NUMERIC(19,5),
  DEDUCT_MODE VARCHAR(1),
  OP_TIME     TIMESTAMP  ,
  OP_ER       VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_LICENSE_DEDUCT.txt',
'gpfdist://mdw-2:8081/CDL_LICENSE_DEDUCT.txt',
'gpfdist://mdw-3:8081/CDL_LICENSE_DEDUCT.txt',
'gpfdist://mdw-4:8081/CDL_LICENSE_DEDUCT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_LIST------------
drop external table IF EXISTS CDL_LIST_INC_EXT;

create external table CDL_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_NO        VARCHAR(18)  ,
  G_NO           NUMERIC(19)  ,
  RECORDS_NO     VARCHAR(12),
  D_DATE         TIMESTAMP,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  G_QTY          NUMERIC(19,5),
  G_UNIT         VARCHAR(3),
  ORIGIN_COUNTRY VARCHAR(3),
  DECL_PRICE     NUMERIC(19,5),
  DECL_TOTAL     NUMERIC(19,4),
  TRADE_CURR     VARCHAR(3),
  DUTY_MODE      VARCHAR(1),
  D_RATE         NUMERIC(19,5),
  DUTY_RATE      NUMERIC(19,5),
  T_RATE         NUMERIC(19,5),
  TAX_RATE       NUMERIC(19,5),
  R_RATE         NUMERIC(19,5),
  REG_RATE       NUMERIC(19,5),
  TARIFF_MARK    VARCHAR(32),
  EXCH_RATE      NUMERIC(19,8),
  RMB_RATE       NUMERIC(19,8),
  USD_RATE       NUMERIC(19,8),
  G_CERT_FLAG    VARCHAR(32),
  LIST_CONDITION VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_LIST.txt',
'gpfdist://mdw-2:8081/CDL_LIST.txt',
'gpfdist://mdw-3:8081/CDL_LIST.txt',
'gpfdist://mdw-4:8081/CDL_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_LOCK_COMMODITY------------
drop external table IF EXISTS CDL_LOCK_COMMODITY_INC_EXT;

create external table CDL_LOCK_COMMODITY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CODE_TS         VARCHAR(16)  ,
  CONTROL_COUNTRY VARCHAR(3)  ,
  CUSTOMS_CODE    VARCHAR(4)  ,
  I_E_FLAG        VARCHAR(1)  ,
  TRADE_MODE      VARCHAR(4)  ,
  FIT_FLAG        VARCHAR(1),
  LOCK_OP_ID      VARCHAR(8),
  LOCK_DATE       TIMESTAMP,
  UNLOCK_OP_ID    VARCHAR(8),
  UNLOCK_DATE     TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_LOCK_COMMODITY.txt',
'gpfdist://mdw-2:8081/CDL_LOCK_COMMODITY.txt',
'gpfdist://mdw-3:8081/CDL_LOCK_COMMODITY.txt',
'gpfdist://mdw-4:8081/CDL_LOCK_COMMODITY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_MODI_LOG------------
drop external table IF EXISTS CDL_MODI_LOG_INC_EXT;

create external table CDL_MODI_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_NO      VARCHAR(18)  ,
  OP_TIME      TIMESTAMP  ,
  MODI_TYPE    NUMERIC(19)  ,
  ITEM_NAME    VARCHAR(255)  ,
  ITEM_SOURCE  VARCHAR(255),
  ITEM_CURRENT VARCHAR(255),
  NOTES        VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_MODI_LOG.txt',
'gpfdist://mdw-2:8081/CDL_MODI_LOG.txt',
'gpfdist://mdw-3:8081/CDL_MODI_LOG.txt',
'gpfdist://mdw-4:8081/CDL_MODI_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_OP_LOG------------
drop external table IF EXISTS CDL_OP_LOG_INC_EXT;

create external table CDL_OP_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_NO  VARCHAR(18)  ,
  OP_TIME  TIMESTAMP  ,
  OP_TYPE  VARCHAR(3),
  OP_ER    VARCHAR(8),
  SRV_PORT VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_OP_LOG.txt',
'gpfdist://mdw-2:8081/CDL_OP_LOG.txt',
'gpfdist://mdw-3:8081/CDL_OP_LOG.txt',
'gpfdist://mdw-4:8081/CDL_OP_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_OVERDUE_LIST------------
drop external table IF EXISTS CDL_OVERDUE_LIST_INC_EXT;

create external table CDL_OVERDUE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO          VARCHAR(10)  ,
  TRADE_NAME        VARCHAR(255),
  ENTRY_ID          VARCHAR(18)  ,
  TRADE_BONDED_FLAG VARCHAR(2),
  OVERDUE_DATE      TIMESTAMP,
  OVERDUE_DAYS      NUMERIC(19),
  OVERDUE_NOTES     VARCHAR(255),
  CUSTOMS_CODE      VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_OVERDUE_LIST.txt',
'gpfdist://mdw-2:8081/CDL_OVERDUE_LIST.txt',
'gpfdist://mdw-3:8081/CDL_OVERDUE_LIST.txt',
'gpfdist://mdw-4:8081/CDL_OVERDUE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_STATUS_DETAIL------------
drop external table IF EXISTS CDL_STATUS_DETAIL_INC_EXT;

create external table CDL_STATUS_DETAIL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_NO       VARCHAR(18)  ,
  DETAIL_COUNT  NUMERIC(9)  ,
  STATUS_NUMBER NUMERIC(9),
  STATUS_RESULT VARCHAR(1),
  STATUS_DETAIL VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_STATUS_DETAIL.txt',
'gpfdist://mdw-2:8081/CDL_STATUS_DETAIL.txt',
'gpfdist://mdw-3:8081/CDL_STATUS_DETAIL.txt',
'gpfdist://mdw-4:8081/CDL_STATUS_DETAIL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CDL_WORKFLOW------------
drop external table IF EXISTS CDL_WORKFLOW_INC_EXT;

create external table CDL_WORKFLOW_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LIST_NO     VARCHAR(18)  ,
  STEP_ID     VARCHAR(8)  ,
  CREATE_DATE TIMESTAMP  ,
  PROC_POS    VARCHAR(4),
  STATUS_CODE VARCHAR(32),
  PROC_ER     VARCHAR(8),
  PROC_RESULT VARCHAR(8),
  PREV_POS    VARCHAR(4),
  PREV_ER     VARCHAR(8),
  RECHK_MARK  VARCHAR(1),
  RECHK_COMM  VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CDL_WORKFLOW.txt',
'gpfdist://mdw-2:8081/CDL_WORKFLOW.txt',
'gpfdist://mdw-3:8081/CDL_WORKFLOW.txt',
'gpfdist://mdw-4:8081/CDL_WORKFLOW.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CHK_COP_RATIO------------
drop external table IF EXISTS CHK_COP_RATIO_INC_EXT;

create external table CHK_COP_RATIO_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CORP_CODE    VARCHAR(10)  ,
  CORP_NAME    VARCHAR(255),
  CUSTOMS_CODE VARCHAR(4),
  RATIO_NUM    NUMERIC(9)
)
LOCATION( 
'gpfdist://mdw-1:8081/CHK_COP_RATIO.txt',
'gpfdist://mdw-2:8081/CHK_COP_RATIO.txt',
'gpfdist://mdw-3:8081/CHK_COP_RATIO.txt',
'gpfdist://mdw-4:8081/CHK_COP_RATIO.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CHK_COUNTER------------
drop external table IF EXISTS CHK_COUNTER_INC_EXT;

create external table CHK_COUNTER_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOMS_CODE VARCHAR(4)  ,
  I_E_FLAG     VARCHAR(1)  ,
  COUNTER_TYPE VARCHAR(1)  ,
  COUNT_DATE   TIMESTAMP  ,
  COUNTER      NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/CHK_COUNTER.txt',
'gpfdist://mdw-2:8081/CHK_COUNTER.txt',
'gpfdist://mdw-3:8081/CHK_COUNTER.txt',
'gpfdist://mdw-4:8081/CHK_COUNTER.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CHK_RATE_LIMIT------------
drop external table IF EXISTS CHK_RATE_LIMIT_INC_EXT;

create external table CHK_RATE_LIMIT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOMS_CODE    VARCHAR(4)  ,
  I_E_FLAG        VARCHAR(1)  ,
  MAX_CHK_RATE    NUMERIC(19,4),
  MAX_OPEN_RATE   NUMERIC(19,4),
  RANDOM_CHK_RATE NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/CHK_RATE_LIMIT.txt',
'gpfdist://mdw-2:8081/CHK_RATE_LIMIT.txt',
'gpfdist://mdw-3:8081/CHK_RATE_LIMIT.txt',
'gpfdist://mdw-4:8081/CHK_RATE_LIMIT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CHKHS_MNLPROC------------
drop external table IF EXISTS CHKHS_MNLPROC_INC_EXT;

create external table CHKHS_MNLPROC_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO     VARCHAR(12),
  PRE_MANUAL_NO VARCHAR(12),
  ORDER_NO      VARCHAR(13)  ,
  MANUAL_SCH    VARCHAR(50)  ,
  M_FLAG        VARCHAR(12),
  TRADE_NAME    VARCHAR(255),
  OPER_ER       VARCHAR(8),
  OPER_DATE     TIMESTAMP,
  NOTE          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CHKHS_MNLPROC.txt',
'gpfdist://mdw-2:8081/CHKHS_MNLPROC.txt',
'gpfdist://mdw-3:8081/CHKHS_MNLPROC.txt',
'gpfdist://mdw-4:8081/CHKHS_MNLPROC.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CIC_CODE------------
drop external table IF EXISTS CIC_CODE_INC_EXT;

create external table CIC_CODE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FIRST_NO   VARCHAR(10)  ,
  LAST_NO    VARCHAR(10),
  CUS_CODE   VARCHAR(4),
  LOCAL_FLAG VARCHAR(1),
  INPUT_ER   VARCHAR(8),
  INPUT_DATE TIMESTAMP,
  PRINT_DATE TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/CIC_CODE.txt',
'gpfdist://mdw-2:8081/CIC_CODE.txt',
'gpfdist://mdw-3:8081/CIC_CODE.txt',
'gpfdist://mdw-4:8081/CIC_CODE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CIC_HEAD------------
drop external table IF EXISTS CIC_HEAD_INC_EXT;

create external table CIC_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CPT_NO           VARCHAR(12)  ,
  CIC_NO           VARCHAR(10),
  ENTRY_NO         VARCHAR(18),
  ITEMS_NO         NUMERIC(9),
  TRAF_NAME        VARCHAR(255),
  DESTINATION_PORT VARCHAR(4),
  PORT_CUS         VARCHAR(4),
  MAST_CUS         VARCHAR(4),
  TRADE_CO         VARCHAR(10),
  TRADE_NAME       VARCHAR(255),
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  AGENT_NAME       VARCHAR(255),
  CIC_FLAG         VARCHAR(1),
  LOCAL_FLAG       VARCHAR(1),
  YYMM             TIMESTAMP,
  I_DATE           TIMESTAMP,
  D_DATE           TIMESTAMP,
  R_DATE           TIMESTAMP,
  SEND_DATE        TIMESTAMP,
  INPUT_ER         VARCHAR(8),
  INPUT_DATE       TIMESTAMP,
  PRINT_ER         VARCHAR(8),
  PRINT_DATE       TIMESTAMP,
  CHECK_ER         VARCHAR(8),
  CHECK_DATE       TIMESTAMP,
  REP_CPT_NO       VARCHAR(12),
  CANCEL_ER        VARCHAR(8),
  CANCEL_REASON    VARCHAR(255),
  CANCEL_DATE      TIMESTAMP,
  REPORT_ER        VARCHAR(8),
  REPORT_DATE      TIMESTAMP,
  TOTAL_PRICE      NUMERIC(19,4),
  CURR             VARCHAR(3),
  SPARE_FLAG       VARCHAR(10),
  NOTE             VARCHAR(255),
  CAR_NO           VARCHAR(15),
  CAR_NO_DATE      TIMESTAMP,
  AVISO_FLAG       VARCHAR(1),
  AVISO_DATE       TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/CIC_HEAD.txt',
'gpfdist://mdw-2:8081/CIC_HEAD.txt',
'gpfdist://mdw-3:8081/CIC_HEAD.txt',
'gpfdist://mdw-4:8081/CIC_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CIC_LIST------------
drop external table IF EXISTS CIC_LIST_INC_EXT;

create external table CIC_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CPT_NO         VARCHAR(12)  ,
  ITEM_NO        NUMERIC(9)  ,
  CODE_TS        VARCHAR(16),
  ORIGIN_COUNTRY VARCHAR(3),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  COLOR          VARCHAR(20),
  ENGINE_NO      VARCHAR(30),
  CAR_COVER_NO   VARCHAR(30),
  QTY_EXHAUST    NUMERIC(9),
  QTY            NUMERIC(19,5),
  PRICE          NUMERIC(19,5),
  CURR           VARCHAR(3),
  PACK_NO        NUMERIC(9),
  MARK_NO        VARCHAR(30),
  SPARE_FLAG     VARCHAR(10),
  NOTE           VARCHAR(255),
  FCT_DATE       VARCHAR(20)
)
LOCATION( 
'gpfdist://mdw-1:8081/CIC_LIST.txt',
'gpfdist://mdw-2:8081/CIC_LIST.txt',
'gpfdist://mdw-3:8081/CIC_LIST.txt',
'gpfdist://mdw-4:8081/CIC_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CIC_MAXID------------
drop external table IF EXISTS CIC_MAXID_INC_EXT;

create external table CIC_MAXID_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUS_ID   VARCHAR(4)  ,
  MAX_ID   NUMERIC(9),
  IPT_TIME TIMESTAMP,
  IPT_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/CIC_MAXID.txt',
'gpfdist://mdw-2:8081/CIC_MAXID.txt',
'gpfdist://mdw-3:8081/CIC_MAXID.txt',
'gpfdist://mdw-4:8081/CIC_MAXID.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CIC_SEND_REL------------
drop external table IF EXISTS CIC_SEND_REL_INC_EXT;

create external table CIC_SEND_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CPT_NO     VARCHAR(12)  ,
  CIC_NO     VARCHAR(10),
  SEND_TIMES NUMERIC(9)  ,
  SEND_ER    VARCHAR(8),
  SEND_TYPE  VARCHAR(1),
  SEND_DATE  TIMESTAMP,
  RECV_DATE  TIMESTAMP,
  RECV_FLAG  VARCHAR(1),
  NOTE       VARCHAR(30)
)
LOCATION( 
'gpfdist://mdw-1:8081/CIC_SEND_REL.txt',
'gpfdist://mdw-2:8081/CIC_SEND_REL.txt',
'gpfdist://mdw-3:8081/CIC_SEND_REL.txt',
'gpfdist://mdw-4:8081/CIC_SEND_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CLAIM------------
drop external table IF EXISTS CLAIM_INC_EXT;

create external table CLAIM_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  GUARANTEE_NO         VARCHAR(12)  ,
  CLAIM_NO             VARCHAR(12),
  MANUAL_NO            VARCHAR(12),
  OWNER_NO             VARCHAR(32),
  GUARANTEE_AMT        NUMERIC(18),
  GUARANTEE_LIMIT_DATE TIMESTAMP,
  BANK_ID              VARCHAR(32),
  CLAIM_AMT            NUMERIC(18,5),
  CLAIM_RATE           NUMERIC(18,5),
  YEAR_RATE            NUMERIC(18,5),
  CHK_ER               VARCHAR(8),
  CHK_DATE             TIMESTAMP,
  RECHK_ER             VARCHAR(8),
  RECHK_DATE           TIMESTAMP,
  CLAIM_DATE           TIMESTAMP,
  CLAIM_ER             VARCHAR(8),
  BANK_DATE            TIMESTAMP,
  TYPE_ER              VARCHAR(8),
  TYPE_DATE            TIMESTAMP,
  OTHER_CERT_NO        VARCHAR(32),
  PROC_MARK            VARCHAR(32),
  LAST_ER              VARCHAR(8),
  LAST_DATE            TIMESTAMP,
  PAY_PRINT_DATE       TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/CLAIM.txt',
'gpfdist://mdw-2:8081/CLAIM.txt',
'gpfdist://mdw-3:8081/CLAIM.txt',
'gpfdist://mdw-4:8081/CLAIM.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CLC_CHKRATE_LIMIT------------
drop external table IF EXISTS CLC_CHKRATE_LIMIT_INC_EXT;

create external table CLC_CHKRATE_LIMIT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOMS_CODE           VARCHAR(4)  ,
  I_E_FLAG               VARCHAR(1)  ,
  MAX_CHK_RATE           NUMERIC(19,4),
  RANDOM_QUICK_CHK_RATE  NUMERIC(19,4),
  RANDOM_LHRSK_CHK_RATE  NUMERIC(19,4),
  RANDOM_FOCUS_CHK_RATE  NUMERIC(19,4),
  RANDOM_COP_CHK_RATE_AA NUMERIC(19,4),
  RANDOM_COP_CHK_RATE_1  NUMERIC(19,4),
  RANDOM_COP_CHK_RATE_A  NUMERIC(19,4),
  RANDOM_COP_CHK_RATE_B  NUMERIC(19,4),
  RANDOM_COP_CHK_RATE_C  NUMERIC(19,4),
  RANDOM_COP_CHK_RATE_D  NUMERIC(19,4),
  RANDOM_RECHK_RATE      NUMERIC(19,4),
  RANDOM_UNKNOWN_RATE    NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/CLC_CHKRATE_LIMIT.txt',
'gpfdist://mdw-2:8081/CLC_CHKRATE_LIMIT.txt',
'gpfdist://mdw-3:8081/CLC_CHKRATE_LIMIT.txt',
'gpfdist://mdw-4:8081/CLC_CHKRATE_LIMIT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CLC_GPR_RATIO------------
drop external table IF EXISTS CLC_GPR_RATIO_INC_EXT;

create external table CLC_GPR_RATIO_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOMS_CODE VARCHAR(4)  ,
  I_E_FLAG     VARCHAR(1)  ,
  RATIO_NUM    NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/CLC_GPR_RATIO.txt',
'gpfdist://mdw-2:8081/CLC_GPR_RATIO.txt',
'gpfdist://mdw-3:8081/CLC_GPR_RATIO.txt',
'gpfdist://mdw-4:8081/CLC_GPR_RATIO.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CLC_GPR_RATIO_BAK------------
drop external table IF EXISTS CLC_GPR_RATIO_BAK_INC_EXT;

create external table CLC_GPR_RATIO_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOMS_CODE VARCHAR(4)  ,
  I_E_FLAG     VARCHAR(1)  ,
  RATIO_NUM    NUMERIC(19,4),
  OP_TIME      TIMESTAMP  ,
  OP_ER        VARCHAR(8),
  OP_CUSTOMS   VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/CLC_GPR_RATIO_BAK.txt',
'gpfdist://mdw-2:8081/CLC_GPR_RATIO_BAK.txt',
'gpfdist://mdw-3:8081/CLC_GPR_RATIO_BAK.txt',
'gpfdist://mdw-4:8081/CLC_GPR_RATIO_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CNS_COUNTER_TABLE------------
drop external table IF EXISTS CNS_COUNTER_TABLE_INC_EXT;

create external table CNS_COUNTER_TABLE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOMS_CODE VARCHAR(4)  ,
  COUNTER      NUMERIC(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/CNS_COUNTER_TABLE.txt',
'gpfdist://mdw-2:8081/CNS_COUNTER_TABLE.txt',
'gpfdist://mdw-3:8081/CNS_COUNTER_TABLE.txt',
'gpfdist://mdw-4:8081/CNS_COUNTER_TABLE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CO_CLASS_REL------------
drop external table IF EXISTS CO_CLASS_REL_INC_EXT;

create external table CO_CLASS_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO        VARCHAR(10)  ,
  CLASS_NO        NUMERIC(19)  ,
  CLASS_SOURCE    VARCHAR(1),
  CLASS_DEST      VARCHAR(1),
  CLASS_OPER_CODE VARCHAR(8),
  CLASS_OPER_DATE TIMESTAMP,
  CLASS_DPT_CODE  VARCHAR(8),
  CLASS_DPT_DATE  TIMESTAMP,
  CLASS_NOTE      VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CO_CLASS_REL.txt',
'gpfdist://mdw-2:8081/CO_CLASS_REL.txt',
'gpfdist://mdw-3:8081/CO_CLASS_REL.txt',
'gpfdist://mdw-4:8081/CO_CLASS_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------COMPANY_REL------------
drop external table IF EXISTS COMPANY_REL_INC_EXT;

create external table COMPANY_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO        VARCHAR(10)  ,
  REG_CO          VARCHAR(255),
  FULL_NAME       VARCHAR(255),
  CUSTOMS_CODE    VARCHAR(4),
  CO_CLASS        VARCHAR(1) ,
  CREDIT_MAR      VARCHAR(8) ,
  EXAM_SCORE      NUMERIC(19),
  VALID_DATE      TIMESTAMP ,
  ACCO_BANK       VARCHAR(255),
  ACCO_NO         VARCHAR(32),
  MAIL_CO         VARCHAR(6),
  BROKER_TYPE     VARCHAR(1),
  RG_DATE         TIMESTAMP ,
  LICENSE_ID      VARCHAR(32),
  EN_FULL_CO      VARCHAR(255),
  EN_ADDR_CO      VARCHAR(255),
  ADDR_CO         VARCHAR(255),
  BUSI_TYPE       VARCHAR(32),
  CONTAC_CO       VARCHAR(32),
  TEL_CO          VARCHAR(32),
  APPR_DEP        VARCHAR(32),
  APPR_ID         VARCHAR(32),
  LAW_MAN         VARCHAR(32),
  LAW_MAN_TEL     VARCHAR(32),
  INV_FUND_T      NUMERIC(19,4),
  ID_NUMBER       VARCHAR(32),
  RG_FUND         NUMERIC(19,4),
  CURR_CODE       VARCHAR(3),
  TAXY_RG_NO      VARCHAR(32),
  CHK_DATE        TIMESTAMP ,
  CO_TYPE         VARCHAR(32),
  BREAK_LAW_TIME1 NUMERIC(19),
  BREAK_LAW_TIME2 NUMERIC(19),
  IN_RATIO        NUMERIC(19),
  INSPECT_TIME    NUMERIC(19),
  SPE_CO          VARCHAR(8),
  TRADE_AREA      VARCHAR(32),
  MAIN_PRO        VARCHAR(255),
  ACT_FUND        NUMERIC(19),
  DUTY_FREE_AMT   NUMERIC(19),
  COP_FLAG        VARCHAR(8),
  COP_NOTE        VARCHAR(255),
  PRE_TRADE_CO    VARCHAR(18),
  CHK_OPER_CODE   VARCHAR(8),
  CHK_OPER_FLAG   VARCHAR(1),
  CHK_OPER_DATE   TIMESTAMP,
  CHK_DPT_CODE    VARCHAR(8),
  CHK_DPT_FLAG    VARCHAR(1),
  CHK_DPT_DATE    TIMESTAMP,
  CHK_MASTER_CODE VARCHAR(8),
  CHK_MASTER_FLAG VARCHAR(1),
  CHK_MASTER_DATE TIMESTAMP,
  CHK_EARNEST_MON NUMERIC(19,4),
  CHK_CODE        VARCHAR(8),
  COP_GB_CODE     VARCHAR(32),
  COP_IO_CODE     VARCHAR(32),
  COP_END_DATE    TIMESTAMP ,
  COP_MODIFY_DATE TIMESTAMP ,
  COP_RANGE       VARCHAR(4000)
)
LOCATION( 
'gpfdist://mdw-1:8081/COMPANY_REL.txt',
'gpfdist://mdw-2:8081/COMPANY_REL.txt',
'gpfdist://mdw-3:8081/COMPANY_REL.txt',
'gpfdist://mdw-4:8081/COMPANY_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CONSUME------------
drop external table IF EXISTS CONSUME_INC_EXT;

create external table CONSUME_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO    VARCHAR(12)  ,
  CONTR_ITEM   NUMERIC(19)  ,
  EX_NO        NUMERIC(19)  ,
  APPR_CONSUME NUMERIC(19,10),
  APPR_DAMAGE  NUMERIC(19,10),
  DECL_CONSUME NUMERIC(19,10),
  DECL_DAMAGE  NUMERIC(19,10)
)
LOCATION( 
'gpfdist://mdw-1:8081/CONSUME.txt',
'gpfdist://mdw-2:8081/CONSUME.txt',
'gpfdist://mdw-3:8081/CONSUME.txt',
'gpfdist://mdw-4:8081/CONSUME.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CONSUME_DB------------
drop external table IF EXISTS CONSUME_DB_INC_EXT;

create external table CONSUME_DB_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EX_CODE_TS    VARCHAR(16)  ,
  EX_NO         NUMERIC(19)  ,
  IM_CODE_TS    VARCHAR(16)  ,
  IM_NO         NUMERIC(19)  ,
  CONSUME_RATIO NUMERIC(19,10),
  DAMAGE_RATIO  NUMERIC(19,10),
  CONSUME_RANGE NUMERIC(19,4),
  CONSUME_NOTE  VARCHAR(255),
  G_CLASS       VARCHAR(1),
  INPUT_DATE    TIMESTAMP,
  LIMIT_DATE    TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/CONSUME_DB.txt',
'gpfdist://mdw-2:8081/CONSUME_DB.txt',
'gpfdist://mdw-3:8081/CONSUME_DB.txt',
'gpfdist://mdw-4:8081/CONSUME_DB.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CONSUME_GOODS------------
drop external table IF EXISTS CONSUME_GOODS_INC_EXT;

create external table CONSUME_GOODS_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CODE_TS       VARCHAR(16)  ,
  G_NO          NUMERIC(19)  ,
  G_FLAG        VARCHAR(1)  ,
  G_NAME        VARCHAR(50),
  G_MODEL       VARCHAR(50),
  UNIT_1        VARCHAR(3),
  TRADE_COUNTRY VARCHAR(3),
  INFO_SOURCE   VARCHAR(4),
  INPUT_DATE    TIMESTAMP,
  NOTE_S        VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CONSUME_GOODS.txt',
'gpfdist://mdw-2:8081/CONSUME_GOODS.txt',
'gpfdist://mdw-3:8081/CONSUME_GOODS.txt',
'gpfdist://mdw-4:8081/CONSUME_GOODS.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CONTA------------
drop external table IF EXISTS CONTA_INC_EXT;

create external table CONTA_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FORM_ID             VARCHAR(20)  ,
  CONTA_ID            VARCHAR(32)  ,
  FORM_TYPE           VARCHAR(2),
  I_E_FLAG            VARCHAR(1),
  CONTA_MODEL         VARCHAR(2),
  D_WEIGHT            NUMERIC(19,5),
  SEAL_NO             VARCHAR(12),
  SEAL_NUM            NUMERIC(9),
  D_SHIP_ID           VARCHAR(10),
  BUSINESS_SEAL_NO    VARCHAR(12),
  CONTAINER_WT        NUMERIC(19,4),
  CONTA_AMOUNT        NUMERIC(19,4),
  WHOLE_FLAG          VARCHAR(1),
  OUT_CHECKPOINT_TIME TIMESTAMP,
  OUT_AREA_ID         VARCHAR(5),
  OUT_CHECKPOINT_NO   VARCHAR(10),
  OUT_DRIVER_ID       VARCHAR(10),
  OUT_REAL_WT         NUMERIC(19,5),
  OUT_SHIP_ID         VARCHAR(10),
  IN_CHECKPOINT_TIME  TIMESTAMP,
  IN_AREA_ID          VARCHAR(5),
  IN_CHECKPOINT_NO    VARCHAR(10),
  IN_DRIVER_ID        VARCHAR(10),
  IN_REAL_WT          NUMERIC(19,5),
  IN_SHIP_ID          VARCHAR(10),
  CHK_MARK            VARCHAR(20),
  DIST_CHK_MARK       VARCHAR(20),
  MANUAL_FLAG         VARCHAR(1),
  CANCEL_FLAG         VARCHAR(1),
  CANCEL_PERSON       VARCHAR(5),
  CANCEL_DATETIME     TIMESTAMP,
  RISK_FLAG           VARCHAR(1),
  OPERATION_FLAG      VARCHAR(1),
  OBLIGATE_FIELD_1    VARCHAR(50),
  OBLIGATE_FIELD_2    VARCHAR(50),
  NOTES               VARCHAR(60)
)
LOCATION( 
'gpfdist://mdw-1:8081/CONTA.txt',
'gpfdist://mdw-2:8081/CONTA.txt',
'gpfdist://mdw-3:8081/CONTA.txt',
'gpfdist://mdw-4:8081/CONTA.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CONTA_MONITOR------------
drop external table IF EXISTS CONTA_MONITOR_INC_EXT;

create external table CONTA_MONITOR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  I_E_FLAG         VARCHAR(1)  ,
  CONTA_ID         VARCHAR(32)  ,
  DISTRIBUTIVE_NO  VARCHAR(18)  ,
  IN_OUT_FLAG      VARCHAR(1)  ,
  TRANSIT_DATE     TIMESTAMP ,
  ORIGIN_CUS_CODE  VARCHAR(4),
  DEST_CUS_CODE    VARCHAR(4),
  FORM_FLAG        VARCHAR(1),
  ORIGIN_CUS_PLACE VARCHAR(8),
  DEST_CUS_PLACE   VARCHAR(8),
  DRIVER_NO        VARCHAR(32),
  TRAF_MODE        VARCHAR(1),
  SEAL_NO          VARCHAR(32),
  TRANSIT_NAME     VARCHAR(255),
  CAR_NUMBER       VARCHAR(32),
  TRANSIT_WAY      VARCHAR(2000)
)
LOCATION( 
'gpfdist://mdw-1:8081/CONTA_MONITOR.txt',
'gpfdist://mdw-2:8081/CONTA_MONITOR.txt',
'gpfdist://mdw-3:8081/CONTA_MONITOR.txt',
'gpfdist://mdw-4:8081/CONTA_MONITOR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CONTRACT_HEAD------------
drop external table IF EXISTS CONTRACT_HEAD_INC_EXT;

create external table CONTRACT_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO        VARCHAR(12)  ,
  PRE_MANUAL_NO    VARCHAR(12),
  TRADE_CO         VARCHAR(10),
  TRADE_NAME       VARCHAR(255),
  DISTRICT_CODE    VARCHAR(5),
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  FOREIGN_CO_NAME  VARCHAR(32),
  FOREIGN_MGR      VARCHAR(32),
  TRADE_MODE       VARCHAR(4),
  CUT_MODE         VARCHAR(3),
  TRADE_COUNTRY    VARCHAR(3),
  PORT_1           VARCHAR(4),
  PORT_2           VARCHAR(4),
  PORT_3           VARCHAR(4),
  PORT_4           VARCHAR(4),
  PORT_5           VARCHAR(4),
  AGREE_NO         VARCHAR(32),
  LICENSE_NO       VARCHAR(32),
  APPR_NO          VARCHAR(32),
  CONTR_IN         VARCHAR(32),
  CONTR_OUT        VARCHAR(32),
  EQUIP_MODE       VARCHAR(1),
  TRANS_MODE       VARCHAR(1),
  INVEST_MODE      VARCHAR(1),
  PAY_MODE         VARCHAR(1),
  EX_SOURCE        NUMERIC(19),
  PRODUCE_TYPE     VARCHAR(2),
  RATIO_RANGE      NUMERIC(19,4),
  IN_RATIO         NUMERIC(19,4),
  INVEST_AMT       NUMERIC(19,5),
  INVEST_CURR      VARCHAR(3),
  APPR_DEV_AMT     NUMERIC(19,5),
  FACT_DEV_AMT     NUMERIC(19,5),
  IN_AMT           NUMERIC(19,5),
  IN_CURR          VARCHAR(3),
  FACT_IN_AMT      NUMERIC(19,5),
  EX_AMT           NUMERIC(19,5),
  EX_CURR          VARCHAR(3),
  FACT_EX_AMT      NUMERIC(19,5),
  DECL_FLAG        VARCHAR(1),
  EXE_MARK         VARCHAR(1),
  SUPV_MARK        VARCHAR(10),
  IN_PNT           NUMERIC(19),
  EX_PNT           NUMERIC(19),
  CONTR_SEQNO      NUMERIC(19),
  IM_COUNT         NUMERIC(19),
  EX_COUNT         NUMERIC(19),
  I_DATE           TIMESTAMP,
  E_DATE           TIMESTAMP,
  LIMIT_DATE       TIMESTAMP,
  TYPE_ER          VARCHAR(8),
  TYPE_DATE        TIMESTAMP,
  CHK_ER           VARCHAR(8),
  APPR_DATE        TIMESTAMP,
  RECHK_ER         VARCHAR(8),
  CLEAR_ER         VARCHAR(8),
  CLEAR_APPL_DATE  TIMESTAMP,
  CLEAR_DATE       TIMESTAMP,
  CLOSE_ER         VARCHAR(8),
  CLOSE_DATE       TIMESTAMP,
  EXAM_MARK        VARCHAR(10),
  CLEAR_MARK       VARCHAR(10),
  CLOSE_MARK       VARCHAR(1),
  TAX_TYPE         VARCHAR(1),
  RECOVER_DUTY     NUMERIC(19,5),
  RECOVER_TAX      NUMERIC(19,5),
  RECOVER_REG      NUMERIC(19,5),
  DEFER_DUTY       NUMERIC(19,5),
  DEFER_TAX        NUMERIC(19,5),
  DEFER_REG        NUMERIC(19,5),
  FINE_AMT         NUMERIC(19,5),
  REAL_DUTY        NUMERIC(19,5),
  REAL_TAX         NUMERIC(19,5),
  REAL_REG         NUMERIC(19,5),
  SEQ_NO           VARCHAR(12),
  VER_NO           VARCHAR(12),
  VER_ER           VARCHAR(8),
  VER_DATE         TIMESTAMP,
  CUSTOMS_CODE     VARCHAR(4),
  SERVICE_FEE_RATE NUMERIC(19,5),
  PRE_SERVICE_FEE  NUMERIC(19,5),
  FACT_SERVICE_FEE NUMERIC(19,5),
  NOTE_S           VARCHAR(255),
  TR_PNT           NUMERIC(19),
  IN_RMB_RATE      NUMERIC(19,8),
  IN_USD_RATE      NUMERIC(19,8),
  EX_RMB_RATE      NUMERIC(19,8),
  EX_USD_RATE      NUMERIC(19,8),
  DEDUC_DATE       TIMESTAMP,
  CHECK_DATE       TIMESTAMP,
  HASH_SIGN        VARCHAR(380),
  CASE_MARK        VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/CONTRACT_HEAD.txt',
'gpfdist://mdw-2:8081/CONTRACT_HEAD.txt',
'gpfdist://mdw-3:8081/CONTRACT_HEAD.txt',
'gpfdist://mdw-4:8081/CONTRACT_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CONTRACT_WORKFLOW------------
drop external table IF EXISTS CONTRACT_WORKFLOW_INC_EXT;

create external table CONTRACT_WORKFLOW_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO    VARCHAR(12)  ,
  STEP_ID      VARCHAR(8)  ,
  PROC_DATE    TIMESTAMP  ,
  PROC_ER      VARCHAR(20),
  PROC_ID      VARCHAR(8),
  PROC_POS     VARCHAR(4),
  STATUS_STATE VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CONTRACT_WORKFLOW.txt',
'gpfdist://mdw-2:8081/CONTRACT_WORKFLOW.txt',
'gpfdist://mdw-3:8081/CONTRACT_WORKFLOW.txt',
'gpfdist://mdw-4:8081/CONTRACT_WORKFLOW.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CONVEYANCE------------
drop external table IF EXISTS CONVEYANCE_INC_EXT;

create external table CONVEYANCE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  SHIP_ID       VARCHAR(32)  ,
  TRAF_MODE     VARCHAR(1)  ,
  SHIP_NAME_EN  VARCHAR(255),
  SHIP_NAME_CN  VARCHAR(255),
  SHIP_NAME_ORI VARCHAR(255),
  COUNTRY_CODE  VARCHAR(3),
  SHIP_TYPE     VARCHAR(3),
  SHIP_ATTR     VARCHAR(3),
  SHIP_USE_CODE VARCHAR(3),
  TONNAGE       NUMERIC(19,2),
  CREATE_DATE   TIMESTAMP,
  CREATE_ER     VARCHAR(8),
  CUSTOMS_CODE  VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/CONVEYANCE.txt',
'gpfdist://mdw-2:8081/CONVEYANCE.txt',
'gpfdist://mdw-3:8081/CONVEYANCE.txt',
'gpfdist://mdw-4:8081/CONVEYANCE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CONVEYANCE_SEGMENT------------
drop external table IF EXISTS CONVEYANCE_SEGMENT_INC_EXT;

create external table CONVEYANCE_SEGMENT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  SHIP_ID          VARCHAR(32)  ,
  TRAF_MODE        VARCHAR(1)  ,
  VOYAGE_NO        VARCHAR(32)  ,
  I_E_FLAG         VARCHAR(1)  ,
  LOAD_PORT        VARCHAR(6)  ,
  DESTINATION_PORT VARCHAR(6)  ,
  CUSTOMS_CODE     VARCHAR(4)  ,
  I_E_DATE         TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/CONVEYANCE_SEGMENT.txt',
'gpfdist://mdw-2:8081/CONVEYANCE_SEGMENT.txt',
'gpfdist://mdw-3:8081/CONVEYANCE_SEGMENT.txt',
'gpfdist://mdw-4:8081/CONVEYANCE_SEGMENT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------COP_CONSUME------------
drop external table IF EXISTS COP_CONSUME_INC_EXT;

create external table COP_CONSUME_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  REC_NUM        VARCHAR(12)  ,
  EX_CODE_TS     VARCHAR(10),
  IM_CODE_TS     VARCHAR(10),
  CUS_CODE       VARCHAR(4),
  EX_G_NAME      VARCHAR(255),
  EX_G_MODEL     VARCHAR(255),
  EX_UNIT_1      VARCHAR(3),
  EX_UNIT_2      VARCHAR(3),
  EX_G_UNIT      VARCHAR(3),
  EX_FACTOR      NUMERIC(19,9),
  EX_COUNTRY     VARCHAR(3),
  IM_G_NAME      VARCHAR(255),
  IM_G_MODEL     VARCHAR(255),
  IM_UNIT_1      VARCHAR(3),
  IM_UNIT_2      VARCHAR(3),
  IM_G_UNIT      VARCHAR(3),
  IM_FACTOR      NUMERIC(19,9),
  IM_COUNTRY     VARCHAR(3),
  INFO_SOURCE    VARCHAR(1),
  MAX_CONSUME    NUMERIC(19,9),
  MIN_CONSUME    NUMERIC(19,9),
  MAX_DAMAGE     NUMERIC(19,9),
  MIN_DAMAGE     NUMERIC(19,9),
  INPUT_DATE     TIMESTAMP,
  LIMIT_DATE     TIMESTAMP,
  INPUT_ER       VARCHAR(8),
  MODI_ER        VARCHAR(8),
  DEL_ER         VARCHAR(8),
  EXEC_FLAG      VARCHAR(8),
  COP_CODE       VARCHAR(10),
  MANUAL_NO      VARCHAR(12),
  EX_G_NAME_KEY  VARCHAR(32),
  EX_G_MODEL_KEY VARCHAR(32),
  IM_G_NAME_KEY  VARCHAR(32),
  IM_G_MODEL_KEY VARCHAR(32),
  CONSUME_VER    VARCHAR(30),
  NOTE_S         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/COP_CONSUME.txt',
'gpfdist://mdw-2:8081/COP_CONSUME.txt',
'gpfdist://mdw-3:8081/COP_CONSUME.txt',
'gpfdist://mdw-4:8081/COP_CONSUME.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------COP_SPEC_REL------------
drop external table IF EXISTS COP_SPEC_REL_INC_EXT;

create external table COP_SPEC_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID      VARCHAR(18)  ,
  STEP_STATUS   VARCHAR(1),
  PASS_CODE     VARCHAR(32),
  AUTH_ID       NUMERIC(19)  ,
  AUTH_DATETIME TIMESTAMP,
  AUTH_PORT     VARCHAR(4),
  AUTH_NOTE     VARCHAR(255),
  PASS_ID       NUMERIC(19),
  PASS_DATETIME TIMESTAMP,
  PASS_PORT     VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/COP_SPEC_REL.txt',
'gpfdist://mdw-2:8081/COP_SPEC_REL.txt',
'gpfdist://mdw-3:8081/COP_SPEC_REL.txt',
'gpfdist://mdw-4:8081/COP_SPEC_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------COPLOG_DELETE_REL------------
drop external table IF EXISTS COPLOG_DELETE_REL_INC_EXT;

create external table COPLOG_DELETE_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LOG_ID            NUMERIC(18)  ,
  LOG_DATE          TIMESTAMP ,
  LOG_OPER_ID       VARCHAR(32),
  LOG_CUSTOMS_CODE  VARCHAR(4),
  LOG_COMPUTER_NAME VARCHAR(32),
  LOG_MODE          VARCHAR(4),
  TRADE_CO          VARCHAR(10),
  REG_CO            VARCHAR(255),
  FULL_NAME         VARCHAR(255),
  CUSTOMS_CODE      VARCHAR(4),
  CO_CLASS          VARCHAR(1),
  CREDIT_MAR        VARCHAR(8),
  EXAM_SCORE        NUMERIC(19),
  VALID_DATE        TIMESTAMP,
  ACCO_BANK         VARCHAR(255),
  ACCO_NO           VARCHAR(32),
  MAIL_CO           VARCHAR(6),
  BROKER_TYPE       VARCHAR(1),
  RG_DATE           TIMESTAMP ,
  LICENSE_ID        VARCHAR(32),
  EN_FULL_CO        VARCHAR(255),
  EN_ADDR_CO        VARCHAR(255),
  ADDR_CO           VARCHAR(255),
  BUSI_TYPE         VARCHAR(32),
  CONTAC_CO         VARCHAR(32),
  TEL_CO            VARCHAR(32),
  APPR_DEP          VARCHAR(32),
  APPR_ID           VARCHAR(32),
  LAW_MAN           VARCHAR(32),
  LAW_MAN_TEL       VARCHAR(32),
  INV_FUND_T        NUMERIC(19,4),
  ID_NUMBER         VARCHAR(32),
  RG_FUND           NUMERIC(19,4),
  CURR_CODE         VARCHAR(3),
  TAXY_RG_NO        VARCHAR(32),
  CHK_DATE          TIMESTAMP,
  CO_TYPE           VARCHAR(32),
  BREAK_LAW_TIME1   NUMERIC(19),
  BREAK_LAW_TIME2   NUMERIC(19),
  IN_RATIO          NUMERIC(19),
  INSPECT_TIME      NUMERIC(19),
  SPE_CO            VARCHAR(8),
  TRADE_AREA        VARCHAR(32),
  MAIN_PRO          VARCHAR(255),
  ACT_FUND          NUMERIC(19),
  DUTY_FREE_AMT     NUMERIC(19),
  COP_FLAG          VARCHAR(8),
  COP_NOTE          VARCHAR(255),
  PRE_TRADE_CO      VARCHAR(18),
  CHK_OPER_CODE     VARCHAR(8),
  CHK_OPER_FLAG     VARCHAR(1),
  CHK_OPER_DATE     TIMESTAMP,
  CHK_DPT_CODE      VARCHAR(8),
  CHK_DPT_FLAG      VARCHAR(1),
  CHK_DPT_DATE      TIMESTAMP,
  CHK_MASTER_CODE   VARCHAR(8),
  CHK_MASTER_FLAG   VARCHAR(1),
  CHK_MASTER_DATE   TIMESTAMP,
  CHK_EARNEST_MON   NUMERIC(19,4),
  CHK_CODE          VARCHAR(8),
  COP_GB_CODE       VARCHAR(32),
  COP_IO_CODE       VARCHAR(32),
  COP_PASS_CODE     VARCHAR(32),
  COP_END_DATE      TIMESTAMP ,
  COP_MODIFY_DATE   TIMESTAMP ,
  COP_RANGE         VARCHAR(4000)
)
LOCATION( 
'gpfdist://mdw-1:8081/COPLOG_DELETE_REL.txt',
'gpfdist://mdw-2:8081/COPLOG_DELETE_REL.txt',
'gpfdist://mdw-3:8081/COPLOG_DELETE_REL.txt',
'gpfdist://mdw-4:8081/COPLOG_DELETE_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------COPLOG_MODIFY_REL------------
drop external table IF EXISTS COPLOG_MODIFY_REL_INC_EXT;

create external table COPLOG_MODIFY_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LOG_ID                NUMERIC(18)  ,
  LOG_SYSTEM            VARCHAR(32),
  LOG_NO                VARCHAR(32),
  LOG_FIELD_NAME        VARCHAR(255),
  LOG_SOURCE            VARCHAR(4000),
  LOG_DEST              VARCHAR(4000),
  LOG_TEXT              VARCHAR(255),
  LOG_TYPE              VARCHAR(32),
  LOG_OPER_ID           VARCHAR(32),
  LOG_OPER_CUSTOMS_CODE VARCHAR(4),
  LOG_CUSTOMS_CODE      VARCHAR(4),
  LOG_DATE              TIMESTAMP,
  LOG_COMPUTER_NAME     VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/COPLOG_MODIFY_REL.txt',
'gpfdist://mdw-2:8081/COPLOG_MODIFY_REL.txt',
'gpfdist://mdw-3:8081/COPLOG_MODIFY_REL.txt',
'gpfdist://mdw-4:8081/COPLOG_MODIFY_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CORP_HEAD------------
drop external table IF EXISTS CORP_HEAD_INC_EXT;

create external table CORP_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FORM_ID    NUMERIC(19)  ,
  TABLE_ID   NUMERIC(19),
  CORP_ID    VARCHAR(10),
  INPUT_TIME TIMESTAMP,
  ER         VARCHAR(8),
  CUSTOMS    VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/CORP_HEAD.txt',
'gpfdist://mdw-2:8081/CORP_HEAD.txt',
'gpfdist://mdw-3:8081/CORP_HEAD.txt',
'gpfdist://mdw-4:8081/CORP_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CORP_LIST------------
drop external table IF EXISTS CORP_LIST_INC_EXT;

create external table CORP_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FORM_ID  NUMERIC(19)  ,
  FIELD_ID NUMERIC(19)  ,
  TX       VARCHAR(80)
)
LOCATION( 
'gpfdist://mdw-1:8081/CORP_LIST.txt',
'gpfdist://mdw-2:8081/CORP_LIST.txt',
'gpfdist://mdw-3:8081/CORP_LIST.txt',
'gpfdist://mdw-4:8081/CORP_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CORP_TABLE------------
drop external table IF EXISTS CORP_TABLE_INC_EXT;

create external table CORP_TABLE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FIELD_ID   NUMERIC(19)  ,
  TABLE_ID   NUMERIC(19)  ,
  TABLE_NAME VARCHAR(40),
  FIELD_NAME VARCHAR(40)
)
LOCATION( 
'gpfdist://mdw-1:8081/CORP_TABLE.txt',
'gpfdist://mdw-2:8081/CORP_TABLE.txt',
'gpfdist://mdw-3:8081/CORP_TABLE.txt',
'gpfdist://mdw-4:8081/CORP_TABLE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CORP_TYPE------------
drop external table IF EXISTS CORP_TYPE_INC_EXT;

create external table CORP_TYPE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CORP_TYPE  VARCHAR(1)  ,
  MANUAL_TAG VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/CORP_TYPE.txt',
'gpfdist://mdw-2:8081/CORP_TYPE.txt',
'gpfdist://mdw-3:8081/CORP_TYPE.txt',
'gpfdist://mdw-4:8081/CORP_TYPE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------COUNTER_TABLE------------
drop external table IF EXISTS COUNTER_TABLE_INC_EXT;

create external table COUNTER_TABLE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  COUNTER_TYPE VARCHAR(1)  ,
  CUSTOMS_CODE VARCHAR(4)  ,
  I_E_FLAG     VARCHAR(1)  ,
  C_DATE       TIMESTAMP  ,
  COUNTER      NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/COUNTER_TABLE.txt',
'gpfdist://mdw-2:8081/COUNTER_TABLE.txt',
'gpfdist://mdw-3:8081/COUNTER_TABLE.txt',
'gpfdist://mdw-4:8081/COUNTER_TABLE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CREDIT_INFO------------
drop external table IF EXISTS CREDIT_INFO_INC_EXT;

create external table CREDIT_INFO_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RPTNO       VARCHAR(32)  ,
  RPTUSER     VARCHAR(128),
  TRADE_CO    VARCHAR(10),
  RCVNAME     VARCHAR(128),
  ACTUCCY     VARCHAR(3),
  ACTUAMT     NUMERIC(21,2),
  CSTSETCODE  VARCHAR(2),
  COUNTRYCODE VARCHAR(3),
  CSTCNTRCTNO VARCHAR(32),
  INVOICENO   VARCHAR(64),
  LCBGNO      VARCHAR(32),
  RECV_DATE   TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/CREDIT_INFO.txt',
'gpfdist://mdw-2:8081/CREDIT_INFO.txt',
'gpfdist://mdw-3:8081/CREDIT_INFO.txt',
'gpfdist://mdw-4:8081/CREDIT_INFO.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CTS_CHKRATE_LIMIT------------
drop external table IF EXISTS CTS_CHKRATE_LIMIT_INC_EXT;

create external table CTS_CHKRATE_LIMIT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ID                    VARCHAR(18)  ,
  CUSTOMS_CODE          VARCHAR(4),
  I_E_FLAG              VARCHAR(1),
  MAX_CHK_RATE          NUMERIC(19,4),
  MAX_OPEN_RATE         NUMERIC(19,4),
  QUICK_CHK_RATE        NUMERIC(19,4),
  QUICKUNI_CHK_RATE     NUMERIC(19,4),
  UNI_CHK_RATE          NUMERIC(19,4),
  UNI_NOCHK_RATE        NUMERIC(19,4),
  RANDOM_RECHK_RATE     NUMERIC(19,4),
  RANDOM_FOCUS_CHK_RATE NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/CTS_CHKRATE_LIMIT.txt',
'gpfdist://mdw-2:8081/CTS_CHKRATE_LIMIT.txt',
'gpfdist://mdw-3:8081/CTS_CHKRATE_LIMIT.txt',
'gpfdist://mdw-4:8081/CTS_CHKRATE_LIMIT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CTS_CHKRATE_LIMIT_BAK------------
drop external table IF EXISTS CTS_CHKRATE_LIMIT_BAK_INC_EXT;

create external table CTS_CHKRATE_LIMIT_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ID                    VARCHAR(18)  ,
  CUSTOMS_CODE          VARCHAR(4),
  I_E_FLAG              VARCHAR(1),
  MAX_CHK_RATE          NUMERIC(19,4),
  MAX_OPEN_RATE         NUMERIC(19,4),
  QUICK_CHK_RATE        NUMERIC(19,4),
  QUICKUNI_CHK_RATE     NUMERIC(19,4),
  UNI_CHK_RATE          NUMERIC(19,4),
  UNI_NOCHK_RATE        NUMERIC(19,4),
  RANDOM_RECHK_RATE     NUMERIC(19,4),
  OP_BAK_TYPE           VARCHAR(8),
  OP_BAK_CUSTOMS        VARCHAR(4),
  OP_BAK_MAN            VARCHAR(8),
  OP_BAK_TIME           TIMESTAMP  ,
  RANDOM_FOCUS_CHK_RATE NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/CTS_CHKRATE_LIMIT_BAK.txt',
'gpfdist://mdw-2:8081/CTS_CHKRATE_LIMIT_BAK.txt',
'gpfdist://mdw-3:8081/CTS_CHKRATE_LIMIT_BAK.txt',
'gpfdist://mdw-4:8081/CTS_CHKRATE_LIMIT_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CTS_PERIOD------------
drop external table IF EXISTS CTS_PERIOD_INC_EXT;

create external table CTS_PERIOD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOMS_CODE VARCHAR(4)  ,
  EXAM_PERIOD  NUMERIC(9),
  CHK_PERIOD   NUMERIC(9),
  PROC_PERIOD  NUMERIC(9),
  OP_ER        VARCHAR(8),
  OP_TIME      TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/CTS_PERIOD.txt',
'gpfdist://mdw-2:8081/CTS_PERIOD.txt',
'gpfdist://mdw-3:8081/CTS_PERIOD.txt',
'gpfdist://mdw-4:8081/CTS_PERIOD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CUS_GOOD_CONSUME------------
drop external table IF EXISTS CUS_GOOD_CONSUME_INC_EXT;

create external table CUS_GOOD_CONSUME_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  REC_NUM        VARCHAR(12)  ,
  EX_CODE_TS     VARCHAR(10),
  IM_CODE_TS     VARCHAR(10),
  CUS_CODE       VARCHAR(4),
  G_FLAG         VARCHAR(1),
  EX_G_NAME      VARCHAR(255),
  EX_G_MODEL     VARCHAR(255),
  EX_UNIT_1      VARCHAR(3),
  EX_UNIT_2      VARCHAR(3),
  EX_G_UNIT      VARCHAR(3),
  EX_FACTOR      NUMERIC(19,9),
  EX_COUNTRY     VARCHAR(3),
  IM_G_NAME      VARCHAR(255),
  IM_G_MODEL     VARCHAR(255),
  IM_UNIT_1      VARCHAR(3),
  IM_UNIT_2      VARCHAR(3),
  IM_G_UNIT      VARCHAR(3),
  IM_FACTOR      NUMERIC(19,9),
  IM_COUNTRY     VARCHAR(3),
  INFO_SOURCE    VARCHAR(3),
  MAX_CONSUME    NUMERIC(19,9),
  MIN_CONSUME    NUMERIC(19,9),
  MAX_DAMAGE     NUMERIC(19,9),
  MIN_DAMAGE     NUMERIC(19,9),
  LIMIT_DATE     TIMESTAMP,
  INPUT_DATE     TIMESTAMP,
  CHK_DATE       TIMESTAMP,
  MODI_DATE      TIMESTAMP,
  DEL_DATE       TIMESTAMP,
  INPUT_ER       VARCHAR(8),
  CHK_ER         VARCHAR(8),
  MODI_ER        VARCHAR(8),
  DEL_ER         VARCHAR(8),
  CONSUME_NOTE   VARCHAR(255),
  EXEC_FLAG      VARCHAR(2),
  FORMULA        VARCHAR(255),
  CONSUME_VER    VARCHAR(30),
  NOTE_S         VARCHAR(255),
  IM_FACTOR_1    NUMERIC(19,9),
  EX_FACTOR_1    NUMERIC(19,9),
  EX_G_NAME_KEY  VARCHAR(32),
  EX_G_MODEL_KEY VARCHAR(32),
  IM_G_NAME_KEY  VARCHAR(32),
  IM_G_MODEL_KEY VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/CUS_GOOD_CONSUME.txt',
'gpfdist://mdw-2:8081/CUS_GOOD_CONSUME.txt',
'gpfdist://mdw-3:8081/CUS_GOOD_CONSUME.txt',
'gpfdist://mdw-4:8081/CUS_GOOD_CONSUME.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CUSTOMS_DEFAULT------------
drop external table IF EXISTS CUSTOMS_DEFAULT_INC_EXT;

create external table CUSTOMS_DEFAULT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MASTER_CUSTOMS VARCHAR(4)  ,
  ADDRESS        VARCHAR(255),
  POST_CODE      VARCHAR(6),
  BANK_ACCOUNT   VARCHAR(255),
  DEPARTMENT     VARCHAR(255),
  PHONE_NO       VARCHAR(32),
  RED_SWITCH     VARCHAR(32),
  MODIFY_DATE    TIMESTAMP,
  NOTE           VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/CUSTOMS_DEFAULT.txt',
'gpfdist://mdw-2:8081/CUSTOMS_DEFAULT.txt',
'gpfdist://mdw-3:8081/CUSTOMS_DEFAULT.txt',
'gpfdist://mdw-4:8081/CUSTOMS_DEFAULT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------CUSTOMS_ESEAL_CONFIG------------
drop external table IF EXISTS CUSTOMS_ESEAL_CONFIG_INC_EXT;

create external table CUSTOMS_ESEAL_CONFIG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOMS_CODE VARCHAR(4)  ,
  FLAG_TYPE    VARCHAR(1)  ,
  I_E_FLAG     VARCHAR(1)  ,
  ESEAL_FLAG   VARCHAR(1),
  ESEAL_MODE   VARCHAR(1),
  OP_ID        VARCHAR(8)  ,
  OP_DATE      TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/CUSTOMS_ESEAL_CONFIG.txt',
'gpfdist://mdw-2:8081/CUSTOMS_ESEAL_CONFIG.txt',
'gpfdist://mdw-3:8081/CUSTOMS_ESEAL_CONFIG.txt',
'gpfdist://mdw-4:8081/CUSTOMS_ESEAL_CONFIG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DCG_BAK_LIST------------
drop external table IF EXISTS DCG_BAK_LIST_INC_EXT;

create external table DCG_BAK_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DCG_NO      VARCHAR(17)  ,
  CREATE_DATE TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/DCG_BAK_LIST.txt',
'gpfdist://mdw-2:8081/DCG_BAK_LIST.txt',
'gpfdist://mdw-3:8081/DCG_BAK_LIST.txt',
'gpfdist://mdw-4:8081/DCG_BAK_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DCG_BILL_HEAD------------
drop external table IF EXISTS DCG_BILL_HEAD_INC_EXT;

create external table DCG_BILL_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BILL_NO         VARCHAR(17)  ,
  BILL_FLAG       VARCHAR(1),
  EPORT_NO        VARCHAR(18),
  DCG_NO          VARCHAR(12),
  EX_COP_BILL_NO  VARCHAR(20),
  EX_TRADE_CODE   VARCHAR(10),
  EX_DECLARE_ER   VARCHAR(20),
  EX_DECLARE_DATE TIMESTAMP,
  IM_COP_BILL_NO  VARCHAR(20),
  IM_TRADE_CODE   VARCHAR(10),
  IM_DECLARE_ER   VARCHAR(20),
  IM_DECLARE_DATE TIMESTAMP,
  IM_DATE         TIMESTAMP,
  CONTR_NO        VARCHAR(20),
  VE_TYPE         VARCHAR(1),
  SHIP_ID         VARCHAR(32),
  EX_DATE         TIMESTAMP,
  STATUS          VARCHAR(1),
  PRE_FLAG        VARCHAR(3),
  EXE_MARK        VARCHAR(1),
  CUSTOMS_CODE    VARCHAR(4),
  BAR_CODE        VARCHAR(32),
  NOTE            VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/DCG_BILL_HEAD.txt',
'gpfdist://mdw-2:8081/DCG_BILL_HEAD.txt',
'gpfdist://mdw-3:8081/DCG_BILL_HEAD.txt',
'gpfdist://mdw-4:8081/DCG_BILL_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DCG_BILL_LIST------------
drop external table IF EXISTS DCG_BILL_LIST_INC_EXT;

create external table DCG_BILL_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BILL_NO    VARCHAR(17)  ,
  G_TYPE     VARCHAR(1)  ,
  G_NO       NUMERIC(19)  ,
  DCG_G_NO   NUMERIC(19),
  QTY        NUMERIC(19,5),
  CHECK_DATE TIMESTAMP,
  COP_QTY    NUMERIC(19,5),
  COP_UNIT   VARCHAR(3),
  G_MARK     VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/DCG_BILL_LIST.txt',
'gpfdist://mdw-2:8081/DCG_BILL_LIST.txt',
'gpfdist://mdw-3:8081/DCG_BILL_LIST.txt',
'gpfdist://mdw-4:8081/DCG_BILL_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DCG_COPR_INFO------------
drop external table IF EXISTS DCG_COPR_INFO_INC_EXT;

create external table DCG_COPR_INFO_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CORP_NO      VARCHAR(10)  ,
  EXE_MARK     VARCHAR(1),
  BEGIN_DATE   TIMESTAMP,
  END_DATE     TIMESTAMP,
  PROC_ER      VARCHAR(8),
  PROC_DATE    TIMESTAMP,
  CUSTOMS_CODE VARCHAR(4),
  NOTE         VARCHAR(4),
  REMARK       VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/DCG_COPR_INFO.txt',
'gpfdist://mdw-2:8081/DCG_COPR_INFO.txt',
'gpfdist://mdw-3:8081/DCG_COPR_INFO.txt',
'gpfdist://mdw-4:8081/DCG_COPR_INFO.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DCG_DEDUCT------------
drop external table IF EXISTS DCG_DEDUCT_INC_EXT;

create external table DCG_DEDUCT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID    VARCHAR(18)  ,
  DCG_NO      VARCHAR(12)  ,
  G_TYPE      VARCHAR(1)  ,
  ENTRY_G_NO  NUMERIC(19)  ,
  DCG_G_NO    NUMERIC(19),
  EMS_NO      VARCHAR(12),
  EMS_G_NO    NUMERIC(19),
  QTY         NUMERIC(19,5),
  VERIFY_DATE TIMESTAMP,
  VERIFY_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/DCG_DEDUCT.txt',
'gpfdist://mdw-2:8081/DCG_DEDUCT.txt',
'gpfdist://mdw-3:8081/DCG_DEDUCT.txt',
'gpfdist://mdw-4:8081/DCG_DEDUCT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DCG_DEDUCT_LOG------------
drop external table IF EXISTS DCG_DEDUCT_LOG_INC_EXT;

create external table DCG_DEDUCT_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID    VARCHAR(18)  ,
  DCG_NO      VARCHAR(12)  ,
  CREATE_DATE TIMESTAMP  ,
  JOU_MARK    VARCHAR(1)  ,
  NOTE        VARCHAR(1),
  VERIFY_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/DCG_DEDUCT_LOG.txt',
'gpfdist://mdw-2:8081/DCG_DEDUCT_LOG.txt',
'gpfdist://mdw-3:8081/DCG_DEDUCT_LOG.txt',
'gpfdist://mdw-4:8081/DCG_DEDUCT_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DCG_HEAD------------
drop external table IF EXISTS DCG_HEAD_INC_EXT;

create external table DCG_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DCG_NO           VARCHAR(12)  ,
  DCG_TYPE         VARCHAR(1),
  EPORT_NO         VARCHAR(18),
  EX_EMS_NO        VARCHAR(12),
  EX_COP_EMS_NO    VARCHAR(20),
  EX_CUSTOMS_CODE  VARCHAR(4),
  EX_TRADE_CODE    VARCHAR(10),
  EX_TRADE_NAME    VARCHAR(255),
  EX_DECLARE_CODE  VARCHAR(10),
  EX_DECLARE_NAME  VARCHAR(255),
  EX_CORP_ER       VARCHAR(64),
  EX_DECLARE_ER    VARCHAR(20),
  EX_DISTRICT_CODE VARCHAR(5),
  EX_CONTR_NO      VARCHAR(20),
  EX_APPR_NO       VARCHAR(20),
  EX_NOTE          VARCHAR(64),
  EX_DECLARE_DATE  TIMESTAMP,
  EX_CHK_ER        VARCHAR(8),
  EX_CHK_DATE      TIMESTAMP,
  EX_CHK_NOTE      VARCHAR(255),
  IM_COP_EMS_NO    VARCHAR(20),
  IM_CUSTOMS_CODE  VARCHAR(4),
  IM_TRADE_CODE    VARCHAR(10),
  IM_TRADE_NAME    VARCHAR(255),
  IM_DECLARE_CODE  VARCHAR(10),
  IM_DECLARE_NAME  VARCHAR(255),
  IM_CORP_ER       VARCHAR(64),
  IM_DECLARE_ER    VARCHAR(20),
  IM_DISTRICT_CODE VARCHAR(5),
  IM_CONTR_NO      VARCHAR(20),
  IM_APPR_NO       VARCHAR(20),
  IM_NOTE          VARCHAR(64),
  IM_DECLARE_DATE  TIMESTAMP,
  IM_CHK_ER        VARCHAR(8),
  IM_CHK_DATE      TIMESTAMP,
  IM_CHK_NOTE      VARCHAR(255),
  INTEND_COST_TIME NUMERIC(19,5),
  DISTANCE         NUMERIC(19,5),
  CHK_MARK         VARCHAR(2),
  EXE_MARK         VARCHAR(1),
  PAUSE_MARK       VARCHAR(3),
  END_DATE         TIMESTAMP,
  FIRST_DATE       TIMESTAMP,
  LATE_DATE        TIMESTAMP,
  NOTE_1           VARCHAR(8),
  NOTE_2           VARCHAR(8),
  DECLARE_TYPE     VARCHAR(1),
  LW_MARK          VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/DCG_HEAD.txt',
'gpfdist://mdw-2:8081/DCG_HEAD.txt',
'gpfdist://mdw-3:8081/DCG_HEAD.txt',
'gpfdist://mdw-4:8081/DCG_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DCG_LIST------------
drop external table IF EXISTS DCG_LIST_INC_EXT;

create external table DCG_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DCG_NO      VARCHAR(12)  ,
  G_TYPE      VARCHAR(1)  ,
  G_NO        NUMERIC(19)  ,
  EX_G_NO     NUMERIC(19),
  EMS_NO      VARCHAR(12),
  EMS_G_NO    NUMERIC(19),
  CODE_TS     VARCHAR(10),
  G_NAME      VARCHAR(255),
  G_MODEL     VARCHAR(255),
  UNIT        VARCHAR(3),
  QTY         NUMERIC(19,5),
  UNIT_1      VARCHAR(3),
  QTY_1       NUMERIC(19,5),
  FACT_QTY    NUMERIC(19,5),
  FACT_COUNT  NUMERIC(19),
  BACK_COUNT  NUMERIC(19),
  DEDUCT_QTY  NUMERIC(19,5),
  DEDUCT_DATE TIMESTAMP,
  G_MARK      VARCHAR(8),
  PAUSE_MARK  VARCHAR(3),
  BAK_CODE_TS VARCHAR(10),
  MODIFY_MARK VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/DCG_LIST.txt',
'gpfdist://mdw-2:8081/DCG_LIST.txt',
'gpfdist://mdw-3:8081/DCG_LIST.txt',
'gpfdist://mdw-4:8081/DCG_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DCG_SEQ------------
drop external table IF EXISTS DCG_SEQ_INC_EXT;

create external table DCG_SEQ_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DCG_KEY VARCHAR(16)  ,
  DCG_SEQ NUMERIC(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/DCG_SEQ.txt',
'gpfdist://mdw-2:8081/DCG_SEQ.txt',
'gpfdist://mdw-3:8081/DCG_SEQ.txt',
'gpfdist://mdw-4:8081/DCG_SEQ.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DCG_WORKFLOW------------
drop external table IF EXISTS DCG_WORKFLOW_INC_EXT;

create external table DCG_WORKFLOW_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DCG_NO      VARCHAR(17)  ,
  STEP_ID     VARCHAR(8)  ,
  CREATE_DATE TIMESTAMP  ,
  PROC_ER     VARCHAR(20),
  PROC_ID     VARCHAR(8),
  PROC_POS    VARCHAR(4),
  PROC_RESULT VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/DCG_WORKFLOW.txt',
'gpfdist://mdw-2:8081/DCG_WORKFLOW.txt',
'gpfdist://mdw-3:8081/DCG_WORKFLOW.txt',
'gpfdist://mdw-4:8081/DCG_WORKFLOW.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DECL_CO_ENTRY_COUNT------------
drop external table IF EXISTS DECL_CO_ENTRY_COUNT_INC_EXT;

create external table DECL_CO_ENTRY_COUNT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DECL_CO      VARCHAR(32)  ,
  GEN_DATE     TIMESTAMP ,
  RANDOM       NUMERIC(19)  ,
  ENTRY_DECL   NUMERIC(19) ,
  ENTRY_END    NUMERIC(19) ,
  FAULT_ENTRY  NUMERIC(19) ,
  SCORE_DEDUCT NUMERIC(19) 
)
LOCATION( 
'gpfdist://mdw-1:8081/DECL_CO_ENTRY_COUNT.txt',
'gpfdist://mdw-2:8081/DECL_CO_ENTRY_COUNT.txt',
'gpfdist://mdw-3:8081/DECL_CO_ENTRY_COUNT.txt',
'gpfdist://mdw-4:8081/DECL_CO_ENTRY_COUNT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DECL_CO_ENTRY_COUNT_TEMP------------
drop external table IF EXISTS DECL_CO_ENTRY_COUNT_TEMP_INC_EXT;

create external table DECL_CO_ENTRY_COUNT_TEMP_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DECL_CO  VARCHAR(32)  ,
  GEN_DATE TIMESTAMP  ,
  RANDOM   NUMERIC(19)  
)
LOCATION( 
'gpfdist://mdw-1:8081/DECL_CO_ENTRY_COUNT_TEMP.txt',
'gpfdist://mdw-2:8081/DECL_CO_ENTRY_COUNT_TEMP.txt',
'gpfdist://mdw-3:8081/DECL_CO_ENTRY_COUNT_TEMP.txt',
'gpfdist://mdw-4:8081/DECL_CO_ENTRY_COUNT_TEMP.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DECLAR_COUNTER_REL------------
drop external table IF EXISTS DECLAR_COUNTER_REL_INC_EXT;

create external table DECLAR_COUNTER_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DECL_KEY VARCHAR(8)  ,
  COUNTER  NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/DECLAR_COUNTER_REL.txt',
'gpfdist://mdw-2:8081/DECLAR_COUNTER_REL.txt',
'gpfdist://mdw-3:8081/DECLAR_COUNTER_REL.txt',
'gpfdist://mdw-4:8081/DECLAR_COUNTER_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DECLAR_REL------------
drop external table IF EXISTS DECLAR_REL_INC_EXT;

create external table DECLAR_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO         VARCHAR(10),
  DECL_CO          VARCHAR(32)  ,
  CUSTOMS_CODE     VARCHAR(4)  ,
  DECL_NAME        VARCHAR(32),
  DECL_TYPE        VARCHAR(1),
  DECL_CARD_VER    NUMERIC(19),
  DECL_CARD_DATE   TIMESTAMP,
  DECL_CARD_OP     VARCHAR(8),
  DECL_TOTAL_ERROR NUMERIC(19),
  DECL_SUB_ERROR   NUMERIC(19),
  DECL_SEX         VARCHAR(2),
  DECL_DEGREE      VARCHAR(32),
  DECL_ID_CODE     VARCHAR(18),
  DECL_TEL_BP_CODE VARCHAR(32),
  DECL_LICE_DATE   TIMESTAMP ,
  DECL_FAULT_TIME  NUMERIC(19),
  DECL_LOCK_FLAG   VARCHAR(1) ,
  DECL_CANCEL_DATE TIMESTAMP,
  DECL_CHK_DATE    TIMESTAMP ,
  DECL_CHK_CODE    VARCHAR(8),
  DECL_CLASS       VARCHAR(1),
  DECL_NOTE        VARCHAR(255),
  DECL_CHANGE      NUMERIC(19),
  DECL_VALID_DATE  TIMESTAMP ,
  DECL_ZG_CODE     VARCHAR(9),
  DECL_TRAIN_CO    VARCHAR(21)
)
LOCATION( 
'gpfdist://mdw-1:8081/DECLAR_REL.txt',
'gpfdist://mdw-2:8081/DECLAR_REL.txt',
'gpfdist://mdw-3:8081/DECLAR_REL.txt',
'gpfdist://mdw-4:8081/DECLAR_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DECLARER_REL------------
drop external table IF EXISTS DECLARER_REL_INC_EXT;

create external table DECLARER_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO             VARCHAR(10),
  DECL_CO              VARCHAR(32)  ,
  PRE_DECL_CO          VARCHAR(21),
  TRADE_NAME           VARCHAR(255),
  BROKER_TYPE          VARCHAR(1),
  CUSTOMS_CODE         VARCHAR(4),
  DECL_ZG_CODE         VARCHAR(9),
  DECL_NAME            VARCHAR(32),
  DECL_SEX             VARCHAR(2),
  DECL_DEGREE          VARCHAR(32),
  DECL_ID_CODE         VARCHAR(21),
  DECL_BIRTHDAY        TIMESTAMP,
  DECL_TEL_CODE        VARCHAR(32),
  DECL_MOBILE_CODE     VARCHAR(32),
  DECL_FAX_CODE        VARCHAR(32),
  DECL_EMAIL_ADDR      VARCHAR(50),
  DECL_CLASS           VARCHAR(1),
  DECL_YD_FLAG         VARCHAR(1) ,
  INP_DATE             TIMESTAMP ,
  IC_CODE              VARCHAR(16),
  CTRL_MARK            VARCHAR(8) ,
  CTRL_DATE            TIMESTAMP,
  RG_DATE              TIMESTAMP ,
  APPL_CODE            VARCHAR(8),
  CHK_DATE             TIMESTAMP,
  CHK_CODE             VARCHAR(8),
  VALID_DATE           TIMESTAMP,
  SCORE                NUMERIC(19) ,
  SCORE_DATE           TIMESTAMP,
  CLEAR_DATE           TIMESTAMP,
  YSCORE               NUMERIC(19) ,
  FAULT_TIME           NUMERIC(19) ,
  ENTRY_DECL_NUM       NUMERIC(19) ,
  ENTRY_END_NUM        NUMERIC(19) ,
  FAULT_ENTRY_NUM      NUMERIC(19) ,
  LAST_YSCORE          NUMERIC(19) ,
  LAST_FAULT_TIME      NUMERIC(19) ,
  LAST_ENTRY_DECL_NUM  NUMERIC(19) ,
  LAST_ENTRY_END_NUM   NUMERIC(19) ,
  LAST_FAULT_ENTRY_NUM NUMERIC(19) ,
  CHANGE_TIME          NUMERIC(19) ,
  NOTE                 VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/DECLARER_REL.txt',
'gpfdist://mdw-2:8081/DECLARER_REL.txt',
'gpfdist://mdw-3:8081/DECLARER_REL.txt',
'gpfdist://mdw-4:8081/DECLARER_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DECLOG_FULL_REL------------
drop external table IF EXISTS DECLOG_FULL_REL_INC_EXT;

create external table DECLOG_FULL_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LOG_ID           NUMERIC(19)  ,
  LOG_MODE         VARCHAR(8),
  LOG_DATE         TIMESTAMP ,
  LOG_OPER_ID      VARCHAR(8),
  LOG_CUSTOMS_CODE VARCHAR(4),
  LOG_COMPUTER     VARCHAR(32),
  TRADE_CO         VARCHAR(10),
  DECL_CO          VARCHAR(32),
  CUSTOMS_CODE     VARCHAR(4),
  DECL_TYPE        VARCHAR(1),
  DECL_CARD_VER    NUMERIC(19),
  DECL_CARD_DATE   TIMESTAMP,
  DECL_CARD_OP     VARCHAR(8),
  DECL_TOTAL_ERROR NUMERIC(19),
  DECL_SUB_ERROR   NUMERIC(19),
  DECL_NAME        VARCHAR(32),
  DECL_SEX         VARCHAR(2),
  DECL_DEGREE      VARCHAR(32),
  DECL_ID_CODE     VARCHAR(18),
  DECL_TEL_BP_CODE VARCHAR(32),
  DECL_LICE_DATE   TIMESTAMP ,
  DECL_FAULT_TIME  NUMERIC(19),
  DECL_LOCK_FLAG   VARCHAR(1) ,
  DECL_CANCEL_DATE TIMESTAMP,
  DECL_CHK_DATE    TIMESTAMP ,
  DECL_CHK_CODE    VARCHAR(8),
  DECL_CLASS       VARCHAR(1),
  DECL_NOTE        VARCHAR(255),
  DECL_CHANGE      NUMERIC(19),
  DECL_VALID_DATE  TIMESTAMP ,
  DECL_ZG_CODE     VARCHAR(9),
  DECL_TRAIN_CO    VARCHAR(21)
)
LOCATION( 
'gpfdist://mdw-1:8081/DECLOG_FULL_REL.txt',
'gpfdist://mdw-2:8081/DECLOG_FULL_REL.txt',
'gpfdist://mdw-3:8081/DECLOG_FULL_REL.txt',
'gpfdist://mdw-4:8081/DECLOG_FULL_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DECLOG_MOD_REL------------
drop external table IF EXISTS DECLOG_MOD_REL_INC_EXT;

create external table DECLOG_MOD_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO             VARCHAR(10),
  DECL_CO              VARCHAR(32)  ,
  PRE_DECL_CO          VARCHAR(21),
  TRADE_NAME           VARCHAR(255),
  BROKER_TYPE          VARCHAR(1),
  CUSTOMS_CODE         VARCHAR(4),
  DECL_ZG_CODE         VARCHAR(9),
  DECL_NAME            VARCHAR(32),
  DECL_SEX             VARCHAR(2),
  DECL_DEGREE          VARCHAR(32),
  DECL_ID_CODE         VARCHAR(21),
  DECL_BIRTHDAY        TIMESTAMP,
  DECL_TEL_CODE        VARCHAR(32),
  DECL_MOBILE_CODE     VARCHAR(32),
  DECL_FAX_CODE        VARCHAR(32),
  DECL_EMAIL_ADDR      VARCHAR(50),
  DECL_CLASS           VARCHAR(1),
  DECL_YD_FLAG         VARCHAR(1),
  INP_DATE             TIMESTAMP,
  IC_CODE              VARCHAR(16),
  CTRL_MARK            VARCHAR(8),
  CTRL_DATE            TIMESTAMP,
  RG_DATE              TIMESTAMP,
  APPL_CODE            VARCHAR(8),
  CHK_DATE             TIMESTAMP,
  CHK_CODE             VARCHAR(8),
  VALID_DATE           TIMESTAMP,
  SCORE                NUMERIC(19),
  SCORE_DATE           TIMESTAMP,
  CLEAR_DATE           TIMESTAMP,
  YSCORE               NUMERIC(19),
  FAULT_TIME           NUMERIC(19),
  ENTRY_DECL_NUM       NUMERIC(19),
  ENTRY_END_NUM        NUMERIC(19),
  FAULT_ENTRY_NUM      NUMERIC(19),
  LAST_YSCORE          NUMERIC(19),
  LAST_FAULT_TIME      NUMERIC(19),
  LAST_ENTRY_DECL_NUM  NUMERIC(19),
  LAST_ENTRY_END_NUM   NUMERIC(19),
  LAST_FAULT_ENTRY_NUM NUMERIC(19),
  CHANGE_TIME          NUMERIC(19),
  NOTE                 VARCHAR(255),
  MOD_TIMES            NUMERIC(18) ,
  LOG_OPER_ID          VARCHAR(8),
  LOG_CUSTOMS_CODE     VARCHAR(4),
  LOG_DATE             TIMESTAMP ,
  LOG_MODE             VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/DECLOG_MOD_REL.txt',
'gpfdist://mdw-2:8081/DECLOG_MOD_REL.txt',
'gpfdist://mdw-3:8081/DECLOG_MOD_REL.txt',
'gpfdist://mdw-4:8081/DECLOG_MOD_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DECLOG_MODIFY_REL------------
drop external table IF EXISTS DECLOG_MODIFY_REL_INC_EXT;

create external table DECLOG_MODIFY_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LOG_ID           NUMERIC(18)  ,
  LOG_DECL_CO      VARCHAR(5),
  LOG_DECL_CUST    VARCHAR(4),
  LOG_MODE         VARCHAR(8),
  LOG_ITEM         VARCHAR(32),
  LOG_OLD          VARCHAR(255),
  LOG_NEW          VARCHAR(255),
  LOG_OPER_ID      VARCHAR(8),
  LOG_CUSTOMS_CODE VARCHAR(4),
  LOG_DATE         TIMESTAMP ,
  LOG_COMPUTER     VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/DECLOG_MODIFY_REL.txt',
'gpfdist://mdw-2:8081/DECLOG_MODIFY_REL.txt',
'gpfdist://mdw-3:8081/DECLOG_MODIFY_REL.txt',
'gpfdist://mdw-4:8081/DECLOG_MODIFY_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DECLOG_SCORE_HEAD------------
drop external table IF EXISTS DECLOG_SCORE_HEAD_INC_EXT;

create external table DECLOG_SCORE_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DECL_CO        VARCHAR(32)  ,
  FORM_ID        VARCHAR(32)  ,
  AGENT_CODE     VARCHAR(10),
  SCORE_STEP     VARCHAR(2),
  ERROR_SCORE    NUMERIC(19),
  SCORE_TIME     TIMESTAMP ,
  SCORE_PROC_ER  VARCHAR(8),
  CUSTOMS_CODE   VARCHAR(4),
  RETURN_REASON  VARCHAR(255),
  RETURN_PROC_ER VARCHAR(8),
  RETURN_DATE    TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/DECLOG_SCORE_HEAD.txt',
'gpfdist://mdw-2:8081/DECLOG_SCORE_HEAD.txt',
'gpfdist://mdw-3:8081/DECLOG_SCORE_HEAD.txt',
'gpfdist://mdw-4:8081/DECLOG_SCORE_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DECLOG_SCORE_LIST------------
drop external table IF EXISTS DECLOG_SCORE_LIST_INC_EXT;

create external table DECLOG_SCORE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DECL_CO    VARCHAR(32)  ,
  FORM_ID    VARCHAR(32)  ,
  SCORE_TIME TIMESTAMP ,
  ITEM_NO    NUMERIC(19)  ,
  ERROR_TYPE VARCHAR(2),
  SEQ_NO     VARCHAR(3),
  SCORE_DESC VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/DECLOG_SCORE_LIST.txt',
'gpfdist://mdw-2:8081/DECLOG_SCORE_LIST.txt',
'gpfdist://mdw-3:8081/DECLOG_SCORE_LIST.txt',
'gpfdist://mdw-4:8081/DECLOG_SCORE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DEL_EGS_ARC_AGENT_LIST------------
drop external table IF EXISTS DEL_EGS_ARC_AGENT_LIST_INC_EXT;

create external table DEL_EGS_ARC_AGENT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EGS_NO     VARCHAR(12)  ,
  AGENT_NO   NUMERIC(9)  ,
  AGENT_CODE VARCHAR(32),
  AGENT_NAME VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/DEL_EGS_ARC_AGENT_LIST.txt',
'gpfdist://mdw-2:8081/DEL_EGS_ARC_AGENT_LIST.txt',
'gpfdist://mdw-3:8081/DEL_EGS_ARC_AGENT_LIST.txt',
'gpfdist://mdw-4:8081/DEL_EGS_ARC_AGENT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DEL_EGS_ARC_HEAD------------
drop external table IF EXISTS DEL_EGS_ARC_HEAD_INC_EXT;

create external table DEL_EGS_ARC_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_EGS_NO          VARCHAR(18),
  EGS_NO              VARCHAR(12)  ,
  EGS_NAME            VARCHAR(80),
  APPR_OFFICE         VARCHAR(255),
  APPR_NO             VARCHAR(32),
  MASTER_CUSTOMS      VARCHAR(4),
  REG_CUSTOMS         VARCHAR(4),
  I_E_FLAG            VARCHAR(1),
  SPONSOR_NAME        VARCHAR(255),
  UNDERTAKE_NAME      VARCHAR(255),
  SPONSOR_ER          VARCHAR(20),
  SPONSOR_ER_PHONE    VARCHAR(32),
  CHECK_ER            VARCHAR(255),
  BEGIN_DATE          TIMESTAMP,
  END_DATE            TIMESTAMP,
  EGS_SITE_MAME       VARCHAR(255),
  EGS_AREA            NUMERIC(19,5),
  EGS_INTE_AREA       NUMERIC(19,5),
  DECLARE_NO          VARCHAR(32),
  DECLARE_PHONE       VARCHAR(32),
  COUNTRY_QTY         NUMERIC(9),
  EX_MERCHANT_QTY     NUMERIC(9),
  TW_APPR_NO          VARCHAR(20),
  INPUT_DATE          TIMESTAMP,
  MODI_REASON         VARCHAR(255),
  AUDIT_OFFICER       VARCHAR(8),
  DEPOSIT_MARK        VARCHAR(1),
  AUDIT_DATE          TIMESTAMP,
  AUDIT_ER            VARCHAR(8),
  AUDIT_NOTE          VARCHAR(255),
  POSTPONE_AUDIT_ER   VARCHAR(8),
  POSTPONE_AUDIT_DATE TIMESTAMP,
  POSTPONE_APPR_NO    VARCHAR(255),
  POSTPONE_TIMES      NUMERIC(9),
  CLOSE_DATE          TIMESTAMP,
  CLOSE_ER            VARCHAR(8),
  NOTES               VARCHAR(255),
  DECLARE_TYPE        VARCHAR(1),
  MODIFY_TIMES        NUMERIC(9),
  DECLARE_SOURCE      VARCHAR(5),
  CHK_MARK            VARCHAR(1),
  EXE_MARK            VARCHAR(1),
  AGENT_CODE          VARCHAR(32),
  AGENT_NAME          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/DEL_EGS_ARC_HEAD.txt',
'gpfdist://mdw-2:8081/DEL_EGS_ARC_HEAD.txt',
'gpfdist://mdw-3:8081/DEL_EGS_ARC_HEAD.txt',
'gpfdist://mdw-4:8081/DEL_EGS_ARC_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DEL_EGS_ARC_LIST------------
drop external table IF EXISTS DEL_EGS_ARC_LIST_INC_EXT;

create external table DEL_EGS_ARC_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EGS_NO  VARCHAR(12)  ,
  G_NO    NUMERIC(9)  ,
  CODE_TS VARCHAR(16),
  G_NAME  VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/DEL_EGS_ARC_LIST.txt',
'gpfdist://mdw-2:8081/DEL_EGS_ARC_LIST.txt',
'gpfdist://mdw-3:8081/DEL_EGS_ARC_LIST.txt',
'gpfdist://mdw-4:8081/DEL_EGS_ARC_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DEL_EGS_ARC_MERCHANT_LIST------------
drop external table IF EXISTS DEL_EGS_ARC_MERCHANT_LIST_INC_EXT;

create external table DEL_EGS_ARC_MERCHANT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EGS_NO             VARCHAR(12)  ,
  MERCHANT_NO        NUMERIC(9)  ,
  MERCHANT_NAME      VARCHAR(255),
  MERCHANT_COUNTRY   VARCHAR(3),
  EXHIBITION_NO      VARCHAR(50),
  EXHIBITION_SITE_NO VARCHAR(32),
  AGENT_CODE         VARCHAR(32)  
)
LOCATION( 
'gpfdist://mdw-1:8081/DEL_EGS_ARC_MERCHANT_LIST.txt',
'gpfdist://mdw-2:8081/DEL_EGS_ARC_MERCHANT_LIST.txt',
'gpfdist://mdw-3:8081/DEL_EGS_ARC_MERCHANT_LIST.txt',
'gpfdist://mdw-4:8081/DEL_EGS_ARC_MERCHANT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DEL_EGS_CLEAR_CERT------------
drop external table IF EXISTS DEL_EGS_CLEAR_CERT_INC_EXT;

create external table DEL_EGS_CLEAR_CERT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CLR_NO    VARCHAR(18)  ,
  CERT_CODE VARCHAR(5)  ,
  CERT_NO   VARCHAR(18)  
)
LOCATION( 
'gpfdist://mdw-1:8081/DEL_EGS_CLEAR_CERT.txt',
'gpfdist://mdw-2:8081/DEL_EGS_CLEAR_CERT.txt',
'gpfdist://mdw-3:8081/DEL_EGS_CLEAR_CERT.txt',
'gpfdist://mdw-4:8081/DEL_EGS_CLEAR_CERT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DEL_EGS_CLEAR_HEAD------------
drop external table IF EXISTS DEL_EGS_CLEAR_HEAD_INC_EXT;

create external table DEL_EGS_CLEAR_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CLR_NO          VARCHAR(18)  ,
  PRE_CLR_NO      VARCHAR(18),
  EGS_NO          VARCHAR(12),
  EGS_NAME        VARCHAR(80),
  MASTER_CUSTOMS  VARCHAR(4),
  CLEAR_TYPE      VARCHAR(10),
  I_E_PORT        VARCHAR(4),
  I_E_DATE        TIMESTAMP,
  I_E_FLAG        VARCHAR(1),
  DECL_DATE       TIMESTAMP,
  AGENT_CODE      VARCHAR(32),
  AGENT_NAME      VARCHAR(255),
  DECLARE_NO      VARCHAR(32),
  DECLARE_PHONE   VARCHAR(32),
  TRAF_MODE       VARCHAR(10),
  BILL_NO         VARCHAR(32),
  BILL_SUB_NO     VARCHAR(32),
  GROSS_WT        NUMERIC(19,5),
  NET_WT          NUMERIC(19,5),
  WRAP_TYPE       VARCHAR(32),
  PACK_NO         NUMERIC(19),
  NOTES           VARCHAR(255),
  VERIFY_DATE     TIMESTAMP,
  VERIFY_ER       VARCHAR(8),
  CLEAR_DATE      TIMESTAMP,
  CLEAR_ER        VARCHAR(8),
  AUDIT_ER        VARCHAR(8),
  AUDIT_DATE      TIMESTAMP,
  AUDIT_NOTE      VARCHAR(255),
  TURN_NO         VARCHAR(16),
  ENTRY_ID        VARCHAR(18),
  CLEAR_NO        VARCHAR(18),
  DECLARE_SOURCE  VARCHAR(5),
  IM_CUSTOMS_CODE VARCHAR(4),
  IM_AGENT_CODE   VARCHAR(32),
  IM_AGENT_NAME   VARCHAR(255),
  IM_DECL_NO      VARCHAR(18),
  IM_EGS_NO       VARCHAR(12),
  IM_EGS_NAME     VARCHAR(80),
  CHK_MARK        VARCHAR(1),
  EXE_MARK        VARCHAR(1),
  LICENSE_NO      VARCHAR(20)
)
LOCATION( 
'gpfdist://mdw-1:8081/DEL_EGS_CLEAR_HEAD.txt',
'gpfdist://mdw-2:8081/DEL_EGS_CLEAR_HEAD.txt',
'gpfdist://mdw-3:8081/DEL_EGS_CLEAR_HEAD.txt',
'gpfdist://mdw-4:8081/DEL_EGS_CLEAR_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DEL_EGS_CLEAR_LIST------------
drop external table IF EXISTS DEL_EGS_CLEAR_LIST_INC_EXT;

create external table DEL_EGS_CLEAR_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CLR_NO           VARCHAR(18)  ,
  MERCHANT_NO      NUMERIC(9),
  MERCHANT_NAME    VARCHAR(255),
  MERCHANT_COUNTRY VARCHAR(3),
  G_NO             NUMERIC(9)  ,
  CODE_TS          VARCHAR(16),
  G_CERT_FLAG      VARCHAR(32),
  G_NAME           VARCHAR(255),
  G_MODEL          VARCHAR(255),
  QTY1             NUMERIC(19,5),
  QTY2             NUMERIC(19,5),
  DECL_QTY         NUMERIC(19,5),
  UNIT1            VARCHAR(3),
  UNIT2            VARCHAR(3),
  DECL_UNIT        VARCHAR(3),
  DECL_PRICE       NUMERIC(19,4),
  DECL_TOTAL       NUMERIC(19,4),
  TRADE_CURR       VARCHAR(3),
  ORIGIN_COUNTRY   VARCHAR(3),
  DECL_NO          VARCHAR(18),
  DECL_G_NO        NUMERIC(9)
)
LOCATION( 
'gpfdist://mdw-1:8081/DEL_EGS_CLEAR_LIST.txt',
'gpfdist://mdw-2:8081/DEL_EGS_CLEAR_LIST.txt',
'gpfdist://mdw-3:8081/DEL_EGS_CLEAR_LIST.txt',
'gpfdist://mdw-4:8081/DEL_EGS_CLEAR_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DEL_EGS_DECLARE_CERT------------
drop external table IF EXISTS DEL_EGS_DECLARE_CERT_INC_EXT;

create external table DEL_EGS_DECLARE_CERT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DECL_NO   VARCHAR(18)  ,
  CERT_CODE VARCHAR(5)  ,
  CERT_NO   VARCHAR(18)  
)
LOCATION( 
'gpfdist://mdw-1:8081/DEL_EGS_DECLARE_CERT.txt',
'gpfdist://mdw-2:8081/DEL_EGS_DECLARE_CERT.txt',
'gpfdist://mdw-3:8081/DEL_EGS_DECLARE_CERT.txt',
'gpfdist://mdw-4:8081/DEL_EGS_DECLARE_CERT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DEL_EGS_DECLARE_HEAD------------
drop external table IF EXISTS DEL_EGS_DECLARE_HEAD_INC_EXT;

create external table DEL_EGS_DECLARE_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EGS_NO          VARCHAR(12),
  EGS_NAME        VARCHAR(80),
  ADM_NO          VARCHAR(18),
  DECL_NO         VARCHAR(18)  ,
  PRE_DECL_NO     VARCHAR(18),
  DECL_TYPE       VARCHAR(1),
  MASTER_CUSTOMS  VARCHAR(4),
  I_E_PORT        VARCHAR(4),
  I_E_DATE        TIMESTAMP,
  I_E_FLAG        VARCHAR(1),
  DECLARE_DATE    TIMESTAMP,
  AGENT_CODE      VARCHAR(32),
  AGENT_NAME      VARCHAR(255),
  DECLARE_NO      VARCHAR(32),
  DECLARE_PHONE   VARCHAR(32),
  LICENSE_NO      VARCHAR(20),
  TRAF_MODE       VARCHAR(1),
  BILL_NO         VARCHAR(32),
  BILL_SUB_NO     VARCHAR(32),
  TRADE_COUNTRY   VARCHAR(3),
  GROSS_WT        NUMERIC(19,5),
  NET_WT          NUMERIC(19,5),
  WRAP_TYPE       VARCHAR(32),
  PACK_NO         NUMERIC(19),
  TRANS_MODE      VARCHAR(1),
  NOTES           VARCHAR(255),
  DEPOSIT_MARK    VARCHAR(1),
  REL_DATE        TIMESTAMP,
  TRANS_DATE      TIMESTAMP,
  POSTPONE_TIMES  NUMERIC(9),
  ZS_APPR_NO      VARCHAR(40),
  TURN_NO         VARCHAR(16),
  ENTRY_ID        VARCHAR(18),
  ENTRY_TYPE      VARCHAR(1),
  DECLARE_SOURCE  VARCHAR(5),
  CHK_MARK        VARCHAR(1),
  EX_CUSTOMS_CODE VARCHAR(4),
  EX_EGS_NO       VARCHAR(12),
  EX_EGS_NAME     VARCHAR(80),
  EX_AGENT_CODE   VARCHAR(32),
  EX_AGENT_NAME   VARCHAR(255),
  AUDIT_ER        VARCHAR(8),
  AUDIT_DATE      TIMESTAMP,
  AUDIT_NOTE      VARCHAR(255),
  VERIFY_DATE     TIMESTAMP,
  VERIFY_ER       VARCHAR(8),
  CLEAR_DATE      TIMESTAMP,
  CLEAR_ER        VARCHAR(8),
  EXE_MARK        VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/DEL_EGS_DECLARE_HEAD.txt',
'gpfdist://mdw-2:8081/DEL_EGS_DECLARE_HEAD.txt',
'gpfdist://mdw-3:8081/DEL_EGS_DECLARE_HEAD.txt',
'gpfdist://mdw-4:8081/DEL_EGS_DECLARE_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DEL_EGS_DECLARE_LIST------------
drop external table IF EXISTS DEL_EGS_DECLARE_LIST_INC_EXT;

create external table DEL_EGS_DECLARE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DECL_NO            VARCHAR(18)  ,
  MERCHANT_NO        NUMERIC(9),
  MERCHANT_NAME      VARCHAR(255),
  MERCHANT_COUNTRY   VARCHAR(3),
  G_NO               NUMERIC(9)  ,
  CONTR_ITEM         NUMERIC(9),
  CODE_TS            VARCHAR(16),
  G_CERT_FLAG        VARCHAR(32),
  G_NAME             VARCHAR(255),
  G_MODEL            VARCHAR(255),
  QTY1               NUMERIC(19,5),
  QTY2               NUMERIC(19,5),
  DECL_QTY           NUMERIC(19,5),
  UNIT1              VARCHAR(3),
  UNIT2              VARCHAR(3),
  DECL_UNIT          VARCHAR(3),
  DECL_PRICE         NUMERIC(19,4),
  DECL_TOTAL         NUMERIC(19,4),
  TRADE_CURR         VARCHAR(3),
  ORIGIN_COUNTRY     VARCHAR(3),
  EXHIBITION_NO      VARCHAR(50),
  CLR_QTY            NUMERIC(19,5),
  UNCLR_QTY          NUMERIC(19,5),
  LEND_QTY           NUMERIC(19,5),
  TAX_QTY            NUMERIC(19,5),
  CONSUME_QTY        NUMERIC(19,5),
  CLEAR_QTY          NUMERIC(19,5),
  LOST_QTY           NUMERIC(19,5),
  OTHER_QTY          NUMERIC(19,5),
  EX_QTY             NUMERIC(19,5),
  BUY_QTY            NUMERIC(19,5),
  REEXPORT_QTY       NUMERIC(19,5),
  LAST_DECL_NO       VARCHAR(18),
  LAST_G_NO          NUMERIC(9),
  FIRST_DECL_NO      VARCHAR(18),
  FIRST_G_NO         NUMERIC(9),
  EXHIBITION_SITE_NO VARCHAR(32),
  TRADE_TOTAL        NUMERIC(19,4),
  RMB_PRICE          NUMERIC(19),
  USD_PRICE          NUMERIC(19),
  DUTY_VALUE         NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/DEL_EGS_DECLARE_LIST.txt',
'gpfdist://mdw-2:8081/DEL_EGS_DECLARE_LIST.txt',
'gpfdist://mdw-3:8081/DEL_EGS_DECLARE_LIST.txt',
'gpfdist://mdw-4:8081/DEL_EGS_DECLARE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DEL_MOD_APPLY------------
drop external table IF EXISTS DEL_MOD_APPLY_INC_EXT;

create external table DEL_MOD_APPLY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID   VARCHAR(18)  ,
  APPLY_TIME TIMESTAMP  ,
  APPLY_FLAG VARCHAR(1),
  APPLY_ER   VARCHAR(8),
  APPLY_MARK VARCHAR(1),
  APPLY_COMM VARCHAR(255),
  RSK_CLASS  NUMERIC(19),
  OP_FLAG    VARCHAR(1),
  OP_TIME    TIMESTAMP,
  OP_ER      VARCHAR(8),
  OP_MARK    VARCHAR(1),
  OP_COMM    VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/DEL_MOD_APPLY.txt',
'gpfdist://mdw-2:8081/DEL_MOD_APPLY.txt',
'gpfdist://mdw-3:8081/DEL_MOD_APPLY.txt',
'gpfdist://mdw-4:8081/DEL_MOD_APPLY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DISTRIBUTIVE_BILL_DECLARE------------
drop external table IF EXISTS DISTRIBUTIVE_BILL_DECLARE_INC_EXT;

create external table DISTRIBUTIVE_BILL_DECLARE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DISTRIBUTIVE_NO   VARCHAR(18)  ,
  I_E_FLAG          VARCHAR(1)  ,
  CUSTOMS_CODE      VARCHAR(4)  ,
  TRAF_MODE         VARCHAR(1)  ,
  VOYAGE_NO         VARCHAR(32)  ,
  BILL_NO           VARCHAR(32)  ,
  SHIP_ID           VARCHAR(32)  ,
  I_E_DATE          TIMESTAMP  ,
  DISTRIBUTIVE_MARK VARCHAR(1),
  PACK_NO           NUMERIC(19,5),
  GROSS_WT          NUMERIC(19,5),
  VOLUME            NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/DISTRIBUTIVE_BILL_DECLARE.txt',
'gpfdist://mdw-2:8081/DISTRIBUTIVE_BILL_DECLARE.txt',
'gpfdist://mdw-3:8081/DISTRIBUTIVE_BILL_DECLARE.txt',
'gpfdist://mdw-4:8081/DISTRIBUTIVE_BILL_DECLARE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DISTRIBUTIVE_DECLARE------------
drop external table IF EXISTS DISTRIBUTIVE_DECLARE_INC_EXT;

create external table DISTRIBUTIVE_DECLARE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DISTRIBUTIVE_NO    VARCHAR(18)  ,
  FORM_FLAG          VARCHAR(1),
  DECL_PORT          VARCHAR(4),
  ORIGIN_CUS_CODE    VARCHAR(4),
  ORIGIN_CUS_PLACE   VARCHAR(8),
  DEST_CUS_CODE      VARCHAR(4),
  DEST_CUS_PLACE     VARCHAR(8),
  AGENT_CODE         VARCHAR(10),
  AGENT_NAME         VARCHAR(255),
  TRANSIT_CODE       VARCHAR(10),
  TRANSIT_NAME       VARCHAR(255),
  TRANSIT_WAY        VARCHAR(2000),
  NOTE               VARCHAR(255),
  DISTRIBUTIVE_MARK  VARCHAR(1),
  I_E_FLAG           VARCHAR(1),
  DISTRIBUTIVE_SURER VARCHAR(8),
  SURE_DATE          TIMESTAMP,
  OUT_SURER          VARCHAR(8),
  IN_SURER           VARCHAR(8),
  FORE_ARRIVE_DATE   TIMESTAMP,
  DIS_FLAG           VARCHAR(1),
  SEAL_FLAG          VARCHAR(1),
  LIMIT_HOUR         NUMERIC(19,1),
  DECL_DATE          TIMESTAMP,
  IN_DATE            TIMESTAMP,
  PRINT_NUM          NUMERIC(9),
  SEQ_NO             VARCHAR(18)
)
LOCATION( 
'gpfdist://mdw-1:8081/DISTRIBUTIVE_DECLARE.txt',
'gpfdist://mdw-2:8081/DISTRIBUTIVE_DECLARE.txt',
'gpfdist://mdw-3:8081/DISTRIBUTIVE_DECLARE.txt',
'gpfdist://mdw-4:8081/DISTRIBUTIVE_DECLARE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DISTRIBUTIVE_TRANSIT_WAY------------
drop external table IF EXISTS DISTRIBUTIVE_TRANSIT_WAY_INC_EXT;

create external table DISTRIBUTIVE_TRANSIT_WAY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DISTRIBUTIVE_NO VARCHAR(18)  ,
  CONTA_ID        VARCHAR(32)  ,
  TRAF_MODE       VARCHAR(1),
  SEAL_NO         VARCHAR(32),
  CAR_NUMBER      VARCHAR(32),
  DRIVER_NO       VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/DISTRIBUTIVE_TRANSIT_WAY.txt',
'gpfdist://mdw-2:8081/DISTRIBUTIVE_TRANSIT_WAY.txt',
'gpfdist://mdw-3:8081/DISTRIBUTIVE_TRANSIT_WAY.txt',
'gpfdist://mdw-4:8081/DISTRIBUTIVE_TRANSIT_WAY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DST_COUNTER_TABLE------------
drop external table IF EXISTS DST_COUNTER_TABLE_INC_EXT;

create external table DST_COUNTER_TABLE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO      VARCHAR(12)  ,
  COUNTER     VARCHAR(1)  ,
  SUB_COUNTER NUMERIC(9)  
)
LOCATION( 
'gpfdist://mdw-1:8081/DST_COUNTER_TABLE.txt',
'gpfdist://mdw-2:8081/DST_COUNTER_TABLE.txt',
'gpfdist://mdw-3:8081/DST_COUNTER_TABLE.txt',
'gpfdist://mdw-4:8081/DST_COUNTER_TABLE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DST_DEDUCT------------
drop external table IF EXISTS DST_DEDUCT_INC_EXT;

create external table DST_DEDUCT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO         VARCHAR(17)  ,
  REL_NO         VARCHAR(17)  ,
  G_NO           NUMERIC(19)  ,
  ENTRY_ID       VARCHAR(18)  ,
  ENTRY_G_NO     NUMERIC(19)  ,
  I_E_FLAG       VARCHAR(1)  ,
  G_QTY          NUMERIC(19,5),
  VERIFY_DATE    TIMESTAMP  ,
  VERIFY_ER      VARCHAR(8)  ,
  ORIGIN_COUNTRY VARCHAR(3)  
)
LOCATION( 
'gpfdist://mdw-1:8081/DST_DEDUCT.txt',
'gpfdist://mdw-2:8081/DST_DEDUCT.txt',
'gpfdist://mdw-3:8081/DST_DEDUCT.txt',
'gpfdist://mdw-4:8081/DST_DEDUCT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DST_EXG------------
drop external table IF EXISTS DST_EXG_INC_EXT;

create external table DST_EXG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DST_SEQ_NO     NUMERIC(18)  ,
  PRE_NO         VARCHAR(17)  ,
  REL_NO         VARCHAR(17)  ,
  G_NO           NUMERIC(19)  ,
  CODE_TS        VARCHAR(10)  ,
  G_NAME         VARCHAR(255)  ,
  G_MODEL        VARCHAR(255),
  G_QTY          NUMERIC(19,5)  ,
  G_UNIT         VARCHAR(3)  ,
  UNIT_1         VARCHAR(3)  ,
  QTY_1          NUMERIC(19,5),
  DECL_PRICE     NUMERIC(19,5)  ,
  PRICE_1        NUMERIC(19,5)  ,
  TRADE_TOTAL    NUMERIC(19,5)  ,
  TRADE_CURR     VARCHAR(3)  ,
  ORIGIN_COUNTRY VARCHAR(3)  ,
  VERSION        NUMERIC(9)  ,
  MODIFY_MARK    VARCHAR(1)  ,
  DECL_DUTY      NUMERIC(19,5),
  DECL_TAX       NUMERIC(19,5),
  DECL_OTHER     NUMERIC(19,5),
  DECL_TOTAL     NUMERIC(19,5),
  CHK_DUTY       NUMERIC(19,5),
  CHK_TAX        NUMERIC(19,5),
  CHK_INTEREST   NUMERIC(19,5),
  CHK_OTHER      NUMERIC(19,5),
  CHK_TOTAL      NUMERIC(19,5),
  IMG_PRICE      NUMERIC(19,5),
  CONTRACT_PRICE NUMERIC(19,5),
  NORMAL_PRICE   NUMERIC(19,5),
  PARAM_PRICE    NUMERIC(19,5),
  NOTE           VARCHAR(255),
  FACT_QTY       NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/DST_EXG.txt',
'gpfdist://mdw-2:8081/DST_EXG.txt',
'gpfdist://mdw-3:8081/DST_EXG.txt',
'gpfdist://mdw-4:8081/DST_EXG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DST_EXG_ORI_ENTRY------------
drop external table IF EXISTS DST_EXG_ORI_ENTRY_INC_EXT;

create external table DST_EXG_ORI_ENTRY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DST_SEQ_NO     NUMERIC(18)  ,
  PRE_NO         VARCHAR(17)  ,
  REL_NO         VARCHAR(17)  ,
  G_NO           NUMERIC(19)  ,
  ORIGIN_COUNTRY VARCHAR(3)  ,
  ENTRY_ID       VARCHAR(18)  ,
  ENTRY_G_NO     NUMERIC(19)  ,
  TRADE_PRICE    NUMERIC(19,5),
  TRADE_CURR     VARCHAR(3),
  MODIFY_MARK    VARCHAR(1),
  G_QTY          NUMERIC(19,5),
  G_UNIT         VARCHAR(3)
)
LOCATION( 
'gpfdist://mdw-1:8081/DST_EXG_ORI_ENTRY.txt',
'gpfdist://mdw-2:8081/DST_EXG_ORI_ENTRY.txt',
'gpfdist://mdw-3:8081/DST_EXG_ORI_ENTRY.txt',
'gpfdist://mdw-4:8081/DST_EXG_ORI_ENTRY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DST_HEAD------------
drop external table IF EXISTS DST_HEAD_INC_EXT;

create external table DST_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DST_SEQ_NO     NUMERIC(18)  ,
  PRE_NO         VARCHAR(17)  ,
  EMS_NO         VARCHAR(12)  ,
  EMS_TYPE       VARCHAR(1)  ,
  TRADE_CODE     VARCHAR(10)  ,
  TRADE_NAME     VARCHAR(255)  ,
  OWNER_CODE     VARCHAR(10)  ,
  OWNER_NAME     VARCHAR(255)  ,
  DS_TYPE        VARCHAR(1)  ,
  DS_NO          VARCHAR(255),
  DECLARE_DATE   TIMESTAMP  ,
  MASTER_CUSTOMS VARCHAR(4)  ,
  RATE_MARK      VARCHAR(1) ,
  REL_NO         VARCHAR(17)  ,
  RTX_MARK       VARCHAR(1) ,
  NOTE           VARCHAR(255),
  OP_NAME        VARCHAR(32)  ,
  OP_ID          VARCHAR(18)  ,
  OP_TIME        TIMESTAMP,
  ACCURAL_DATE   TIMESTAMP,
  VALID_DATE     TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/DST_HEAD.txt',
'gpfdist://mdw-2:8081/DST_HEAD.txt',
'gpfdist://mdw-3:8081/DST_HEAD.txt',
'gpfdist://mdw-4:8081/DST_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DST_IMG------------
drop external table IF EXISTS DST_IMG_INC_EXT;

create external table DST_IMG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DST_SEQ_NO     NUMERIC(18)  ,
  PRE_NO         VARCHAR(17)  ,
  REL_NO         VARCHAR(17)  ,
  G_NO           NUMERIC(19)  ,
  CODE_TS        VARCHAR(10)  ,
  G_NAME         VARCHAR(255)  ,
  G_MODEL        VARCHAR(255),
  G_QTY          NUMERIC(19,5)  ,
  G_UNIT         VARCHAR(3)  ,
  UNIT_1         VARCHAR(3)  ,
  QTY_1          NUMERIC(19,5),
  DECL_PRICE     NUMERIC(19,5)  ,
  PRICE_1        NUMERIC(19,5)  ,
  TRADE_TOTAL    NUMERIC(19,5)  ,
  TRADE_CURR     VARCHAR(3)  ,
  ORIGIN_COUNTRY VARCHAR(3)  ,
  MODIFY_MARK    VARCHAR(1)  ,
  DECL_DUTY      NUMERIC(19,5),
  DECL_TAX       NUMERIC(19,5),
  DECL_OTHER     NUMERIC(19,5),
  DECL_TOTAL     NUMERIC(19,5),
  CHK_DUTY       NUMERIC(19,5),
  CHK_TAX        NUMERIC(19,5),
  CHK_INTEREST   NUMERIC(19,5),
  CHK_OTHER      NUMERIC(19,5),
  CHK_TOTAL      NUMERIC(19,5),
  IMG_PRICE      NUMERIC(19,5),
  CONTRACT_PRICE NUMERIC(19,5),
  NORMAL_PRICE   NUMERIC(19,5),
  PARAM_PRICE    NUMERIC(19,5),
  NOTE           VARCHAR(255),
  FACT_QTY       NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/DST_IMG.txt',
'gpfdist://mdw-2:8081/DST_IMG.txt',
'gpfdist://mdw-3:8081/DST_IMG.txt',
'gpfdist://mdw-4:8081/DST_IMG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DST_IMG_ORI_ENTRY------------
drop external table IF EXISTS DST_IMG_ORI_ENTRY_INC_EXT;

create external table DST_IMG_ORI_ENTRY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DST_SEQ_NO     NUMERIC(18)  ,
  PRE_NO         VARCHAR(17)  ,
  REL_NO         VARCHAR(17)  ,
  G_NO           NUMERIC(19)  ,
  ORIGIN_COUNTRY VARCHAR(3)  ,
  ENTRY_ID       VARCHAR(18)  ,
  ENTRY_G_NO     NUMERIC(19)  ,
  TRADE_PRICE    NUMERIC(19,5),
  TRADE_CURR     VARCHAR(3),
  MODIFY_MARK    VARCHAR(1),
  G_QTY          NUMERIC(19,5),
  G_UNIT         VARCHAR(3)
)
LOCATION( 
'gpfdist://mdw-1:8081/DST_IMG_ORI_ENTRY.txt',
'gpfdist://mdw-2:8081/DST_IMG_ORI_ENTRY.txt',
'gpfdist://mdw-3:8081/DST_IMG_ORI_ENTRY.txt',
'gpfdist://mdw-4:8081/DST_IMG_ORI_ENTRY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DTT_COP_PARAM------------
drop external table IF EXISTS DTT_COP_PARAM_INC_EXT;

create external table DTT_COP_PARAM_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CORP_CODE    VARCHAR(10)  ,
  CUSTOMS_CODE VARCHAR(4)  ,
  CORP_NAME    VARCHAR(255),
  PROC_ER      VARCHAR(8),
  PROC_DATE    TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/DTT_COP_PARAM.txt',
'gpfdist://mdw-2:8081/DTT_COP_PARAM.txt',
'gpfdist://mdw-3:8081/DTT_COP_PARAM.txt',
'gpfdist://mdw-4:8081/DTT_COP_PARAM.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DUTY_CHECK_LOG------------
drop external table IF EXISTS DUTY_CHECK_LOG_INC_EXT;

create external table DUTY_CHECK_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID    VARCHAR(18)  ,
  TAX_ID      VARCHAR(2)  ,
  GUA_ID      VARCHAR(18),
  DELAY_MARK  VARCHAR(1),
  DUTY_FLAG   VARCHAR(1),
  TAX_TYPE    VARCHAR(1),
  REAL_TAX    NUMERIC(19,2),
  P_LIMIT     TIMESTAMP,
  PROC_TIME   TIMESTAMP  ,
  PROC_FLAG   VARCHAR(1),
  PROC_ER     VARCHAR(8),
  EPORT_ID    VARCHAR(32),
  VERIFY_TIME TIMESTAMP,
  VERIFY_MARK VARCHAR(1),
  REASON_CODE VARCHAR(3),
  REASON_MESS VARCHAR(40),
  DATA_TYPE   VARCHAR(1),
  PAYER_NAME  VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/DUTY_CHECK_LOG.txt',
'gpfdist://mdw-2:8081/DUTY_CHECK_LOG.txt',
'gpfdist://mdw-3:8081/DUTY_CHECK_LOG.txt',
'gpfdist://mdw-4:8081/DUTY_CHECK_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DUTYFORM_HEAD------------
drop external table IF EXISTS DUTYFORM_HEAD_INC_EXT;

create external table DUTYFORM_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID      VARCHAR(18)  ,
  ID_CHK        VARCHAR(1),
  DUTYFORM_FLAG VARCHAR(1),
  I_E_PORT      VARCHAR(4),
  DECL_PORT     VARCHAR(4),
  PAYER_CODE    VARCHAR(10),
  PAYER_NAME    VARCHAR(255),
  OWNER_CODE    VARCHAR(10),
  OWNER_NAME    VARCHAR(255),
  TRADE_CODE    VARCHAR(10),
  TRADE_NAME    VARCHAR(255),
  AGENT_CODE    VARCHAR(10),
  AGENT_NAME    VARCHAR(255),
  CONTR_NO      VARCHAR(32),
  D_DATE        TIMESTAMP,
  DUTY_ER       VARCHAR(8),
  G_NAME        VARCHAR(255),
  D_ITEMS_NO    NUMERIC(19),
  A_ITEMS_NO    NUMERIC(19),
  R_ITEMS_NO    NUMERIC(19),
  TRADE_MODE    VARCHAR(4),
  CUT_MODE      VARCHAR(3),
  TAXY_RG_NO    VARCHAR(32),
  MANUAL_NO     VARCHAR(12),
  INTEREST_DAYS NUMERIC(19),
  INTEREST_RATE NUMERIC(19,5),
  SERVICE_RATE  NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/DUTYFORM_HEAD.txt',
'gpfdist://mdw-2:8081/DUTYFORM_HEAD.txt',
'gpfdist://mdw-3:8081/DUTYFORM_HEAD.txt',
'gpfdist://mdw-4:8081/DUTYFORM_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------DUTYFORM_LIST------------
drop external table IF EXISTS DUTYFORM_LIST_INC_EXT;

create external table DUTYFORM_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID           VARCHAR(18)  ,
  TAX_ID             VARCHAR(2)  ,
  DELAY_MARK         VARCHAR(1),
  DUTY_FLAG          VARCHAR(1),
  DUTY_FLAG_NOTE     VARCHAR(1),
  TAX_TYPE           VARCHAR(1),
  PAY_MODE           VARCHAR(1),
  EPORT_ID           VARCHAR(32),
  ID_CHK             VARCHAR(1),
  INCOME_SYS         VARCHAR(32),
  INCOME_NAME        VARCHAR(32),
  BANK_NAME          VARCHAR(255),
  BANK_ACCOUNT       VARCHAR(32),
  SUBJECT_CODE       VARCHAR(30),
  SUBJECT_NAME       VARCHAR(32),
  SUBJECT_LEVEL      VARCHAR(16),
  EXQ_NAME           VARCHAR(32),
  DUTY_VALUE         NUMERIC(19,2),
  REAL_TAX           NUMERIC(19,2),
  DELAY_DAYS         NUMERIC(19),
  TAX_CUT            NUMERIC(19,2),
  CUT_NOTE           VARCHAR(1),
  P_DATE             TIMESTAMP,
  P_LIMIT            TIMESTAMP,
  PAY_DATE           TIMESTAMP,
  C_DATE             TIMESTAMP,
  CANCEL_ER          VARCHAR(8),
  RECHK_ER           VARCHAR(8),
  EXQ_DATE           TIMESTAMP,
  SYS_DATE           TIMESTAMP,
  BOOK_NO            VARCHAR(32),
  ORIGINAL_TAXID     VARCHAR(2),
  DUTYFOR_NO         VARCHAR(32),
  NOTE_1             VARCHAR(255),
  NOTE_2             VARCHAR(255),
  NOTE_3             VARCHAR(255),
  NOTE_4             VARCHAR(255),
  OP_C_DATE          TIMESTAMP,
  GEN_DATE           TIMESTAMP,
  BANK_CODE          VARCHAR(20),
  BANK_ACCOUNT_NAME  VARCHAR(128),
  PAYER_ACCOUNT_NO   VARCHAR(32),
  PAYER_ACCOUNT_NAME VARCHAR(255),
  PAYER_BANK_NAME    VARCHAR(255),
  PAYER_BANK_CODE    VARCHAR(20),
  TREASURY_CODE      VARCHAR(10)
)
LOCATION( 
'gpfdist://mdw-1:8081/DUTYFORM_LIST.txt',
'gpfdist://mdw-2:8081/DUTYFORM_LIST.txt',
'gpfdist://mdw-3:8081/DUTYFORM_LIST.txt',
'gpfdist://mdw-4:8081/DUTYFORM_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ECO_HEAD------------
drop external table IF EXISTS ECO_HEAD_INC_EXT;

create external table ECO_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CERTIFICATE_NO   VARCHAR(64)  ,
  TRADE_CO         VARCHAR(32),
  TRANS_NUM        NUMERIC(19),
  INVOICE_NO       VARCHAR(64),
  INVOICE_DATE     TIMESTAMP,
  INVOICE_CURRTYPE VARCHAR(16),
  INVOICE_AMOUNT   NUMERIC(19,4),
  I_E_PORT         VARCHAR(32),
  EXPORTER         VARCHAR(255),
  MANUFACTURER     VARCHAR(255),
  CONSIGNEE        VARCHAR(255),
  DEPARTURE_DATE   TIMESTAMP,
  TRAF_MODE        VARCHAR(16),
  TRAF_NAME        VARCHAR(255),
  DEPART_PORT      VARCHAR(16),
  DEST_PORT        VARCHAR(16),
  TRANS_ROUTE      VARCHAR(255),
  DEST_COUNTRY     VARCHAR(16),
  TRADE_COUNTRY    VARCHAR(16),
  DECL_PLACE       VARCHAR(32),
  DECL_DATE        TIMESTAMP,
  DECL_SIGNER      VARCHAR(32),
  ISSUE_PLACE      VARCHAR(32),
  ISSUE_DATE       TIMESTAMP,
  ISSUE_SIGNER     VARCHAR(32),
  VALID_DATE       TIMESTAMP,
  NOTE             VARCHAR(255),
  ISSUE_NOTE       VARCHAR(255),
  ISSUE_DEPARTMENT VARCHAR(64),
  AGREEMENT_ID     VARCHAR(4),
  ENTRY_ID         VARCHAR(32),
  IN_DATE          TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/ECO_HEAD.txt',
'gpfdist://mdw-2:8081/ECO_HEAD.txt',
'gpfdist://mdw-3:8081/ECO_HEAD.txt',
'gpfdist://mdw-4:8081/ECO_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ECO_LIST------------
drop external table IF EXISTS ECO_LIST_INC_EXT;

create external table ECO_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CERTIFICATE_NO     VARCHAR(64)  ,
  G_NO               NUMERIC(19)  ,
  MARK               VARCHAR(1024),
  PACK_AND_DESC      VARCHAR(1024),
  CODE_TS            VARCHAR(16),
  ORIGINAL_CRITERION VARCHAR(32),
  G_QTY              NUMERIC(19,5),
  G_UNIT             VARCHAR(64),
  GROSS_WEIGHT       VARCHAR(64),
  NET_WEIGHT         VARCHAR(64),
  QTY_1              NUMERIC(19,5),
  UNIT_1             VARCHAR(64),
  QTY_2              NUMERIC(19,5),
  UNIT_2             VARCHAR(64),
  FOB_CURR           VARCHAR(16),
  FOB_AMOUNT         NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/ECO_LIST.txt',
'gpfdist://mdw-2:8081/ECO_LIST.txt',
'gpfdist://mdw-3:8081/ECO_LIST.txt',
'gpfdist://mdw-4:8081/ECO_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ECO_PARTS------------
drop external table IF EXISTS ECO_PARTS_INC_EXT;

create external table ECO_PARTS_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CERTIFICATE_NO VARCHAR(64)  ,
  G_NO           NUMERIC(19)  ,
  PART_SEQ       NUMERIC(19)  ,
  PART_HSCODE    VARCHAR(16),
  PART_NAME      VARCHAR(128),
  UNIT_PRICE     NUMERIC(19,5),
  ORIGIN_COUNTRY VARCHAR(16),
  AMT_PERCENT    NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/ECO_PARTS.txt',
'gpfdist://mdw-2:8081/ECO_PARTS.txt',
'gpfdist://mdw-3:8081/ECO_PARTS.txt',
'gpfdist://mdw-4:8081/ECO_PARTS.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ECO_WORKFLOW------------
drop external table IF EXISTS ECO_WORKFLOW_INC_EXT;

create external table ECO_WORKFLOW_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CERTIFICATE_NO VARCHAR(64)  ,
  TRANSFER_NUM   NUMERIC(19)  ,
  PROCESS_STATUS VARCHAR(2)  ,
  PROCESS_DATE   TIMESTAMP  ,
  ENTRY_ID       VARCHAR(32),
  NOTE           VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/ECO_WORKFLOW.txt',
'gpfdist://mdw-2:8081/ECO_WORKFLOW.txt',
'gpfdist://mdw-3:8081/ECO_WORKFLOW.txt',
'gpfdist://mdw-4:8081/ECO_WORKFLOW.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_ADMIT_HEAD------------
drop external table IF EXISTS EGS_ADMIT_HEAD_INC_EXT;

create external table EGS_ADMIT_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_ADM_NO     VARCHAR(18),
  ADM_NO         VARCHAR(18)  ,
  MODIFY_TIMES   NUMERIC(9),
  ADM_TYPE       VARCHAR(1),
  EGS_NO         VARCHAR(12),
  EGS_NAME       VARCHAR(80),
  APPLY_NO       VARCHAR(18),
  REG_CUSTOMS    VARCHAR(4),
  MASTER_CUSTOMS VARCHAR(4),
  I_E_FLAG       VARCHAR(1),
  DECL_DATE      TIMESTAMP,
  AGENT_CODE     VARCHAR(32),
  AGENT_NAME     VARCHAR(255),
  DECLARE_NO     VARCHAR(32),
  DECLARE_PHONE  VARCHAR(32),
  SPONSOR_NAME   VARCHAR(255),
  PERIOD         NUMERIC(9),
  AUDITOR        VARCHAR(8),
  AUDIT_DATE     TIMESTAMP,
  AUDIT_NOTE     VARCHAR(255),
  PRINT_DATE     TIMESTAMP,
  AUDIT_RESULT   VARCHAR(1),
  AUDIT_FILENO   VARCHAR(50),
  DECLARE_SOURCE VARCHAR(5),
  CHK_MARK       VARCHAR(1),
  NOTES          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_ADMIT_HEAD.txt',
'gpfdist://mdw-2:8081/EGS_ADMIT_HEAD.txt',
'gpfdist://mdw-3:8081/EGS_ADMIT_HEAD.txt',
'gpfdist://mdw-4:8081/EGS_ADMIT_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_ADMIT_HS------------
drop external table IF EXISTS EGS_ADMIT_HS_INC_EXT;

create external table EGS_ADMIT_HS_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ADM_NO  VARCHAR(18)  ,
  CODE_TS VARCHAR(16)  
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_ADMIT_HS.txt',
'gpfdist://mdw-2:8081/EGS_ADMIT_HS.txt',
'gpfdist://mdw-3:8081/EGS_ADMIT_HS.txt',
'gpfdist://mdw-4:8081/EGS_ADMIT_HS.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_ADMIT_LIST------------
drop external table IF EXISTS EGS_ADMIT_LIST_INC_EXT;

create external table EGS_ADMIT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ADM_NO  VARCHAR(18)  ,
  G_NO    NUMERIC(9)  ,
  CODE_TS VARCHAR(16),
  G_NAME  VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_ADMIT_LIST.txt',
'gpfdist://mdw-2:8081/EGS_ADMIT_LIST.txt',
'gpfdist://mdw-3:8081/EGS_ADMIT_LIST.txt',
'gpfdist://mdw-4:8081/EGS_ADMIT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_ARC_AGENT_LIST------------
drop external table IF EXISTS EGS_ARC_AGENT_LIST_INC_EXT;

create external table EGS_ARC_AGENT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EGS_NO     VARCHAR(12)  ,
  AGENT_NO   NUMERIC(9)  ,
  AGENT_CODE VARCHAR(32),
  AGENT_NAME VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_ARC_AGENT_LIST.txt',
'gpfdist://mdw-2:8081/EGS_ARC_AGENT_LIST.txt',
'gpfdist://mdw-3:8081/EGS_ARC_AGENT_LIST.txt',
'gpfdist://mdw-4:8081/EGS_ARC_AGENT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_ARC_HEAD------------
drop external table IF EXISTS EGS_ARC_HEAD_INC_EXT;

create external table EGS_ARC_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_EGS_NO          VARCHAR(18),
  EGS_NO              VARCHAR(12)  ,
  EGS_NAME            VARCHAR(80),
  APPR_OFFICE         VARCHAR(255),
  APPR_NO             VARCHAR(32),
  MASTER_CUSTOMS      VARCHAR(4),
  REG_CUSTOMS         VARCHAR(4),
  I_E_FLAG            VARCHAR(1),
  SPONSOR_NAME        VARCHAR(255),
  UNDERTAKE_NAME      VARCHAR(255),
  SPONSOR_ER          VARCHAR(20),
  SPONSOR_ER_PHONE    VARCHAR(32),
  CHECK_ER            VARCHAR(255),
  BEGIN_DATE          TIMESTAMP,
  END_DATE            TIMESTAMP,
  EGS_SITE_MAME       VARCHAR(255),
  EGS_AREA            NUMERIC(19,5),
  EGS_INTE_AREA       NUMERIC(19,5),
  DECLARE_NO          VARCHAR(32),
  DECLARE_PHONE       VARCHAR(32),
  COUNTRY_QTY         NUMERIC(9),
  EX_MERCHANT_QTY     NUMERIC(9),
  TW_APPR_NO          VARCHAR(20),
  INPUT_DATE          TIMESTAMP,
  MODI_REASON         VARCHAR(255),
  AUDIT_OFFICER       VARCHAR(8),
  DEPOSIT_MARK        VARCHAR(1),
  AUDIT_DATE          TIMESTAMP,
  AUDIT_ER            VARCHAR(8),
  AUDIT_NOTE          VARCHAR(255),
  POSTPONE_AUDIT_ER   VARCHAR(8),
  POSTPONE_AUDIT_DATE TIMESTAMP,
  POSTPONE_APPR_NO    VARCHAR(255),
  POSTPONE_TIMES      NUMERIC(9),
  CLOSE_DATE          TIMESTAMP,
  CLOSE_ER            VARCHAR(8),
  NOTES               VARCHAR(255),
  DECLARE_TYPE        VARCHAR(1),
  MODIFY_TIMES        NUMERIC(9),
  DECLARE_SOURCE      VARCHAR(5),
  CHK_MARK            VARCHAR(1),
  EXE_MARK            VARCHAR(1),
  AGENT_CODE          VARCHAR(32),
  AGENT_NAME          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_ARC_HEAD.txt',
'gpfdist://mdw-2:8081/EGS_ARC_HEAD.txt',
'gpfdist://mdw-3:8081/EGS_ARC_HEAD.txt',
'gpfdist://mdw-4:8081/EGS_ARC_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_ARC_LIST------------
drop external table IF EXISTS EGS_ARC_LIST_INC_EXT;

create external table EGS_ARC_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EGS_NO  VARCHAR(12)  ,
  G_NO    NUMERIC(9)  ,
  CODE_TS VARCHAR(16),
  G_NAME  VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_ARC_LIST.txt',
'gpfdist://mdw-2:8081/EGS_ARC_LIST.txt',
'gpfdist://mdw-3:8081/EGS_ARC_LIST.txt',
'gpfdist://mdw-4:8081/EGS_ARC_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_ARC_MERCHANT_LIST------------
drop external table IF EXISTS EGS_ARC_MERCHANT_LIST_INC_EXT;

create external table EGS_ARC_MERCHANT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EGS_NO             VARCHAR(12)  ,
  MERCHANT_NO        NUMERIC(9)  ,
  MERCHANT_NAME      VARCHAR(255),
  MERCHANT_COUNTRY   VARCHAR(3),
  EXHIBITION_NO      VARCHAR(50),
  EXHIBITION_SITE_NO VARCHAR(32),
  AGENT_CODE         VARCHAR(32)  
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_ARC_MERCHANT_LIST.txt',
'gpfdist://mdw-2:8081/EGS_ARC_MERCHANT_LIST.txt',
'gpfdist://mdw-3:8081/EGS_ARC_MERCHANT_LIST.txt',
'gpfdist://mdw-4:8081/EGS_ARC_MERCHANT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_CHECK_LOG------------
drop external table IF EXISTS EGS_CHECK_LOG_INC_EXT;

create external table EGS_CHECK_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EGS_NO     VARCHAR(18)  ,
  EPORT_NO   VARCHAR(18),
  CHK_TIMES  NUMERIC(9)  ,
  FORM_TYPE  VARCHAR(32)  ,
  G_NO       NUMERIC(9)  ,
  EGS_TYPE   VARCHAR(1),
  CHK_MARK   VARCHAR(2),
  CHK_ER     VARCHAR(8),
  CHK_DATE   TIMESTAMP,
  CHK_RESULT VARCHAR(8),
  MESSAGE    VARCHAR(255),
  NOTE       VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_CHECK_LOG.txt',
'gpfdist://mdw-2:8081/EGS_CHECK_LOG.txt',
'gpfdist://mdw-3:8081/EGS_CHECK_LOG.txt',
'gpfdist://mdw-4:8081/EGS_CHECK_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_CLEAR_CERT------------
drop external table IF EXISTS EGS_CLEAR_CERT_INC_EXT;

create external table EGS_CLEAR_CERT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CLR_NO    VARCHAR(18)  ,
  CERT_CODE VARCHAR(5)  ,
  CERT_NO   VARCHAR(18)  
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_CLEAR_CERT.txt',
'gpfdist://mdw-2:8081/EGS_CLEAR_CERT.txt',
'gpfdist://mdw-3:8081/EGS_CLEAR_CERT.txt',
'gpfdist://mdw-4:8081/EGS_CLEAR_CERT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_CLEAR_HEAD------------
drop external table IF EXISTS EGS_CLEAR_HEAD_INC_EXT;

create external table EGS_CLEAR_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CLR_NO          VARCHAR(18)  ,
  PRE_CLR_NO      VARCHAR(18),
  EGS_NO          VARCHAR(12),
  EGS_NAME        VARCHAR(80),
  MASTER_CUSTOMS  VARCHAR(4),
  CLEAR_TYPE      VARCHAR(10),
  I_E_PORT        VARCHAR(4),
  I_E_DATE        TIMESTAMP,
  I_E_FLAG        VARCHAR(1),
  DECL_DATE       TIMESTAMP,
  AGENT_CODE      VARCHAR(32),
  AGENT_NAME      VARCHAR(255),
  DECLARE_NO      VARCHAR(32),
  DECLARE_PHONE   VARCHAR(32),
  TRAF_MODE       VARCHAR(10),
  BILL_NO         VARCHAR(32),
  BILL_SUB_NO     VARCHAR(32),
  GROSS_WT        NUMERIC(19,5),
  NET_WT          NUMERIC(19,5),
  WRAP_TYPE       VARCHAR(32),
  PACK_NO         NUMERIC(19),
  NOTES           VARCHAR(255),
  VERIFY_DATE     TIMESTAMP,
  VERIFY_ER       VARCHAR(8),
  CLEAR_DATE      TIMESTAMP,
  CLEAR_ER        VARCHAR(8),
  AUDIT_ER        VARCHAR(8),
  AUDIT_DATE      TIMESTAMP,
  AUDIT_NOTE      VARCHAR(255),
  TURN_NO         VARCHAR(16),
  ENTRY_ID        VARCHAR(18),
  CLEAR_NO        VARCHAR(18),
  DECLARE_SOURCE  VARCHAR(5),
  IM_CUSTOMS_CODE VARCHAR(4),
  IM_AGENT_CODE   VARCHAR(32),
  IM_AGENT_NAME   VARCHAR(255),
  IM_DECL_NO      VARCHAR(18),
  IM_EGS_NO       VARCHAR(12),
  IM_EGS_NAME     VARCHAR(80),
  CHK_MARK        VARCHAR(1),
  EXE_MARK        VARCHAR(1),
  LICENSE_NO      VARCHAR(20)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_CLEAR_HEAD.txt',
'gpfdist://mdw-2:8081/EGS_CLEAR_HEAD.txt',
'gpfdist://mdw-3:8081/EGS_CLEAR_HEAD.txt',
'gpfdist://mdw-4:8081/EGS_CLEAR_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_CLEAR_LIST------------
drop external table IF EXISTS EGS_CLEAR_LIST_INC_EXT;

create external table EGS_CLEAR_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CLR_NO           VARCHAR(18)  ,
  MERCHANT_NO      NUMERIC(9),
  MERCHANT_NAME    VARCHAR(255),
  MERCHANT_COUNTRY VARCHAR(3),
  G_NO             NUMERIC(9)  ,
  CODE_TS          VARCHAR(16),
  G_CERT_FLAG      VARCHAR(32),
  G_NAME           VARCHAR(255),
  G_MODEL          VARCHAR(255),
  QTY1             NUMERIC(19,5),
  QTY2             NUMERIC(19,5),
  DECL_QTY         NUMERIC(19,5),
  UNIT1            VARCHAR(3),
  UNIT2            VARCHAR(3),
  DECL_UNIT        VARCHAR(3),
  DECL_PRICE       NUMERIC(19,4),
  DECL_TOTAL       NUMERIC(19,4),
  TRADE_CURR       VARCHAR(3),
  ORIGIN_COUNTRY   VARCHAR(3),
  DECL_NO          VARCHAR(18),
  DECL_G_NO        NUMERIC(9)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_CLEAR_LIST.txt',
'gpfdist://mdw-2:8081/EGS_CLEAR_LIST.txt',
'gpfdist://mdw-3:8081/EGS_CLEAR_LIST.txt',
'gpfdist://mdw-4:8081/EGS_CLEAR_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_DECLARE_CERT------------
drop external table IF EXISTS EGS_DECLARE_CERT_INC_EXT;

create external table EGS_DECLARE_CERT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DECL_NO   VARCHAR(18)  ,
  CERT_CODE VARCHAR(5)  ,
  CERT_NO   VARCHAR(18)  
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_DECLARE_CERT.txt',
'gpfdist://mdw-2:8081/EGS_DECLARE_CERT.txt',
'gpfdist://mdw-3:8081/EGS_DECLARE_CERT.txt',
'gpfdist://mdw-4:8081/EGS_DECLARE_CERT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_DECLARE_HEAD------------
drop external table IF EXISTS EGS_DECLARE_HEAD_INC_EXT;

create external table EGS_DECLARE_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EGS_NO          VARCHAR(12),
  EGS_NAME        VARCHAR(80),
  ADM_NO          VARCHAR(18),
  DECL_NO         VARCHAR(18)  ,
  PRE_DECL_NO     VARCHAR(18),
  DECL_TYPE       VARCHAR(1),
  MASTER_CUSTOMS  VARCHAR(4),
  I_E_PORT        VARCHAR(4),
  I_E_DATE        TIMESTAMP,
  I_E_FLAG        VARCHAR(1),
  DECLARE_DATE    TIMESTAMP,
  AGENT_CODE      VARCHAR(32),
  AGENT_NAME      VARCHAR(255),
  DECLARE_NO      VARCHAR(32),
  DECLARE_PHONE   VARCHAR(32),
  LICENSE_NO      VARCHAR(20),
  TRAF_MODE       VARCHAR(1),
  BILL_NO         VARCHAR(32),
  BILL_SUB_NO     VARCHAR(32),
  TRADE_COUNTRY   VARCHAR(3),
  GROSS_WT        NUMERIC(19,5),
  NET_WT          NUMERIC(19,5),
  WRAP_TYPE       VARCHAR(32),
  PACK_NO         NUMERIC(19),
  TRANS_MODE      VARCHAR(1),
  NOTES           VARCHAR(255),
  DEPOSIT_MARK    VARCHAR(1),
  REL_DATE        TIMESTAMP,
  TRANS_DATE      TIMESTAMP,
  POSTPONE_TIMES  NUMERIC(9),
  ZS_APPR_NO      VARCHAR(40),
  TURN_NO         VARCHAR(16),
  ENTRY_ID        VARCHAR(18),
  ENTRY_TYPE      VARCHAR(1),
  DECLARE_SOURCE  VARCHAR(5),
  CHK_MARK        VARCHAR(1),
  EX_CUSTOMS_CODE VARCHAR(4),
  EX_EGS_NO       VARCHAR(12),
  EX_EGS_NAME     VARCHAR(80),
  EX_AGENT_CODE   VARCHAR(32),
  EX_AGENT_NAME   VARCHAR(255),
  AUDIT_ER        VARCHAR(8),
  AUDIT_DATE      TIMESTAMP,
  AUDIT_NOTE      VARCHAR(255),
  VERIFY_DATE     TIMESTAMP,
  VERIFY_ER       VARCHAR(8),
  CLEAR_DATE      TIMESTAMP,
  CLEAR_ER        VARCHAR(8),
  EXE_MARK        VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_DECLARE_HEAD.txt',
'gpfdist://mdw-2:8081/EGS_DECLARE_HEAD.txt',
'gpfdist://mdw-3:8081/EGS_DECLARE_HEAD.txt',
'gpfdist://mdw-4:8081/EGS_DECLARE_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_DECLARE_LIST------------
drop external table IF EXISTS EGS_DECLARE_LIST_INC_EXT;

create external table EGS_DECLARE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DECL_NO            VARCHAR(18)  ,
  MERCHANT_NO        NUMERIC(9),
  MERCHANT_NAME      VARCHAR(255),
  MERCHANT_COUNTRY   VARCHAR(3),
  G_NO               NUMERIC(9)  ,
  CONTR_ITEM         NUMERIC(9),
  CODE_TS            VARCHAR(16),
  G_CERT_FLAG        VARCHAR(32),
  G_NAME             VARCHAR(255),
  G_MODEL            VARCHAR(255),
  QTY1               NUMERIC(19,5),
  QTY2               NUMERIC(19,5),
  DECL_QTY           NUMERIC(19,5),
  UNIT1              VARCHAR(3),
  UNIT2              VARCHAR(3),
  DECL_UNIT          VARCHAR(3),
  DECL_PRICE         NUMERIC(19,4),
  DECL_TOTAL         NUMERIC(19,4),
  TRADE_CURR         VARCHAR(3),
  ORIGIN_COUNTRY     VARCHAR(3),
  EXHIBITION_NO      VARCHAR(50),
  CLR_QTY            NUMERIC(19,5),
  UNCLR_QTY          NUMERIC(19,5),
  LEND_QTY           NUMERIC(19,5),
  TAX_QTY            NUMERIC(19,5),
  CONSUME_QTY        NUMERIC(19,5),
  CLEAR_QTY          NUMERIC(19,5),
  LOST_QTY           NUMERIC(19,5),
  OTHER_QTY          NUMERIC(19,5),
  EX_QTY             NUMERIC(19,5),
  BUY_QTY            NUMERIC(19,5),
  REEXPORT_QTY       NUMERIC(19,5),
  LAST_DECL_NO       VARCHAR(18),
  LAST_G_NO          NUMERIC(9),
  FIRST_DECL_NO      VARCHAR(18),
  FIRST_G_NO         NUMERIC(9),
  EXHIBITION_SITE_NO VARCHAR(32),
  TRADE_TOTAL        NUMERIC(19,4),
  RMB_PRICE          NUMERIC(19),
  USD_PRICE          NUMERIC(19),
  DUTY_VALUE         NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_DECLARE_LIST.txt',
'gpfdist://mdw-2:8081/EGS_DECLARE_LIST.txt',
'gpfdist://mdw-3:8081/EGS_DECLARE_LIST.txt',
'gpfdist://mdw-4:8081/EGS_DECLARE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_DEDUCT------------
drop external table IF EXISTS EGS_DEDUCT_INC_EXT;

create external table EGS_DEDUCT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DECL_NO   VARCHAR(18)  ,
  DECL_G_NO NUMERIC(9)  ,
  CLR_NO    VARCHAR(18)  ,
  CLR_G_NO  NUMERIC(9)  ,
  CLR_QTY   NUMERIC(19,5),
  CLR_MODE  VARCHAR(1),
  CLR_DATE  TIMESTAMP,
  CLR_ER    VARCHAR(8),
  NOTES     VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_DEDUCT.txt',
'gpfdist://mdw-2:8081/EGS_DEDUCT.txt',
'gpfdist://mdw-3:8081/EGS_DEDUCT.txt',
'gpfdist://mdw-4:8081/EGS_DEDUCT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_LEND_HEAD------------
drop external table IF EXISTS EGS_LEND_HEAD_INC_EXT;

create external table EGS_LEND_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EGS_NO         VARCHAR(12),
  EGS_NAME       VARCHAR(80),
  PRE_LEND_NO    VARCHAR(18),
  LEND_NO        VARCHAR(18)  ,
  MASTER_CUSTOMS VARCHAR(4),
  LEND_DATE      TIMESTAMP,
  LEND_LIMIT     TIMESTAMP,
  DECLARE_NO     VARCHAR(32),
  DECLARE_PHONE  VARCHAR(30),
  DEPOSIT_MARK   VARCHAR(1),
  GUARANTEE_AMT  NUMERIC(19,4),
  LEND_COMPANY   VARCHAR(255),
  LEND_CONTACTOR VARCHAR(32),
  LEND_TELEPHONE VARCHAR(32),
  AGENT_CODE     VARCHAR(32),
  AGENT_NAME     VARCHAR(255),
  NOTES          VARCHAR(255),
  OUT_AUDIT_DATE TIMESTAMP,
  OUT_AUDIT_ER   VARCHAR(8),
  OUT_AUDIT_NOTE VARCHAR(255),
  OUT_DATE       TIMESTAMP,
  OUT_ER         VARCHAR(8),
  IN_AUDIT_DATE  TIMESTAMP,
  IN_AUDIT_ER    VARCHAR(8),
  IN_DATE        TIMESTAMP,
  IN_ER          VARCHAR(8),
  DECLARE_SOURCE VARCHAR(5),
  CHK_MARK       VARCHAR(1),
  EXE_MARK       VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_LEND_HEAD.txt',
'gpfdist://mdw-2:8081/EGS_LEND_HEAD.txt',
'gpfdist://mdw-3:8081/EGS_LEND_HEAD.txt',
'gpfdist://mdw-4:8081/EGS_LEND_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_LEND_LIST------------
drop external table IF EXISTS EGS_LEND_LIST_INC_EXT;

create external table EGS_LEND_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LEND_NO          VARCHAR(18)  ,
  MERCHANT_NO      NUMERIC(9),
  MERCHANT_NAME    VARCHAR(255),
  MERCHANT_COUNTRY VARCHAR(3),
  G_NO             NUMERIC(9)  ,
  CODE_TS          VARCHAR(16),
  G_CERT_FLAG      VARCHAR(32),
  G_NAME           VARCHAR(255),
  G_MODEL          VARCHAR(255),
  QTY1             NUMERIC(19,5),
  QTY2             NUMERIC(19,5),
  DECL_QTY         NUMERIC(19,5),
  UNIT1            VARCHAR(3),
  UNIT2            VARCHAR(3),
  DECL_UNIT        VARCHAR(3),
  DECL_PRICE       NUMERIC(19,4),
  DECL_TOTAL       NUMERIC(19,4),
  TRADE_CURR       VARCHAR(3),
  ORIGIN_COUNTRY   VARCHAR(3),
  DECL_NO          VARCHAR(18),
  DECL_G_NO        NUMERIC(9)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_LEND_LIST.txt',
'gpfdist://mdw-2:8081/EGS_LEND_LIST.txt',
'gpfdist://mdw-3:8081/EGS_LEND_LIST.txt',
'gpfdist://mdw-4:8081/EGS_LEND_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_PATROL_HEAD------------
drop external table IF EXISTS EGS_PATROL_HEAD_INC_EXT;

create external table EGS_PATROL_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PAT_NO         VARCHAR(18)  ,
  PAT_VALUE      VARCHAR(255),
  MASTER_CUSTOMS VARCHAR(4),
  DECL_DATE      TIMESTAMP,
  END_DATE       TIMESTAMP,
  EGS_NO         VARCHAR(12),
  EGS_NAME       VARCHAR(80),
  PATROLER       VARCHAR(32),
  NOTES          VARCHAR(255),
  EXE_MARK       VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_PATROL_HEAD.txt',
'gpfdist://mdw-2:8081/EGS_PATROL_HEAD.txt',
'gpfdist://mdw-3:8081/EGS_PATROL_HEAD.txt',
'gpfdist://mdw-4:8081/EGS_PATROL_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_PATROL_LIST------------
drop external table IF EXISTS EGS_PATROL_LIST_INC_EXT;

create external table EGS_PATROL_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PAT_NO           VARCHAR(18)  ,
  MERCHANT_NO      NUMERIC(9),
  MERCHANT_NAME    VARCHAR(255),
  MERCHANT_COUNTRY VARCHAR(3),
  G_NO             NUMERIC(9)  ,
  CODE_TS          VARCHAR(16),
  G_CERT_FLAG      VARCHAR(32),
  G_NAME           VARCHAR(255),
  G_MODEL          VARCHAR(255),
  QTY1             NUMERIC(19,5),
  QTY2             NUMERIC(19,5),
  DECL_QTY         NUMERIC(19,5),
  UNIT1            VARCHAR(3),
  UNIT2            VARCHAR(3),
  DECL_UNIT        VARCHAR(3),
  DECL_PRICE       NUMERIC(19,4),
  DECL_TOTAL       NUMERIC(19,4),
  TRADE_CURR       VARCHAR(3),
  ORIGIN_COUNTRY   VARCHAR(3),
  DECL_NO          VARCHAR(18),
  DECL_G_NO        NUMERIC(9)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_PATROL_LIST.txt',
'gpfdist://mdw-2:8081/EGS_PATROL_LIST.txt',
'gpfdist://mdw-3:8081/EGS_PATROL_LIST.txt',
'gpfdist://mdw-4:8081/EGS_PATROL_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_SEQ------------
drop external table IF EXISTS EGS_SEQ_INC_EXT;

create external table EGS_SEQ_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EGS_KEY VARCHAR(32)  ,
  EGS_SEQ NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_SEQ.txt',
'gpfdist://mdw-2:8081/EGS_SEQ.txt',
'gpfdist://mdw-3:8081/EGS_SEQ.txt',
'gpfdist://mdw-4:8081/EGS_SEQ.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EGS_WORKFLOW------------
drop external table IF EXISTS EGS_WORKFLOW_INC_EXT;

create external table EGS_WORKFLOW_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EGS_NO         VARCHAR(18)  ,
  EGS_TYPE       VARCHAR(1),
  STEP_ID        VARCHAR(8)  ,
  CREATE_DATE    TIMESTAMP  ,
  PROC_ER        VARCHAR(20),
  MASTER_CUSTOMS VARCHAR(4),
  PROC_RESULT    VARCHAR(8),
  NOTE           VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EGS_WORKFLOW.txt',
'gpfdist://mdw-2:8081/EGS_WORKFLOW.txt',
'gpfdist://mdw-3:8081/EGS_WORKFLOW.txt',
'gpfdist://mdw-4:8081/EGS_WORKFLOW.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_ACCOUNT------------
drop external table IF EXISTS EMS_ACCOUNT_INC_EXT;

create external table EMS_ACCOUNT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO            VARCHAR(12)  ,
  ID_STAT           VARCHAR(2)  ,
  CONTR_NO          VARCHAR(32),
  OWNER_NAME        VARCHAR(255),
  LIMIT_DATE        TIMESTAMP,
  ACCOUNT_AMT_RMB   NUMERIC(19,5),
  ACCOUNT_AMT       NUMERIC(19,5),
  ACCOUNT_AMT_ORG   NUMERIC(19,5),
  ACCOUNT_CURR      VARCHAR(3),
  IM_AMT            NUMERIC(19,5),
  TAX_AMT           NUMERIC(19,5),
  DEFER_TAX_AMT     NUMERIC(19,5),
  DEAL_MARK         VARCHAR(1),
  TYPE_ER           VARCHAR(8),
  TYPE_DATE         TIMESTAMP,
  BANK_NOTE_NO      VARCHAR(32),
  BANK_OPEN_DATE    TIMESTAMP,
  BANK_NOTE_DATE    TIMESTAMP,
  APPR_DATE         TIMESTAMP,
  BANK_ID           VARCHAR(64),
  NEXT_FLAG         VARCHAR(2),
  NOTE_S            VARCHAR(255),
  GUA_ID            VARCHAR(32),
  GUA_APPL_DATE     TIMESTAMP,
  GUA_OPEN_DATE     TIMESTAMP,
  GUA_APPR_DATE     TIMESTAMP,
  GUA_REGISTER_ER   VARCHAR(8),
  GUA_REGISTER_DATE TIMESTAMP,
  GUA_COPY          NUMERIC(19),
  GUA_TYPE          VARCHAR(1),
  GUA_OWNER_NAME    VARCHAR(32),
  GUA_LIMIT_DATE    TIMESTAMP,
  GUARANTEE_ADD     NUMERIC(19,5),
  GUARANTEE_AMT     NUMERIC(19,5),
  GUARANTEE_CURR    VARCHAR(3),
  GUARANTEE_RMB     NUMERIC(19,5),
  GUARANTEE_ORG     VARCHAR(70),
  GUA_MARK          VARCHAR(1),
  PROCESS_MARK      VARCHAR(5),
  PROCESS_ER        VARCHAR(8),
  PROCESS_DATE      TIMESTAMP,
  OTHER_AMT         NUMERIC(19,5),
  OTHER_NO          VARCHAR(20),
  SEQ_NO            VARCHAR(12),
  DOCUMENT_NO       VARCHAR(12),
  DOCUMENT_DATE     TIMESTAMP,
  DOCUMENT_MARK     VARCHAR(1),
  DOCUMENT_ER       VARCHAR(8),
  NOTE_MARK         VARCHAR(10),
  PORT_CODE         VARCHAR(4),
  ZQ_PRINT_FLAG     VARCHAR(1),
  SECRECT_KEY       VARCHAR(16),
  ACCOUNT_SEND_DATE TIMESTAMP,
  ACC_EXE_MARK      VARCHAR(1),
  HASH_SIGN_CLT     VARCHAR(512),
  HASH_SIGN         VARCHAR(255),
  SIGNER_INFO       VARCHAR(64),
  INVEST_MODE       VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_ACCOUNT.txt',
'gpfdist://mdw-2:8081/EMS_ACCOUNT.txt',
'gpfdist://mdw-3:8081/EMS_ACCOUNT.txt',
'gpfdist://mdw-4:8081/EMS_ACCOUNT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_APPR_HEAD------------
drop external table IF EXISTS EMS_APPR_HEAD_INC_EXT;

create external table EMS_APPR_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  APPR_NO           VARCHAR(40)  ,
  RECEIVE_TIMES     NUMERIC(19)  ,
  MODIFY_NO         VARCHAR(40),
  EPORT_NO          VARCHAR(20),
  CORP_CODE         VARCHAR(13),
  CORP_NAME         VARCHAR(70),
  CORP_TYPE_NAME    VARCHAR(20),
  CORP_CUSTOMS_CODE VARCHAR(10),
  ENTP_CODE         VARCHAR(13),
  ENTP_NAME         VARCHAR(70),
  ENTP_TYPE_NAME    VARCHAR(20),
  ENTP_CUSTOMS_CODE VARCHAR(10),
  EMS_TYPE          VARCHAR(1),
  DECLARE_TYPE      VARCHAR(1),
  PRODUCT_RATIO     NUMERIC(19,5),
  BEGIN_DATE        TIMESTAMP,
  END_DATE          TIMESTAMP,
  CONTR_IN          VARCHAR(32),
  CONTR_OUT         VARCHAR(32),
  CONTR_OTHER       VARCHAR(32),
  AGREE_NO          VARCHAR(32),
  FOREIGN_CO_NAME   VARCHAR(255),
  IMG_CURR          VARCHAR(3),
  IMG_AMOUNT        NUMERIC(19,5),
  EXG_AMOUNT        NUMERIC(19,5),
  WORK_AMOUNT       NUMERIC(19,5),
  HOME_AMOUNT       NUMERIC(19,5),
  I_E_PORT          VARCHAR(255),
  NOTE              VARCHAR(255),
  ALLOW_TRANS       VARCHAR(1),
  HAS_EXG_1         VARCHAR(1),
  HAS_EXG_2         VARCHAR(1),
  MASTER_CUSTOMS    VARCHAR(4),
  APPR_FEC          VARCHAR(6),
  APPR_FEC_NAME     VARCHAR(40),
  APPR_DATE         TIMESTAMP,
  MODIFY_APPR_DATE  TIMESTAMP,
  EXG_CURR          VARCHAR(3),
  LICENSE_NO        VARCHAR(255),
  RECEIVE_TIME      TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_APPR_HEAD.txt',
'gpfdist://mdw-2:8081/EMS_APPR_HEAD.txt',
'gpfdist://mdw-3:8081/EMS_APPR_HEAD.txt',
'gpfdist://mdw-4:8081/EMS_APPR_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_APPR_LIST------------
drop external table IF EXISTS EMS_APPR_LIST_INC_EXT;

create external table EMS_APPR_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  APPR_NO        VARCHAR(40)  ,
  G_TYPE         VARCHAR(1)  ,
  G_NO           NUMERIC(19)  ,
  RECEIVE_TIMES  NUMERIC(19)  ,
  CODE_TS        VARCHAR(10),
  G_NAME         VARCHAR(50),
  G_MODEL        VARCHAR(50),
  UNIT           VARCHAR(3),
  UNIT_PRICE     NUMERIC(19,5),
  QTY            NUMERIC(19,5),
  AMT            NUMERIC(19,5),
  ORIGIN_COUNTRY VARCHAR(3),
  UNIT_1         VARCHAR(3),
  FACTOR_1       NUMERIC(18,9),
  NOTE           VARCHAR(10),
  CURR           VARCHAR(3),
  MODIFY_MARK    VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_APPR_LIST.txt',
'gpfdist://mdw-2:8081/EMS_APPR_LIST.txt',
'gpfdist://mdw-3:8081/EMS_APPR_LIST.txt',
'gpfdist://mdw-4:8081/EMS_APPR_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_CLAIM------------
drop external table IF EXISTS EMS_CLAIM_INC_EXT;

create external table EMS_CLAIM_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  GUARANTEE_NO         VARCHAR(32)  ,
  CLAIM_NO             VARCHAR(12),
  EMS_NO               VARCHAR(12),
  OWNER_NO             VARCHAR(32),
  GUARANTEE_AMT        NUMERIC(18),
  GUARANTEE_LIMIT_DATE TIMESTAMP,
  BANK_ID              VARCHAR(32),
  CLAIM_AMT            NUMERIC(18,5),
  CLAIM_RATE           NUMERIC(18,5),
  YEAR_RATE            NUMERIC(18,5),
  CHK_ER               VARCHAR(8),
  CHK_DATE             TIMESTAMP,
  RECHK_ER             VARCHAR(8),
  RECHK_DATE           TIMESTAMP,
  CLAIM_DATE           TIMESTAMP,
  CLAIM_ER             VARCHAR(8),
  BANK_DATE            TIMESTAMP,
  TYPE_ER              VARCHAR(8),
  TYPE_DATE            TIMESTAMP,
  OTHER_CERT_NO        VARCHAR(32),
  PROC_MARK            VARCHAR(32),
  LAST_ER              VARCHAR(8),
  LAST_DATE            TIMESTAMP,
  PAY_PRINT_DATE       TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_CLAIM.txt',
'gpfdist://mdw-2:8081/EMS_CLAIM.txt',
'gpfdist://mdw-3:8081/EMS_CLAIM.txt',
'gpfdist://mdw-4:8081/EMS_CLAIM.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_CLR_LIST------------
drop external table IF EXISTS EMS_CLR_LIST_INC_EXT;

create external table EMS_CLR_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO         VARCHAR(12)  ,
  DCR_TIMES      NUMERIC(19)  ,
  G_TYPE         VARCHAR(1)  ,
  G_NO           NUMERIC(19)  ,
  DU_CODE        VARCHAR(4)  ,
  ITEMS_NO       NUMERIC(19),
  QTY            NUMERIC(19,5),
  AMOUNT         NUMERIC(19,5),
  WEIGHT         NUMERIC(19,5),
  DU_MARK        VARCHAR(1),
  NOTE_1         VARCHAR(1),
  NOTE           VARCHAR(255),
  I_E_FLAG       VARCHAR(1),
  TRADE_MODE     VARCHAR(4),
  PARENT_DU_CODE VARCHAR(4),
  DISPSUB        VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_CLR_LIST.txt',
'gpfdist://mdw-2:8081/EMS_CLR_LIST.txt',
'gpfdist://mdw-3:8081/EMS_CLR_LIST.txt',
'gpfdist://mdw-4:8081/EMS_CLR_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_CLR_TMP------------
drop external table IF EXISTS EMS_CLR_TMP_INC_EXT;

create external table EMS_CLR_TMP_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO      VARCHAR(12)  ,
  G_TYPE      VARCHAR(1)  ,
  G_NO        NUMERIC(19)  ,
  CM_QTY      NUMERIC(19,5),
  CM_AMOUNT   NUMERIC(19,5),
  CLR_INC_QTY NUMERIC(19,5),
  CLR_CUT_QTY NUMERIC(19,5),
  USD_PRICE   NUMERIC(19,5),
  OTHER_PRICE NUMERIC(19,5),
  NOTE        VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_CLR_TMP.txt',
'gpfdist://mdw-2:8081/EMS_CLR_TMP.txt',
'gpfdist://mdw-3:8081/EMS_CLR_TMP.txt',
'gpfdist://mdw-4:8081/EMS_CLR_TMP.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_COMPLEX------------
drop external table IF EXISTS EMS_COMPLEX_INC_EXT;

create external table EMS_COMPLEX_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  GOODS_TYPE VARCHAR(1)  ,
  G_TYPE     VARCHAR(1)  ,
  CODE_TS    VARCHAR(10)  ,
  G_NAME     VARCHAR(255),
  CLASSIFY   VARCHAR(255)  ,
  INPUT_DATE TIMESTAMP,
  LIMIT_TYPE VARCHAR(1),
  LIMIT_DESC VARCHAR(255),
  NOTE       VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_COMPLEX.txt',
'gpfdist://mdw-2:8081/EMS_COMPLEX.txt',
'gpfdist://mdw-3:8081/EMS_COMPLEX.txt',
'gpfdist://mdw-4:8081/EMS_COMPLEX.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_COMPLEX2------------
drop external table IF EXISTS EMS_COMPLEX2_INC_EXT;

create external table EMS_COMPLEX2_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ICODE_TS   VARCHAR(10)  ,
  IG_NAME    VARCHAR(255),
  IG_MODEL   VARCHAR(255),
  ICLASSIFY  VARCHAR(255),
  ECODE_TS   VARCHAR(10)  ,
  EG_NAME    VARCHAR(255),
  EG_MODEL   VARCHAR(255),
  ECLASSIFY  VARCHAR(255),
  INPUT_DATE TIMESTAMP,
  LIMIT_TYPE VARCHAR(1),
  LIMIT_DESC VARCHAR(255),
  NOTE       VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_COMPLEX2.txt',
'gpfdist://mdw-2:8081/EMS_COMPLEX2.txt',
'gpfdist://mdw-3:8081/EMS_COMPLEX2.txt',
'gpfdist://mdw-4:8081/EMS_COMPLEX2.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_CONSUME------------
drop external table IF EXISTS EMS_CONSUME_INC_EXT;

create external table EMS_CONSUME_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO       VARCHAR(12)  ,
  EXG_NO       NUMERIC(19)  ,
  EXG_VERSION  VARCHAR(32)  ,
  IMG_NO       NUMERIC(19)  ,
  MODIFY_TIMES NUMERIC(19)  ,
  DEC_CM       NUMERIC(19,9),
  DEC_DM       NUMERIC(19,9),
  OTHER_CM     NUMERIC(19,9),
  OTHER_DM     NUMERIC(19,9),
  CM_MARK      VARCHAR(1),
  PRODUCT_MARK VARCHAR(10),
  PRODUCT_TYPE VARCHAR(1),
  MODIFY_MARK  VARCHAR(1),
  CONTROL_MARK VARCHAR(1),
  NOTE         VARCHAR(10),
  ETL_MARK     VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_CONSUME.txt',
'gpfdist://mdw-2:8081/EMS_CONSUME.txt',
'gpfdist://mdw-3:8081/EMS_CONSUME.txt',
'gpfdist://mdw-4:8081/EMS_CONSUME.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_CONSUME_CLR------------
drop external table IF EXISTS EMS_CONSUME_CLR_INC_EXT;

create external table EMS_CONSUME_CLR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO      VARCHAR(12)  ,
  IMG_NO      NUMERIC(19)  ,
  G_NAME      VARCHAR(255),
  QTY         NUMERIC(19,5),
  EX_QTY      NUMERIC(19,5),
  REM_QTY     NUMERIC(19,5),
  UNIT        VARCHAR(3),
  REM_RATIO   NUMERIC(19,5),
  MODIFY_MARK VARCHAR(1),
  ETL_MARK    VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_CONSUME_CLR.txt',
'gpfdist://mdw-2:8081/EMS_CONSUME_CLR.txt',
'gpfdist://mdw-3:8081/EMS_CONSUME_CLR.txt',
'gpfdist://mdw-4:8081/EMS_CONSUME_CLR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_CONSUME_CLR_D------------
drop external table IF EXISTS EMS_CONSUME_CLR_D_INC_EXT;

create external table EMS_CONSUME_CLR_D_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO      VARCHAR(12)  ,
  IMG_NO      NUMERIC(19)  ,
  EXG_NO      NUMERIC(19)  ,
  EXG_VERSION VARCHAR(32)  ,
  QTY         NUMERIC(19,5),
  DEC_CM_QTY  NUMERIC(23,9),
  MODIFY_MARK VARCHAR(1),
  ETL_MARK    VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_CONSUME_CLR_D.txt',
'gpfdist://mdw-2:8081/EMS_CONSUME_CLR_D.txt',
'gpfdist://mdw-3:8081/EMS_CONSUME_CLR_D.txt',
'gpfdist://mdw-4:8081/EMS_CONSUME_CLR_D.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_DCR_CONSUME------------
drop external table IF EXISTS EMS_DCR_CONSUME_INC_EXT;

create external table EMS_DCR_CONSUME_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO       VARCHAR(12)  ,
  EXG_NO       NUMERIC(19)  ,
  EXG_VERSION  VARCHAR(32)  ,
  IMG_NO       NUMERIC(19)  ,
  MODIFY_TIMES NUMERIC(19)  ,
  DEC_CM       NUMERIC(19,9),
  DEC_DM       NUMERIC(19,9),
  OTHER_CM     NUMERIC(19,9),
  OTHER_DM     NUMERIC(19,9),
  CM_MARK      VARCHAR(1),
  PRODUCT_MARK VARCHAR(10),
  PRODUCT_TYPE VARCHAR(1),
  MODIFY_MARK  VARCHAR(1),
  CONTROL_MARK VARCHAR(1),
  NOTE         VARCHAR(10),
  ETL_MARK     VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_DCR_CONSUME.txt',
'gpfdist://mdw-2:8081/EMS_DCR_CONSUME.txt',
'gpfdist://mdw-3:8081/EMS_DCR_CONSUME.txt',
'gpfdist://mdw-4:8081/EMS_DCR_CONSUME.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_DCR_ENT------------
drop external table IF EXISTS EMS_DCR_ENT_INC_EXT;

create external table EMS_DCR_ENT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO         VARCHAR(12)  ,
  DCR_TIMES      NUMERIC(19)  ,
  ENTRY_ID       VARCHAR(18)  ,
  MASTER_CUSTOMS VARCHAR(4),
  I_E_FLAG       VARCHAR(1),
  ITEMS_NUM      NUMERIC(19),
  DECLARE_DATE   TIMESTAMP,
  I_E_DATE       TIMESTAMP,
  DU_CODE        VARCHAR(2),
  ENT_MARK       VARCHAR(1),
  NOTE           VARCHAR(255),
  MODIFY_MARK    VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_DCR_ENT.txt',
'gpfdist://mdw-2:8081/EMS_DCR_ENT.txt',
'gpfdist://mdw-3:8081/EMS_DCR_ENT.txt',
'gpfdist://mdw-4:8081/EMS_DCR_ENT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_DCR_HEAD------------
drop external table IF EXISTS EMS_DCR_HEAD_INC_EXT;

create external table EMS_DCR_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO            VARCHAR(12)  ,
  DCR_TIMES         NUMERIC(19)  ,
  DCR_TYPE          VARCHAR(1),
  BEGIN_DATE        TIMESTAMP,
  END_DATE          TIMESTAMP,
  ENTRY_I_NUM       NUMERIC(19),
  ENTRY_E_NUM       NUMERIC(19),
  IMG_NUM           NUMERIC(19),
  EXG_NUM           NUMERIC(19),
  IMR_NUM           NUMERIC(19),
  EXR_NUM           NUMERIC(19),
  ID_CARD           VARCHAR(20),
  ID_CARD_PWD       VARCHAR(20),
  INPUT_DATE        TIMESTAMP,
  INPUT_ER          VARCHAR(8),
  DCR_DATE          TIMESTAMP,
  EMS_APPR_MARK     VARCHAR(10),
  EMS_CERTIFY       VARCHAR(10),
  NOTE_1            VARCHAR(1),
  NOTE_AMOUNT       NUMERIC(19,5),
  NOTE_QTY          NUMERIC(19,5),
  NOTE              VARCHAR(255),
  DCR_MARK          VARCHAR(1),
  DECLARE_MARK      VARCHAR(1),
  CHK_MARK          VARCHAR(1),
  CHK_DATE          TIMESTAMP,
  PRINT_DATE        TIMESTAMP,
  PRINT_MARK        VARCHAR(1),
  RETURN_DATE       TIMESTAMP,
  RETURN_MARK       VARCHAR(1),
  NOTE_MARK         VARCHAR(1),
  PROCESS_MARK      VARCHAR(10),
  MESSAGE_TYPE      VARCHAR(8),
  DIGITAL_SIGN_MARK VARCHAR(1),
  DIGITAL_SIGN_LEN  VARCHAR(255),
  DIGITAL_SIGN      VARCHAR(262),
  DECL_IN_AMT       NUMERIC(19,5),
  DECL_EX_AMT       NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_DCR_HEAD.txt',
'gpfdist://mdw-2:8081/EMS_DCR_HEAD.txt',
'gpfdist://mdw-3:8081/EMS_DCR_HEAD.txt',
'gpfdist://mdw-4:8081/EMS_DCR_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_DCR_LIST------------
drop external table IF EXISTS EMS_DCR_LIST_INC_EXT;

create external table EMS_DCR_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO             VARCHAR(12)  ,
  DCR_TIMES          NUMERIC(19)  ,
  G_TYPE             VARCHAR(1)  ,
  G_NO               NUMERIC(19)  ,
  GR_QTY             NUMERIC(19,5),
  GR_AMOUNT          NUMERIC(19,5),
  GR_WEIGHT          NUMERIC(19,5),
  REMAIN_QTY         NUMERIC(19,5),
  REMAIN_AMOUNT      NUMERIC(19,5),
  REMAIN_WEIGHT      NUMERIC(19,5),
  CM_QTY             NUMERIC(19,5),
  CM_AMOUNT          NUMERIC(19,5),
  CM_WEIGHT          NUMERIC(19,5),
  FACT_REMAIN_QTY    NUMERIC(19,5),
  FACT_REMAIN_AMOUNT NUMERIC(19,5),
  FACT_REMAIN_WEIGHT NUMERIC(19,5),
  NOTE_1             VARCHAR(1),
  NOTE_2             VARCHAR(1),
  NOTE               VARCHAR(255),
  MODIFY_MARK        VARCHAR(1),
  FACT_QTY           NUMERIC(19,5),
  T_QTY              NUMERIC(19,5),
  IN_QTY             NUMERIC(19,5),
  REX_QTY            NUMERIC(19,5),
  DISCLAIM_QTY       NUMERIC(19,5),
  REMAIN_T_QTY       NUMERIC(19,5),
  EXCHANGE_EX_QTY    NUMERIC(19,5),
  EXCHANGE_IM_QTY    NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_DCR_LIST.txt',
'gpfdist://mdw-2:8081/EMS_DCR_LIST.txt',
'gpfdist://mdw-3:8081/EMS_DCR_LIST.txt',
'gpfdist://mdw-4:8081/EMS_DCR_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_DCR_RUB_LIST------------
drop external table IF EXISTS EMS_DCR_RUB_LIST_INC_EXT;

create external table EMS_DCR_RUB_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO        VARCHAR(12)  ,
  DCR_TIMES     NUMERIC(19)  ,
  G_TYPE        VARCHAR(1)  ,
  G_NO          NUMERIC(19)  ,
  COP_G_NO      VARCHAR(30),
  CODE_TS       VARCHAR(10),
  CLASS_MARK    VARCHAR(1),
  G_NAME        VARCHAR(50),
  G_MODEL       VARCHAR(50),
  UNIT          VARCHAR(3),
  DEC_PRICE     NUMERIC(19,5),
  CURR          NUMERIC(19),
  DEC_PRICE_RMB NUMERIC(19,5),
  QTY           NUMERIC(19,5),
  USE_TYPE      VARCHAR(1),
  NOTE_1        VARCHAR(1),
  NOTE          VARCHAR(255),
  MODIFY_MARK   VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_DCR_RUB_LIST.txt',
'gpfdist://mdw-2:8081/EMS_DCR_RUB_LIST.txt',
'gpfdist://mdw-3:8081/EMS_DCR_RUB_LIST.txt',
'gpfdist://mdw-4:8081/EMS_DCR_RUB_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_DEDUCT------------
drop external table IF EXISTS EMS_DEDUCT_INC_EXT;

create external table EMS_DEDUCT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID    VARCHAR(18)  ,
  EMS_NO      VARCHAR(12)  ,
  G_TYPE      VARCHAR(1)  ,
  EMS_G_NO    NUMERIC(19),
  ENTRY_G_NO  NUMERIC(19)  ,
  EXG_VERSION VARCHAR(32),
  IN_QTY      NUMERIC(19,5),
  I_ACCOUNT   NUMERIC(19,5),
  I_WT        NUMERIC(19,5),
  I_E_FLAG    VARCHAR(1),
  I_CURR      VARCHAR(4),
  I_E_PORT    VARCHAR(255),
  TRADE_MODE  VARCHAR(4),
  TRAF_MODE   VARCHAR(1),
  VERIFY_MODE VARCHAR(2),
  VERIFY_DATE TIMESTAMP,
  VERIFY_ER   VARCHAR(8),
  JOU_MARK    VARCHAR(1),
  I_E_DATE    TIMESTAMP,
  USD_ACCOUNT NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_DEDUCT.txt',
'gpfdist://mdw-2:8081/EMS_DEDUCT.txt',
'gpfdist://mdw-3:8081/EMS_DEDUCT.txt',
'gpfdist://mdw-4:8081/EMS_DEDUCT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_DEDUCT_CLR------------
drop external table IF EXISTS EMS_DEDUCT_CLR_INC_EXT;

create external table EMS_DEDUCT_CLR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO      VARCHAR(12)  ,
  IMG_NO      NUMERIC(19)  ,
  ENTRY_ID    VARCHAR(18)  ,
  ENTRY_G_NO  NUMERIC(19)  ,
  EXG_NO      NUMERIC(19),
  EXG_VERSION VARCHAR(32),
  IN_QTY      NUMERIC(19,5),
  DEC_CM      NUMERIC(19,9),
  DEC_DM      NUMERIC(19,9),
  DEC_CM_QTY  NUMERIC(19,9),
  DEC_DM_QTY  NUMERIC(19,9),
  I_E_FLAG    VARCHAR(1),
  TRADE_MODE  VARCHAR(4),
  TRAF_MODE   VARCHAR(1),
  VERIFY_MODE VARCHAR(2),
  JOU_MARK    VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_DEDUCT_CLR.txt',
'gpfdist://mdw-2:8081/EMS_DEDUCT_CLR.txt',
'gpfdist://mdw-3:8081/EMS_DEDUCT_CLR.txt',
'gpfdist://mdw-4:8081/EMS_DEDUCT_CLR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_DEDUCT_LOG------------
drop external table IF EXISTS EMS_DEDUCT_LOG_INC_EXT;

create external table EMS_DEDUCT_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID    VARCHAR(18)  ,
  EMS_NO      VARCHAR(12)  ,
  CREATE_DATE TIMESTAMP  ,
  JOU_MARK    VARCHAR(1)  ,
  NOTE        VARCHAR(1),
  VERIFY_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_DEDUCT_LOG.txt',
'gpfdist://mdw-2:8081/EMS_DEDUCT_LOG.txt',
'gpfdist://mdw-3:8081/EMS_DEDUCT_LOG.txt',
'gpfdist://mdw-4:8081/EMS_DEDUCT_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_ENP------------
drop external table IF EXISTS EMS_ENP_INC_EXT;

create external table EMS_ENP_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENP_ID         VARCHAR(18)  ,
  ENP_SEQ        NUMERIC(19),
  MASTER_CUSTOMS VARCHAR(4),
  I_E_PORT       VARCHAR(4),
  OWNER_CODE     VARCHAR(10),
  OWNER_NAME     VARCHAR(255),
  TRAF_MODE      VARCHAR(8),
  I_E_MARK       VARCHAR(1),
  ENP_MARK       VARCHAR(1),
  ENP_TYPE       VARCHAR(1),
  EXE_MARK       VARCHAR(1),
  PROCESS_MARK   VARCHAR(10),
  ENP_NUM        NUMERIC(19),
  DEC_DATE       TIMESTAMP,
  SIGN_DATE      TIMESTAMP,
  REL_DATE       TIMESTAMP,
  END_DATE       TIMESTAMP,
  NOTE_1         VARCHAR(10),
  NOTE           VARCHAR(256)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_ENP.txt',
'gpfdist://mdw-2:8081/EMS_ENP.txt',
'gpfdist://mdw-3:8081/EMS_ENP.txt',
'gpfdist://mdw-4:8081/EMS_ENP.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_ENP_JOU------------
drop external table IF EXISTS EMS_ENP_JOU_INC_EXT;

create external table EMS_ENP_JOU_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENP_ID         VARCHAR(18)  ,
  ENP_SEQ        NUMERIC(19)  ,
  ENP_NO         NUMERIC(19)  ,
  PROCESS_DATE   TIMESTAMP,
  PROCESS_MARK   VARCHAR(1),
  PROCESS_STATUS VARCHAR(1),
  NOTE_1         VARCHAR(12)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_ENP_JOU.txt',
'gpfdist://mdw-2:8081/EMS_ENP_JOU.txt',
'gpfdist://mdw-3:8081/EMS_ENP_JOU.txt',
'gpfdist://mdw-4:8081/EMS_ENP_JOU.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_HEAD------------
drop external table IF EXISTS EMS_HEAD_INC_EXT;

create external table EMS_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO            VARCHAR(12)  ,
  MODIFY_TIMES      NUMERIC(19)  ,
  PRE_EMS_NO        VARCHAR(12),
  COP_EMS_NO        VARCHAR(20),
  TRADE_CODE        VARCHAR(10),
  TRADE_NAME        VARCHAR(255),
  HOUSE_NO          VARCHAR(12),
  OWNER_CODE        VARCHAR(10),
  OWNER_NAME        VARCHAR(255),
  OWNER_TYPE        VARCHAR(1),
  DECLARE_ER_TYPE   VARCHAR(1),
  DECLARE_CODE      VARCHAR(10),
  DECLARE_NAME      VARCHAR(255),
  DISTRICT_CODE     VARCHAR(5),
  ADDRESS           VARCHAR(255),
  PHONE             VARCHAR(20),
  EMS_TYPE          VARCHAR(1),
  DECLARE_TYPE      VARCHAR(1),
  APPEND_TYPE       VARCHAR(1),
  INVEST_MODE       VARCHAR(1),
  TRADE_MODE        VARCHAR(4),
  BEGIN_DATE        TIMESTAMP,
  END_DATE          TIMESTAMP,
  IMG_AMOUNT        NUMERIC(19,5),
  EXG_AMOUNT        NUMERIC(19,5),
  IMG_WEIGHT        NUMERIC(19,5),
  EXG_WEIGHT        NUMERIC(19,5),
  STORE_VOL         NUMERIC(19,5),
  STORE_AREA        NUMERIC(19,5),
  IMG_ITEMS         NUMERIC(19),
  EXG_ITEMS         NUMERIC(19),
  EMS_APPR_NO       VARCHAR(40),
  LICENSE_NO        VARCHAR(20),
  LAST_EMS_NO       VARCHAR(12),
  CORR_EMS_NO       VARCHAR(12),
  CONTR_NO          VARCHAR(20),
  ID_CARD           VARCHAR(20),
  ID_CARD_PWD       VARCHAR(20),
  NOTE_1            VARCHAR(10),
  NOTE_2            VARCHAR(10),
  INVEST_AMOUNT     NUMERIC(19,5),
  NOTE_AMOUNT       NUMERIC(19,5),
  NOTE_QTY          NUMERIC(19,5),
  NOTE              VARCHAR(256),
  INPUT_DATE        TIMESTAMP,
  INPUT_ER          VARCHAR(8),
  DECLARE_DATE      TIMESTAMP,
  EMS_APPR_MARK     VARCHAR(10),
  EMS_CERTIFY       VARCHAR(10),
  PRODUCT_RATIO     NUMERIC(19,5),
  MODIFY_MARK       VARCHAR(1),
  DECLARE_MARK      VARCHAR(1),
  CHK_MARK          VARCHAR(1),
  EXE_MARK          VARCHAR(1),
  NEW_APPR_DATE     TIMESTAMP,
  CNG_APPR_DATE     TIMESTAMP,
  CLEAR_DATE        TIMESTAMP,
  SIGN_DATE         TIMESTAMP,
  SIGN_COPY         NUMERIC(19),
  PRINT_DATE        TIMESTAMP,
  PRINT_MARK        VARCHAR(1),
  RETURN_DATE       TIMESTAMP,
  RETURN_MARK       VARCHAR(1),
  EMS_ACE_MARK      VARCHAR(32),
  H883_ACE_MARK     VARCHAR(32),
  CONTROL_MARK      VARCHAR(32),
  PROCESS_MARK      VARCHAR(32),
  CLEAR_MODE        VARCHAR(1),
  CLEAR_TERM        NUMERIC(19),
  CLEAR_MARK        VARCHAR(32),
  CLEAR_TIMES       NUMERIC(19),
  SERVICE_FEE_MARK  VARCHAR(1),
  SERVICE_FEE_RATE  NUMERIC(19,5),
  SERVICE_FEE       NUMERIC(19,5),
  FILE_NO           VARCHAR(20),
  RECORDER_NO       VARCHAR(20),
  DOCUMENT_NO       VARCHAR(20),
  MASTER_CUSTOMS    VARCHAR(4),
  I_E_PORT          VARCHAR(255),
  FOREIGN_CO_NAME   VARCHAR(255),
  AGREE_NO          VARCHAR(32),
  CUT_MODE          VARCHAR(4),
  PAY_MODE          VARCHAR(1),
  PRODUCE_TYPE      VARCHAR(2),
  CONTR_OUT         VARCHAR(32),
  MESSAGE_TYPE      VARCHAR(8),
  EPORT_ID          VARCHAR(18),
  DIGITAL_SIGN_MARK VARCHAR(1),
  DIGITAL_SIGN_LEN  VARCHAR(255),
  DIGITAL_SIGN      VARCHAR(262),
  ETL_MARK          VARCHAR(1),
  I_DATE            TIMESTAMP,
  IMGED_AMOUNT      NUMERIC(19,5),
  CLEAR_APPR_MARK   VARCHAR(1),
  CLEAR_APPL_DATE   TIMESTAMP,
  CLOSE_MARK        VARCHAR(1),
  CLOSE_DATE        TIMESTAMP,
  CHECK_MARK        VARCHAR(1),
  CHECK_RESULT      VARCHAR(255),
  FOREIGN_MGR       VARCHAR(32),
  TRANS_MODE        VARCHAR(1),
  TRADE_COUNTRY     VARCHAR(3),
  EQUIP_MODE        VARCHAR(1),
  IN_RATIO          NUMERIC(19,4),
  EX_CURR           VARCHAR(3),
  IM_CURR           VARCHAR(3),
  OPER_MARK         VARCHAR(32),
  FACT_DEV_AMT      NUMERIC(19,5),
  APPR_IMG_AMT      NUMERIC(19,5),
  APPR_EXG_AMT      NUMERIC(19,5),
  CLOSE_RESULT      VARCHAR(32),
  DEDUCT_DATE       TIMESTAMP,
  ACCOUNT_FLAG      VARCHAR(2),
  HT_APPR_IMG_AMT   NUMERIC(19,5),
  CASE_MARK         VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_HEAD.txt',
'gpfdist://mdw-2:8081/EMS_HEAD.txt',
'gpfdist://mdw-3:8081/EMS_HEAD.txt',
'gpfdist://mdw-4:8081/EMS_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_LIST------------
drop external table IF EXISTS EMS_LIST_INC_EXT;

create external table EMS_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO        VARCHAR(12)  ,
  G_TYPE        VARCHAR(1)  ,
  G_NO          NUMERIC(19)  ,
  MODIFY_TIMES  NUMERIC(19)  ,
  COP_G_NO      VARCHAR(30),
  CODE_TS       VARCHAR(10),
  CLASS_MARK    VARCHAR(1),
  G_NAME        VARCHAR(255),
  G_MODEL       VARCHAR(255),
  UNIT          VARCHAR(3),
  UNIT_1        VARCHAR(3),
  UNIT_2        VARCHAR(3),
  COUNTRY_CODE  VARCHAR(4),
  SOURCE_MARK   VARCHAR(1),
  DEC_PRICE     NUMERIC(19,5),
  CURR          VARCHAR(4),
  DEC_PRICE_RMB NUMERIC(19,4),
  FACTOR_1      NUMERIC(19,4),
  FACTOR_2      NUMERIC(19,4),
  FACTOR_WT     NUMERIC(19,4),
  FACTOR_RATE   NUMERIC(19,5),
  QTY           NUMERIC(19,5),
  MAX_QTY       NUMERIC(19,5),
  FIRST_QTY     NUMERIC(19,5),
  I_E_TYPE      VARCHAR(1),
  USE_TYPE      VARCHAR(10),
  NOTE_1        VARCHAR(1),
  NOTE_2        VARCHAR(1),
  NOTE          VARCHAR(10),
  MODIFY_MARK   VARCHAR(1),
  G_MERGE       VARCHAR(10),
  G_TRADE       VARCHAR(10),
  QTY_MARK      VARCHAR(1),
  INC_AMOUNT    NUMERIC(19,5),
  INC_QTY       NUMERIC(19,5),
  INC_WT        NUMERIC(19,5),
  CUT_AMOUNT    NUMERIC(19,5),
  CUT_QTY       NUMERIC(19,5),
  CUT_WT        NUMERIC(19,5),
  CM_AMOUNT     NUMERIC(19,5),
  CM_QTY        NUMERIC(19,5),
  CM_WT         NUMERIC(19,5),
  CLR_INC_QTY   NUMERIC(19,5),
  CLR_CUT_QTY   NUMERIC(19,5),
  DUTY_MODE     VARCHAR(1),
  DUTY_RATE     NUMERIC(19,5),
  CHK_PRICE     NUMERIC(19,5),
  PROCESS_MARK  VARCHAR(10),
  ENTRY_ID      VARCHAR(18),
  LIMIT_DATE    TIMESTAMP,
  ETL_MARK      VARCHAR(1),
  USD_PRICE     NUMERIC(19,5),
  APPR_AMT      NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_LIST.txt',
'gpfdist://mdw-2:8081/EMS_LIST.txt',
'gpfdist://mdw-3:8081/EMS_LIST.txt',
'gpfdist://mdw-4:8081/EMS_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_MESSAGE_LOG------------
drop external table IF EXISTS EMS_MESSAGE_LOG_INC_EXT;

create external table EMS_MESSAGE_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO             VARCHAR(12)  ,
  SEND_CUSTOMS       VARCHAR(4)  ,
  CUSTOMS_CODE       VARCHAR(4)  ,
  H2000_RECEIVE_DATE TIMESTAMP  ,
  MESSAGE_ID         VARCHAR(50),
  MESSAGE_FLAG       VARCHAR(1),
  MESSAGE_TYPE       VARCHAR(8),
  RECEIVE_DATE       TIMESTAMP,
  TYPE               VARCHAR(32),
  SEND_TIMES         NUMERIC(9),
  APPL_NO            VARCHAR(32),
  STATUS             VARCHAR(255),
  FLAG               VARCHAR(1),
  NOTE               VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_MESSAGE_LOG.txt',
'gpfdist://mdw-2:8081/EMS_MESSAGE_LOG.txt',
'gpfdist://mdw-3:8081/EMS_MESSAGE_LOG.txt',
'gpfdist://mdw-4:8081/EMS_MESSAGE_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_PRESS------------
drop external table IF EXISTS EMS_PRESS_INC_EXT;

create external table EMS_PRESS_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PARA_TYPE  VARCHAR(10)  ,
  PARA_ID    VARCHAR(10),
  PARA_NAME  VARCHAR(30)  ,
  PARA_EXP   VARCHAR(30),
  PARA_FLAG  VARCHAR(20),
  PARA_VALUE VARCHAR(255),
  PARA_MARK  VARCHAR(30)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_PRESS.txt',
'gpfdist://mdw-2:8081/EMS_PRESS.txt',
'gpfdist://mdw-3:8081/EMS_PRESS.txt',
'gpfdist://mdw-4:8081/EMS_PRESS.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_PRESS_CLEAR------------
drop external table IF EXISTS EMS_PRESS_CLEAR_INC_EXT;

create external table EMS_PRESS_CLEAR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO        VARCHAR(12)  ,
  PR_NO         VARCHAR(14)  ,
  PR_COUNT      NUMERIC(9),
  PR_CUSTOMS    VARCHAR(4),
  PR_DEPARTMENT VARCHAR(20),
  PR_DATE       TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_PRESS_CLEAR.txt',
'gpfdist://mdw-2:8081/EMS_PRESS_CLEAR.txt',
'gpfdist://mdw-3:8081/EMS_PRESS_CLEAR.txt',
'gpfdist://mdw-4:8081/EMS_PRESS_CLEAR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_SEQ------------
drop external table IF EXISTS EMS_SEQ_INC_EXT;

create external table EMS_SEQ_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_KEY VARCHAR(10)  ,
  EMS_SEQ NUMERIC(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_SEQ.txt',
'gpfdist://mdw-2:8081/EMS_SEQ.txt',
'gpfdist://mdw-3:8081/EMS_SEQ.txt',
'gpfdist://mdw-4:8081/EMS_SEQ.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_TMP_CLR------------
drop external table IF EXISTS EMS_TMP_CLR_INC_EXT;

create external table EMS_TMP_CLR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO         VARCHAR(12)  ,
  G_TYPE         VARCHAR(1)  ,
  G_NO           NUMERIC(19)  ,
  CLR_INC_AMOUNT NUMERIC(19,5),
  CLR_INC_QTY    NUMERIC(19,5),
  CLR_CUT_AMOUNT NUMERIC(19,5),
  CLR_CUT_QTY    NUMERIC(19,5),
  CLR_DS_QTY     NUMERIC(19,5),
  CLR_DS_AMOUNT  NUMERIC(19,5),
  CLR_QTY        NUMERIC(19,5),
  CLR_AMOUNT     NUMERIC(19,5),
  AVR_PRICE      NUMERIC(19,5),
  CLR_RUB_QTY    NUMERIC(19,5),
  CLR_RUB_AMOUNT NUMERIC(19,5),
  CLR_CM_QTY     NUMERIC(19,5),
  CLR_CM_AMOUNT  NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_TMP_CLR.txt',
'gpfdist://mdw-2:8081/EMS_TMP_CLR.txt',
'gpfdist://mdw-3:8081/EMS_TMP_CLR.txt',
'gpfdist://mdw-4:8081/EMS_TMP_CLR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_VAR------------
drop external table IF EXISTS EMS_VAR_INC_EXT;

create external table EMS_VAR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  VAR_TYPE     VARCHAR(16)  ,
  VAR_ID       VARCHAR(32)  ,
  VAR_SUB_ID   VARCHAR(32) ,
  CUSTOMS_CODE VARCHAR(4)  ,
  VAR_VALUE    VARCHAR(255),
  VAR_VALUE1   VARCHAR(255),
  VAR_VALUE2   VARCHAR(255),
  VAR_VALUE3   VARCHAR(255),
  VAR_DESC     VARCHAR(255),
  MODIFY_TIME  TIMESTAMP,
  VAR_ENABLED  VARCHAR(1) 
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_VAR.txt',
'gpfdist://mdw-2:8081/EMS_VAR.txt',
'gpfdist://mdw-3:8081/EMS_VAR.txt',
'gpfdist://mdw-4:8081/EMS_VAR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_VERIFY------------
drop external table IF EXISTS EMS_VERIFY_INC_EXT;

create external table EMS_VERIFY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO         VARCHAR(12)  ,
  G_TYPE         VARCHAR(1)  ,
  G_NO           NUMERIC(19)  ,
  CODE_TS        VARCHAR(10),
  G_NAME         VARCHAR(255),
  UNIT           VARCHAR(3),
  QTY            NUMERIC(19,5),
  MAX_QTY        NUMERIC(19,5),
  FIRST_QTY      NUMERIC(19,5),
  INC_QTY        NUMERIC(19,5),
  INC_QTY_DEDUCT NUMERIC(19,5),
  INC_QTY_ENTRY  NUMERIC(19,5),
  CUT_QTY        NUMERIC(19,5),
  CUT_QTY_DEDUCT NUMERIC(19,5),
  CUT_QTY_ENTRY  NUMERIC(19,5),
  CLR_INC_QTY    NUMERIC(19,5),
  CLR_CUT_QTY    NUMERIC(19,5),
  RESULT         VARCHAR(10),
  RESULT2        VARCHAR(10)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_VERIFY.txt',
'gpfdist://mdw-2:8081/EMS_VERIFY.txt',
'gpfdist://mdw-3:8081/EMS_VERIFY.txt',
'gpfdist://mdw-4:8081/EMS_VERIFY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_VERIFY_DETAIL------------
drop external table IF EXISTS EMS_VERIFY_DETAIL_INC_EXT;

create external table EMS_VERIFY_DETAIL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO VARCHAR(12)  ,
  G_TYPE VARCHAR(1)  ,
  G_NO   NUMERIC(19)  ,
  D_TYPE VARCHAR(1)  ,
  E_TYPE VARCHAR(1)  ,
  QTY    NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_VERIFY_DETAIL.txt',
'gpfdist://mdw-2:8081/EMS_VERIFY_DETAIL.txt',
'gpfdist://mdw-3:8081/EMS_VERIFY_DETAIL.txt',
'gpfdist://mdw-4:8081/EMS_VERIFY_DETAIL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EMS_WORKFLOW------------
drop external table IF EXISTS EMS_WORKFLOW_INC_EXT;

create external table EMS_WORKFLOW_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO      VARCHAR(12)  ,
  STEP_ID     VARCHAR(8)  ,
  CREATE_DATE TIMESTAMP  ,
  PROC_ER     VARCHAR(20),
  PROC_ID     VARCHAR(8),
  PROC_POS    VARCHAR(4),
  PROC_RESULT VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EMS_WORKFLOW.txt',
'gpfdist://mdw-2:8081/EMS_WORKFLOW.txt',
'gpfdist://mdw-3:8081/EMS_WORKFLOW.txt',
'gpfdist://mdw-4:8081/EMS_WORKFLOW.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_AUTOREL_ERR_LIST------------
drop external table IF EXISTS ENTRY_AUTOREL_ERR_LIST_INC_EXT;

create external table ENTRY_AUTOREL_ERR_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID    VARCHAR(18)  ,
  I_E_FLAG    VARCHAR(1),
  DECL_PORT   VARCHAR(4),
  TRADE_CO    VARCHAR(10),
  TRADE_NAME  VARCHAR(255),
  AGENT_CODE  VARCHAR(10),
  AGENT_NAME  VARCHAR(255),
  CREATE_DATE TIMESTAMP,
  DESCRIPTION VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_AUTOREL_ERR_LIST.txt',
'gpfdist://mdw-2:8081/ENTRY_AUTOREL_ERR_LIST.txt',
'gpfdist://mdw-3:8081/ENTRY_AUTOREL_ERR_LIST.txt',
'gpfdist://mdw-4:8081/ENTRY_AUTOREL_ERR_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_AUTOREL_ERR_LOG------------
drop external table IF EXISTS ENTRY_AUTOREL_ERR_LOG_INC_EXT;

create external table ENTRY_AUTOREL_ERR_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID    VARCHAR(18)  ,
  DEL_TIME    TIMESTAMP  ,
  DEL_OP_ID   VARCHAR(8),
  I_E_FLAG    VARCHAR(1),
  DECL_PORT   VARCHAR(4),
  TRADE_CO    VARCHAR(10),
  TRADE_NAME  VARCHAR(255),
  AGENT_CODE  VARCHAR(10),
  AGENT_NAME  VARCHAR(255),
  CREATE_DATE TIMESTAMP,
  DESCRIPTION VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_AUTOREL_ERR_LOG.txt',
'gpfdist://mdw-2:8081/ENTRY_AUTOREL_ERR_LOG.txt',
'gpfdist://mdw-3:8081/ENTRY_AUTOREL_ERR_LOG.txt',
'gpfdist://mdw-4:8081/ENTRY_AUTOREL_ERR_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_CENTRY_SELECT------------
drop external table IF EXISTS ENTRY_CENTRY_SELECT_INC_EXT;

create external table ENTRY_CENTRY_SELECT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID        VARCHAR(18)  ,
  CREATE_DATE     TIMESTAMP,
  DECL_PORT       VARCHAR(4),
  I_E_FLAG        VARCHAR(1),
  TRADE_CO        VARCHAR(10),
  AGENT_CODE      VARCHAR(10),
  TRADE_NAME      VARCHAR(255),
  AGENT_NAME      VARCHAR(255),
  OP_ID           VARCHAR(8),
  SEL_RESULT      VARCHAR(2),
  RSK_TYPE        VARCHAR(2),
  RSK_CREATE_DATE TIMESTAMP,
  RSK_TYPE_DESC   VARCHAR(32),
  MANUAL_ARV      VARCHAR(2)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_CENTRY_SELECT.txt',
'gpfdist://mdw-2:8081/ENTRY_CENTRY_SELECT.txt',
'gpfdist://mdw-3:8081/ENTRY_CENTRY_SELECT.txt',
'gpfdist://mdw-4:8081/ENTRY_CENTRY_SELECT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_CENTRY_SELECT_DEL------------
drop external table IF EXISTS ENTRY_CENTRY_SELECT_DEL_INC_EXT;

create external table ENTRY_CENTRY_SELECT_DEL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID        VARCHAR(18)  ,
  OP_TIME         TIMESTAMP  ,
  CREATE_DATE     TIMESTAMP,
  DECL_PORT       VARCHAR(4),
  I_E_FLAG        VARCHAR(1),
  TRADE_CO        VARCHAR(10),
  AGENT_CODE      VARCHAR(10),
  TRADE_NAME      VARCHAR(255),
  AGENT_NAME      VARCHAR(255),
  OP_ID           VARCHAR(8),
  SEL_RESULT      VARCHAR(2),
  RSK_TYPE        VARCHAR(2),
  RSK_CREATE_DATE TIMESTAMP,
  RSK_TYPE_DESC   VARCHAR(32),
  MANUAL_ARV      VARCHAR(2),
  OP_ER           VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_CENTRY_SELECT_DEL.txt',
'gpfdist://mdw-2:8081/ENTRY_CENTRY_SELECT_DEL.txt',
'gpfdist://mdw-3:8081/ENTRY_CENTRY_SELECT_DEL.txt',
'gpfdist://mdw-4:8081/ENTRY_CENTRY_SELECT_DEL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_CERTIFICATE------------
drop external table IF EXISTS ENTRY_CERTIFICATE_INC_EXT;

create external table ENTRY_CERTIFICATE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID  VARCHAR(18)  ,
  DOCU_CODE VARCHAR(1)  ,
  CERT_CODE VARCHAR(32)  
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_CERTIFICATE.txt',
'gpfdist://mdw-2:8081/ENTRY_CERTIFICATE.txt',
'gpfdist://mdw-3:8081/ENTRY_CERTIFICATE.txt',
'gpfdist://mdw-4:8081/ENTRY_CERTIFICATE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_CERTIFICATE_LOG------------
drop external table IF EXISTS ENTRY_CERTIFICATE_LOG_INC_EXT;

create external table ENTRY_CERTIFICATE_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID  VARCHAR(18)  ,
  DOCU_CODE VARCHAR(1)  ,
  CERT_CODE VARCHAR(32)  ,
  OP_TIME   TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_CERTIFICATE_LOG.txt',
'gpfdist://mdw-2:8081/ENTRY_CERTIFICATE_LOG.txt',
'gpfdist://mdw-3:8081/ENTRY_CERTIFICATE_LOG.txt',
'gpfdist://mdw-4:8081/ENTRY_CERTIFICATE_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_CONTAINER------------
drop external table IF EXISTS ENTRY_CONTAINER_INC_EXT;

create external table ENTRY_CONTAINER_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID     VARCHAR(18)  ,
  CONTAINER_ID VARCHAR(32)  ,
  CONTAINER_WT NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_CONTAINER.txt',
'gpfdist://mdw-2:8081/ENTRY_CONTAINER.txt',
'gpfdist://mdw-3:8081/ENTRY_CONTAINER.txt',
'gpfdist://mdw-4:8081/ENTRY_CONTAINER.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_CONTAINER_LOG------------
drop external table IF EXISTS ENTRY_CONTAINER_LOG_INC_EXT;

create external table ENTRY_CONTAINER_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID     VARCHAR(18)  ,
  CONTAINER_ID VARCHAR(32)  ,
  CONTAINER_WT NUMERIC(19,5),
  OP_TIME      TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_CONTAINER_LOG.txt',
'gpfdist://mdw-2:8081/ENTRY_CONTAINER_LOG.txt',
'gpfdist://mdw-3:8081/ENTRY_CONTAINER_LOG.txt',
'gpfdist://mdw-4:8081/ENTRY_CONTAINER_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_DEL_HEAD_LOG------------
drop external table IF EXISTS ENTRY_DEL_HEAD_LOG_INC_EXT;

create external table ENTRY_DEL_HEAD_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID           VARCHAR(18)  ,
  PRE_ENTRY_ID       VARCHAR(18),
  ID_CHK             VARCHAR(1),
  I_E_FLAG           VARCHAR(1),
  I_E_PORT           VARCHAR(4),
  I_E_DATE           TIMESTAMP,
  D_DATE             TIMESTAMP,
  DESTINATION_PORT   VARCHAR(4),
  TRAF_NAME          VARCHAR(255),
  VOYAGE_NO          VARCHAR(32),
  TRAF_MODE          VARCHAR(1),
  TRADE_CO           VARCHAR(10),
  TRADE_NAME         VARCHAR(255),
  DISTRICT_CODE      VARCHAR(5),
  OWNER_CODE         VARCHAR(10),
  OWNER_NAME         VARCHAR(255),
  AGENT_CODE         VARCHAR(10),
  AGENT_NAME         VARCHAR(255),
  CONTR_NO           VARCHAR(32),
  IN_RATIO           NUMERIC(19,5),
  BILL_NO            VARCHAR(32),
  TRADE_COUNTRY      VARCHAR(3),
  TRADE_MODE         VARCHAR(4),
  CUT_MODE           VARCHAR(3),
  TRANS_MODE         VARCHAR(1),
  CONTAINER_NO       NUMERIC(19,4),
  PAY_WAY            VARCHAR(1),
  FEE_MARK           VARCHAR(1),
  FEE_CURR           VARCHAR(3),
  FEE_RATE           NUMERIC(19,5),
  INSUR_MARK         VARCHAR(1),
  INSUR_CURR         VARCHAR(3),
  INSUR_RATE         NUMERIC(19,5),
  OTHER_MARK         VARCHAR(1),
  OTHER_CURR         VARCHAR(3),
  OTHER_RATE         NUMERIC(19,5),
  PACK_NO            NUMERIC(19),
  GROSS_WT           NUMERIC(19,5),
  NET_WT             NUMERIC(19,5),
  WRAP_TYPE          VARCHAR(32),
  MANUAL_NO          VARCHAR(12),
  LICENSE_NO         VARCHAR(20),
  APPR_NO            VARCHAR(32),
  NOTE_S             VARCHAR(255),
  DECL_PORT          VARCHAR(4),
  CO_OWNER           VARCHAR(1),
  TAXY_RG_NO         VARCHAR(32),
  MNL_JGF_FLAG       VARCHAR(1),
  SERVICE_FEE        NUMERIC(19,4),
  SERVICE_RATE       NUMERIC(19,5),
  RELATIVE_ID        VARCHAR(18),
  BONDED_NO          VARCHAR(32),
  BP_NO              VARCHAR(255),
  TYPIST_NO          VARCHAR(32),
  INPUT_NO           VARCHAR(32),
  P_DATE             TIMESTAMP,
  CTA_CHK_RESULT     VARCHAR(255),
  MODI_NO            NUMERIC(19),
  EDI_ID             VARCHAR(1),
  STATUS_RESULT      VARCHAR(120),
  DECLARE_NO         VARCHAR(32),
  JOU_EVENT          VARCHAR(15),
  JOU_FLAG           VARCHAR(15),
  EDI_REMARK         VARCHAR(32),
  PARTNER_ID         VARCHAR(20),
  CUSTOMS_FIELD      VARCHAR(8),
  ENTRY_TYPE         VARCHAR(4),
  RELATIVE_MANUAL_NO VARCHAR(12),
  PRICE_RANGE        NUMERIC(19,4),
  SPECIAL_FLAG       VARCHAR(1),
  DELAY_DAYS         NUMERIC(19),
  DELAY_ACCOUNT      NUMERIC(19,2),
  HASH_SIGN          VARCHAR(380),
  OP_TIME            TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_DEL_HEAD_LOG.txt',
'gpfdist://mdw-2:8081/ENTRY_DEL_HEAD_LOG.txt',
'gpfdist://mdw-3:8081/ENTRY_DEL_HEAD_LOG.txt',
'gpfdist://mdw-4:8081/ENTRY_DEL_HEAD_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_DEL_LIST_LOG------------
drop external table IF EXISTS ENTRY_DEL_LIST_LOG_INC_EXT;

create external table ENTRY_DEL_LIST_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID       VARCHAR(18)  ,
  G_NO           NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  CONTR_ITEM     NUMERIC(19),
  TRADE_CURR     VARCHAR(3),
  EXCHANGE_RATE  NUMERIC(19,7),
  DECL_PRICE     NUMERIC(19,5),
  DECL_TOTAL     NUMERIC(19,4),
  USE_TO         VARCHAR(2),
  DUTY_MODE      VARCHAR(1),
  G_QTY          NUMERIC(19,5),
  G_UNIT         VARCHAR(3),
  QTY_1          NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  QTY_2          NUMERIC(19,5),
  UNIT_2         VARCHAR(3),
  TRADE_TOTAL    NUMERIC(19,4),
  RMB_PRICE      NUMERIC(19),
  USD_PRICE      NUMERIC(19),
  DUTY_VALUE     NUMERIC(19),
  G_PROCESS_MARK VARCHAR(2),
  WORK_USD       NUMERIC(19,4),
  CLASS_MARK     VARCHAR(1),
  G_CERT_FLAG    VARCHAR(32),
  TARIFF_MARK    VARCHAR(32),
  DUTY_TYPE      VARCHAR(1),
  REAL_DUTY      NUMERIC(19,4),
  DUTY_CUT       NUMERIC(19,4),
  DUTY_RATE      NUMERIC(19,5),
  D_RATE         NUMERIC(19,5),
  QTY_DUTY_RATE  NUMERIC(19,5),
  QTY_D_RATE     NUMERIC(19,5),
  TAX_TYPE       VARCHAR(1),
  REAL_TAX       NUMERIC(19,4),
  TAX_CUT        NUMERIC(19,4),
  TAX_RATE       NUMERIC(19,5),
  T_RATE         NUMERIC(19,5),
  QTY_TAX_RATE   NUMERIC(19,5),
  QTY_T_RATE     NUMERIC(19,5),
  REG_TYPE       VARCHAR(1),
  REAL_REG       NUMERIC(19,4),
  REG_CUT        NUMERIC(19,4),
  REG_RATE       NUMERIC(19,5),
  R_RATE         NUMERIC(19,5),
  QTY_REG_RATE   NUMERIC(19,5),
  QTY_R_RATE     NUMERIC(19,5),
  OIL_TYPE       VARCHAR(1),
  REAL_OIL       NUMERIC(19,4),
  OIL_CUT        NUMERIC(19,4),
  OIL_RATE       NUMERIC(19,5),
  O_RATE         NUMERIC(19,5),
  QTY_OIL_RATE   NUMERIC(19,5),
  QTY_O_RATE     NUMERIC(19,5),
  ANTI_TYPE      VARCHAR(1),
  REAL_ANTI      NUMERIC(19,4),
  ANTI_CUT       NUMERIC(19,4),
  ANTI_RATE      NUMERIC(19,5),
  A_RATE         NUMERIC(19,5),
  QTY_ANTI_RATE  NUMERIC(19,5),
  QTY_A_RATE     NUMERIC(19,5),
  PRDT_NO        VARCHAR(32),
  GOODS_ID       VARCHAR(32),
  DECL_CODE_TS   VARCHAR(16),
  OP_TIME        TIMESTAMP  ,
  OP_FLAG        VARCHAR(1),
  AGREEMENT_ID   VARCHAR(2),
  RSV1_TYPE      VARCHAR(1),
  REAL_RSV1      NUMERIC(19,4),
  RSV1_CUT       NUMERIC(19,4),
  RSV1_RATE      NUMERIC(19,5),
  R1_RATE        NUMERIC(19,5),
  QTY_RSV1_RATE  NUMERIC(19,5),
  QTY_R1_RATE    NUMERIC(19,5),
  RSV2_TYPE      VARCHAR(1),
  REAL_RSV2      NUMERIC(19,4),
  RSV2_CUT       NUMERIC(19,4),
  RSV2_RATE      NUMERIC(19,5),
  R2_RATE        NUMERIC(19,5),
  QTY_RSV2_RATE  NUMERIC(19,5),
  QTY_R2_RATE    NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_DEL_LIST_LOG.txt',
'gpfdist://mdw-2:8081/ENTRY_DEL_LIST_LOG.txt',
'gpfdist://mdw-3:8081/ENTRY_DEL_LIST_LOG.txt',
'gpfdist://mdw-4:8081/ENTRY_DEL_LIST_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_EVALUATION------------
drop external table IF EXISTS ENTRY_EVALUATION_INC_EXT;

create external table ENTRY_EVALUATION_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID       VARCHAR(18)  ,
  G_NO           NUMERIC(19)  ,
  I_E_FLAG       VARCHAR(1),
  DECL_PORT      VARCHAR(4),
  VAL_METHOD     VARCHAR(6),
  VAL_REASON     VARCHAR(255),
  APPEAL_DEPT    VARCHAR(4),
  APPEAL_RESULT  VARCHAR(2),
  OPER_DATE      TIMESTAMP,
  OPER_ER        VARCHAR(8),
  PRINT_DATE     TIMESTAMP,
  PRINT_ER       VARCHAR(8),
  VAL_DUTY       NUMERIC(19,4),
  VAL_TAX        NUMERIC(19,4),
  VAL_OTHER      NUMERIC(19,4),
  VAL_TOTAL      NUMERIC(19,4),
  PRICE_RANGE    NUMERIC(19,4),
  PROCESS_MARK   VARCHAR(32),
  ASS_ID         VARCHAR(17),
  REAL_DUTY      NUMERIC(19,4),
  REAL_TAX       NUMERIC(19,4),
  REAL_OTHERS    NUMERIC(19,4),
  TRADE_CURR     VARCHAR(3),
  DECL_PRICE     NUMERIC(19,5),
  VAL_PRICE      NUMERIC(19,5),
  VAL_CURR       VARCHAR(3),
  D_DATE         TIMESTAMP,
  I_E_PORT       VARCHAR(4),
  G_NAME         VARCHAR(255),
  CODE_TS        VARCHAR(16),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  TRADE_MODE     VARCHAR(4),
  TRANS_MODE     VARCHAR(1),
  TRAF_MODE      VARCHAR(1),
  I_E_DATE       TIMESTAMP,
  CONTR_NO       VARCHAR(32),
  TRADE_CO       VARCHAR(10),
  TRADE_NAME     VARCHAR(255),
  OWNER_CODE     VARCHAR(10),
  OWNER_NAME     VARCHAR(255),
  G_QTY          NUMERIC(19,5),
  G_UNIT         VARCHAR(3),
  QTY_CONV       NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  TRADE_COUNTRY  VARCHAR(3),
  USD_PRICE      NUMERIC(19),
  P_DATE         TIMESTAMP,
  EXCHANGE_RATE  NUMERIC(19,7),
  VAL_EXCH       NUMERIC(19,7)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_EVALUATION.txt',
'gpfdist://mdw-2:8081/ENTRY_EVALUATION.txt',
'gpfdist://mdw-3:8081/ENTRY_EVALUATION.txt',
'gpfdist://mdw-4:8081/ENTRY_EVALUATION.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_GPM_RTX------------
drop external table IF EXISTS ENTRY_GPM_RTX_INC_EXT;

create external table ENTRY_GPM_RTX_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  SIGN_TYPE VARCHAR(3)  ,
  ENTRY_ID  VARCHAR(18)  ,
  PROC_MODE VARCHAR(1)  ,
  PROC_DATE TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_GPM_RTX.txt',
'gpfdist://mdw-2:8081/ENTRY_GPM_RTX.txt',
'gpfdist://mdw-3:8081/ENTRY_GPM_RTX.txt',
'gpfdist://mdw-4:8081/ENTRY_GPM_RTX.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_GPM_RTX_PRINTLOG------------
drop external table IF EXISTS ENTRY_GPM_RTX_PRINTLOG_INC_EXT;

create external table ENTRY_GPM_RTX_PRINTLOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID   VARCHAR(18)  ,
  PRINT_TYPE VARCHAR(3)  ,
  PRINT_DATE TIMESTAMP  ,
  PRINT_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_GPM_RTX_PRINTLOG.txt',
'gpfdist://mdw-2:8081/ENTRY_GPM_RTX_PRINTLOG.txt',
'gpfdist://mdw-3:8081/ENTRY_GPM_RTX_PRINTLOG.txt',
'gpfdist://mdw-4:8081/ENTRY_GPM_RTX_PRINTLOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_GPM_RTX_SENDLOG------------
drop external table IF EXISTS ENTRY_GPM_RTX_SENDLOG_INC_EXT;

create external table ENTRY_GPM_RTX_SENDLOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID       VARCHAR(18)  ,
  SIGN_TYPE      VARCHAR(3)  ,
  PROC_MODE      VARCHAR(1)  ,
  SEND_DATE      TIMESTAMP  ,
  SEND_FILE_NAME VARCHAR(50),
  SEND_ER        VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_GPM_RTX_SENDLOG.txt',
'gpfdist://mdw-2:8081/ENTRY_GPM_RTX_SENDLOG.txt',
'gpfdist://mdw-3:8081/ENTRY_GPM_RTX_SENDLOG.txt',
'gpfdist://mdw-4:8081/ENTRY_GPM_RTX_SENDLOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_HEAD------------
drop external table IF EXISTS ENTRY_HEAD_INC_EXT;

create external table ENTRY_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID           VARCHAR(18)  ,
  PRE_ENTRY_ID       VARCHAR(18),
  ID_CHK             VARCHAR(1),
  I_E_FLAG           VARCHAR(1),
  I_E_PORT           VARCHAR(4),
  I_E_DATE           TIMESTAMP,
  D_DATE             TIMESTAMP,
  DESTINATION_PORT   VARCHAR(4),
  TRAF_NAME          VARCHAR(255),
  VOYAGE_NO          VARCHAR(32),
  TRAF_MODE          VARCHAR(1),
  TRADE_CO           VARCHAR(10),
  TRADE_NAME         VARCHAR(255),
  DISTRICT_CODE      VARCHAR(5),
  OWNER_CODE         VARCHAR(10),
  OWNER_NAME         VARCHAR(255),
  AGENT_CODE         VARCHAR(10),
  AGENT_NAME         VARCHAR(255),
  CONTR_NO           VARCHAR(32),
  IN_RATIO           NUMERIC(19,5),
  BILL_NO            VARCHAR(32),
  TRADE_COUNTRY      VARCHAR(3),
  TRADE_MODE         VARCHAR(4),
  CUT_MODE           VARCHAR(3),
  TRANS_MODE         VARCHAR(1),
  CONTAINER_NO       NUMERIC(19,4),
  PAY_WAY            VARCHAR(1),
  FEE_MARK           VARCHAR(1),
  FEE_CURR           VARCHAR(3),
  FEE_RATE           NUMERIC(19,5),
  INSUR_MARK         VARCHAR(1),
  INSUR_CURR         VARCHAR(3),
  INSUR_RATE         NUMERIC(19,5),
  OTHER_MARK         VARCHAR(1),
  OTHER_CURR         VARCHAR(3),
  OTHER_RATE         NUMERIC(19,5),
  PACK_NO            NUMERIC(19),
  GROSS_WT           NUMERIC(19,5),
  NET_WT             NUMERIC(19,5),
  WRAP_TYPE          VARCHAR(32),
  MANUAL_NO          VARCHAR(12),
  LICENSE_NO         VARCHAR(20),
  APPR_NO            VARCHAR(32),
  NOTE_S             VARCHAR(255),
  DECL_PORT          VARCHAR(4)  ,
  CO_OWNER           VARCHAR(1),
  TAXY_RG_NO         VARCHAR(32),
  MNL_JGF_FLAG       VARCHAR(1),
  SERVICE_FEE        NUMERIC(19,4),
  SERVICE_RATE       NUMERIC(19,5),
  RELATIVE_ID        VARCHAR(18),
  BONDED_NO          VARCHAR(32),
  BP_NO              VARCHAR(255),
  TYPIST_NO          VARCHAR(32),
  INPUT_NO           VARCHAR(32),
  P_DATE             TIMESTAMP,
  CTA_CHK_RESULT     VARCHAR(255),
  MODI_NO            NUMERIC(19),
  EDI_ID             VARCHAR(1),
  STATUS_RESULT      VARCHAR(120),
  DECLARE_NO         VARCHAR(32),
  JOU_EVENT          VARCHAR(15),
  JOU_FLAG           VARCHAR(15),
  EDI_REMARK         VARCHAR(32),
  PARTNER_ID         VARCHAR(20),
  CUSTOMS_FIELD      VARCHAR(8),
  ENTRY_TYPE         VARCHAR(4),
  RELATIVE_MANUAL_NO VARCHAR(12),
  PRICE_RANGE        NUMERIC(19,4),
  SPECIAL_FLAG       VARCHAR(1),
  DELAY_DAYS         NUMERIC(19),
  DELAY_ACCOUNT      NUMERIC(19,2),
  HASH_SIGN          VARCHAR(380)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_HEAD.txt',
'gpfdist://mdw-2:8081/ENTRY_HEAD.txt',
'gpfdist://mdw-3:8081/ENTRY_HEAD.txt',
'gpfdist://mdw-4:8081/ENTRY_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_LIST------------
drop external table IF EXISTS ENTRY_LIST_INC_EXT;

create external table ENTRY_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID       VARCHAR(18)  ,
  G_NO           NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  CONTR_ITEM     NUMERIC(19),
  TRADE_CURR     VARCHAR(3),
  EXCHANGE_RATE  NUMERIC(19,7),
  DECL_PRICE     NUMERIC(19,5),
  DECL_TOTAL     NUMERIC(19,4),
  USE_TO         VARCHAR(2),
  DUTY_MODE      VARCHAR(1),
  G_QTY          NUMERIC(19,5),
  G_UNIT         VARCHAR(3),
  QTY_1          NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  QTY_2          NUMERIC(19,5),
  UNIT_2         VARCHAR(3),
  TRADE_TOTAL    NUMERIC(19,4),
  RMB_PRICE      NUMERIC(19),
  USD_PRICE      NUMERIC(19),
  DUTY_VALUE     NUMERIC(19),
  G_PROCESS_MARK VARCHAR(2),
  WORK_USD       NUMERIC(19,4),
  CLASS_MARK     VARCHAR(1),
  G_CERT_FLAG    VARCHAR(32),
  TARIFF_MARK    VARCHAR(32),
  DUTY_TYPE      VARCHAR(1),
  REAL_DUTY      NUMERIC(19,4),
  DUTY_CUT       NUMERIC(19,4),
  DUTY_RATE      NUMERIC(19,5),
  D_RATE         NUMERIC(19,5),
  QTY_DUTY_RATE  NUMERIC(19,5),
  QTY_D_RATE     NUMERIC(19,5),
  TAX_TYPE       VARCHAR(1),
  REAL_TAX       NUMERIC(19,4),
  TAX_CUT        NUMERIC(19,4),
  TAX_RATE       NUMERIC(19,5),
  T_RATE         NUMERIC(19,5),
  QTY_TAX_RATE   NUMERIC(19,5),
  QTY_T_RATE     NUMERIC(19,5),
  REG_TYPE       VARCHAR(1),
  REAL_REG       NUMERIC(19,4),
  REG_CUT        NUMERIC(19,4),
  REG_RATE       NUMERIC(19,5),
  R_RATE         NUMERIC(19,5),
  QTY_REG_RATE   NUMERIC(19,5),
  QTY_R_RATE     NUMERIC(19,5),
  OIL_TYPE       VARCHAR(1),
  REAL_OIL       NUMERIC(19,4),
  OIL_CUT        NUMERIC(19,4),
  OIL_RATE       NUMERIC(19,5),
  O_RATE         NUMERIC(19,5),
  QTY_OIL_RATE   NUMERIC(19,5),
  QTY_O_RATE     NUMERIC(19,5),
  ANTI_TYPE      VARCHAR(1),
  REAL_ANTI      NUMERIC(19,4),
  ANTI_CUT       NUMERIC(19,4),
  ANTI_RATE      NUMERIC(19,5),
  A_RATE         NUMERIC(19,5),
  QTY_ANTI_RATE  NUMERIC(19,5),
  QTY_A_RATE     NUMERIC(19,5),
  PRDT_NO        VARCHAR(32),
  GOODS_ID       VARCHAR(32),
  DECL_CODE_TS   VARCHAR(16),
  AGREEMENT_ID   VARCHAR(2),
  RSV1_TYPE      VARCHAR(1),
  REAL_RSV1      NUMERIC(19,4),
  RSV1_CUT       NUMERIC(19,4),
  RSV1_RATE      NUMERIC(19,5),
  R1_RATE        NUMERIC(19,5),
  QTY_RSV1_RATE  NUMERIC(19,5),
  QTY_R1_RATE    NUMERIC(19,5),
  RSV2_TYPE      VARCHAR(1),
  REAL_RSV2      NUMERIC(19,4),
  RSV2_CUT       NUMERIC(19,4),
  RSV2_RATE      NUMERIC(19,5),
  R2_RATE        NUMERIC(19,5),
  QTY_RSV2_RATE  NUMERIC(19,5),
  QTY_R2_RATE    NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_LIST.txt',
'gpfdist://mdw-2:8081/ENTRY_LIST.txt',
'gpfdist://mdw-3:8081/ENTRY_LIST.txt',
'gpfdist://mdw-4:8081/ENTRY_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_MODI_LOG------------
drop external table IF EXISTS ENTRY_MODI_LOG_INC_EXT;

create external table ENTRY_MODI_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID     VARCHAR(18)  ,
  OP_TIME      TIMESTAMP  ,
  MODI_TYPE    NUMERIC(19)  ,
  ITEM_NAME    VARCHAR(255)  ,
  ITEM_SOURCE  VARCHAR(255),
  NOTES        VARCHAR(255),
  ITEM_CURRENT VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_MODI_LOG.txt',
'gpfdist://mdw-2:8081/ENTRY_MODI_LOG.txt',
'gpfdist://mdw-3:8081/ENTRY_MODI_LOG.txt',
'gpfdist://mdw-4:8081/ENTRY_MODI_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_OP_LOG------------
drop external table IF EXISTS ENTRY_OP_LOG_INC_EXT;

create external table ENTRY_OP_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID VARCHAR(18)  ,
  OP_TIME  TIMESTAMP  ,
  OP_TYPE  VARCHAR(3),
  OP_ER    VARCHAR(8),
  SRV_PORT VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_OP_LOG.txt',
'gpfdist://mdw-2:8081/ENTRY_OP_LOG.txt',
'gpfdist://mdw-3:8081/ENTRY_OP_LOG.txt',
'gpfdist://mdw-4:8081/ENTRY_OP_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_PROC------------
drop external table IF EXISTS ENTRY_PROC_INC_EXT;

create external table ENTRY_PROC_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID        VARCHAR(18)  ,
  I_E_FLAG        VARCHAR(1),
  D_DATE          TIMESTAMP,
  DECL_PORT       VARCHAR(4)  ,
  SPECIAL_DECLARE VARCHAR(1),
  ACE_TIME        TIMESTAMP,
  ACE_RESULT      VARCHAR(8),
  QUICK_PASS_MODE VARCHAR(1),
  CTR_TIME        TIMESTAMP,
  CTR_RESULT      VARCHAR(8),
  CHANNEL         VARCHAR(2),
  CHANNEL_TIME    TIMESTAMP,
  CHANNEL_ER      VARCHAR(8),
  REC_TIME        TIMESTAMP,
  REC_ER          VARCHAR(8),
  CHK_TIME        TIMESTAMP,
  CHK_RESULT      VARCHAR(8),
  CHK_ER          VARCHAR(8),
  TAX_PRINT_TIME  TIMESTAMP,
  REL_TIME        TIMESTAMP,
  REL_RESULT      VARCHAR(8),
  REL_ER          VARCHAR(8),
  GOODS_REL_TIME  TIMESTAMP,
  GOODS_REL_ER    VARCHAR(8),
  RTX_TIME        TIMESTAMP,
  RTX_ER          VARCHAR(8),
  PREL_TIME       TIMESTAMP,
  PREL_RESULT     VARCHAR(8),
  PREL_ER         VARCHAR(8),
  RECTR_TIME      TIMESTAMP,
  RECTR_ER        VARCHAR(8),
  LAST_STEP       VARCHAR(8),
  LAST_STEP_TIME  TIMESTAMP,
  RSV_1           VARCHAR(8),
  RSV_2           VARCHAR(8),
  RSV_3           VARCHAR(32),
  RSV_4           VARCHAR(32),
  RSV_TIME_1      TIMESTAMP,
  RSV_TIME_2      TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_PROC.txt',
'gpfdist://mdw-2:8081/ENTRY_PROC.txt',
'gpfdist://mdw-3:8081/ENTRY_PROC.txt',
'gpfdist://mdw-4:8081/ENTRY_PROC.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_PROC_LOG------------
drop external table IF EXISTS ENTRY_PROC_LOG_INC_EXT;

create external table ENTRY_PROC_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID       VARCHAR(18)  ,
  OP_TIME        TIMESTAMP  ,
  OP_STEP        VARCHAR(2)  ,
  OP_TYPE        VARCHAR(8),
  OP_SOURCE      VARCHAR(256),
  OP_DESCRIPTION VARCHAR(1024)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_PROC_LOG.txt',
'gpfdist://mdw-2:8081/ENTRY_PROC_LOG.txt',
'gpfdist://mdw-3:8081/ENTRY_PROC_LOG.txt',
'gpfdist://mdw-4:8081/ENTRY_PROC_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_QUERY------------
drop external table IF EXISTS ENTRY_QUERY_INC_EXT;

create external table ENTRY_QUERY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID         VARCHAR(18)  ,
  G_NO             NUMERIC(19)  ,
  I_E_FLAG         VARCHAR(1),
  I_E_PORT         VARCHAR(4),
  I_E_DATE         TIMESTAMP,
  D_DATE           TIMESTAMP,
  DESTINATION_PORT VARCHAR(4),
  TRAF_NAME        VARCHAR(255),
  VOYAGE_NO        VARCHAR(32),
  TRAF_MODE        VARCHAR(1),
  TRADE_CO         VARCHAR(10),
  TRADE_NAME       VARCHAR(255),
  DISTRICT_CODE    VARCHAR(5),
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  AGENT_CODE       VARCHAR(10),
  AGENT_NAME       VARCHAR(255),
  BILL_NO          VARCHAR(32),
  TRADE_COUNTRY    VARCHAR(3),
  TRADE_MODE       VARCHAR(4),
  CUT_MODE         VARCHAR(3),
  TRANS_MODE       VARCHAR(1),
  FEE_MARK         VARCHAR(1),
  FEE_CURR         VARCHAR(3),
  FEE_RATE         NUMERIC(19,5),
  INSUR_MARK       VARCHAR(1),
  INSUR_CURR       VARCHAR(3),
  INSUR_RATE       NUMERIC(19,5),
  OTHER_MARK       VARCHAR(1),
  OTHER_CURR       VARCHAR(3),
  OTHER_RATE       NUMERIC(19,5),
  PACK_NO          NUMERIC(19),
  GROSS_WT         NUMERIC(19,5),
  NET_WT           NUMERIC(19,5),
  WRAP_TYPE        VARCHAR(32),
  MANUAL_NO        VARCHAR(12),
  LICENSE_NO       VARCHAR(20),
  APPR_NO          VARCHAR(32),
  NOTE_S           VARCHAR(255),
  DECL_PORT        VARCHAR(4),
  SPECIAL_FLAG     VARCHAR(1),
  CODE_TS          VARCHAR(16),
  G_NAME           VARCHAR(255),
  G_MODEL          VARCHAR(255),
  ORIGIN_COUNTRY   VARCHAR(3),
  TRADE_CURR       VARCHAR(3),
  EXCHANGE_RATE    NUMERIC(19,7),
  DECL_PRICE       NUMERIC(19,5),
  DECL_TOTAL       NUMERIC(19,4),
  DUTY_MODE        VARCHAR(1),
  G_QTY            NUMERIC(19,5),
  G_UNIT           VARCHAR(3),
  QTY_1            NUMERIC(19,5),
  UNIT_1           VARCHAR(3),
  QTY_2            NUMERIC(19,5),
  UNIT_2           VARCHAR(3),
  TRADE_TOTAL      NUMERIC(19,4),
  RMB_PRICE        NUMERIC(19),
  USD_PRICE        NUMERIC(19),
  DUTY_VALUE       NUMERIC(19),
  DUTY_TYPE        VARCHAR(1),
  REAL_DUTY        NUMERIC(19,4),
  DUTY_CUT         NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_QUERY.txt',
'gpfdist://mdw-2:8081/ENTRY_QUERY.txt',
'gpfdist://mdw-3:8081/ENTRY_QUERY.txt',
'gpfdist://mdw-4:8081/ENTRY_QUERY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ENTRY_WORKFLOW------------
drop external table IF EXISTS ENTRY_WORKFLOW_INC_EXT;

create external table ENTRY_WORKFLOW_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID    VARCHAR(18)  ,
  STEP_ID     VARCHAR(8)  ,
  CREATE_DATE TIMESTAMP  ,
  PROC_POS    VARCHAR(4),
  STATUS_CODE VARCHAR(32),
  PROC_ER     VARCHAR(8),
  PROC_RESULT VARCHAR(8),
  PREV_POS    VARCHAR(4),
  PREV_ER     VARCHAR(8),
  RECHK_MARK  VARCHAR(1),
  RECHK_COMM  VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/ENTRY_WORKFLOW.txt',
'gpfdist://mdw-2:8081/ENTRY_WORKFLOW.txt',
'gpfdist://mdw-3:8081/ENTRY_WORKFLOW.txt',
'gpfdist://mdw-4:8081/ENTRY_WORKFLOW.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EPA_CHEM_CERT------------
drop external table IF EXISTS EPA_CHEM_CERT_INC_EXT;

create external table EPA_CHEM_CERT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CERTIFICATE_NO     VARCHAR(20)  ,
  TRANSFER_NUM       NUMERIC(2),
  ISSUE_ORGANIZATION VARCHAR(200),
  ISSUE_DATE         TIMESTAMP,
  BEGIN_DATE         TIMESTAMP,
  END_DATE           TIMESTAMP,
  TRADE_REG_NO       VARCHAR(9),
  TRADE_CO           VARCHAR(10),
  TRADE_NAME         VARCHAR(200),
  OWNER_REG_NO       VARCHAR(9),
  OWNER_CODE         VARCHAR(10),
  OWNER_NAME         VARCHAR(200),
  CODE_TS            VARCHAR(10),
  G_NAME_CN          VARCHAR(255),
  G_NAME_EN          VARCHAR(255),
  G_NAME             VARCHAR(255),
  G_NAME_OTHER       VARCHAR(255),
  G_QTY              NUMERIC(14,5),
  G_UNIT             VARCHAR(3),
  DECL_PORT          VARCHAR(4),
  PACK_TYPE          VARCHAR(12),
  TRAF_MODE          VARCHAR(1),
  TRADE_MODE         VARCHAR(4),
  PLACE_OF_TRADE     VARCHAR(3),
  PLACE_OF_FROM      VARCHAR(3),
  ORIGIN_COUNTRY     VARCHAR(3),
  PLACE_OF_TRANSFER  VARCHAR(3),
  NOTE               VARCHAR(255),
  OP_MODE            VARCHAR(1),
  RECV_DATE          TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/EPA_CHEM_CERT.txt',
'gpfdist://mdw-2:8081/EPA_CHEM_CERT.txt',
'gpfdist://mdw-3:8081/EPA_CHEM_CERT.txt',
'gpfdist://mdw-4:8081/EPA_CHEM_CERT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EPA_CHK------------
drop external table IF EXISTS EPA_CHK_INC_EXT;

create external table EPA_CHK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID       VARCHAR(18)  ,
  CERTIFICATE_NO VARCHAR(20)  ,
  CERT_TYPE      VARCHAR(1)  ,
  CHK_ER         VARCHAR(8),
  CHK_DATE       TIMESTAMP,
  REL_ER         VARCHAR(8),
  REL_DATE       TIMESTAMP,
  REL_QTY        NUMERIC(14,5),
  NOTE           VARCHAR(100)
)
LOCATION( 
'gpfdist://mdw-1:8081/EPA_CHK.txt',
'gpfdist://mdw-2:8081/EPA_CHK.txt',
'gpfdist://mdw-3:8081/EPA_CHK.txt',
'gpfdist://mdw-4:8081/EPA_CHK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EPA_SCARP_CERT------------
drop external table IF EXISTS EPA_SCARP_CERT_INC_EXT;

create external table EPA_SCARP_CERT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CERTIFICATE_NO     VARCHAR(20)  ,
  TRANSFER_NUM       NUMERIC(2),
  ISSUE_ORGANIZATION VARCHAR(200),
  ISSUE_DATE         TIMESTAMP,
  BEGIN_DATE         TIMESTAMP,
  END_DATE           TIMESTAMP,
  OWNER_REG_NO       VARCHAR(9),
  OWNER_CODE         VARCHAR(10),
  OWNER_NAME         VARCHAR(200),
  TRADE_REG_NO       VARCHAR(9),
  TRADE_CO           VARCHAR(10),
  TRADE_NAME         VARCHAR(200),
  CODE_TS            VARCHAR(100),
  G_NAME             VARCHAR(255),
  G_QTY              NUMERIC(14,5),
  G_UNIT             VARCHAR(3),
  ORIGIN_COUNTRY     VARCHAR(3),
  TRADE_MODE         VARCHAR(4),
  I_E_PORT1          VARCHAR(4),
  I_E_PORT2          VARCHAR(4),
  I_E_PORT3          VARCHAR(4),
  NOTE               VARCHAR(255),
  OP_MODE            VARCHAR(1),
  RECV_DATE          TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/EPA_SCARP_CERT.txt',
'gpfdist://mdw-2:8081/EPA_SCARP_CERT.txt',
'gpfdist://mdw-3:8081/EPA_SCARP_CERT.txt',
'gpfdist://mdw-4:8081/EPA_SCARP_CERT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------ERR_LOG------------
drop external table IF EXISTS ERR_LOG_INC_EXT;

create external table ERR_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID    VARCHAR(18)  ,
  CREATE_DATE TIMESTAMP  ,
  SOURCE      VARCHAR(1024),
  DESCRIPTION VARCHAR(1024)
)
LOCATION( 
'gpfdist://mdw-1:8081/ERR_LOG.txt',
'gpfdist://mdw-2:8081/ERR_LOG.txt',
'gpfdist://mdw-3:8081/ERR_LOG.txt',
'gpfdist://mdw-4:8081/ERR_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_APPL_CLOSE------------
drop external table IF EXISTS EX_APPL_CLOSE_INC_EXT;

create external table EX_APPL_CLOSE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  CONTR_ITEM     NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(30),
  G_MODEL        VARCHAR(30),
  FACT_QTY       NUMERIC(19,4),
  T_IN_QTY       NUMERIC(19,4),
  T_EX_QTY       NUMERIC(19,4),
  REMAIN_QTY     NUMERIC(19,4),
  PROC_MODE      VARCHAR(1),
  CORR_MANUAL_NO VARCHAR(12)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_APPL_CLOSE.txt',
'gpfdist://mdw-2:8081/EX_APPL_CLOSE.txt',
'gpfdist://mdw-3:8081/EX_APPL_CLOSE.txt',
'gpfdist://mdw-4:8081/EX_APPL_CLOSE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_ARRIVAL_CONTA------------
drop external table IF EXISTS EX_ARRIVAL_CONTA_INC_EXT;

create external table EX_ARRIVAL_CONTA_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CONTA_ID      VARCHAR(32)  ,
  BILL_NO       VARCHAR(32)  ,
  REC_NO        VARCHAR(18)  ,
  RECV_DATE     TIMESTAMP,
  CONTA_MODEL   VARCHAR(4),
  CONTA_STATUS  VARCHAR(1),
  SEAL_NO       VARCHAR(32),
  TARE_WEIGHT   NUMERIC(19,5),
  TOTAL_CARGO   NUMERIC(19,5),
  TOTAL_MEASURE NUMERIC(19,5),
  TOTAL_PACK_NO NUMERIC(19,5),
  TOTAL_WEIGHT  NUMERIC(19,5),
  IN_PORT_FLAG  VARCHAR(1),
  IN_PORT_ADDR  VARCHAR(32),
  IN_PORT_DATE  TIMESTAMP,
  D_PORT_CODE   VARCHAR(32),
  PLACE         VARCHAR(6),
  ENTRY_ID      VARCHAR(18),
  CHK_DATE      TIMESTAMP,
  CHK_ER        VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_ARRIVAL_CONTA.txt',
'gpfdist://mdw-2:8081/EX_ARRIVAL_CONTA.txt',
'gpfdist://mdw-3:8081/EX_ARRIVAL_CONTA.txt',
'gpfdist://mdw-4:8081/EX_ARRIVAL_CONTA.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_ARRIVAL_ERR_CHK------------
drop external table IF EXISTS EX_ARRIVAL_ERR_CHK_INC_EXT;

create external table EX_ARRIVAL_ERR_CHK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID VARCHAR(18)  ,
  CHK_FLAG VARCHAR(8),
  CHK_DATE TIMESTAMP  ,
  CHK_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_ARRIVAL_ERR_CHK.txt',
'gpfdist://mdw-2:8081/EX_ARRIVAL_ERR_CHK.txt',
'gpfdist://mdw-3:8081/EX_ARRIVAL_ERR_CHK.txt',
'gpfdist://mdw-4:8081/EX_ARRIVAL_ERR_CHK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_ARRIVAL_SHIP------------
drop external table IF EXISTS EX_ARRIVAL_SHIP_INC_EXT;

create external table EX_ARRIVAL_SHIP_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  VOYAGE_NO    VARCHAR(32)  ,
  SHIP_NAME_EN VARCHAR(255)  ,
  CUSTOMS_CODE VARCHAR(4)  ,
  SHIP_ID      VARCHAR(32)  ,
  I_E_DATE     TIMESTAMP,
  TRAF_MODE    VARCHAR(1)  ,
  REC_NO       VARCHAR(18)  
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_ARRIVAL_SHIP.txt',
'gpfdist://mdw-2:8081/EX_ARRIVAL_SHIP.txt',
'gpfdist://mdw-3:8081/EX_ARRIVAL_SHIP.txt',
'gpfdist://mdw-4:8081/EX_ARRIVAL_SHIP.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_CDL_MNL_DEDUCT------------
drop external table IF EXISTS EX_CDL_MNL_DEDUCT_INC_EXT;

create external table EX_CDL_MNL_DEDUCT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12)  ,
  CONTR_ITEM  NUMERIC(19),
  ENTRY_ID    VARCHAR(18)  ,
  ENTRY_ITEM  NUMERIC(19),
  I_E_PORT    VARCHAR(8),
  I_E_DATE    TIMESTAMP,
  G_NO        NUMERIC(19)  ,
  IN_QTY      NUMERIC(19,4),
  I_ACCOUNT   NUMERIC(19,5),
  I_CURR      VARCHAR(3),
  DUTY_MODE   VARCHAR(1),
  VERIFY_MODE VARCHAR(1),
  VERIFY_DATE TIMESTAMP,
  VERIFY_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_CDL_MNL_DEDUCT.txt',
'gpfdist://mdw-2:8081/EX_CDL_MNL_DEDUCT.txt',
'gpfdist://mdw-3:8081/EX_CDL_MNL_DEDUCT.txt',
'gpfdist://mdw-4:8081/EX_CDL_MNL_DEDUCT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_CONTA_ENTRY_CHK------------
drop external table IF EXISTS EX_CONTA_ENTRY_CHK_INC_EXT;

create external table EX_CONTA_ENTRY_CHK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CONTA_ID VARCHAR(32)  ,
  BILL_NO  VARCHAR(32)  ,
  REC_NO   VARCHAR(18)  ,
  ENTRY_ID VARCHAR(18)  ,
  CHK_DATE TIMESTAMP,
  CHK_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_CONTA_ENTRY_CHK.txt',
'gpfdist://mdw-2:8081/EX_CONTA_ENTRY_CHK.txt',
'gpfdist://mdw-3:8081/EX_CONTA_ENTRY_CHK.txt',
'gpfdist://mdw-4:8081/EX_CONTA_ENTRY_CHK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_CONTRACT_CLEAR------------
drop external table IF EXISTS EX_CONTRACT_CLEAR_INC_EXT;

create external table EX_CONTRACT_CLEAR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO     VARCHAR(12)  ,
  CONTR_ITEM    NUMERIC(19)  ,
  APPR_AMT      NUMERIC(19,5),
  FACT_AMT      NUMERIC(19,5),
  APPR_QTY      NUMERIC(19,4),
  FACT_QTY      NUMERIC(19,4),
  PRODU_EX_AMT  NUMERIC(19,5),
  PRODU_EX_QTY  NUMERIC(19,4),
  PRODU_TAX_AMT NUMERIC(19,5),
  PRODU_TAX_QTY NUMERIC(19,4),
  REMAIN_AMT    NUMERIC(19,5),
  REMAIN_QTY    NUMERIC(19,4),
  ABANDON_AMT   NUMERIC(19,5),
  ABANDON_QTY   NUMERIC(19,4),
  ABANDON_DATE  TIMESTAMP,
  ABANDON_ER    VARCHAR(8),
  UNIT_1        VARCHAR(3),
  CLEAR_ER      VARCHAR(8),
  CLEAR_DATE    TIMESTAMP,
  CLOSE_ER      VARCHAR(8),
  CLOSE_DATE    TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_CONTRACT_CLEAR.txt',
'gpfdist://mdw-2:8081/EX_CONTRACT_CLEAR.txt',
'gpfdist://mdw-3:8081/EX_CONTRACT_CLEAR.txt',
'gpfdist://mdw-4:8081/EX_CONTRACT_CLEAR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_CONTRACT_DEDUC------------
drop external table IF EXISTS EX_CONTRACT_DEDUC_INC_EXT;

create external table EX_CONTRACT_DEDUC_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12)  ,
  CONTR_ITEM  NUMERIC(19),
  ENTRY_ID    VARCHAR(18)  ,
  ENTRY_ITEM  NUMERIC(19),
  I_E_PORT    VARCHAR(8),
  I_E_DATE    TIMESTAMP,
  G_NO        NUMERIC(19)  ,
  IN_QTY      NUMERIC(19,4),
  I_ACCOUNT   NUMERIC(19,5),
  I_CURR      VARCHAR(3),
  DUTY_MODE   VARCHAR(1),
  VERIFY_MODE VARCHAR(1),
  VERIFY_DATE TIMESTAMP,
  VERIFY_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_CONTRACT_DEDUC.txt',
'gpfdist://mdw-2:8081/EX_CONTRACT_DEDUC.txt',
'gpfdist://mdw-3:8081/EX_CONTRACT_DEDUC.txt',
'gpfdist://mdw-4:8081/EX_CONTRACT_DEDUC.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_CONTRACT_LIST------------
drop external table IF EXISTS EX_CONTRACT_LIST_INC_EXT;

create external table EX_CONTRACT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  CONTR_ITEM     NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  CLASS_MARK     VARCHAR(1),
  G_NAME         VARCHAR(50),
  G_MODEL        VARCHAR(50),
  ORIGIN_COUNTRY VARCHAR(3),
  DUTY_MODE      VARCHAR(1),
  DUTY_RATIO     NUMERIC(19,5),
  LOCAL_CONTR    VARCHAR(20),
  APPR_AMT       NUMERIC(19,5),
  FACT_AMT       NUMERIC(19,5),
  UNIT_PRICE     NUMERIC(19,10),
  APPR_QTY       NUMERIC(19,5),
  FACT_QTY       NUMERIC(19,5),
  TRANSFER_QTY   NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  IN_COUNT       NUMERIC(19),
  WORK_PAY       NUMERIC(19),
  CURR_WORK      VARCHAR(3),
  CONSUME_NOTE   VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_CONTRACT_LIST.txt',
'gpfdist://mdw-2:8081/EX_CONTRACT_LIST.txt',
'gpfdist://mdw-3:8081/EX_CONTRACT_LIST.txt',
'gpfdist://mdw-4:8081/EX_CONTRACT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_COP_RATE------------
drop external table IF EXISTS EX_COP_RATE_INC_EXT;

create external table EX_COP_RATE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO    VARCHAR(10)  ,
  CHKSTDATE   TIMESTAMP  ,
  CHKENDDATE  TIMESTAMP  ,
  CORCORPNAME VARCHAR(128),
  CHKRATE     NUMERIC(21,4),
  RECV_DATE   TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_COP_RATE.txt',
'gpfdist://mdw-2:8081/EX_COP_RATE.txt',
'gpfdist://mdw-3:8081/EX_COP_RATE.txt',
'gpfdist://mdw-4:8081/EX_COP_RATE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_DECL_ALARM_HEAD------------
drop external table IF EXISTS EX_DECL_ALARM_HEAD_INC_EXT;

create external table EX_DECL_ALARM_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO            VARCHAR(16)  ,
  TURN_NO           VARCHAR(16),
  BATCH_NO          VARCHAR(16),
  ENTRY_NO          VARCHAR(18),
  APPL_NAME         VARCHAR(255),
  APPL_CODE         VARCHAR(10),
  SEAL_NO_1         VARCHAR(12),
  SEAL_NO_2         VARCHAR(12),
  EXPORT_PLACE      VARCHAR(4),
  DELIVER_CO        VARCHAR(255),
  DELIVER_PLACE     VARCHAR(5),
  CONTR_NO          VARCHAR(40),
  LICENSE_NO        VARCHAR(20),
  MANUAL_NO         VARCHAR(12),
  RATION_CARD       VARCHAR(12),
  CHK_PROOF_NO      VARCHAR(20),
  TRADE_MODE        VARCHAR(4),
  CONTRACTOR        VARCHAR(255),
  CONTRACTOR_CODE   VARCHAR(10),
  TRAF_WAY          VARCHAR(1),
  CUSTOMS_NO        VARCHAR(13),
  TRANS_NO          VARCHAR(32),
  NATIVE_VOYAGE_NO  VARCHAR(32),
  BILL_NO           VARCHAR(32),
  BILL_COUNT        NUMERIC(9),
  CONTA_NO          VARCHAR(20),
  CONTA_TYPE        VARCHAR(6),
  CONTA_AMOUNT      NUMERIC(19,4),
  CONTA_INI_COUNT   NUMERIC(19,4),
  CONTA_EMPTY_COUNT NUMERIC(19,4),
  VALID_TIME        TIMESTAMP,
  GOODS_NOTE        VARCHAR(255),
  PRE_NAME          VARCHAR(32),
  INPUT_OP_ID       VARCHAR(8),
  INPUT_TIME        TIMESTAMP,
  REC_MARK          VARCHAR(1),
  EXAM_OP_ID        VARCHAR(8),
  EXAM_TIME         TIMESTAMP,
  CHECK_OP_ID       VARCHAR(8),
  CHECK_TIME        TIMESTAMP,
  CHECK_MARK        VARCHAR(1),
  DEL_OP_ID         VARCHAR(8),
  DEL_TIME          TIMESTAMP,
  DEL_REASON        VARCHAR(1),
  DELI_MARK         VARCHAR(1),
  REL_OP_ID         VARCHAR(8),
  REL_TIME          TIMESTAMP,
  PRE_FIEL          VARCHAR(32),
  MFT_VOYAGE_NO     VARCHAR(32),
  MFT_TRAF_NAME     VARCHAR(32),
  MFT_BILL_NO       VARCHAR(32),
  MFT_TRAF_WAY      VARCHAR(1),
  MFT_GOODS_PIECE   NUMERIC(9),
  MFT_GROSS_WEIGHT  NUMERIC(19,4),
  MFT_REC_MARK      VARCHAR(1),
  SEND_PORT         VARCHAR(4),
  RECV_PORT         VARCHAR(4),
  GOODS_CHK_FLAG    VARCHAR(1),
  OTHER_CHK_MARK    VARCHAR(8),
  TRN_MODE          VARCHAR(2),
  ADV_MARK          VARCHAR(1),
  TRANS_PRE_NO      VARCHAR(18),
  TRANS_PRE_MARK    VARCHAR(1),
  STF_DATE          TIMESTAMP,
  STF_NO            VARCHAR(32),
  PRE_FIELD1        VARCHAR(32),
  PRE_FIELD2        VARCHAR(32),
  CA_KEY            VARCHAR(380),
  HASH_SIGN         VARCHAR(380)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_DECL_ALARM_HEAD.txt',
'gpfdist://mdw-2:8081/EX_DECL_ALARM_HEAD.txt',
'gpfdist://mdw-3:8081/EX_DECL_ALARM_HEAD.txt',
'gpfdist://mdw-4:8081/EX_DECL_ALARM_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_DECL_ALARM_LIST------------
drop external table IF EXISTS EX_DECL_ALARM_LIST_INC_EXT;

create external table EX_DECL_ALARM_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO         VARCHAR(16)  ,
  TURN_NO        VARCHAR(16),
  BATCH_NO       VARCHAR(16),
  RECORD_NUMBER  VARCHAR(3) ,
  G_NO           NUMERIC(9)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  PACK_TYPE      VARCHAR(1),
  GOODS_PIECE    NUMERIC(9),
  GOODS_AMOUNT   NUMERIC(19,4),
  GOODS_UNIT     VARCHAR(3),
  GOODS_WEIGHT   NUMERIC(19,4),
  GOODS_PRICE    NUMERIC(19,4),
  GOODS_CURR     VARCHAR(3),
  GOODS_CHK_MARK VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_DECL_ALARM_LIST.txt',
'gpfdist://mdw-2:8081/EX_DECL_ALARM_LIST.txt',
'gpfdist://mdw-3:8081/EX_DECL_ALARM_LIST.txt',
'gpfdist://mdw-4:8081/EX_DECL_ALARM_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_DECL_CUR_HEAD------------
drop external table IF EXISTS EX_DECL_CUR_HEAD_INC_EXT;

create external table EX_DECL_CUR_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO            VARCHAR(16)  ,
  TURN_NO           VARCHAR(16),
  BATCH_NO          VARCHAR(16),
  ENTRY_NO          VARCHAR(18),
  APPL_NAME         VARCHAR(255),
  APPL_CODE         VARCHAR(10),
  SEAL_NO_1         VARCHAR(12),
  SEAL_NO_2         VARCHAR(12),
  EXPORT_PLACE      VARCHAR(4),
  DELIVER_CO        VARCHAR(255),
  DELIVER_PLACE     VARCHAR(5),
  CONTR_NO          VARCHAR(40),
  LICENSE_NO        VARCHAR(20),
  MANUAL_NO         VARCHAR(12),
  RATION_CARD       VARCHAR(12),
  CHK_PROOF_NO      VARCHAR(20),
  TRADE_MODE        VARCHAR(4),
  CONTRACTOR        VARCHAR(255),
  CONTRACTOR_CODE   VARCHAR(10),
  TRAF_WAY          VARCHAR(1),
  CUSTOMS_NO        VARCHAR(13),
  TRANS_NO          VARCHAR(32),
  NATIVE_VOYAGE_NO  VARCHAR(32),
  BILL_NO           VARCHAR(32),
  BILL_COUNT        NUMERIC(9) ,
  CONTA_NO          VARCHAR(20),
  CONTA_TYPE        VARCHAR(6),
  CONTA_AMOUNT      NUMERIC(19,4) ,
  CONTA_INI_COUNT   NUMERIC(19,4) ,
  CONTA_EMPTY_COUNT NUMERIC(19,4) ,
  VALID_TIME        TIMESTAMP,
  GOODS_NOTE        VARCHAR(255),
  PRE_NAME          VARCHAR(32),
  INPUT_OP_ID       VARCHAR(8),
  INPUT_TIME        TIMESTAMP,
  REC_MARK          VARCHAR(1),
  EXAM_OP_ID        VARCHAR(8),
  EXAM_TIME         TIMESTAMP,
  CHECK_OP_ID       VARCHAR(8),
  CHECK_TIME        TIMESTAMP,
  CHECK_MARK        VARCHAR(1),
  DEL_OP_ID         VARCHAR(8),
  DEL_TIME          TIMESTAMP,
  DEL_REASON        VARCHAR(1),
  DELI_MARK         VARCHAR(1),
  REL_OP_ID         VARCHAR(8),
  REL_TIME          TIMESTAMP,
  PRE_FIEL          VARCHAR(32),
  MFT_VOYAGE_NO     VARCHAR(32),
  MFT_TRAF_NAME     VARCHAR(32),
  MFT_BILL_NO       VARCHAR(32),
  MFT_TRAF_WAY      VARCHAR(1),
  MFT_GOODS_PIECE   NUMERIC(9) ,
  MFT_GROSS_WEIGHT  NUMERIC(19,4) ,
  MFT_REC_MARK      VARCHAR(1),
  SEND_PORT         VARCHAR(4),
  RECV_PORT         VARCHAR(4),
  GOODS_CHK_FLAG    VARCHAR(1),
  OTHER_CHK_MARK    VARCHAR(8),
  TRN_MODE          VARCHAR(2),
  ADV_MARK          VARCHAR(1),
  TRANS_PRE_NO      VARCHAR(18),
  TRANS_PRE_MARK    VARCHAR(1),
  STF_DATE          TIMESTAMP,
  STF_NO            VARCHAR(32),
  PRE_FIELD1        VARCHAR(32),
  PRE_FIELD2        VARCHAR(32),
  CA_KEY            VARCHAR(380),
  HASH_SIGN         VARCHAR(380),
  ESEAL_KEY         VARCHAR(30),
  ESEAL_FLAG        VARCHAR(1),
  DEL_REASON_DETAIL VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_DECL_CUR_HEAD.txt',
'gpfdist://mdw-2:8081/EX_DECL_CUR_HEAD.txt',
'gpfdist://mdw-3:8081/EX_DECL_CUR_HEAD.txt',
'gpfdist://mdw-4:8081/EX_DECL_CUR_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_DECL_CUR_LIST------------
drop external table IF EXISTS EX_DECL_CUR_LIST_INC_EXT;

create external table EX_DECL_CUR_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO         VARCHAR(16)  ,
  TURN_NO        VARCHAR(16),
  BATCH_NO       VARCHAR(16),
  RECORD_NUMBER  VARCHAR(3) ,
  G_NO           NUMERIC(9) ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  PACK_TYPE      VARCHAR(1),
  GOODS_PIECE    NUMERIC(9) ,
  GOODS_AMOUNT   NUMERIC(19,4) ,
  GOODS_UNIT     VARCHAR(3),
  GOODS_WEIGHT   NUMERIC(19,4) ,
  GOODS_PRICE    NUMERIC(19,4) ,
  GOODS_CURR     VARCHAR(3),
  GOODS_CHK_MARK VARCHAR(4),
  SEND_PORT      VARCHAR(4),
  RECV_PORT      VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_DECL_CUR_LIST.txt',
'gpfdist://mdw-2:8081/EX_DECL_CUR_LIST.txt',
'gpfdist://mdw-3:8081/EX_DECL_CUR_LIST.txt',
'gpfdist://mdw-4:8081/EX_DECL_CUR_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_DECL_HIS_HEAD------------
drop external table IF EXISTS EX_DECL_HIS_HEAD_INC_EXT;

create external table EX_DECL_HIS_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO            VARCHAR(16)  ,
  TURN_NO           VARCHAR(16),
  BATCH_NO          VARCHAR(16),
  ENTRY_NO          VARCHAR(18),
  APPL_NAME         VARCHAR(255),
  APPL_CODE         VARCHAR(10),
  SEAL_NO_1         VARCHAR(12),
  SEAL_NO_2         VARCHAR(12),
  EXPORT_PLACE      VARCHAR(4),
  DELIVER_CO        VARCHAR(255),
  DELIVER_PLACE     VARCHAR(5),
  CONTR_NO          VARCHAR(40),
  LICENSE_NO        VARCHAR(20),
  MANUAL_NO         VARCHAR(12),
  RATION_CARD       VARCHAR(12),
  CHK_PROOF_NO      VARCHAR(20),
  TRADE_MODE        VARCHAR(4),
  CONTRACTOR        VARCHAR(255),
  CONTRACTOR_CODE   VARCHAR(10),
  TRAF_WAY          VARCHAR(1),
  CUSTOMS_NO        VARCHAR(13),
  TRANS_NO          VARCHAR(32),
  NATIVE_VOYAGE_NO  VARCHAR(32),
  BILL_NO           VARCHAR(32),
  BILL_COUNT        NUMERIC(9),
  CONTA_NO          VARCHAR(20),
  CONTA_TYPE        VARCHAR(6),
  CONTA_AMOUNT      NUMERIC(19,4),
  CONTA_INI_COUNT   NUMERIC(19,4),
  CONTA_EMPTY_COUNT NUMERIC(19,4),
  VALID_TIME        TIMESTAMP,
  GOODS_NOTE        VARCHAR(255),
  PRE_NAME          VARCHAR(32),
  INPUT_OP_ID       VARCHAR(8),
  INPUT_TIME        TIMESTAMP,
  REC_MARK          VARCHAR(1),
  EXAM_OP_ID        VARCHAR(8),
  EXAM_TIME         TIMESTAMP,
  CHECK_OP_ID       VARCHAR(8),
  CHECK_TIME        TIMESTAMP,
  CHECK_MARK        VARCHAR(1),
  DEL_OP_ID         VARCHAR(8),
  DEL_TIME          TIMESTAMP,
  DEL_REASON        VARCHAR(1),
  DELI_MARK         VARCHAR(1),
  REL_OP_ID         VARCHAR(8),
  REL_TIME          TIMESTAMP,
  PRE_FIEL          VARCHAR(32),
  MFT_VOYAGE_NO     VARCHAR(32),
  MFT_TRAF_NAME     VARCHAR(32),
  MFT_BILL_NO       VARCHAR(32),
  MFT_TRAF_WAY      VARCHAR(1),
  MFT_GOODS_PIECE   NUMERIC(9),
  MFT_GROSS_WEIGHT  NUMERIC(19,4),
  MFT_REC_MARK      VARCHAR(1),
  SEND_PORT         VARCHAR(4),
  RECV_PORT         VARCHAR(4),
  GOODS_CHK_FLAG    VARCHAR(1),
  OTHER_CHK_MARK    VARCHAR(8),
  TRN_MODE          VARCHAR(2),
  ADV_MARK          VARCHAR(1),
  TRANS_PRE_NO      VARCHAR(18),
  TRANS_PRE_MARK    VARCHAR(1),
  STF_DATE          TIMESTAMP,
  STF_NO            VARCHAR(32),
  PRE_FIELD1        VARCHAR(32),
  PRE_FIELD2        VARCHAR(32),
  CA_KEY            VARCHAR(380),
  HASH_SIGN         VARCHAR(380)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_DECL_HIS_HEAD.txt',
'gpfdist://mdw-2:8081/EX_DECL_HIS_HEAD.txt',
'gpfdist://mdw-3:8081/EX_DECL_HIS_HEAD.txt',
'gpfdist://mdw-4:8081/EX_DECL_HIS_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_DECL_HIS_LIST------------
drop external table IF EXISTS EX_DECL_HIS_LIST_INC_EXT;

create external table EX_DECL_HIS_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO         VARCHAR(16)  ,
  TURN_NO        VARCHAR(16),
  BATCH_NO       VARCHAR(16),
  RECORD_NUMBER  VARCHAR(3) ,
  G_NO           NUMERIC(9)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  PACK_TYPE      VARCHAR(1),
  GOODS_PIECE    NUMERIC(9),
  GOODS_AMOUNT   NUMERIC(19,4),
  GOODS_UNIT     VARCHAR(3),
  GOODS_WEIGHT   NUMERIC(19,4),
  GOODS_PRICE    NUMERIC(19,4),
  GOODS_CURR     VARCHAR(3),
  GOODS_CHK_MARK VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_DECL_HIS_LIST.txt',
'gpfdist://mdw-2:8081/EX_DECL_HIS_LIST.txt',
'gpfdist://mdw-3:8081/EX_DECL_HIS_LIST.txt',
'gpfdist://mdw-4:8081/EX_DECL_HIS_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_ELE_HEAD------------
drop external table IF EXISTS EX_ELE_HEAD_INC_EXT;

create external table EX_ELE_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LICENSE_NO          VARCHAR(20)  ,
  TRADE_CODE          VARCHAR(13),
  TRADE_NAME          VARCHAR(255),
  OWNER_NAME          VARCHAR(255),
  LIC_ALLOW_DATE      TIMESTAMP,
  LIC_SIGN_DATE       TIMESTAMP,
  TRADE_COUNTRY       VARCHAR(3),
  ORIGIN_COUNTRY      VARCHAR(3),
  CONTR_NO            VARCHAR(20),
  IE_PORT1            VARCHAR(4),
  IE_PORT2            VARCHAR(4),
  IE_PORT3            VARCHAR(4),
  TRADE_MODE          VARCHAR(4),
  TRADE_MODE_NAME     VARCHAR(32),
  CODE_T_S            VARCHAR(11),
  G_NAME              VARCHAR(255),
  UNIT_NAME           VARCHAR(32),
  LIC_QTY_TOTAL       NUMERIC(19,4),
  LIC_USD_PRICE_TOTAL NUMERIC(19),
  LIC_MARK            VARCHAR(1),
  SEND_DATE           TIMESTAMP,
  RECEIVE_DATE        TIMESTAMP,
  DELETE_DATE         TIMESTAMP,
  LIC_ITEMS_NO        NUMERIC(9),
  CHECK_MARK          VARCHAR(1),
  SECURITY_ID         VARCHAR(16),
  REUSE1              NUMERIC(9),
  REUSE2              VARCHAR(10),
  NOTE_S              VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_ELE_HEAD.txt',
'gpfdist://mdw-2:8081/EX_ELE_HEAD.txt',
'gpfdist://mdw-3:8081/EX_ELE_HEAD.txt',
'gpfdist://mdw-4:8081/EX_ELE_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_ELE_LIST------------
drop external table IF EXISTS EX_ELE_LIST_INC_EXT;

create external table EX_ELE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LICENSE_NO    VARCHAR(20)  ,
  L_G_NO        NUMERIC(9)  ,
  G_MODEL       VARCHAR(255),
  LIC_QTY       NUMERIC(19,4),
  LIC_USD_PRICE NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_ELE_LIST.txt',
'gpfdist://mdw-2:8081/EX_ELE_LIST.txt',
'gpfdist://mdw-3:8081/EX_ELE_LIST.txt',
'gpfdist://mdw-4:8081/EX_ELE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_EXAM_JOU------------
drop external table IF EXISTS EX_EXAM_JOU_INC_EXT;

create external table EX_EXAM_JOU_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID        VARCHAR(18)  ,
  G_NO            NUMERIC(9)  ,
  LICENSE_NO      VARCHAR(20),
  L_G_NO          NUMERIC(9),
  EXE_MARK        VARCHAR(1),
  ENTRY_MARK      VARCHAR(1),
  TRADE_CO        VARCHAR(10),
  TRADE_NAME      VARCHAR(255),
  OWNER_NAME      VARCHAR(255),
  TRADE_COUNTRY   VARCHAR(3),
  ORIGIN_COUNTRY  VARCHAR(3),
  CONTR_NO        VARCHAR(32),
  TRAF_NAME       VARCHAR(32),
  TRADE_MODE      VARCHAR(4),
  TRADE_MODE_NAME VARCHAR(32),
  I_E_DATE        TIMESTAMP,
  PRE_IMP_DATE    TIMESTAMP,
  PRE_IMP_TIME    TIMESTAMP,
  PRE_IMP_ER      VARCHAR(8),
  MOD_DEL_DATE    TIMESTAMP,
  MOD_DEL_TIME    TIMESTAMP,
  MOD_DEL_ER      VARCHAR(8),
  I_E_PORT        VARCHAR(4),
  IMPLETE_DATE    TIMESTAMP,
  IMPLETE_TIME    TIMESTAMP,
  IMPLETE_ER      VARCHAR(8),
  CODE_TS         VARCHAR(16),
  G_NAME          VARCHAR(255),
  G_MODEL         VARCHAR(255),
  SUB_QTY_1       NUMERIC(19,4),
  SUB_UNIT_NAME   VARCHAR(32),
  SUB_USD_PRICE   NUMERIC(19),
  QTY1            NUMERIC(19,4),
  UNIT_NAME       VARCHAR(32),
  FEED_DATE       TIMESTAMP,
  FEED_MARK       VARCHAR(1),
  M_D_MARK        VARCHAR(1),
  M_COUNT         NUMERIC(9),
  RTX_MARK        VARCHAR(1),
  NOTE_S          VARCHAR(255),
  SECURITY_ID     VARCHAR(16),
  REUSE1          NUMERIC(9),
  REUSE2          VARCHAR(10)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_EXAM_JOU.txt',
'gpfdist://mdw-2:8081/EX_EXAM_JOU.txt',
'gpfdist://mdw-3:8081/EX_EXAM_JOU.txt',
'gpfdist://mdw-4:8081/EX_EXAM_JOU.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_EXAM_MANA_HEAD------------
drop external table IF EXISTS EX_EXAM_MANA_HEAD_INC_EXT;

create external table EX_EXAM_MANA_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LICENSE_NO    VARCHAR(20)  ,
  FACT_AQTY     NUMERIC(19,4),
  FACT_AUSED    NUMERIC(19),
  FACT_MARK     VARCHAR(1),
  EXE_MARK      VARCHAR(1),
  DELAY_MARK    VARCHAR(1),
  CLOSE_MARK    VARCHAR(1),
  CLOSE_DATE    TIMESTAMP,
  CLOSE_TIME    TIMESTAMP,
  CLOSE_ER      VARCHAR(8),
  EXE_PORT      VARCHAR(4),
  TRAN_PORT     VARCHAR(4),
  TRAN_DATE     TIMESTAMP,
  TRAN_TIME     TIMESTAMP,
  CHECK_MARK    VARCHAR(1),
  CHECK_DATE    TIMESTAMP,
  CHECK_TIME    TIMESTAMP,
  CHECK_ER      VARCHAR(8),
  SEND_GEN_DATE TIMESTAMP,
  SEND_FOR_DATE TIMESTAMP,
  SOURCE_PORT   VARCHAR(4),
  NOTE_S        VARCHAR(255),
  OVER_ALLOW    VARCHAR(3),
  SECURITY_ID   VARCHAR(16),
  REUSE1        NUMERIC(9),
  REUSE2        VARCHAR(10)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_EXAM_MANA_HEAD.txt',
'gpfdist://mdw-2:8081/EX_EXAM_MANA_HEAD.txt',
'gpfdist://mdw-3:8081/EX_EXAM_MANA_HEAD.txt',
'gpfdist://mdw-4:8081/EX_EXAM_MANA_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_EXAM_MANA_LIST------------
drop external table IF EXISTS EX_EXAM_MANA_LIST_INC_EXT;

create external table EX_EXAM_MANA_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LICENSE_NO   VARCHAR(20)  ,
  L_G_NO       NUMERIC(9)  ,
  L_FACT_AQTY  NUMERIC(19,4),
  L_FACT_AUSED NUMERIC(19),
  L_REUSE1     NUMERIC(9),
  L_REUSE2     VARCHAR(10)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_EXAM_MANA_LIST.txt',
'gpfdist://mdw-2:8081/EX_EXAM_MANA_LIST.txt',
'gpfdist://mdw-3:8081/EX_EXAM_MANA_LIST.txt',
'gpfdist://mdw-4:8081/EX_EXAM_MANA_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_FASCICLE_LIST------------
drop external table IF EXISTS EX_FASCICLE_LIST_INC_EXT;

create external table EX_FASCICLE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12),
  FASCICLE_NO VARCHAR(12)  ,
  CONTR_ITEM  NUMERIC(19)  ,
  APPR_QTY    NUMERIC(19,4),
  FACT_QTY    NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_FASCICLE_LIST.txt',
'gpfdist://mdw-2:8081/EX_FASCICLE_LIST.txt',
'gpfdist://mdw-3:8081/EX_FASCICLE_LIST.txt',
'gpfdist://mdw-4:8081/EX_FASCICLE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_LIC_CODE_TS------------
drop external table IF EXISTS EX_LIC_CODE_TS_INC_EXT;

create external table EX_LIC_CODE_TS_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LICENSE_NO   VARCHAR(20)  ,
  CODE_T_S     VARCHAR(20),
  BAD_CODE_T_S VARCHAR(20)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_LIC_CODE_TS.txt',
'gpfdist://mdw-2:8081/EX_LIC_CODE_TS.txt',
'gpfdist://mdw-3:8081/EX_LIC_CODE_TS.txt',
'gpfdist://mdw-4:8081/EX_LIC_CODE_TS.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_TRAN_JOU------------
drop external table IF EXISTS EX_TRAN_JOU_INC_EXT;

create external table EX_TRAN_JOU_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  I_E_PORT      VARCHAR(4),
  ENTRY_ID      VARCHAR(18)  ,
  G_NO          NUMERIC(9)  ,
  ENTRY_LIC_NO  VARCHAR(20),
  CODE_TS       VARCHAR(16),
  G_NAME        VARCHAR(255),
  G_MODEL       VARCHAR(255),
  QTY_1         NUMERIC(19,4),
  UNIT_NAME     VARCHAR(32),
  USD_PRICE     NUMERIC(19),
  REL_DATE      TIMESTAMP,
  REL_TIME      TIMESTAMP,
  REL_ER        VARCHAR(8),
  AFTER_MARK    VARCHAR(1),
  SEND_GEN_DATE TIMESTAMP,
  NOTE_S        VARCHAR(255),
  SECURITY_ID   VARCHAR(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_TRAN_JOU.txt',
'gpfdist://mdw-2:8081/EX_TRAN_JOU.txt',
'gpfdist://mdw-3:8081/EX_TRAN_JOU.txt',
'gpfdist://mdw-4:8081/EX_TRAN_JOU.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_TRANS_ALARM_CONTA_REL------------
drop external table IF EXISTS EX_TRANS_ALARM_CONTA_REL_INC_EXT;

create external table EX_TRANS_ALARM_CONTA_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO           VARCHAR(16)  ,
  RECORD_NUMBER    VARCHAR(3) ,
  CONTA_NO         VARCHAR(11)  ,
  TRANS_NAME       VARCHAR(32),
  TRANS_WEIGHT     NUMERIC(19,4),
  CONTA_MODEL      VARCHAR(2),
  SEAL_NO          VARCHAR(10),
  SEAL_NUM         NUMERIC(9),
  CONTA_CHECK_MARK VARCHAR(1),
  CONTA_CHK_ER     VARCHAR(8),
  CONTA_CHK_TIME   TIMESTAMP,
  EXAM_FLAG        VARCHAR(6),
  CONTA1           VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_TRANS_ALARM_CONTA_REL.txt',
'gpfdist://mdw-2:8081/EX_TRANS_ALARM_CONTA_REL.txt',
'gpfdist://mdw-3:8081/EX_TRANS_ALARM_CONTA_REL.txt',
'gpfdist://mdw-4:8081/EX_TRANS_ALARM_CONTA_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_TRANS_ALARM_GOODS_CONTA_REL------------
drop external table IF EXISTS EX_TRANS_ALARM_GOODS_CONTA_REL_INC_EXT;

create external table EX_TRANS_ALARM_GOODS_CONTA_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO             VARCHAR(16)  ,
  RECORD_NUMBER      VARCHAR(3) ,
  G_NO               NUMERIC(9)  ,
  CONTA_NO           VARCHAR(11)  ,
  CONTA_GOODS_COUNT  NUMERIC(9),
  CONTA_GOODS_WEIGHT NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_TRANS_ALARM_GOODS_CONTA_REL.txt',
'gpfdist://mdw-2:8081/EX_TRANS_ALARM_GOODS_CONTA_REL.txt',
'gpfdist://mdw-3:8081/EX_TRANS_ALARM_GOODS_CONTA_REL.txt',
'gpfdist://mdw-4:8081/EX_TRANS_ALARM_GOODS_CONTA_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_TRANS_ALARM_LIST_REL------------
drop external table IF EXISTS EX_TRANS_ALARM_LIST_REL_INC_EXT;

create external table EX_TRANS_ALARM_LIST_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO        VARCHAR(16)  ,
  RECORD_NUMBER VARCHAR(3)  ,
  TRAF_MODE     VARCHAR(1),
  SHIP_ID       VARCHAR(32),
  SHIP_NAME_EN  VARCHAR(255),
  VOYAGE_NO     VARCHAR(32),
  BILL_NO       VARCHAR(32),
  I_E_DATE      TIMESTAMP,
  ENTRY_NO      VARCHAR(18),
  BIND_FLAG     VARCHAR(1),
  REC_FLAG      VARCHAR(1),
  PACK_NO       NUMERIC(9),
  GROSS_WT      NUMERIC(19,4),
  GOODS_COUNT   NUMERIC(9),
  CONTA_C       NUMERIC(9),
  OWNER_NAME    VARCHAR(255),
  EX_CHECK_FLAG VARCHAR(1),
  EX_CHECK_TIME TIMESTAMP,
  REAL_PACK_NO  NUMERIC(9),
  REAL_GROSS_WT NUMERIC(19,4),
  NOTE          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_TRANS_ALARM_LIST_REL.txt',
'gpfdist://mdw-2:8081/EX_TRANS_ALARM_LIST_REL.txt',
'gpfdist://mdw-3:8081/EX_TRANS_ALARM_LIST_REL.txt',
'gpfdist://mdw-4:8081/EX_TRANS_ALARM_LIST_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_TRANS_CONTA_REL------------
drop external table IF EXISTS EX_TRANS_CONTA_REL_INC_EXT;

create external table EX_TRANS_CONTA_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO           VARCHAR(16)  ,
  RECORD_NUMBER    VARCHAR(3) ,
  CONTA_NO         VARCHAR(11)  ,
  TRANS_NAME       VARCHAR(32),
  TRANS_WEIGHT     NUMERIC(19,4) ,
  CONTA_MODEL      VARCHAR(2),
  SEAL_NO          VARCHAR(10),
  SEAL_NUM         NUMERIC(9) ,
  CONTA_CHECK_MARK VARCHAR(1),
  CONTA_CHK_ER     VARCHAR(8),
  CONTA_CHK_TIME   TIMESTAMP,
  EXAM_FLAG        VARCHAR(6),
  CONTA1           VARCHAR(32),
  SEND_PORT        VARCHAR(4),
  RECV_PORT        VARCHAR(4),
  ESEAL_ID         VARCHAR(128)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_TRANS_CONTA_REL.txt',
'gpfdist://mdw-2:8081/EX_TRANS_CONTA_REL.txt',
'gpfdist://mdw-3:8081/EX_TRANS_CONTA_REL.txt',
'gpfdist://mdw-4:8081/EX_TRANS_CONTA_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_TRANS_GOODS_CONTA_REL------------
drop external table IF EXISTS EX_TRANS_GOODS_CONTA_REL_INC_EXT;

create external table EX_TRANS_GOODS_CONTA_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO             VARCHAR(16)  ,
  RECORD_NUMBER      VARCHAR(3) ,
  G_NO               NUMERIC(9) ,
  CONTA_NO           VARCHAR(11)  ,
  CONTA_GOODS_COUNT  NUMERIC(9) ,
  CONTA_GOODS_WEIGHT NUMERIC(19,4) ,
  SEND_PORT          VARCHAR(4),
  RECV_PORT          VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_TRANS_GOODS_CONTA_REL.txt',
'gpfdist://mdw-2:8081/EX_TRANS_GOODS_CONTA_REL.txt',
'gpfdist://mdw-3:8081/EX_TRANS_GOODS_CONTA_REL.txt',
'gpfdist://mdw-4:8081/EX_TRANS_GOODS_CONTA_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_TRANS_HIS_CONTA_REL------------
drop external table IF EXISTS EX_TRANS_HIS_CONTA_REL_INC_EXT;

create external table EX_TRANS_HIS_CONTA_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO           VARCHAR(16)  ,
  RECORD_NUMBER    VARCHAR(3) ,
  CONTA_NO         VARCHAR(11)  ,
  TRANS_NAME       VARCHAR(32),
  TRANS_WEIGHT     NUMERIC(19,4),
  CONTA_MODEL      VARCHAR(2),
  SEAL_NO          VARCHAR(10),
  SEAL_NUM         NUMERIC(9),
  CONTA_CHECK_MARK VARCHAR(1),
  CONTA_CHK_ER     VARCHAR(8),
  CONTA_CHK_TIME   TIMESTAMP,
  EXAM_FLAG        VARCHAR(6),
  CONTA1           VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_TRANS_HIS_CONTA_REL.txt',
'gpfdist://mdw-2:8081/EX_TRANS_HIS_CONTA_REL.txt',
'gpfdist://mdw-3:8081/EX_TRANS_HIS_CONTA_REL.txt',
'gpfdist://mdw-4:8081/EX_TRANS_HIS_CONTA_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_TRANS_HIS_GOODS_CONTA_REL------------
drop external table IF EXISTS EX_TRANS_HIS_GOODS_CONTA_REL_INC_EXT;

create external table EX_TRANS_HIS_GOODS_CONTA_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO             VARCHAR(16)  ,
  RECORD_NUMBER      VARCHAR(3) ,
  G_NO               NUMERIC(9)  ,
  CONTA_NO           VARCHAR(11)  ,
  CONTA_GOODS_COUNT  NUMERIC(9),
  CONTA_GOODS_WEIGHT NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_TRANS_HIS_GOODS_CONTA_REL.txt',
'gpfdist://mdw-2:8081/EX_TRANS_HIS_GOODS_CONTA_REL.txt',
'gpfdist://mdw-3:8081/EX_TRANS_HIS_GOODS_CONTA_REL.txt',
'gpfdist://mdw-4:8081/EX_TRANS_HIS_GOODS_CONTA_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_TRANS_HIS_LIST_REL------------
drop external table IF EXISTS EX_TRANS_HIS_LIST_REL_INC_EXT;

create external table EX_TRANS_HIS_LIST_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO        VARCHAR(16)  ,
  RECORD_NUMBER VARCHAR(3)  ,
  TRAF_MODE     VARCHAR(1),
  SHIP_ID       VARCHAR(32),
  SHIP_NAME_EN  VARCHAR(255),
  VOYAGE_NO     VARCHAR(32),
  BILL_NO       VARCHAR(32),
  I_E_DATE      TIMESTAMP,
  ENTRY_NO      VARCHAR(18),
  BIND_FLAG     VARCHAR(1),
  REC_FLAG      VARCHAR(1),
  PACK_NO       NUMERIC(9),
  GROSS_WT      NUMERIC(19,4),
  GOODS_COUNT   NUMERIC(9),
  CONTA_C       NUMERIC(9),
  OWNER_NAME    VARCHAR(255),
  EX_CHECK_FLAG VARCHAR(1),
  EX_CHECK_TIME TIMESTAMP,
  REAL_PACK_NO  NUMERIC(9),
  REAL_GROSS_WT NUMERIC(19,4),
  NOTE          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_TRANS_HIS_LIST_REL.txt',
'gpfdist://mdw-2:8081/EX_TRANS_HIS_LIST_REL.txt',
'gpfdist://mdw-3:8081/EX_TRANS_HIS_LIST_REL.txt',
'gpfdist://mdw-4:8081/EX_TRANS_HIS_LIST_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_TRANS_LIST_REL------------
drop external table IF EXISTS EX_TRANS_LIST_REL_INC_EXT;

create external table EX_TRANS_LIST_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO        VARCHAR(16)  ,
  RECORD_NUMBER VARCHAR(3)  ,
  TRAF_MODE     VARCHAR(1),
  SHIP_ID       VARCHAR(32),
  SHIP_NAME_EN  VARCHAR(255),
  VOYAGE_NO     VARCHAR(32),
  BILL_NO       VARCHAR(32),
  I_E_DATE      TIMESTAMP,
  ENTRY_NO      VARCHAR(18),
  BIND_FLAG     VARCHAR(1),
  REC_FLAG      VARCHAR(1),
  PACK_NO       NUMERIC(9) ,
  GROSS_WT      NUMERIC(19,4) ,
  GOODS_COUNT   NUMERIC(9) ,
  CONTA_C       NUMERIC(9) ,
  OWNER_NAME    VARCHAR(255),
  EX_CHECK_FLAG VARCHAR(1),
  EX_CHECK_TIME TIMESTAMP,
  REAL_PACK_NO  NUMERIC(9) ,
  REAL_GROSS_WT NUMERIC(19,4) ,
  NOTE          VARCHAR(255),
  SEND_PORT     VARCHAR(4),
  RECV_PORT     VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_TRANS_LIST_REL.txt',
'gpfdist://mdw-2:8081/EX_TRANS_LIST_REL.txt',
'gpfdist://mdw-3:8081/EX_TRANS_LIST_REL.txt',
'gpfdist://mdw-4:8081/EX_TRANS_LIST_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_TRN_ARRIVAL_CONTA------------
drop external table IF EXISTS EX_TRN_ARRIVAL_CONTA_INC_EXT;

create external table EX_TRN_ARRIVAL_CONTA_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ARRIVE_NO    VARCHAR(18)  ,
  CONTA_ID     VARCHAR(64)  ,
  BILL_NO      VARCHAR(32),
  CUSTOMS_CODE VARCHAR(4),
  TRAF_MODE    VARCHAR(1),
  TRAF_NAME    VARCHAR(255),
  VOYAGE_NO    VARCHAR(32),
  TRAF_WAY     VARCHAR(1),
  PACK_NO      NUMERIC(19),
  GROSS_WT     NUMERIC(19,4),
  UNLOAD_CODE  VARCHAR(32),
  ARRIVE_TIME  TIMESTAMP,
  CONTA_TYPE   VARCHAR(4),
  TRN_MODE     VARCHAR(1),
  NOTES        VARCHAR(255),
  CREATE_DATE  TIMESTAMP,
  ENTRY_ID     VARCHAR(18),
  CHK_ER       VARCHAR(8),
  CHK_DATE     TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_TRN_ARRIVAL_CONTA.txt',
'gpfdist://mdw-2:8081/EX_TRN_ARRIVAL_CONTA.txt',
'gpfdist://mdw-3:8081/EX_TRN_ARRIVAL_CONTA.txt',
'gpfdist://mdw-4:8081/EX_TRN_ARRIVAL_CONTA.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_TRN_CONTA_ENTRY_ARV------------
drop external table IF EXISTS EX_TRN_CONTA_ENTRY_ARV_INC_EXT;

create external table EX_TRN_CONTA_ENTRY_ARV_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID     VARCHAR(18)  ,
  CONTA_ID     VARCHAR(64)  ,
  CUSTOMS_CODE VARCHAR(4),
  TRAF_MODE    VARCHAR(1),
  TRAF_NAME    VARCHAR(255),
  VOYAGE_NO    VARCHAR(32),
  BILL_NO      VARCHAR(32),
  PACK_NO      NUMERIC(19),
  GROSS_WT     NUMERIC(19,4),
  ARV_FLAG     VARCHAR(1),
  TRN_MODE     VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_TRN_CONTA_ENTRY_ARV.txt',
'gpfdist://mdw-2:8081/EX_TRN_CONTA_ENTRY_ARV.txt',
'gpfdist://mdw-3:8081/EX_TRN_CONTA_ENTRY_ARV.txt',
'gpfdist://mdw-4:8081/EX_TRN_CONTA_ENTRY_ARV.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EX_TRN_CONTA_ENTRY_CHK------------
drop external table IF EXISTS EX_TRN_CONTA_ENTRY_CHK_INC_EXT;

create external table EX_TRN_CONTA_ENTRY_CHK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID  VARCHAR(18)  ,
  ARRIVE_NO VARCHAR(18)  ,
  CONTA_ID  VARCHAR(64)  ,
  CHK_ER    VARCHAR(8),
  CHK_DATE  TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/EX_TRN_CONTA_ENTRY_CHK.txt',
'gpfdist://mdw-2:8081/EX_TRN_CONTA_ENTRY_CHK.txt',
'gpfdist://mdw-3:8081/EX_TRN_CONTA_ENTRY_CHK.txt',
'gpfdist://mdw-4:8081/EX_TRN_CONTA_ENTRY_CHK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EXA_APPL_CLOSE------------
drop external table IF EXISTS EXA_APPL_CLOSE_INC_EXT;

create external table EXA_APPL_CLOSE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO  VARCHAR(12)  ,
  CONTR_ITEM NUMERIC(19)  ,
  CODE_TS    VARCHAR(16),
  G_NAME     VARCHAR(50),
  G_MODEL    VARCHAR(50),
  G_QTY      NUMERIC(19,4),
  DECL_PRICE NUMERIC(19,4),
  G_AMT      NUMERIC(19,5),
  PROC_MODE  VARCHAR(1),
  BOOK_NO    VARCHAR(18)
)
LOCATION( 
'gpfdist://mdw-1:8081/EXA_APPL_CLOSE.txt',
'gpfdist://mdw-2:8081/EXA_APPL_CLOSE.txt',
'gpfdist://mdw-3:8081/EXA_APPL_CLOSE.txt',
'gpfdist://mdw-4:8081/EXA_APPL_CLOSE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EXAM_CONTA_END_LOG------------
drop external table IF EXISTS EXAM_CONTA_END_LOG_INC_EXT;

create external table EXAM_CONTA_END_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EXAM_REC_ID VARCHAR(18)  ,
  RSK_NO      VARCHAR(15),
  END_ER      VARCHAR(8),
  END_TIME    TIMESTAMP  ,
  END_REASON  VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EXAM_CONTA_END_LOG.txt',
'gpfdist://mdw-2:8081/EXAM_CONTA_END_LOG.txt',
'gpfdist://mdw-3:8081/EXAM_CONTA_END_LOG.txt',
'gpfdist://mdw-4:8081/EXAM_CONTA_END_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EXAM_CONTA_HEAD------------
drop external table IF EXISTS EXAM_CONTA_HEAD_INC_EXT;

create external table EXAM_CONTA_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EXAM_REC_ID VARCHAR(18)  ,
  ENTRY_ID    VARCHAR(18)  ,
  RSK_NO      VARCHAR(15),
  CREATE_ER   VARCHAR(8),
  CREATE_TIME TIMESTAMP,
  EXAM_B_TIME TIMESTAMP,
  EXAM_E_TIME TIMESTAMP,
  EXAM_ER1    VARCHAR(8),
  EXAM_ER2    VARCHAR(8),
  RESULT_ER   VARCHAR(8),
  RESULT_TIME TIMESTAMP,
  PRINT_ER    VARCHAR(8),
  PRINT_TIME  TIMESTAMP,
  END_TYPE    VARCHAR(1),
  END_ER      VARCHAR(8),
  END_TIME    TIMESTAMP,
  END_REASON  VARCHAR(1),
  NOTE_S      VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EXAM_CONTA_HEAD.txt',
'gpfdist://mdw-2:8081/EXAM_CONTA_HEAD.txt',
'gpfdist://mdw-3:8081/EXAM_CONTA_HEAD.txt',
'gpfdist://mdw-4:8081/EXAM_CONTA_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EXAM_CONTA_LIST------------
drop external table IF EXISTS EXAM_CONTA_LIST_INC_EXT;

create external table EXAM_CONTA_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EXAM_REC_ID  VARCHAR(18)  ,
  CONTA_ID     VARCHAR(32)  ,
  HOLLOW_AREA1 VARCHAR(2),
  HOLLOW_AREA2 VARCHAR(2),
  CHK_SEAL     VARCHAR(1),
  CHK_TRUNK    VARCHAR(1),
  CHK_CONTA_ID VARCHAR(1),
  EXAM_RESULT  VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/EXAM_CONTA_LIST.txt',
'gpfdist://mdw-2:8081/EXAM_CONTA_LIST.txt',
'gpfdist://mdw-3:8081/EXAM_CONTA_LIST.txt',
'gpfdist://mdw-4:8081/EXAM_CONTA_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EXC_ELE------------
drop external table IF EXISTS EXC_ELE_INC_EXT;

create external table EXC_ELE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  SEQ_NO       VARCHAR(18),
  HXD_NO       VARCHAR(32)  ,
  WGJ_CODE     VARCHAR(6),
  ENT_CODE     VARCHAR(9),
  TRADE_CO     VARCHAR(10),
  WGJ_STATE    VARCHAR(1),
  REASON_CODE  VARCHAR(255),
  PROVIDE_DATE TIMESTAMP,
  PROVIDE_NAME VARCHAR(32),
  OPER_DATE    TIMESTAMP,
  OPER_NAME    VARCHAR(32),
  HG_STATE     VARCHAR(1),
  HG_OPER_DATE TIMESTAMP,
  HG_OPER_NAME VARCHAR(32),
  LOSS_STATE   VARCHAR(1),
  LOSS_DATE    TIMESTAMP,
  LOSS_NAME    VARCHAR(32),
  PORT_CODE    VARCHAR(4),
  PORT_DATE    TIMESTAMP,
  PORT_NAME    VARCHAR(32),
  DEAL_STATE   VARCHAR(1),
  DEAL_DATE    TIMESTAMP,
  DEAL_NAME    VARCHAR(32),
  PAPER_BILL   VARCHAR(1),
  RECV_DATE    TIMESTAMP,
  CANCEL_DATE  TIMESTAMP,
  ENTRY_ID     VARCHAR(18),
  CUS_CODE     VARCHAR(4),
  DECL_DATE    TIMESTAMP,
  CHK_MARK     VARCHAR(1),
  DATA_SIGN    VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EXC_ELE.txt',
'gpfdist://mdw-2:8081/EXC_ELE.txt',
'gpfdist://mdw-3:8081/EXC_ELE.txt',
'gpfdist://mdw-4:8081/EXC_ELE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EXC_EX_CHK------------
drop external table IF EXISTS EXC_EX_CHK_INC_EXT;

create external table EXC_EX_CHK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  HXD_NO        VARCHAR(32)  ,
  ENTRY_ID      VARCHAR(18),
  TRADE_CO      VARCHAR(10),
  AUTO_CHKFLAG  VARCHAR(1),
  CHK_DATE      TIMESTAMP,
  TRADE_TOTAL   NUMERIC(19,4),
  RECV_AMT      NUMERIC(19,4),
  MAT_AMT       NUMERIC(19,4),
  HX_STATE      VARCHAR(1),
  DIFF_RSNCODE1 VARCHAR(2),
  DIFF_AMT1     NUMERIC(19,4),
  DIFF_RSNCODE2 VARCHAR(2),
  DIFF_AMT2     NUMERIC(19,4),
  DIFF_RSNCODE3 VARCHAR(2),
  DIFF_AMT3     NUMERIC(19,4),
  DIFF_RSNCODE4 VARCHAR(2),
  DIFF_AMT4     NUMERIC(19,4),
  DIFF_RSNCODE5 VARCHAR(2),
  DIFF_AMT5     NUMERIC(19,4),
  DIFF_RSNCODE6 VARCHAR(2),
  DIFF_AMT6     NUMERIC(19,4),
  TRADE_CURR    VARCHAR(3)
)
LOCATION( 
'gpfdist://mdw-1:8081/EXC_EX_CHK.txt',
'gpfdist://mdw-2:8081/EXC_EX_CHK.txt',
'gpfdist://mdw-3:8081/EXC_EX_CHK.txt',
'gpfdist://mdw-4:8081/EXC_EX_CHK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EXC_EXAM------------
drop external table IF EXISTS EXC_EXAM_INC_EXT;

create external table EXC_EXAM_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  SEQ_NO     VARCHAR(18),
  HXD_NO     VARCHAR(9)  ,
  ENTRY_ID   VARCHAR(18),
  CUS_CODE   VARCHAR(4),
  DECL_DATE  TIMESTAMP,
  IMPLE_DATE TIMESTAMP,
  IMPLE_ER   VARCHAR(32),
  RET_DATE   TIMESTAMP,
  EXC_MARK   VARCHAR(1),
  DELE_DATE  TIMESTAMP,
  DELE_ER    VARCHAR(32),
  DATA_SIGN  VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EXC_EXAM.txt',
'gpfdist://mdw-2:8081/EXC_EXAM.txt',
'gpfdist://mdw-3:8081/EXC_EXAM.txt',
'gpfdist://mdw-4:8081/EXC_EXAM.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EXP_MFT_CHK_RESULT------------
drop external table IF EXISTS EXP_MFT_CHK_RESULT_INC_EXT;

create external table EXP_MFT_CHK_RESULT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  VOYAGE_NO    VARCHAR(32)  ,
  CUSTOMS_CODE VARCHAR(4)  ,
  CHK_MARK     VARCHAR(1),
  CHK_DATE     TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/EXP_MFT_CHK_RESULT.txt',
'gpfdist://mdw-2:8081/EXP_MFT_CHK_RESULT.txt',
'gpfdist://mdw-3:8081/EXP_MFT_CHK_RESULT.txt',
'gpfdist://mdw-4:8081/EXP_MFT_CHK_RESULT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------EXTERNAL_JOU------------
drop external table IF EXISTS EXTERNAL_JOU_INC_EXT;

create external table EXTERNAL_JOU_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO    VARCHAR(12)  ,
  CUSTOMS_CODE VARCHAR(4)  ,
  APPL_NO      NUMERIC(19)  ,
  FASCICLE_NO  VARCHAR(12),
  E_DATE       TIMESTAMP,
  APPL_ER      VARCHAR(8),
  APPL_DATE    TIMESTAMP,
  RETURN_DATE  TIMESTAMP,
  RETURN_FLAG  VARCHAR(1),
  PASSWORD     VARCHAR(12),
  NOTE_S       VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/EXTERNAL_JOU.txt',
'gpfdist://mdw-2:8081/EXTERNAL_JOU.txt',
'gpfdist://mdw-3:8081/EXTERNAL_JOU.txt',
'gpfdist://mdw-4:8081/EXTERNAL_JOU.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------FASCICLE_HEAD------------
drop external table IF EXISTS FASCICLE_HEAD_INC_EXT;

create external table FASCICLE_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO       VARCHAR(12),
  FASCICLE_NO     VARCHAR(12)  ,
  PRE_FASCICLE_NO VARCHAR(12),
  I_E_PORT        VARCHAR(4),
  TYPE_ER         VARCHAR(8),
  TYPE_DATE       TIMESTAMP,
  LIMIT_DATE      TIMESTAMP,
  TRADE_CO        VARCHAR(10),
  CHK_ER          VARCHAR(8),
  RECHK_ER        VARCHAR(8),
  PR_DATE         TIMESTAMP,
  FASCICLE_TYPE   VARCHAR(1),
  EXE_MARK        VARCHAR(1),
  CONTR_IN        VARCHAR(32),
  CONTR_OUT       VARCHAR(32),
  IN_PNT          NUMERIC(19),
  EX_PNT          NUMERIC(19),
  SUPV_MARK       VARCHAR(1),
  NOTE_S          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/FASCICLE_HEAD.txt',
'gpfdist://mdw-2:8081/FASCICLE_HEAD.txt',
'gpfdist://mdw-3:8081/FASCICLE_HEAD.txt',
'gpfdist://mdw-4:8081/FASCICLE_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------FCB_CHK------------
drop external table IF EXISTS FCB_CHK_INC_EXT;

create external table FCB_CHK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FCB_ID       VARCHAR(18)  ,
  FORM_FLAG    VARCHAR(1)  ,
  ENTRY_ID     VARCHAR(18)  ,
  CUSTOMS_CODE VARCHAR(4),
  PACK_NO      NUMERIC(19),
  GROSS_WT     NUMERIC(19,5),
  CHK_ER       VARCHAR(8),
  CHK_DATE     TIMESTAMP,
  REL_ER       VARCHAR(8),
  REL_DATE     TIMESTAMP,
  RTX_ER       VARCHAR(8),
  RTX_DATE     TIMESTAMP,
  NOTE         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/FCB_CHK.txt',
'gpfdist://mdw-2:8081/FCB_CHK.txt',
'gpfdist://mdw-3:8081/FCB_CHK.txt',
'gpfdist://mdw-4:8081/FCB_CHK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------FCB_CONTA------------
drop external table IF EXISTS FCB_CONTA_INC_EXT;

create external table FCB_CONTA_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FCB_ID          VARCHAR(18)  ,
  CONTA_ID        VARCHAR(32)  ,
  ESEAL_ID        VARCHAR(128),
  CONTA_MODEL     VARCHAR(4),
  CONTA_TYPE      VARCHAR(1),
  PORT_CUS        VARCHAR(4),
  MAIN_CUS        VARCHAR(4),
  DE_CONSOLIDATOR VARCHAR(255),
  CONTA_WT        NUMERIC(19,5),
  NOTE            VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/FCB_CONTA.txt',
'gpfdist://mdw-2:8081/FCB_CONTA.txt',
'gpfdist://mdw-3:8081/FCB_CONTA.txt',
'gpfdist://mdw-4:8081/FCB_CONTA.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------FCB_CONTA_MODI------------
drop external table IF EXISTS FCB_CONTA_MODI_INC_EXT;

create external table FCB_CONTA_MODI_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FCB_ID          VARCHAR(18)  ,
  CONTA_ID        VARCHAR(32)  ,
  ESEAL_ID        VARCHAR(128),
  CONTA_MODEL     VARCHAR(4),
  CONTA_TYPE      VARCHAR(1),
  DE_CONSOLIDATOR VARCHAR(255),
  CONTA_WT        NUMERIC(19,5),
  NOTE            VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/FCB_CONTA_MODI.txt',
'gpfdist://mdw-2:8081/FCB_CONTA_MODI.txt',
'gpfdist://mdw-3:8081/FCB_CONTA_MODI.txt',
'gpfdist://mdw-4:8081/FCB_CONTA_MODI.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------FCB_HEAD------------
drop external table IF EXISTS FCB_HEAD_INC_EXT;

create external table FCB_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FCB_ID             VARCHAR(18)  ,
  I_E_FLAG           VARCHAR(1),
  I_E_DATE           TIMESTAMP,
  FCB_MODE           VARCHAR(1),
  GOODS_CHK_FLAG     VARCHAR(8),
  PORT_CUS           VARCHAR(4),
  MAIN_CUS           VARCHAR(4),
  APPL_CODE          VARCHAR(10),
  APPL_NAME          VARCHAR(255),
  VE_CUSTOMS_NO      VARCHAR(10),
  VE_NAME            VARCHAR(32),
  VE_NO1             VARCHAR(32),
  VE_WT              NUMERIC(19,5),
  VE_TYPE            VARCHAR(1),
  CONSIGNER          VARCHAR(255),
  CO_REG_NO          VARCHAR(10),
  CONTRACTOR         VARCHAR(255),
  CONTRACTOR_OUTER   VARCHAR(255),
  CONTRACTOR_ADD     VARCHAR(255),
  DR_CUSTOMS_NO      VARCHAR(10),
  DR_NAME            VARCHAR(32),
  PHONE_NO           VARCHAR(32),
  TRADE_MODE         VARCHAR(4),
  VE_FRAME_NO        VARCHAR(32),
  PACK_NO            NUMERIC(19),
  GROSS_WT           NUMERIC(19,5),
  LOAD_PLACE         VARCHAR(255),
  DISCHARGE_PLACE    VARCHAR(255),
  ORIGIN_COUNTRY     VARCHAR(3),
  DESTINATION        VARCHAR(3),
  CONTR_NO           VARCHAR(32),
  TRANSSHIPMENT_MARK VARCHAR(1),
  LICENSE_NO         VARCHAR(32),
  BILL_NO            VARCHAR(32),
  PERMISSIVE_TIME    TIMESTAMP,
  INPUT_TIME         TIMESTAMP,
  SUR_TIME           TIMESTAMP,
  REAL_I_E_TIME      TIMESTAMP,
  REL_TIME           TIMESTAMP,
  ARRIVE_TIME        TIMESTAMP,
  LEAVE_TIME         TIMESTAMP,
  CANCEL_TIME        TIMESTAMP,
  MODIFY_APPLY_MARK  VARCHAR(1),
  TIME_STAMP         TIMESTAMP,
  RISK_INFO          VARCHAR(255),
  SYS_INFO           VARCHAR(255),
  PORT_WT            NUMERIC(19,5),
  MAIN_WT            NUMERIC(19,5),
  EX_TRAF_MODE       VARCHAR(1),
  CONTA_COUNT        NUMERIC(19),
  CONTA_STD_COUNT    NUMERIC(19),
  CONTA_EMPTY_COUNT  NUMERIC(19),
  PRE_MARK           VARCHAR(8),
  PRE_ID             VARCHAR(32),
  ESEAL_KEY          VARCHAR(32),
  HASH_SIGN          VARCHAR(380),
  PRE_NO             VARCHAR(13),
  VE_FRAME_WT        NUMERIC(19,5),
  NOTE               VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/FCB_HEAD.txt',
'gpfdist://mdw-2:8081/FCB_HEAD.txt',
'gpfdist://mdw-3:8081/FCB_HEAD.txt',
'gpfdist://mdw-4:8081/FCB_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------FCB_HEAD_MODI------------
drop external table IF EXISTS FCB_HEAD_MODI_INC_EXT;

create external table FCB_HEAD_MODI_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FCB_ID             VARCHAR(18)  ,
  PROCESS_STATUS     VARCHAR(1),
  I_E_FLAG           VARCHAR(1),
  I_E_DATE           TIMESTAMP,
  FCB_MODE           VARCHAR(1),
  GOODS_CHK_FLAG     VARCHAR(8),
  PORT_CUS           VARCHAR(4),
  MAIN_CUS           VARCHAR(4),
  APPL_CODE          VARCHAR(10),
  APPL_NAME          VARCHAR(255),
  VE_CUSTOMS_NO      VARCHAR(10),
  VE_NAME            VARCHAR(32),
  VE_NO1             VARCHAR(32),
  VE_WT              NUMERIC(19,5),
  VE_TYPE            VARCHAR(1),
  CONSIGNER          VARCHAR(255),
  CO_REG_NO          VARCHAR(10),
  CONTRACTOR         VARCHAR(255),
  CONTRACTOR_OUTER   VARCHAR(255),
  CONTRACTOR_ADD     VARCHAR(255),
  DR_CUSTOMS_NO      VARCHAR(10),
  DR_NAME            VARCHAR(32),
  PHONE_NO           VARCHAR(32),
  TRADE_MODE         VARCHAR(4),
  VE_FRAME_NO        VARCHAR(32),
  PACK_NO            NUMERIC(19),
  GROSS_WT           NUMERIC(19,5),
  LOAD_PLACE         VARCHAR(255),
  DISCHARGE_PLACE    VARCHAR(255),
  ORIGIN_COUNTRY     VARCHAR(3),
  DESTINATION        VARCHAR(3),
  CONTR_NO           VARCHAR(32),
  TRANSSHIPMENT_MARK VARCHAR(1),
  LICENSE_NO         VARCHAR(32),
  BILL_NO            VARCHAR(32),
  INPUT_TIME         TIMESTAMP,
  EX_TRAF_MODE       VARCHAR(1),
  CONTA_COUNT        NUMERIC(19),
  CONTA_STD_COUNT    NUMERIC(19),
  CONTA_EMPTY_COUNT  NUMERIC(19),
  PRE_MARK           VARCHAR(8),
  PRE_ID             VARCHAR(18),
  PRE_NO             VARCHAR(13),
  VE_FRAME_WT        NUMERIC(19,5),
  NOTE               VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/FCB_HEAD_MODI.txt',
'gpfdist://mdw-2:8081/FCB_HEAD_MODI.txt',
'gpfdist://mdw-3:8081/FCB_HEAD_MODI.txt',
'gpfdist://mdw-4:8081/FCB_HEAD_MODI.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------FCB_LIST------------
drop external table IF EXISTS FCB_LIST_INC_EXT;

create external table FCB_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FCB_ID    VARCHAR(18)  ,
  G_NO      NUMERIC(19)  ,
  CODE_TS   VARCHAR(16),
  G_NAME    VARCHAR(255),
  WRAP_TYPE VARCHAR(1),
  PACK_NO   NUMERIC(19),
  GROSS_WT  NUMERIC(19,5),
  PRICE     NUMERIC(19,4),
  CURR      VARCHAR(3),
  MARK      VARCHAR(512),
  CONSIGNOR VARCHAR(255),
  CONSIGNEE VARCHAR(255),
  UCR       VARCHAR(64),
  UNDG      VARCHAR(4),
  FREE_TEXT VARCHAR(512),
  PORT_CUS  VARCHAR(4),
  MAIN_CUS  VARCHAR(4),
  BILL_NO   VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/FCB_LIST.txt',
'gpfdist://mdw-2:8081/FCB_LIST.txt',
'gpfdist://mdw-3:8081/FCB_LIST.txt',
'gpfdist://mdw-4:8081/FCB_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------FCB_LIST_MODI------------
drop external table IF EXISTS FCB_LIST_MODI_INC_EXT;

create external table FCB_LIST_MODI_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FCB_ID    VARCHAR(18)  ,
  G_NO      NUMERIC(19)  ,
  CODE_TS   VARCHAR(16),
  G_NAME    VARCHAR(255),
  WRAP_TYPE VARCHAR(1),
  PACK_NO   NUMERIC(19),
  GROSS_WT  NUMERIC(19,5),
  PRICE     NUMERIC(19,4),
  CURR      VARCHAR(3),
  MARK      VARCHAR(512),
  CONSIGNOR VARCHAR(255),
  CONSIGNEE VARCHAR(255),
  UCR       VARCHAR(64),
  UNDG      VARCHAR(4),
  FREE_TEXT VARCHAR(512),
  BILL_NO   VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/FCB_LIST_MODI.txt',
'gpfdist://mdw-2:8081/FCB_LIST_MODI.txt',
'gpfdist://mdw-3:8081/FCB_LIST_MODI.txt',
'gpfdist://mdw-4:8081/FCB_LIST_MODI.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------FCB_RSK------------
drop external table IF EXISTS FCB_RSK_INC_EXT;

create external table FCB_RSK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FCB_ID       VARCHAR(18)  ,
  CUSTOMS_CODE VARCHAR(4)  ,
  INPUT_ER     VARCHAR(8),
  INPUT_TIME   TIMESTAMP,
  REQUIRE      VARCHAR(255),
  RELEASE_ER   VARCHAR(8),
  RELEASE_TIME TIMESTAMP,
  RESULT       VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/FCB_RSK.txt',
'gpfdist://mdw-2:8081/FCB_RSK.txt',
'gpfdist://mdw-3:8081/FCB_RSK.txt',
'gpfdist://mdw-4:8081/FCB_RSK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------FCB_WORKFLOW------------
drop external table IF EXISTS FCB_WORKFLOW_INC_EXT;

create external table FCB_WORKFLOW_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FCB_ID      VARCHAR(18)  ,
  STEP_ID     VARCHAR(8)  ,
  CREATE_DATE TIMESTAMP  ,
  PROC_ER     VARCHAR(13),
  PROC_RESULT VARCHAR(8),
  RECHK_COMM  VARCHAR(512),
  PORT_CUS    VARCHAR(4),
  MAIN_CUS    VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/FCB_WORKFLOW.txt',
'gpfdist://mdw-2:8081/FCB_WORKFLOW.txt',
'gpfdist://mdw-3:8081/FCB_WORKFLOW.txt',
'gpfdist://mdw-4:8081/FCB_WORKFLOW.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------FEE_INVOICE------------
drop external table IF EXISTS FEE_INVOICE_INC_EXT;

create external table FEE_INVOICE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  F_NO           NUMERIC(19)  ,
  FEE_ID         NUMERIC(19)  ,
  CREATE_DATE    TIMESTAMP,
  CHK_ER         VARCHAR(8),
  TYPE_ER        VARCHAR(8),
  TYPE_DATE      TIMESTAMP,
  FINANCIAL_FLAG VARCHAR(1),
  FINANCIAL_DATE TIMESTAMP,
  BOOK_NO        NUMERIC(19),
  FEE_AMT        NUMERIC(19,5),
  NOTE_S         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/FEE_INVOICE.txt',
'gpfdist://mdw-2:8081/FEE_INVOICE.txt',
'gpfdist://mdw-3:8081/FEE_INVOICE.txt',
'gpfdist://mdw-4:8081/FEE_INVOICE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------FORFEIT_FORM------------
drop external table IF EXISTS FORFEIT_FORM_INC_EXT;

create external table FORFEIT_FORM_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FMS_ID          VARCHAR(18)  ,
  DEPARTMENT      VARCHAR(2),
  DEPARTMENT_NOTE VARCHAR(255),
  DISTRICT_CODE   VARCHAR(5),
  PAYER_NAME      VARCHAR(255),
  FMS_CLASS       VARCHAR(3),
  FMS_AMOUNT      NUMERIC(19,4),
  OPER_CODE       VARCHAR(32),
  LAW_ID          VARCHAR(255),
  TAX_FLAG        VARCHAR(32),
  LIMIT_DAY       NUMERIC(19),
  FMS_MODE        VARCHAR(1),
  CREATE_DATE     TIMESTAMP,
  CUSTOMS_CODE    VARCHAR(32),
  SECTION_ID      VARCHAR(32),
  GROUP_ID        VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/FORFEIT_FORM.txt',
'gpfdist://mdw-2:8081/FORFEIT_FORM.txt',
'gpfdist://mdw-3:8081/FORFEIT_FORM.txt',
'gpfdist://mdw-4:8081/FORFEIT_FORM.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------FORM_CHK------------
drop external table IF EXISTS FORM_CHK_INC_EXT;

create external table FORM_CHK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FORM_ID      VARCHAR(18)  ,
  FORM_FLAG    VARCHAR(1),
  TRANS_NO     VARCHAR(32),
  SHIP_ID      VARCHAR(32),
  VOYAGE_NO    VARCHAR(32),
  BILL_NO      VARCHAR(32),
  BILL_NO_ORI  VARCHAR(32),
  TRAF_MODE    VARCHAR(32),
  I_E_FLAG     VARCHAR(32),
  DECL_PORT    VARCHAR(4),
  I_E_PORT     VARCHAR(4),
  I_E_DATE     TIMESTAMP,
  D_DATE       TIMESTAMP,
  TRADE_NAME   VARCHAR(255),
  AGENT_NAME   VARCHAR(255),
  OWNER_NAME   VARCHAR(255),
  CONTR_NO     VARCHAR(32),
  LICENSE_NO   VARCHAR(20),
  APPR_NO      VARCHAR(20),
  MANUAL_NO    VARCHAR(12),
  PACK_NO      NUMERIC(19,5),
  GROSS_WT     NUMERIC(19,4),
  GEN_DATE     TIMESTAMP,
  GEN_ER       VARCHAR(8),
  CHK_MARK     VARCHAR(1),
  CHK_DATE     TIMESTAMP,
  CHK_ER       VARCHAR(8),
  COUNTRY_CODE VARCHAR(3),
  NOTE_S       VARCHAR(255),
  CHK_ER_TRN   VARCHAR(8),
  CHK_MARK_TRN VARCHAR(1),
  PACK_NO_TRN  NUMERIC(19,5),
  GROSS_WT_TRN NUMERIC(19,4),
  CHK_DATE_TRN TIMESTAMP,
  NOTE_S_RTX   VARCHAR(255),
  CHK_MARK_TMP VARCHAR(1),
  MFT_TYPE     VARCHAR(1),
  NOTE_S_MFT   VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/FORM_CHK.txt',
'gpfdist://mdw-2:8081/FORM_CHK.txt',
'gpfdist://mdw-3:8081/FORM_CHK.txt',
'gpfdist://mdw-4:8081/FORM_CHK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------GUARANTEE_DEL_LOG------------
drop external table IF EXISTS GUARANTEE_DEL_LOG_INC_EXT;

create external table GUARANTEE_DEL_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  GUA_ID             VARCHAR(18)  ,
  ENTRY_ID           VARCHAR(18),
  DECL_PORT          VARCHAR(4),
  APP_REASON         VARCHAR(1),
  GUAR_ER            VARCHAR(255),
  REPRE_ER           VARCHAR(32),
  ADDRESS            VARCHAR(255),
  TELEPHONE          VARCHAR(32),
  APPR_ER            VARCHAR(32),
  D_DATE             TIMESTAMP,
  I_E_FLAG           VARCHAR(1),
  TRADE_CO           VARCHAR(10),
  TRADE_NAME         VARCHAR(255),
  CODE_TS            VARCHAR(16),
  G_NAME             VARCHAR(255),
  DUTY_VALUE         NUMERIC(19,4),
  CUT_MODE           VARCHAR(3),
  DUTY_MODE          VARCHAR(1),
  GUAR_CURR          VARCHAR(3),
  RE_ACCOUNT         NUMERIC(19,4),
  PAYER_NAME         VARCHAR(255),
  REGR_DATE          TIMESTAMP,
  REGR_ER            VARCHAR(8),
  LOG_DATE           TIMESTAMP,
  ENTER_ER           VARCHAR(8),
  PERIOD             TIMESTAMP,
  DELAY_MARK         NUMERIC(19),
  DELAY_DATE         TIMESTAMP,
  DELAY_ER           VARCHAR(8),
  DELAY_REASON       VARCHAR(255),
  C_DATE             TIMESTAMP,
  CANCEL_ER          VARCHAR(8),
  PROC_MARK          VARCHAR(1),
  C_REASON           VARCHAR(255),
  UR_COUNT           NUMERIC(19),
  UR_DATE            TIMESTAMP,
  UR_ER              VARCHAR(8),
  REMARK             VARCHAR(255),
  PRINT_DATE         TIMESTAMP,
  PRINT_ER           VARCHAR(8),
  REGISTER_MODE      VARCHAR(1),
  OP_ID              VARCHAR(8),
  DEL_DATETIME       TIMESTAMP  ,
  DEL_REASON         VARCHAR(255),
  PAY_MODE           VARCHAR(1),
  EPORT_ID           VARCHAR(32),
  PAY_DATE           TIMESTAMP,
  EXQ_DATE           TIMESTAMP,
  BANK_NAME          VARCHAR(255),
  BANK_ACCOUNT       VARCHAR(32),
  GEN_DATE           TIMESTAMP,
  BANK_CODE          VARCHAR(20),
  BANK_ACCOUNT_NAME  VARCHAR(128),
  PAYER_ACCOUNT_NO   VARCHAR(32),
  PAYER_ACCOUNT_NAME VARCHAR(255),
  PAYER_BANK_NAME    VARCHAR(255),
  PAYER_BANK_CODE    VARCHAR(20)
)
LOCATION( 
'gpfdist://mdw-1:8081/GUARANTEE_DEL_LOG.txt',
'gpfdist://mdw-2:8081/GUARANTEE_DEL_LOG.txt',
'gpfdist://mdw-3:8081/GUARANTEE_DEL_LOG.txt',
'gpfdist://mdw-4:8081/GUARANTEE_DEL_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------GUARANTEE_LIST------------
drop external table IF EXISTS GUARANTEE_LIST_INC_EXT;

create external table GUARANTEE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID        VARCHAR(18)  ,
  G_NO            NUMERIC(19)  ,
  CODE_TS         VARCHAR(16),
  GRT_ACCOUNT     NUMERIC(19,4),
  GRT_RATE        NUMERIC(19,5),
  APP_REASON      VARCHAR(1),
  TAX_TYPE        VARCHAR(1)  ,
  ACTION_NO       VARCHAR(255),
  COMPANY_NAME_CN VARCHAR(255),
  COMPANY_NAME_EN VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/GUARANTEE_LIST.txt',
'gpfdist://mdw-2:8081/GUARANTEE_LIST.txt',
'gpfdist://mdw-3:8081/GUARANTEE_LIST.txt',
'gpfdist://mdw-4:8081/GUARANTEE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------GUARANTEE_R------------
drop external table IF EXISTS GUARANTEE_R_INC_EXT;

create external table GUARANTEE_R_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  GUA_ID             VARCHAR(18)  ,
  ENTRY_ID           VARCHAR(18),
  DECL_PORT          VARCHAR(4),
  APP_REASON         VARCHAR(1),
  GUAR_ER            VARCHAR(255),
  REPRE_ER           VARCHAR(32),
  ADDRESS            VARCHAR(255),
  TELEPHONE          VARCHAR(32),
  APPR_ER            VARCHAR(32),
  D_DATE             TIMESTAMP,
  I_E_FLAG           VARCHAR(1),
  TRADE_CO           VARCHAR(10),
  TRADE_NAME         VARCHAR(255),
  CODE_TS            VARCHAR(16),
  G_NAME             VARCHAR(255),
  DUTY_VALUE         NUMERIC(19,4),
  CUT_MODE           VARCHAR(3),
  DUTY_MODE          VARCHAR(1),
  GUAR_CURR          VARCHAR(3),
  RE_ACCOUNT         NUMERIC(19,4),
  PAYER_NAME         VARCHAR(255),
  REGR_DATE          TIMESTAMP,
  REGR_ER            VARCHAR(8),
  LOG_DATE           TIMESTAMP,
  ENTER_ER           VARCHAR(8),
  PERIOD             TIMESTAMP,
  DELAY_MARK         NUMERIC(19),
  DELAY_DATE         TIMESTAMP,
  DELAY_ER           VARCHAR(8),
  DELAY_REASON       VARCHAR(255),
  C_DATE             TIMESTAMP,
  CANCEL_ER          VARCHAR(8),
  PROC_MARK          VARCHAR(1),
  C_REASON           VARCHAR(255),
  UR_COUNT           NUMERIC(19),
  UR_DATE            TIMESTAMP,
  UR_ER              VARCHAR(8),
  REMARK             VARCHAR(255),
  PRINT_DATE         TIMESTAMP,
  PRINT_ER           VARCHAR(8),
  REGISTER_MODE      VARCHAR(1),
  PAY_MODE           VARCHAR(1),
  EPORT_ID           VARCHAR(32),
  PAY_DATE           TIMESTAMP,
  EXQ_DATE           TIMESTAMP,
  BANK_NAME          VARCHAR(255),
  BANK_ACCOUNT       VARCHAR(32),
  GEN_DATE           TIMESTAMP,
  BANK_CODE          VARCHAR(20),
  BANK_ACCOUNT_NAME  VARCHAR(128),
  PAYER_ACCOUNT_NO   VARCHAR(32),
  PAYER_ACCOUNT_NAME VARCHAR(255),
  PAYER_BANK_NAME    VARCHAR(255),
  PAYER_BANK_CODE    VARCHAR(20)
)
LOCATION( 
'gpfdist://mdw-1:8081/GUARANTEE_R.txt',
'gpfdist://mdw-2:8081/GUARANTEE_R.txt',
'gpfdist://mdw-3:8081/GUARANTEE_R.txt',
'gpfdist://mdw-4:8081/GUARANTEE_R.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------H2000_SMS_SEND------------
drop external table IF EXISTS H2000_SMS_SEND_INC_EXT;

create external table H2000_SMS_SEND_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  SEQUENCE_NO  VARCHAR(18)  ,
  FORM_ID      VARCHAR(32)  ,
  CUSTOMS_CODE VARCHAR(4),
  SYSTEM_ID    VARCHAR(3)  ,
  POS_ID       VARCHAR(8)  ,
  OP_TIME      TIMESTAMP  ,
  PHONE_NO     VARCHAR(32)  ,
  MSG_TEXT     VARCHAR(255),
  PROC_FLAG    VARCHAR(1),
  NOTES        VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/H2000_SMS_SEND.txt',
'gpfdist://mdw-2:8081/H2000_SMS_SEND.txt',
'gpfdist://mdw-3:8081/H2000_SMS_SEND.txt',
'gpfdist://mdw-4:8081/H2000_SMS_SEND.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------H2000_SMS_SENDLOG------------
drop external table IF EXISTS H2000_SMS_SENDLOG_INC_EXT;

create external table H2000_SMS_SENDLOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  SEQUENCE_NO  VARCHAR(18)  ,
  FORM_ID      VARCHAR(32)  ,
  CUSTOMS_CODE VARCHAR(4),
  SYSTEM_ID    VARCHAR(3)  ,
  POS_ID       VARCHAR(8)  ,
  OP_TIME      TIMESTAMP  ,
  PHONE_NO     VARCHAR(32)  ,
  MSG_TEXT     VARCHAR(255),
  NOTES        VARCHAR(255),
  LOG_TIME     TIMESTAMP 
)
LOCATION( 
'gpfdist://mdw-1:8081/H2000_SMS_SENDLOG.txt',
'gpfdist://mdw-2:8081/H2000_SMS_SENDLOG.txt',
'gpfdist://mdw-3:8081/H2000_SMS_SENDLOG.txt',
'gpfdist://mdw-4:8081/H2000_SMS_SENDLOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------HIS_TRN_COP_REL------------
drop external table IF EXISTS HIS_TRN_COP_REL_INC_EXT;

create external table HIS_TRN_COP_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CO_REG_NO          VARCHAR(9)  ,
  CO_CUSTOMS_NO      VARCHAR(10),
  MAIN_PORT          VARCHAR(4),
  CO_NAME            VARCHAR(255),
  CO_ADDRESS         VARCHAR(255),
  CO_PHONE_NO        VARCHAR(20),
  VALID_FLAG         VARCHAR(1),
  VALID_DATE         TIMESTAMP,
  INPUT_DATE         TIMESTAMP,
  INPUT_OP_ID        VARCHAR(8),
  PERMIT_FLAG        VARCHAR(1),
  PERMIT_DATE        TIMESTAMP,
  PERMIT_OP_ID       VARCHAR(8),
  MODI_OP_ID         VARCHAR(8),
  MODI_TIME          TIMESTAMP,
  MODI_COUNT         NUMERIC(9)  ,
  RESERV_FIELD       VARCHAR(10),
  CO_REG_TYPE        VARCHAR(1),
  CO_PROPERTY        VARCHAR(1),
  CO_DEAL_RANGE      VARCHAR(1),
  CO_AUTHORIZE_NO    VARCHAR(30),
  CO_DEAL_DATE       TIMESTAMP,
  CO_CORPORATION_REP VARCHAR(20),
  CO_ABROAD_NAME     VARCHAR(255),
  GANG_AO_CARS       NUMERIC(9),
  GANG_AO_CARS_USED  NUMERIC(9),
  CK_FLAG            VARCHAR(1),
  NOTE_FIELD         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/HIS_TRN_COP_REL.txt',
'gpfdist://mdw-2:8081/HIS_TRN_COP_REL.txt',
'gpfdist://mdw-3:8081/HIS_TRN_COP_REL.txt',
'gpfdist://mdw-4:8081/HIS_TRN_COP_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------HIS_TRN_DR_REL------------
drop external table IF EXISTS HIS_TRN_DR_REL_INC_EXT;

create external table HIS_TRN_DR_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DR_REG_TYPE      VARCHAR(1),
  DR_CUSTOMS_NO    VARCHAR(10)  ,
  DR_IC_NO         VARCHAR(10),
  DR_NAME          VARCHAR(20),
  DR_IDCARD_NO     VARCHAR(18),
  DR_GENDER        VARCHAR(1),
  DR_NATIVE        VARCHAR(20),
  DR_BIRTH_DATE    TIMESTAMP,
  CO_REG_NO        VARCHAR(9),
  CO_NAME          VARCHAR(255),
  MAIN_PORT        VARCHAR(4),
  DR_LIC_CUS       VARCHAR(4),
  DR_IE_CERF_NO    VARCHAR(30),
  DR_PERMIT_VE     VARCHAR(255),
  VALID_FLAG       VARCHAR(1),
  CK_FLAG          VARCHAR(1),
  VALID_DATE       TIMESTAMP,
  TRAIN_VALID_DATE TIMESTAMP,
  INPUT_DATE       TIMESTAMP,
  INPUT_OP_ID      VARCHAR(8),
  RESERV_FIELD     VARCHAR(10),
  NOTE_FIELD       VARCHAR(255),
  MODI_OP_ID       VARCHAR(8),
  MODI_TIME        TIMESTAMP,
  MODI_COUNT       NUMERIC(9)  ,
  DR_IC_NO2        VARCHAR(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/HIS_TRN_DR_REL.txt',
'gpfdist://mdw-2:8081/HIS_TRN_DR_REL.txt',
'gpfdist://mdw-3:8081/HIS_TRN_DR_REL.txt',
'gpfdist://mdw-4:8081/HIS_TRN_DR_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------HIS_TRN_ESEAL_REL------------
drop external table IF EXISTS HIS_TRN_ESEAL_REL_INC_EXT;

create external table HIS_TRN_ESEAL_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ESEAL_ID      VARCHAR(20)  ,
  CUSTOMS_CODE  VARCHAR(4),
  CO_REG_NO     VARCHAR(9),
  CO_NAME       VARCHAR(255),
  VE_CUSTOMS_NO VARCHAR(10),
  VE_NAME       VARCHAR(32),
  INPUT_OP_ID   VARCHAR(8),
  INPUT_DATE    TIMESTAMP,
  VALID_FLAG    VARCHAR(1),
  MODI_OP_ID    VARCHAR(8),
  MODI_TIME     TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/HIS_TRN_ESEAL_REL.txt',
'gpfdist://mdw-2:8081/HIS_TRN_ESEAL_REL.txt',
'gpfdist://mdw-3:8081/HIS_TRN_ESEAL_REL.txt',
'gpfdist://mdw-4:8081/HIS_TRN_ESEAL_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------HIS_TRN_VE_REL------------
drop external table IF EXISTS HIS_TRN_VE_REL_INC_EXT;

create external table HIS_TRN_VE_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  VE_CUSTOMS_NO  VARCHAR(10)  ,
  CAR_EC_NO      VARCHAR(20),
  VE_TYPE        VARCHAR(1),
  MAIN_PORT      VARCHAR(4),
  VE_NAME        VARCHAR(32),
  CO_REG_NO      VARCHAR(9),
  CO_NAME        VARCHAR(255),
  CK_FLAG        VARCHAR(1),
  VALID_FLAG     VARCHAR(1),
  VALID_DATE     TIMESTAMP,
  INPUT_DATE     TIMESTAMP,
  INPUT_OP_ID    VARCHAR(8),
  MODI_OP_ID     VARCHAR(8),
  MODI_TIME      TIMESTAMP,
  MODI_COUNT     NUMERIC(9)  ,
  RESERV_FIELD   VARCHAR(10),
  VE_WT          NUMERIC(9),
  REG_TYPE       VARCHAR(1),
  VE_NO1         VARCHAR(10),
  VE_BELONG_AREA VARCHAR(1),
  VE_PROPERTY    VARCHAR(1),
  VE_BRAND       VARCHAR(8),
  VE_OILTANK_VOL NUMERIC(9),
  VE_INDEX_NO    VARCHAR(20),
  VE_IE_CERF_NO  VARCHAR(30),
  VE_COLOR       VARCHAR(10),
  VE_MOTOR_NO    VARCHAR(30),
  VE_FRAME_NO    VARCHAR(30),
  VE_TON         NUMERIC(9),
  NOTE_FIELD     VARCHAR(255),
  VE_IE_PORT     VARCHAR(255),
  GPS_ID         VARCHAR(20),
  SIM_1          VARCHAR(15),
  SIM_2          VARCHAR(15),
  GPS_PROVIDER   VARCHAR(255),
  GPS_FLAG       VARCHAR(1),
  TRANS_NO       VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/HIS_TRN_VE_REL.txt',
'gpfdist://mdw-2:8081/HIS_TRN_VE_REL.txt',
'gpfdist://mdw-3:8081/HIS_TRN_VE_REL.txt',
'gpfdist://mdw-4:8081/HIS_TRN_VE_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_APPL_CLOSE------------
drop external table IF EXISTS IM_APPL_CLOSE_INC_EXT;

create external table IM_APPL_CLOSE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  CONTR_ITEM     NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(50),
  G_MODEL        VARCHAR(50),
  FACT_QTY       NUMERIC(19,4),
  T_IN_QTY       NUMERIC(19,4),
  T_EX_QTY       NUMERIC(19,4),
  USED_QTY       NUMERIC(19,4),
  REMAIN_QTY     NUMERIC(19,4),
  PROC_MODE      VARCHAR(1),
  CORR_MANUAL_NO VARCHAR(12)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_APPL_CLOSE.txt',
'gpfdist://mdw-2:8081/IM_APPL_CLOSE.txt',
'gpfdist://mdw-3:8081/IM_APPL_CLOSE.txt',
'gpfdist://mdw-4:8081/IM_APPL_CLOSE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_CDL_MNL_DEDUCT------------
drop external table IF EXISTS IM_CDL_MNL_DEDUCT_INC_EXT;

create external table IM_CDL_MNL_DEDUCT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12)  ,
  CONTR_ITEM  NUMERIC(19),
  ENTRY_ID    VARCHAR(18)  ,
  ENTRY_ITEM  NUMERIC(19),
  I_E_PORT    VARCHAR(8),
  I_E_DATE    TIMESTAMP,
  G_NO        NUMERIC(19)  ,
  IN_QTY      NUMERIC(19,4),
  I_ACCOUNT   NUMERIC(19,5),
  I_CURR      VARCHAR(3),
  DUTY_MODE   VARCHAR(1),
  VERIFY_MODE VARCHAR(1),
  VERIFY_DATE TIMESTAMP,
  VERIFY_ER   VARCHAR(8),
  DUTY_PRINT  VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_CDL_MNL_DEDUCT.txt',
'gpfdist://mdw-2:8081/IM_CDL_MNL_DEDUCT.txt',
'gpfdist://mdw-3:8081/IM_CDL_MNL_DEDUCT.txt',
'gpfdist://mdw-4:8081/IM_CDL_MNL_DEDUCT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_CONTRACT_CLEAR------------
drop external table IF EXISTS IM_CONTRACT_CLEAR_INC_EXT;

create external table IM_CONTRACT_CLEAR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO     VARCHAR(12)  ,
  CONTR_ITEM    NUMERIC(19)  ,
  APPR_AMT      NUMERIC(19,5),
  FACT_AMT      NUMERIC(19,5),
  APPR_QTY      NUMERIC(19,4),
  FACT_QTY      NUMERIC(19,4),
  CONSUME_AMT   NUMERIC(19,5),
  CONSUME_QTY   NUMERIC(19,4),
  RESOR_IN_AMT  NUMERIC(19,5),
  RESOR_IN_QTY  NUMERIC(19,4),
  RESOR_EX_AMT  NUMERIC(19,5),
  RESOR_EX_QTY  NUMERIC(19,4),
  RESOR_TAX_AMT NUMERIC(19,5),
  RESOR_TAX_QTY NUMERIC(19,4),
  REMAIN_AMT    NUMERIC(19,5),
  REMAIN_QTY    NUMERIC(19,4),
  ABANDON_AMT   NUMERIC(19,5),
  ABANDON_QTY   NUMERIC(19,4),
  ABANDON_DATE  TIMESTAMP,
  ABANDON_ER    VARCHAR(8),
  UNIT_1        VARCHAR(3),
  CLEAR_ER      VARCHAR(8),
  CLEAR_DATE    TIMESTAMP,
  CLOSE_ER      VARCHAR(8),
  CLOSE_DATE    TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_CONTRACT_CLEAR.txt',
'gpfdist://mdw-2:8081/IM_CONTRACT_CLEAR.txt',
'gpfdist://mdw-3:8081/IM_CONTRACT_CLEAR.txt',
'gpfdist://mdw-4:8081/IM_CONTRACT_CLEAR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_CONTRACT_DEDUC------------
drop external table IF EXISTS IM_CONTRACT_DEDUC_INC_EXT;

create external table IM_CONTRACT_DEDUC_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12)  ,
  CONTR_ITEM  NUMERIC(19),
  ENTRY_ID    VARCHAR(18)  ,
  ENTRY_ITEM  NUMERIC(19),
  I_E_PORT    VARCHAR(8),
  I_E_DATE    TIMESTAMP,
  G_NO        NUMERIC(19)  ,
  IN_QTY      NUMERIC(19,4),
  I_ACCOUNT   NUMERIC(19,5),
  I_CURR      VARCHAR(3),
  DUTY_MODE   VARCHAR(1),
  VERIFY_MODE VARCHAR(1),
  VERIFY_DATE TIMESTAMP,
  VERIFY_ER   VARCHAR(8),
  DUTY_PRINT  VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_CONTRACT_DEDUC.txt',
'gpfdist://mdw-2:8081/IM_CONTRACT_DEDUC.txt',
'gpfdist://mdw-3:8081/IM_CONTRACT_DEDUC.txt',
'gpfdist://mdw-4:8081/IM_CONTRACT_DEDUC.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_CONTRACT_LIST------------
drop external table IF EXISTS IM_CONTRACT_LIST_INC_EXT;

create external table IM_CONTRACT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  CONTR_ITEM     NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  CLASS_MARK     VARCHAR(1),
  G_NAME         VARCHAR(50),
  G_MODEL        VARCHAR(50),
  ORIGIN_COUNTRY VARCHAR(3),
  DUTY_MODE      VARCHAR(1),
  DUTY_RATIO     NUMERIC(19,5),
  LOCAL_CONTR    VARCHAR(20),
  APPR_AMT       NUMERIC(19,5),
  FACT_AMT       NUMERIC(19,5),
  UNIT_PRICE     NUMERIC(19,10),
  APPR_QTY       NUMERIC(19,5),
  FACT_QTY       NUMERIC(19,5),
  TRANSFER_QTY   NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  IN_COUNT       NUMERIC(19),
  IM_MODE        VARCHAR(1),
  CONSUME_NOTE   VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_CONTRACT_LIST.txt',
'gpfdist://mdw-2:8081/IM_CONTRACT_LIST.txt',
'gpfdist://mdw-3:8081/IM_CONTRACT_LIST.txt',
'gpfdist://mdw-4:8081/IM_CONTRACT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_COP_RATE------------
drop external table IF EXISTS IM_COP_RATE_INC_EXT;

create external table IM_COP_RATE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO    VARCHAR(10)  ,
  CHKSTDATE   TIMESTAMP  ,
  CHKENDDATE  TIMESTAMP  ,
  CORCORPNAME VARCHAR(128),
  CHKRATE     NUMERIC(21,4),
  RECV_DATE   TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_COP_RATE.txt',
'gpfdist://mdw-2:8081/IM_COP_RATE.txt',
'gpfdist://mdw-3:8081/IM_COP_RATE.txt',
'gpfdist://mdw-4:8081/IM_COP_RATE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_DECL_ALARM_HEAD------------
drop external table IF EXISTS IM_DECL_ALARM_HEAD_INC_EXT;

create external table IM_DECL_ALARM_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO            VARCHAR(16)  ,
  TURN_NO           VARCHAR(16),
  CONTACT_NO        VARCHAR(16),
  CONTR_NO          VARCHAR(40),
  LICENSE_NO        VARCHAR(20),
  MANUAL_NO         VARCHAR(12),
  TRADE_MODE        VARCHAR(4),
  OWNER_NAME        VARCHAR(255),
  VALID_TIME        TIMESTAMP,
  APPL_NAME         VARCHAR(255),
  APPL_CODE         VARCHAR(10),
  IN_TRAF_NAME      VARCHAR(32),
  IMPORT_DATE       TIMESTAMP,
  CONTRACTOR        VARCHAR(255),
  CONTRACTOR_CODE   VARCHAR(10),
  DRIVER_CODE       VARCHAR(8),
  TRAF_WAY          VARCHAR(1),
  CUSTOMS_NO        VARCHAR(13),
  TRANS_NO          VARCHAR(32),
  NATIVE_VOYAGE_NO  VARCHAR(32),
  BILL_NO           VARCHAR(32),
  BILL_COUNT        NUMERIC(9),
  CONTA_NO          VARCHAR(20),
  CONTA_TYPE        VARCHAR(6),
  CONTA_AMOUNT      NUMERIC(19,4),
  CONTA_INI_COUNT   NUMERIC(19,4),
  CONTA_EMPTY_COUNT NUMERIC(19,4),
  SEAL_NO           VARCHAR(12),
  GOODS_NOTE        VARCHAR(255),
  INPUT_OP_ID       VARCHAR(8),
  INPUT_TIME        TIMESTAMP,
  EXAM_OP_ID        VARCHAR(8),
  EXAM_TIME         TIMESTAMP,
  REC_MARK          VARCHAR(1),
  CHECK_OP_ID       VARCHAR(8),
  CHECK_TIME        TIMESTAMP,
  CHECK_MARK        VARCHAR(1),
  DEL_OP_ID         VARCHAR(8),
  DEL_TIME          TIMESTAMP,
  DEL_REASON        VARCHAR(1),
  DELI_MARK         VARCHAR(1),
  REL_OP_ID         VARCHAR(8),
  REL_TIME          TIMESTAMP,
  PRE_FIEL          VARCHAR(32),
  MFT_VOYAGE_NO     VARCHAR(32),
  MFT_BILL_NO       VARCHAR(32),
  MFT_TRAF_WAY      VARCHAR(1),
  MFT_GOODS_PIECE   NUMERIC(9),
  MFT_GROSS_WEIGHT  NUMERIC(19,4),
  MFT_REC_MARK      VARCHAR(1),
  SEND_PORT         VARCHAR(4),
  RECV_PORT         VARCHAR(4),
  APP_TELE          VARCHAR(32),
  FOR_PORT_NAME     VARCHAR(255),
  R_PORT_NAME       VARCHAR(255),
  GOODS_CHK_FLAG    VARCHAR(1),
  OTHER_CHK_MARK    VARCHAR(8),
  TRN_MODE          VARCHAR(2),
  ADV_MARK          VARCHAR(1),
  ENTRY_NO          VARCHAR(18),
  SEAL_NO2          VARCHAR(12),
  TRANS_PRE_NO      VARCHAR(18),
  TRANS_PRE_MARK    VARCHAR(1),
  STF_DATE          TIMESTAMP,
  STF_NO            VARCHAR(32),
  PRE_FIELD1        VARCHAR(32),
  PRE_FIELD2        VARCHAR(32),
  CA_KEY            VARCHAR(380),
  HASH_SIGN         VARCHAR(380)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_DECL_ALARM_HEAD.txt',
'gpfdist://mdw-2:8081/IM_DECL_ALARM_HEAD.txt',
'gpfdist://mdw-3:8081/IM_DECL_ALARM_HEAD.txt',
'gpfdist://mdw-4:8081/IM_DECL_ALARM_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_DECL_ALARM_LIST------------
drop external table IF EXISTS IM_DECL_ALARM_LIST_INC_EXT;

create external table IM_DECL_ALARM_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO         VARCHAR(16)  ,
  RECORD_NUMBER  VARCHAR(3) ,
  TURN_NO        VARCHAR(16),
  G_NO           NUMERIC(9)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  PACK_TYPE      VARCHAR(1),
  GOODS_PIECE    NUMERIC(9),
  GOODS_AMOUNT   NUMERIC(19,4),
  GOODS_UNIT     VARCHAR(3),
  GOODS_WEIGHT   NUMERIC(19,4),
  GOODS_PRICE    NUMERIC(19,4),
  GOODS_CURR     VARCHAR(3),
  GOODS_CHK_MARK VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_DECL_ALARM_LIST.txt',
'gpfdist://mdw-2:8081/IM_DECL_ALARM_LIST.txt',
'gpfdist://mdw-3:8081/IM_DECL_ALARM_LIST.txt',
'gpfdist://mdw-4:8081/IM_DECL_ALARM_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_DECL_CUR_HEAD------------
drop external table IF EXISTS IM_DECL_CUR_HEAD_INC_EXT;

create external table IM_DECL_CUR_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO            VARCHAR(16)  ,
  TURN_NO           VARCHAR(16),
  CONTACT_NO        VARCHAR(16),
  CONTR_NO          VARCHAR(40),
  LICENSE_NO        VARCHAR(20),
  MANUAL_NO         VARCHAR(12),
  TRADE_MODE        VARCHAR(4),
  OWNER_NAME        VARCHAR(255),
  VALID_TIME        TIMESTAMP,
  APPL_NAME         VARCHAR(255),
  APPL_CODE         VARCHAR(10),
  IN_TRAF_NAME      VARCHAR(32),
  IMPORT_DATE       TIMESTAMP,
  CONTRACTOR        VARCHAR(255),
  CONTRACTOR_CODE   VARCHAR(10),
  DRIVER_CODE       VARCHAR(8),
  TRAF_WAY          VARCHAR(1),
  CUSTOMS_NO        VARCHAR(13),
  TRANS_NO          VARCHAR(32),
  NATIVE_VOYAGE_NO  VARCHAR(32),
  BILL_NO           VARCHAR(32),
  BILL_COUNT        NUMERIC(9) ,
  CONTA_NO          VARCHAR(20),
  CONTA_TYPE        VARCHAR(6),
  CONTA_AMOUNT      NUMERIC(19,4) ,
  CONTA_INI_COUNT   NUMERIC(19,4) ,
  CONTA_EMPTY_COUNT NUMERIC(19,4) ,
  SEAL_NO           VARCHAR(12),
  GOODS_NOTE        VARCHAR(255),
  INPUT_OP_ID       VARCHAR(8),
  INPUT_TIME        TIMESTAMP,
  EXAM_OP_ID        VARCHAR(8),
  EXAM_TIME         TIMESTAMP,
  REC_MARK          VARCHAR(1),
  CHECK_OP_ID       VARCHAR(8),
  CHECK_TIME        TIMESTAMP,
  CHECK_MARK        VARCHAR(1),
  DEL_OP_ID         VARCHAR(8),
  DEL_TIME          TIMESTAMP,
  DEL_REASON        VARCHAR(1),
  DELI_MARK         VARCHAR(1),
  REL_OP_ID         VARCHAR(8),
  REL_TIME          TIMESTAMP,
  PRE_FIEL          VARCHAR(32),
  MFT_VOYAGE_NO     VARCHAR(32),
  MFT_BILL_NO       VARCHAR(32),
  MFT_TRAF_WAY      VARCHAR(1),
  MFT_GOODS_PIECE   NUMERIC(9) ,
  MFT_GROSS_WEIGHT  NUMERIC(19,4) ,
  MFT_REC_MARK      VARCHAR(1),
  SEND_PORT         VARCHAR(4),
  RECV_PORT         VARCHAR(4),
  APP_TELE          VARCHAR(32),
  FOR_PORT_NAME     VARCHAR(255),
  R_PORT_NAME       VARCHAR(255),
  GOODS_CHK_FLAG    VARCHAR(1),
  OTHER_CHK_MARK    VARCHAR(8),
  TRN_MODE          VARCHAR(2),
  ADV_MARK          VARCHAR(1),
  ENTRY_NO          VARCHAR(18),
  SEAL_NO2          VARCHAR(12),
  TRANS_PRE_NO      VARCHAR(18),
  TRANS_PRE_MARK    VARCHAR(1),
  STF_DATE          TIMESTAMP,
  STF_NO            VARCHAR(32),
  PRE_FIELD1        VARCHAR(32),
  PRE_FIELD2        VARCHAR(32),
  CA_KEY            VARCHAR(380),
  HASH_SIGN         VARCHAR(380),
  DEL_REASON_DETAIL VARCHAR(255),
  ESEAL_KEY         VARCHAR(30),
  ESEAL_FLAG        VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_DECL_CUR_HEAD.txt',
'gpfdist://mdw-2:8081/IM_DECL_CUR_HEAD.txt',
'gpfdist://mdw-3:8081/IM_DECL_CUR_HEAD.txt',
'gpfdist://mdw-4:8081/IM_DECL_CUR_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_DECL_CUR_LIST------------
drop external table IF EXISTS IM_DECL_CUR_LIST_INC_EXT;

create external table IM_DECL_CUR_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO         VARCHAR(16)  ,
  RECORD_NUMBER  VARCHAR(3) ,
  TURN_NO        VARCHAR(16),
  G_NO           NUMERIC(9) ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  PACK_TYPE      VARCHAR(1),
  GOODS_PIECE    NUMERIC(9) ,
  GOODS_AMOUNT   NUMERIC(19,4) ,
  GOODS_UNIT     VARCHAR(3),
  GOODS_WEIGHT   NUMERIC(19,4) ,
  GOODS_PRICE    NUMERIC(19,4) ,
  GOODS_CURR     VARCHAR(3),
  GOODS_CHK_MARK VARCHAR(4),
  SEND_PORT      VARCHAR(4),
  RECV_PORT      VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_DECL_CUR_LIST.txt',
'gpfdist://mdw-2:8081/IM_DECL_CUR_LIST.txt',
'gpfdist://mdw-3:8081/IM_DECL_CUR_LIST.txt',
'gpfdist://mdw-4:8081/IM_DECL_CUR_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_DECL_HIS_HEAD------------
drop external table IF EXISTS IM_DECL_HIS_HEAD_INC_EXT;

create external table IM_DECL_HIS_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO            VARCHAR(16)  ,
  TURN_NO           VARCHAR(16),
  CONTACT_NO        VARCHAR(16),
  CONTR_NO          VARCHAR(40),
  LICENSE_NO        VARCHAR(20),
  MANUAL_NO         VARCHAR(12),
  TRADE_MODE        VARCHAR(4),
  OWNER_NAME        VARCHAR(255),
  VALID_TIME        TIMESTAMP,
  APPL_NAME         VARCHAR(255),
  APPL_CODE         VARCHAR(10),
  IN_TRAF_NAME      VARCHAR(32),
  IMPORT_DATE       TIMESTAMP,
  CONTRACTOR        VARCHAR(255),
  CONTRACTOR_CODE   VARCHAR(10),
  DRIVER_CODE       VARCHAR(8),
  TRAF_WAY          VARCHAR(1),
  CUSTOMS_NO        VARCHAR(13),
  TRANS_NO          VARCHAR(32),
  NATIVE_VOYAGE_NO  VARCHAR(32),
  BILL_NO           VARCHAR(32),
  BILL_COUNT        NUMERIC(9),
  CONTA_NO          VARCHAR(20),
  CONTA_TYPE        VARCHAR(6),
  CONTA_AMOUNT      NUMERIC(19,4),
  CONTA_INI_COUNT   NUMERIC(19,4),
  CONTA_EMPTY_COUNT NUMERIC(19,4),
  SEAL_NO           VARCHAR(12),
  GOODS_NOTE        VARCHAR(255),
  INPUT_OP_ID       VARCHAR(8),
  INPUT_TIME        TIMESTAMP,
  EXAM_OP_ID        VARCHAR(8),
  EXAM_TIME         TIMESTAMP,
  REC_MARK          VARCHAR(1),
  CHECK_OP_ID       VARCHAR(8),
  CHECK_TIME        TIMESTAMP,
  CHECK_MARK        VARCHAR(1),
  DEL_OP_ID         VARCHAR(8),
  DEL_TIME          TIMESTAMP,
  DEL_REASON        VARCHAR(1),
  DELI_MARK         VARCHAR(1),
  REL_OP_ID         VARCHAR(8),
  REL_TIME          TIMESTAMP,
  PRE_FIEL          VARCHAR(32),
  MFT_VOYAGE_NO     VARCHAR(32),
  MFT_BILL_NO       VARCHAR(32),
  MFT_TRAF_WAY      VARCHAR(1),
  MFT_GOODS_PIECE   NUMERIC(9),
  MFT_GROSS_WEIGHT  NUMERIC(19,4),
  MFT_REC_MARK      VARCHAR(1),
  SEND_PORT         VARCHAR(4),
  RECV_PORT         VARCHAR(4),
  APP_TELE          VARCHAR(32),
  FOR_PORT_NAME     VARCHAR(255),
  R_PORT_NAME       VARCHAR(255),
  GOODS_CHK_FLAG    VARCHAR(1),
  OTHER_CHK_MARK    VARCHAR(8),
  TRN_MODE          VARCHAR(2),
  ADV_MARK          VARCHAR(1),
  ENTRY_NO          VARCHAR(18),
  SEAL_NO2          VARCHAR(12),
  TRANS_PRE_NO      VARCHAR(18),
  TRANS_PRE_MARK    VARCHAR(1),
  STF_DATE          TIMESTAMP,
  STF_NO            VARCHAR(32),
  PRE_FIELD1        VARCHAR(32),
  PRE_FIELD2        VARCHAR(32),
  CA_KEY            VARCHAR(380),
  HASH_SIGN         VARCHAR(380)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_DECL_HIS_HEAD.txt',
'gpfdist://mdw-2:8081/IM_DECL_HIS_HEAD.txt',
'gpfdist://mdw-3:8081/IM_DECL_HIS_HEAD.txt',
'gpfdist://mdw-4:8081/IM_DECL_HIS_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_DECL_HIS_LIST------------
drop external table IF EXISTS IM_DECL_HIS_LIST_INC_EXT;

create external table IM_DECL_HIS_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO         VARCHAR(16)  ,
  RECORD_NUMBER  VARCHAR(3) ,
  TURN_NO        VARCHAR(16),
  G_NO           NUMERIC(9)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  PACK_TYPE      VARCHAR(1),
  GOODS_PIECE    NUMERIC(9),
  GOODS_AMOUNT   NUMERIC(19,4),
  GOODS_UNIT     VARCHAR(3),
  GOODS_WEIGHT   NUMERIC(19,4),
  GOODS_PRICE    NUMERIC(19,4),
  GOODS_CURR     VARCHAR(3),
  GOODS_CHK_MARK VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_DECL_HIS_LIST.txt',
'gpfdist://mdw-2:8081/IM_DECL_HIS_LIST.txt',
'gpfdist://mdw-3:8081/IM_DECL_HIS_LIST.txt',
'gpfdist://mdw-4:8081/IM_DECL_HIS_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_ELE_HEAD------------
drop external table IF EXISTS IM_ELE_HEAD_INC_EXT;

create external table IM_ELE_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LICENSE_NO          VARCHAR(20)  ,
  TRADE_CODE          VARCHAR(13),
  TRADE_NAME          VARCHAR(255),
  OWNER_NAME          VARCHAR(255),
  LIC_ALLOW_DATE      TIMESTAMP,
  LIC_SIGN_DATE       TIMESTAMP,
  TRADE_COUNTRY       VARCHAR(3),
  ORIGIN_COUNTRY      VARCHAR(3),
  CONTR_NO            VARCHAR(20),
  IE_PORT1            VARCHAR(4),
  IE_PORT2            VARCHAR(4),
  IE_PORT3            VARCHAR(4),
  TRADE_MODE          VARCHAR(4),
  TRADE_MODE_NAME     VARCHAR(32),
  CODE_T_S            VARCHAR(11),
  G_NAME              VARCHAR(255),
  UNIT_NAME           VARCHAR(32),
  LIC_QTY_TOTAL       NUMERIC(19,4),
  LIC_USD_PRICE_TOTAL NUMERIC(19),
  LIC_MARK            VARCHAR(1),
  SEND_DATE           TIMESTAMP,
  RECEIVE_DATE        TIMESTAMP,
  DELETE_DATE         TIMESTAMP,
  LIC_ITEMS_NO        NUMERIC(9),
  CHECK_MARK          VARCHAR(1),
  SECURITY_ID         VARCHAR(16),
  REUSE1              NUMERIC(9),
  REUSE2              VARCHAR(10),
  NOTE_S              VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_ELE_HEAD.txt',
'gpfdist://mdw-2:8081/IM_ELE_HEAD.txt',
'gpfdist://mdw-3:8081/IM_ELE_HEAD.txt',
'gpfdist://mdw-4:8081/IM_ELE_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_ELE_LIST------------
drop external table IF EXISTS IM_ELE_LIST_INC_EXT;

create external table IM_ELE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LICENSE_NO    VARCHAR(20)  ,
  L_G_NO        NUMERIC(9)  ,
  G_MODEL       VARCHAR(255),
  LIC_QTY       NUMERIC(19,4),
  LIC_USD_PRICE NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_ELE_LIST.txt',
'gpfdist://mdw-2:8081/IM_ELE_LIST.txt',
'gpfdist://mdw-3:8081/IM_ELE_LIST.txt',
'gpfdist://mdw-4:8081/IM_ELE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_EXAM_JOU------------
drop external table IF EXISTS IM_EXAM_JOU_INC_EXT;

create external table IM_EXAM_JOU_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID        VARCHAR(18)  ,
  G_NO            NUMERIC(9)  ,
  LICENSE_NO      VARCHAR(20),
  L_G_NO          NUMERIC(9),
  EXE_MARK        VARCHAR(1),
  ENTRY_MARK      VARCHAR(1),
  TRADE_CO        VARCHAR(10),
  TRADE_NAME      VARCHAR(255),
  OWNER_NAME      VARCHAR(255),
  TRADE_COUNTRY   VARCHAR(3),
  ORIGIN_COUNTRY  VARCHAR(3),
  CONTR_NO        VARCHAR(32),
  TRAF_NAME       VARCHAR(32),
  TRADE_MODE      VARCHAR(4),
  TRADE_MODE_NAME VARCHAR(32),
  I_E_DATE        TIMESTAMP,
  PRE_IMP_DATE    TIMESTAMP,
  PRE_IMP_TIME    TIMESTAMP,
  PRE_IMP_ER      VARCHAR(8),
  MOD_DEL_DATE    TIMESTAMP,
  MOD_DEL_TIME    TIMESTAMP,
  MOD_DEL_ER      VARCHAR(8),
  I_E_PORT        VARCHAR(4),
  IMPLETE_DATE    TIMESTAMP,
  IMPLETE_TIME    TIMESTAMP,
  IMPLETE_ER      VARCHAR(8),
  CODE_TS         VARCHAR(16),
  G_NAME          VARCHAR(255),
  G_MODEL         VARCHAR(255),
  SUB_QTY_1       NUMERIC(19,4),
  SUB_UNIT_NAME   VARCHAR(32),
  SUB_USD_PRICE   NUMERIC(19),
  QTY1            NUMERIC(19,4),
  UNIT_NAME       VARCHAR(32),
  FEED_DATE       TIMESTAMP,
  FEED_MARK       VARCHAR(1),
  M_D_MARK        VARCHAR(1),
  M_COUNT         NUMERIC(9) ,
  RTX_MARK        VARCHAR(1),
  NOTE_S          VARCHAR(255),
  SECURITY_ID     VARCHAR(16),
  REUSE1          NUMERIC(9),
  REUSE2          VARCHAR(10)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_EXAM_JOU.txt',
'gpfdist://mdw-2:8081/IM_EXAM_JOU.txt',
'gpfdist://mdw-3:8081/IM_EXAM_JOU.txt',
'gpfdist://mdw-4:8081/IM_EXAM_JOU.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_EXAM_MANA_HEAD------------
drop external table IF EXISTS IM_EXAM_MANA_HEAD_INC_EXT;

create external table IM_EXAM_MANA_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LICENSE_NO    VARCHAR(20)  ,
  FACT_AQTY     NUMERIC(19,4),
  FACT_AUSED    NUMERIC(19),
  FACT_MARK     VARCHAR(1),
  EXE_MARK      VARCHAR(1),
  DELAY_MARK    VARCHAR(1),
  CLOSE_MARK    VARCHAR(1),
  CLOSE_DATE    TIMESTAMP,
  CLOSE_TIME    TIMESTAMP,
  CLOSE_ER      VARCHAR(8),
  EXE_PORT      VARCHAR(4),
  TRAN_PORT     VARCHAR(4),
  TRAN_DATE     TIMESTAMP,
  TRAN_TIME     TIMESTAMP,
  CHECK_MARK    VARCHAR(1),
  CHECK_DATE    TIMESTAMP,
  CHECK_TIME    TIMESTAMP,
  CHECK_ER      VARCHAR(8),
  SEND_GEN_DATE TIMESTAMP,
  SEND_FOR_DATE TIMESTAMP,
  SOURCE_PORT   VARCHAR(4),
  NOTE_S        VARCHAR(255),
  OVER_ALLOW    VARCHAR(3),
  SECURITY_ID   VARCHAR(16),
  REUSE1        NUMERIC(9),
  REUSE2        VARCHAR(10)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_EXAM_MANA_HEAD.txt',
'gpfdist://mdw-2:8081/IM_EXAM_MANA_HEAD.txt',
'gpfdist://mdw-3:8081/IM_EXAM_MANA_HEAD.txt',
'gpfdist://mdw-4:8081/IM_EXAM_MANA_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_EXAM_MANA_LIST------------
drop external table IF EXISTS IM_EXAM_MANA_LIST_INC_EXT;

create external table IM_EXAM_MANA_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LICENSE_NO   VARCHAR(20)  ,
  L_G_NO       NUMERIC(9)  ,
  L_FACT_AQTY  NUMERIC(19,4) ,
  L_FACT_AUSED NUMERIC(19) ,
  L_REUSE1     NUMERIC(9) ,
  L_REUSE2     VARCHAR(10)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_EXAM_MANA_LIST.txt',
'gpfdist://mdw-2:8081/IM_EXAM_MANA_LIST.txt',
'gpfdist://mdw-3:8081/IM_EXAM_MANA_LIST.txt',
'gpfdist://mdw-4:8081/IM_EXAM_MANA_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_FASCICLE_LIST------------
drop external table IF EXISTS IM_FASCICLE_LIST_INC_EXT;

create external table IM_FASCICLE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12),
  FASCICLE_NO VARCHAR(12)  ,
  CONTR_ITEM  NUMERIC(19)  ,
  APPR_QTY    NUMERIC(19,4),
  FACT_QTY    NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_FASCICLE_LIST.txt',
'gpfdist://mdw-2:8081/IM_FASCICLE_LIST.txt',
'gpfdist://mdw-3:8081/IM_FASCICLE_LIST.txt',
'gpfdist://mdw-4:8081/IM_FASCICLE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_LIC_CODE_TS------------
drop external table IF EXISTS IM_LIC_CODE_TS_INC_EXT;

create external table IM_LIC_CODE_TS_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LICENSE_NO   VARCHAR(20)  ,
  CODE_T_S     VARCHAR(20),
  BAD_CODE_T_S VARCHAR(20)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_LIC_CODE_TS.txt',
'gpfdist://mdw-2:8081/IM_LIC_CODE_TS.txt',
'gpfdist://mdw-3:8081/IM_LIC_CODE_TS.txt',
'gpfdist://mdw-4:8081/IM_LIC_CODE_TS.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_TRAN_JOU------------
drop external table IF EXISTS IM_TRAN_JOU_INC_EXT;

create external table IM_TRAN_JOU_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  I_E_PORT      VARCHAR(4),
  ENTRY_ID      VARCHAR(18)  ,
  G_NO          NUMERIC(9)  ,
  ENTRY_LIC_NO  VARCHAR(20),
  CODE_TS       VARCHAR(16),
  G_NAME        VARCHAR(255),
  G_MODEL       VARCHAR(255),
  QTY_1         NUMERIC(19,4),
  UNIT_NAME     VARCHAR(32),
  USD_PRICE     NUMERIC(19),
  REL_DATE      TIMESTAMP,
  REL_TIME      TIMESTAMP,
  REL_ER        VARCHAR(8),
  AFTER_MARK    VARCHAR(1),
  SEND_GEN_DATE TIMESTAMP,
  NOTE_S        VARCHAR(255),
  SECURITY_ID   VARCHAR(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_TRAN_JOU.txt',
'gpfdist://mdw-2:8081/IM_TRAN_JOU.txt',
'gpfdist://mdw-3:8081/IM_TRAN_JOU.txt',
'gpfdist://mdw-4:8081/IM_TRAN_JOU.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_TRANS_ALARM_CONTA_REL------------
drop external table IF EXISTS IM_TRANS_ALARM_CONTA_REL_INC_EXT;

create external table IM_TRANS_ALARM_CONTA_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO           VARCHAR(16)  ,
  RECORD_NUMBER    VARCHAR(3) ,
  CONTA_NO         VARCHAR(11)  ,
  TRANS_NAME       VARCHAR(32),
  TRANS_WEIGHT     NUMERIC(19,4),
  CONTA_MODEL      VARCHAR(2),
  SEAL_NO          VARCHAR(10),
  SEAL_NUM         NUMERIC(9),
  CONTA_CHECK_MARK VARCHAR(1),
  CONTA_CHK_ER     VARCHAR(8),
  CONTA_CHK_TIME   TIMESTAMP,
  EXAM_FLAG        VARCHAR(6),
  CONTA1           VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_TRANS_ALARM_CONTA_REL.txt',
'gpfdist://mdw-2:8081/IM_TRANS_ALARM_CONTA_REL.txt',
'gpfdist://mdw-3:8081/IM_TRANS_ALARM_CONTA_REL.txt',
'gpfdist://mdw-4:8081/IM_TRANS_ALARM_CONTA_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_TRANS_ALARM_GOODS_CONTA_REL------------
drop external table IF EXISTS IM_TRANS_ALARM_GOODS_CONTA_REL_INC_EXT;

create external table IM_TRANS_ALARM_GOODS_CONTA_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO             VARCHAR(16)  ,
  RECORD_NUMBER      VARCHAR(3) ,
  G_NO               NUMERIC(9)  ,
  CONTA_NO           VARCHAR(11)  ,
  CONTA_GOODS_COUNT  NUMERIC(9),
  CONTA_GOODS_WEIGHT NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_TRANS_ALARM_GOODS_CONTA_REL.txt',
'gpfdist://mdw-2:8081/IM_TRANS_ALARM_GOODS_CONTA_REL.txt',
'gpfdist://mdw-3:8081/IM_TRANS_ALARM_GOODS_CONTA_REL.txt',
'gpfdist://mdw-4:8081/IM_TRANS_ALARM_GOODS_CONTA_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_TRANS_ALARM_LIST_REL------------
drop external table IF EXISTS IM_TRANS_ALARM_LIST_REL_INC_EXT;

create external table IM_TRANS_ALARM_LIST_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO        VARCHAR(16)  ,
  RECORD_NUMBER VARCHAR(3)  ,
  TRAF_MODE     VARCHAR(1),
  SHIP_ID       VARCHAR(32),
  SHIP_NAME_EN  VARCHAR(255),
  VOYAGE_NO     VARCHAR(32),
  BILL_NO       VARCHAR(32),
  I_E_DATE      TIMESTAMP,
  ENTRY_NO      VARCHAR(18),
  BIND_FLAG     VARCHAR(1),
  REC_FLAG      VARCHAR(1),
  PACK_NO       NUMERIC(9),
  GROSS_WT      NUMERIC(19,4),
  GOODS_COUNT   NUMERIC(9),
  CONTA_C       NUMERIC(9),
  OWNER_NAME    VARCHAR(255),
  EX_CHECK_FLAG VARCHAR(1),
  EX_CHECK_TIME TIMESTAMP,
  REAL_PACK_NO  NUMERIC(9),
  REAL_GROSS_WT NUMERIC(19,4),
  NOTE          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_TRANS_ALARM_LIST_REL.txt',
'gpfdist://mdw-2:8081/IM_TRANS_ALARM_LIST_REL.txt',
'gpfdist://mdw-3:8081/IM_TRANS_ALARM_LIST_REL.txt',
'gpfdist://mdw-4:8081/IM_TRANS_ALARM_LIST_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_TRANS_CONTA_REL------------
drop external table IF EXISTS IM_TRANS_CONTA_REL_INC_EXT;

create external table IM_TRANS_CONTA_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO           VARCHAR(16)  ,
  RECORD_NUMBER    VARCHAR(3) ,
  CONTA_NO         VARCHAR(11)  ,
  TRANS_NAME       VARCHAR(32),
  TRANS_WEIGHT     NUMERIC(19,4) ,
  CONTA_MODEL      VARCHAR(2),
  SEAL_NO          VARCHAR(10),
  SEAL_NUM         NUMERIC(9) ,
  CONTA_CHECK_MARK VARCHAR(1),
  CONTA_CHK_ER     VARCHAR(8),
  CONTA_CHK_TIME   TIMESTAMP,
  EXAM_FLAG        VARCHAR(6),
  CONTA1           VARCHAR(32),
  SEND_PORT        VARCHAR(4),
  RECV_PORT        VARCHAR(4),
  ESEAL_ID         VARCHAR(128)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_TRANS_CONTA_REL.txt',
'gpfdist://mdw-2:8081/IM_TRANS_CONTA_REL.txt',
'gpfdist://mdw-3:8081/IM_TRANS_CONTA_REL.txt',
'gpfdist://mdw-4:8081/IM_TRANS_CONTA_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_TRANS_GOODS_CONTA_REL------------
drop external table IF EXISTS IM_TRANS_GOODS_CONTA_REL_INC_EXT;

create external table IM_TRANS_GOODS_CONTA_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO             VARCHAR(16)  ,
  RECORD_NUMBER      VARCHAR(3) ,
  G_NO               NUMERIC(9) ,
  CONTA_NO           VARCHAR(11)  ,
  CONTA_GOODS_COUNT  NUMERIC(9) ,
  CONTA_GOODS_WEIGHT NUMERIC(19,4) ,
  SEND_PORT          VARCHAR(4),
  RECV_PORT          VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_TRANS_GOODS_CONTA_REL.txt',
'gpfdist://mdw-2:8081/IM_TRANS_GOODS_CONTA_REL.txt',
'gpfdist://mdw-3:8081/IM_TRANS_GOODS_CONTA_REL.txt',
'gpfdist://mdw-4:8081/IM_TRANS_GOODS_CONTA_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_TRANS_HIS_CONTA_REL------------
drop external table IF EXISTS IM_TRANS_HIS_CONTA_REL_INC_EXT;

create external table IM_TRANS_HIS_CONTA_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO           VARCHAR(16)  ,
  RECORD_NUMBER    VARCHAR(3) ,
  CONTA_NO         VARCHAR(11)  ,
  TRANS_NAME       VARCHAR(32),
  TRANS_WEIGHT     NUMERIC(19,4),
  CONTA_MODEL      VARCHAR(2),
  SEAL_NO          VARCHAR(10),
  SEAL_NUM         NUMERIC(9),
  CONTA_CHECK_MARK VARCHAR(1),
  CONTA_CHK_ER     VARCHAR(8),
  CONTA_CHK_TIME   TIMESTAMP,
  EXAM_FLAG        VARCHAR(6),
  CONTA1           VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_TRANS_HIS_CONTA_REL.txt',
'gpfdist://mdw-2:8081/IM_TRANS_HIS_CONTA_REL.txt',
'gpfdist://mdw-3:8081/IM_TRANS_HIS_CONTA_REL.txt',
'gpfdist://mdw-4:8081/IM_TRANS_HIS_CONTA_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_TRANS_HIS_GOODS_CONTA_REL------------
drop external table IF EXISTS IM_TRANS_HIS_GOODS_CONTA_REL_INC_EXT;

create external table IM_TRANS_HIS_GOODS_CONTA_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO             VARCHAR(16)  ,
  RECORD_NUMBER      VARCHAR(3) ,
  G_NO               NUMERIC(9)  ,
  CONTA_NO           VARCHAR(11)  ,
  CONTA_GOODS_COUNT  NUMERIC(9),
  CONTA_GOODS_WEIGHT NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_TRANS_HIS_GOODS_CONTA_REL.txt',
'gpfdist://mdw-2:8081/IM_TRANS_HIS_GOODS_CONTA_REL.txt',
'gpfdist://mdw-3:8081/IM_TRANS_HIS_GOODS_CONTA_REL.txt',
'gpfdist://mdw-4:8081/IM_TRANS_HIS_GOODS_CONTA_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_TRANS_HIS_LIST_REL------------
drop external table IF EXISTS IM_TRANS_HIS_LIST_REL_INC_EXT;

create external table IM_TRANS_HIS_LIST_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO        VARCHAR(16)  ,
  RECORD_NUMBER VARCHAR(3)  ,
  TRAF_MODE     VARCHAR(1),
  SHIP_ID       VARCHAR(32),
  SHIP_NAME_EN  VARCHAR(255),
  VOYAGE_NO     VARCHAR(32),
  BILL_NO       VARCHAR(32),
  I_E_DATE      TIMESTAMP,
  ENTRY_NO      VARCHAR(18),
  BIND_FLAG     VARCHAR(1),
  REC_FLAG      VARCHAR(1),
  PACK_NO       NUMERIC(9),
  GROSS_WT      NUMERIC(19,4),
  GOODS_COUNT   NUMERIC(9),
  CONTA_C       NUMERIC(9),
  OWNER_NAME    VARCHAR(255),
  EX_CHECK_FLAG VARCHAR(1),
  EX_CHECK_TIME TIMESTAMP,
  REAL_PACK_NO  NUMERIC(9),
  REAL_GROSS_WT NUMERIC(19,4),
  NOTE          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_TRANS_HIS_LIST_REL.txt',
'gpfdist://mdw-2:8081/IM_TRANS_HIS_LIST_REL.txt',
'gpfdist://mdw-3:8081/IM_TRANS_HIS_LIST_REL.txt',
'gpfdist://mdw-4:8081/IM_TRANS_HIS_LIST_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IM_TRANS_LIST_REL------------
drop external table IF EXISTS IM_TRANS_LIST_REL_INC_EXT;

create external table IM_TRANS_LIST_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO         VARCHAR(16)  ,
  RECORD_NUMBER  VARCHAR(3) ,
  TRAF_MODE      VARCHAR(1),
  SHIP_ID        VARCHAR(32),
  SHIP_NAME_EN   VARCHAR(255),
  VOYAGE_NO      VARCHAR(32),
  BILL_NO        VARCHAR(32),
  I_E_DATE       TIMESTAMP,
  ENTRY_NO       VARCHAR(18),
  BIND_FLAG      VARCHAR(1),
  REC_FLAG       VARCHAR(1),
  PACK_NO        NUMERIC(9) ,
  GROSS_WT       NUMERIC(19,4) ,
  GOODS_COUNT    NUMERIC(9) ,
  CONTA_C        NUMERIC(9) ,
  OWNER_NAME     VARCHAR(255),
  EX_CHECK_FLAG  VARCHAR(1),
  EX_CHECK_TIME  TIMESTAMP,
  REAL_PACK_NO   NUMERIC(9) ,
  REAL_GROSS_WT  NUMERIC(19,4) ,
  NOTE           VARCHAR(255),
  SEND_PORT      VARCHAR(4),
  RECV_PORT      VARCHAR(4),
  EX_CHECK_OP_ID VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/IM_TRANS_LIST_REL.txt',
'gpfdist://mdw-2:8081/IM_TRANS_LIST_REL.txt',
'gpfdist://mdw-3:8081/IM_TRANS_LIST_REL.txt',
'gpfdist://mdw-4:8081/IM_TRANS_LIST_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------IMA_APPL_CLOSE------------
drop external table IF EXISTS IMA_APPL_CLOSE_INC_EXT;

create external table IMA_APPL_CLOSE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO  VARCHAR(12)  ,
  CONTR_ITEM NUMERIC(19)  ,
  CODE_TS    VARCHAR(16),
  G_NAME     VARCHAR(50),
  G_MODEL    VARCHAR(50),
  G_QTY      NUMERIC(19,4),
  G_UNIT     VARCHAR(3),
  DECL_PRICE NUMERIC(19,4),
  G_AMT      NUMERIC(19,5),
  PROC_MODE  VARCHAR(1),
  BOOK_NO    NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/IMA_APPL_CLOSE.txt',
'gpfdist://mdw-2:8081/IMA_APPL_CLOSE.txt',
'gpfdist://mdw-3:8081/IMA_APPL_CLOSE.txt',
'gpfdist://mdw-4:8081/IMA_APPL_CLOSE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------INCOME_INFO------------
drop external table IF EXISTS INCOME_INFO_INC_EXT;

create external table INCOME_INFO_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RPTNO        VARCHAR(32)  ,
  CORCORPNAME  VARCHAR(128),
  TRADE_CO     VARCHAR(10),
  CSTSETCODE   VARCHAR(1),
  TXCCY        VARCHAR(3),
  TXAMT        NUMERIC(21,2),
  INCHARGECCY  VARCHAR(3),
  INCHARGEAMT  NUMERIC(21,2),
  OUTCHARGECCY VARCHAR(3),
  OUTCHARGEAMT NUMERIC(21,2),
  OPPNAME      VARCHAR(128),
  COUNTRYCODE  VARCHAR(3),
  RCVTYPE      VARCHAR(1),
  ISWRITEOFF   VARCHAR(1),
  RECV_DATE    TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/INCOME_INFO.txt',
'gpfdist://mdw-2:8081/INCOME_INFO.txt',
'gpfdist://mdw-3:8081/INCOME_INFO.txt',
'gpfdist://mdw-4:8081/INCOME_INFO.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------INVESTER_REL------------
drop external table IF EXISTS INVESTER_REL_INC_EXT;

create external table INVESTER_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO    VARCHAR(10)  ,
  INV_NO      NUMERIC(19)  ,
  INV_CO      VARCHAR(255),
  INV_MOD     VARCHAR(32),
  INV_FUND    NUMERIC(19,4),
  ACT_FUND    NUMERIC(19,4),
  INV_DATE    TIMESTAMP,
  INV_COUNTRY VARCHAR(3)
)
LOCATION( 
'gpfdist://mdw-1:8081/INVESTER_REL.txt',
'gpfdist://mdw-2:8081/INVESTER_REL.txt',
'gpfdist://mdw-3:8081/INVESTER_REL.txt',
'gpfdist://mdw-4:8081/INVESTER_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------INVLOG_REL------------
drop external table IF EXISTS INVLOG_REL_INC_EXT;

create external table INVLOG_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LOG_ID           NUMERIC(19)  ,
  LOG_MODE         VARCHAR(4),
  LOG_DATE         TIMESTAMP ,
  LOG_OPER_ID      VARCHAR(32),
  LOG_CUSTOMS_CODE VARCHAR(4),
  LOG_COMPUTER     VARCHAR(32),
  TRADE_CO         VARCHAR(10),
  INV_NO           NUMERIC(19),
  INV_CO           VARCHAR(255),
  INV_MOD          VARCHAR(32),
  INV_FUND         NUMERIC(19,4),
  ACT_FUND         NUMERIC(19,4),
  INV_DATE         TIMESTAMP,
  INV_COUNTRY      VARCHAR(3)
)
LOCATION( 
'gpfdist://mdw-1:8081/INVLOG_REL.txt',
'gpfdist://mdw-2:8081/INVLOG_REL.txt',
'gpfdist://mdw-3:8081/INVLOG_REL.txt',
'gpfdist://mdw-4:8081/INVLOG_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------JOB_PARAMETER------------
drop external table IF EXISTS JOB_PARAMETER_INC_EXT;

create external table JOB_PARAMETER_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  JOB_NAME        VARCHAR(32)  ,
  PARAMETER_NAME  VARCHAR(32)  ,
  PARAMETER_VALUE VARCHAR(32)  ,
  UPDATE_TIME     TIMESTAMP  ,
  NOTES           VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/JOB_PARAMETER.txt',
'gpfdist://mdw-2:8081/JOB_PARAMETER.txt',
'gpfdist://mdw-3:8081/JOB_PARAMETER.txt',
'gpfdist://mdw-4:8081/JOB_PARAMETER.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------LSP_CHK------------
drop external table IF EXISTS LSP_CHK_INC_EXT;

create external table LSP_CHK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LSP_ID      VARCHAR(18)  ,
  LSP_TYPE    VARCHAR(1)  ,
  I_E_FLAG    VARCHAR(1)  ,
  ENTRY_ID    VARCHAR(18)  ,
  G_NO        NUMERIC(9)  ,
  CREATE_DATE TIMESTAMP,
  RMB_PRICE   NUMERIC(19),
  USD_PRICE   NUMERIC(19),
  G_QTY       NUMERIC(19,5),
  G_UNIT      VARCHAR(3),
  QTY_1       NUMERIC(19,5),
  UNIT_1      VARCHAR(3),
  CHK_MARK    VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/LSP_CHK.txt',
'gpfdist://mdw-2:8081/LSP_CHK.txt',
'gpfdist://mdw-3:8081/LSP_CHK.txt',
'gpfdist://mdw-4:8081/LSP_CHK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------LSP_HEAD------------
drop external table IF EXISTS LSP_HEAD_INC_EXT;

create external table LSP_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LSP_ID             VARCHAR(32)  ,
  LSP_TYPE           VARCHAR(1)  ,
  I_E_FLAG           VARCHAR(1)  ,
  EPORT_ID           VARCHAR(18),
  LSP_DEPART_CODE    VARCHAR(32),
  LSL_DEPART_NAME    VARCHAR(255),
  DECL_PORT          VARCHAR(4),
  OWNER_CODE         VARCHAR(10),
  OWNER_ST_CODE      VARCHAR(32),
  OWNER_NAME         VARCHAR(255),
  TRADE_MODE         VARCHAR(4),
  TRADE_MODE_NAME    VARCHAR(32),
  CONTR_NO           VARCHAR(32),
  TRAF_NAME          VARCHAR(255),
  VOYAGE_NO          VARCHAR(32),
  BILL_NO            VARCHAR(32),
  TRADE_COUNTRY      VARCHAR(4),
  TRADE_COUNTRY_NAME VARCHAR(32),
  DISTRICT_CODE      VARCHAR(8),
  APPR_QTY           NUMERIC(19,5),
  QTY_UNIT           VARCHAR(3),
  APPR_PRICE         NUMERIC(19,4),
  PRICE_CURR         VARCHAR(3),
  OP_FLAG            VARCHAR(1),
  SIGN_DATE          TIMESTAMP,
  VALID_DATE         TIMESTAMP,
  NOTES              VARCHAR(255),
  SIGN_DATA          VARCHAR(380),
  PROC_MARK          VARCHAR(8),
  ENTRY_ID           VARCHAR(18),
  VERIFY_ER          VARCHAR(32),
  VERIFY_DATE        TIMESTAMP,
  CLEAR_ER           VARCHAR(32),
  CLEAR_DATE         TIMESTAMP,
  REVOKE_ER          VARCHAR(32),
  REVOKE_DATE        TIMESTAMP,
  CREATE_DATE        TIMESTAMP 
)
LOCATION( 
'gpfdist://mdw-1:8081/LSP_HEAD.txt',
'gpfdist://mdw-2:8081/LSP_HEAD.txt',
'gpfdist://mdw-3:8081/LSP_HEAD.txt',
'gpfdist://mdw-4:8081/LSP_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------LSP_LIST------------
drop external table IF EXISTS LSP_LIST_INC_EXT;

create external table LSP_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LSP_ID         VARCHAR(32)  ,
  LSP_TYPE       VARCHAR(1)  ,
  I_E_FLAG       VARCHAR(1)  ,
  G_NO           NUMERIC(9)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  TRADE_TOTAL    NUMERIC(19,4),
  TRADE_CURR     VARCHAR(3),
  G_QTY          NUMERIC(19,4),
  G_UNIT         VARCHAR(3),
  QTY_1          NUMERIC(19,4),
  UNIT_1         VARCHAR(3),
  PACK_NO        NUMERIC(19,4),
  PACK_TYPE      VARCHAR(32),
  NOTE           VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/LSP_LIST.txt',
'gpfdist://mdw-2:8081/LSP_LIST.txt',
'gpfdist://mdw-3:8081/LSP_LIST.txt',
'gpfdist://mdw-4:8081/LSP_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MAIL_FILE------------
drop external table IF EXISTS MAIL_FILE_INC_EXT;

create external table MAIL_FILE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  NO           NUMERIC(9)  ,
  SEND_PORT    VARCHAR(4),
  RECV_PORT    VARCHAR(4),
  NOTE         VARCHAR(1024),
  PROCESS_MARK VARCHAR(1),
  RECV_NAME    VARCHAR(8),
  RECV_DATE    TIMESTAMP,
  CA_KEY       VARCHAR(380),
  HASH_SIGN    VARCHAR(380)
)
LOCATION( 
'gpfdist://mdw-1:8081/MAIL_FILE.txt',
'gpfdist://mdw-2:8081/MAIL_FILE.txt',
'gpfdist://mdw-3:8081/MAIL_FILE.txt',
'gpfdist://mdw-4:8081/MAIL_FILE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MANA_REL------------
drop external table IF EXISTS MANA_REL_INC_EXT;

create external table MANA_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO     VARCHAR(10)  ,
  MANAG_NO     NUMERIC(19)  ,
  MANAG_NAME   VARCHAR(32),
  MANAG_TITLE  VARCHAR(32),
  MANAG_NAT    VARCHAR(3),
  MANAG_ID     VARCHAR(32),
  MANAG_BIR    TIMESTAMP,
  MANAG_SEX    VARCHAR(2),
  MANAG_ADDR   VARCHAR(255),
  MANAG_TEL_BP VARCHAR(32),
  MANAG_NOTE   VARCHAR(255),
  MANAG_DEGREE VARCHAR(32),
  MANAG_MAR    VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/MANA_REL.txt',
'gpfdist://mdw-2:8081/MANA_REL.txt',
'gpfdist://mdw-3:8081/MANA_REL.txt',
'gpfdist://mdw-4:8081/MANA_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MANIFEST_CHK------------
drop external table IF EXISTS MANIFEST_CHK_INC_EXT;

create external table MANIFEST_CHK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  I_E_FLAG     VARCHAR(1)  ,
  FORM_ID      VARCHAR(18)  ,
  SHIP_ID      VARCHAR(32)  ,
  VOYAGE_NO    VARCHAR(32)  ,
  BILL_NO      VARCHAR(32)  ,
  TRAF_MODE    VARCHAR(1)  ,
  CUSTOMS_CODE VARCHAR(4)  ,
  SHIP_NAME_EN VARCHAR(255),
  FORM_FLAG    VARCHAR(1),
  PACK_NO      NUMERIC(19,5),
  GROSS_WT     NUMERIC(19,5),
  CHK_MARK     VARCHAR(1),
  CHK_ER       VARCHAR(8),
  CHK_DATE     TIMESTAMP,
  DELAY_DAYS   NUMERIC(19),
  REL_ER       VARCHAR(8),
  REL_DATE     TIMESTAMP,
  COUNTRY_CODE VARCHAR(3),
  NOTES        VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/MANIFEST_CHK.txt',
'gpfdist://mdw-2:8081/MANIFEST_CHK.txt',
'gpfdist://mdw-3:8081/MANIFEST_CHK.txt',
'gpfdist://mdw-4:8081/MANIFEST_CHK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MANIFEST_CHK_LOG------------
drop external table IF EXISTS MANIFEST_CHK_LOG_INC_EXT;

create external table MANIFEST_CHK_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FORM_ID      VARCHAR(18)  ,
  CREATE_DATE  TIMESTAMP ,
  OPER_FLAG    VARCHAR(1),
  OPER_ER      VARCHAR(8),
  FORM_FLAG    VARCHAR(1),
  SHIP_ID      VARCHAR(32),
  VOYAGE_NO    VARCHAR(32),
  SHIP_NAME_EN VARCHAR(255),
  BILL_NO      VARCHAR(32)  ,
  TRAF_MODE    VARCHAR(1),
  CUSTOMS_CODE VARCHAR(4),
  I_E_FLAG     VARCHAR(1),
  PACK_NO      NUMERIC(19,5),
  GROSS_WT     NUMERIC(19,5),
  CHK_MARK     VARCHAR(1),
  CHK_ER       VARCHAR(8),
  CHK_DATE     TIMESTAMP,
  REL_ER       VARCHAR(8),
  REL_DATE     TIMESTAMP,
  COUNTRY_CODE VARCHAR(3),
  NOTES        VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/MANIFEST_CHK_LOG.txt',
'gpfdist://mdw-2:8081/MANIFEST_CHK_LOG.txt',
'gpfdist://mdw-3:8081/MANIFEST_CHK_LOG.txt',
'gpfdist://mdw-4:8081/MANIFEST_CHK_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MANIFEST_CONTA------------
drop external table IF EXISTS MANIFEST_CONTA_INC_EXT;

create external table MANIFEST_CONTA_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  I_E_FLAG     VARCHAR(1)  ,
  TRAF_MODE    VARCHAR(1)  ,
  VOYAGE_NO    VARCHAR(32)  ,
  BILL_NO      VARCHAR(32)  ,
  CONTA_ID     VARCHAR(32)  ,
  SHIP_ID      VARCHAR(32)  ,
  CONTA_MODEL  VARCHAR(2),
  SEAL_NO      VARCHAR(32),
  CONTA_WT     NUMERIC(19,5),
  CONTA_FLAG   VARCHAR(1),
  PACK_NO      NUMERIC(19,5),
  MAIN_G_NAME  VARCHAR(255),
  NOTES        VARCHAR(255),
  CUSTOMS_CODE VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/MANIFEST_CONTA.txt',
'gpfdist://mdw-2:8081/MANIFEST_CONTA.txt',
'gpfdist://mdw-3:8081/MANIFEST_CONTA.txt',
'gpfdist://mdw-4:8081/MANIFEST_CONTA.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MANIFEST_EXCH_LOG------------
drop external table IF EXISTS MANIFEST_EXCH_LOG_INC_EXT;

create external table MANIFEST_EXCH_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOMS_CODE     VARCHAR(4)  ,
  VOYAGE_NO        VARCHAR(32)  ,
  SHIP_ID          VARCHAR(32)  ,
  BILL_NO          VARCHAR(32)  ,
  I_E_DATE         TIMESTAMP  ,
  I_E_FLAG         VARCHAR(1),
  TRAF_MODE        VARCHAR(1),
  SHIP_NAME_EN     VARCHAR(255),
  NOTICE_DATE      TIMESTAMP,
  FILE_NAME        VARCHAR(50),
  MANTFEST_NO      VARCHAR(18),
  OP_MODE          VARCHAR(3),
  MODIFY_TIMES     NUMERIC(9),
  NEW_CHANNEL      VARCHAR(1),
  SUR_NOTICE_DATE  TIMESTAMP,
  SUR_FILE_NAME    VARCHAR(50),
  SUR_ER           VARCHAR(8),
  INSE_NOTICE_DATE TIMESTAMP,
  INSE_FILE_NAME   VARCHAR(50),
  INSE_CHANNEL     VARCHAR(1),
  EXCH_NOTICE_DATE TIMESTAMP,
  EXCH_FILE_NAME   VARCHAR(50),
  EXCH_OP_TACHE    VARCHAR(3),
  EXCH_ER          VARCHAR(8),
  CHK_NOTICE_DATE  TIMESTAMP,
  CHK_FILE_NAME    VARCHAR(50),
  CHK_OP_TACHE     VARCHAR(3),
  CHK_ER           VARCHAR(8),
  REL_NOTICE_DATE  TIMESTAMP,
  REL_FILE_NAME    VARCHAR(50),
  REL_OP_TACHE     VARCHAR(3),
  REL_ER           VARCHAR(8),
  NOTES            VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/MANIFEST_EXCH_LOG.txt',
'gpfdist://mdw-2:8081/MANIFEST_EXCH_LOG.txt',
'gpfdist://mdw-3:8081/MANIFEST_EXCH_LOG.txt',
'gpfdist://mdw-4:8081/MANIFEST_EXCH_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MANIFEST_EXCH_LOG_BAK------------
drop external table IF EXISTS MANIFEST_EXCH_LOG_BAK_INC_EXT;

create external table MANIFEST_EXCH_LOG_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOMS_CODE     VARCHAR(4)  ,
  VOYAGE_NO        VARCHAR(32)  ,
  SHIP_ID          VARCHAR(32)  ,
  BILL_NO          VARCHAR(32)  ,
  I_E_DATE         TIMESTAMP  ,
  CREATE_DATE      TIMESTAMP  ,
  I_E_FLAG         VARCHAR(1),
  TRAF_MODE        VARCHAR(1),
  SHIP_NAME_EN     VARCHAR(255),
  NOTICE_DATE      TIMESTAMP,
  FILE_NAME        VARCHAR(50),
  MANTFEST_NO      VARCHAR(18),
  OP_MODE          VARCHAR(3),
  MODIFY_TIMES     NUMERIC(9),
  INSE_NOTICE_DATE TIMESTAMP,
  INSE_FILE_NAME   VARCHAR(50),
  INSE_CHANNEL     VARCHAR(1),
  NOTES            VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/MANIFEST_EXCH_LOG_BAK.txt',
'gpfdist://mdw-2:8081/MANIFEST_EXCH_LOG_BAK.txt',
'gpfdist://mdw-3:8081/MANIFEST_EXCH_LOG_BAK.txt',
'gpfdist://mdw-4:8081/MANIFEST_EXCH_LOG_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MANIFEST_HEAD------------
drop external table IF EXISTS MANIFEST_HEAD_INC_EXT;

create external table MANIFEST_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  I_E_FLAG        VARCHAR(1)  ,
  CUSTOMS_CODE    VARCHAR(4)  ,
  TRAF_MODE       VARCHAR(1)  ,
  VOYAGE_NO       VARCHAR(32)  ,
  SHIP_ID         VARCHAR(32)  ,
  I_E_DATE        TIMESTAMP  ,
  I_E_PORT        VARCHAR(4),
  SHIP_NAME_CN    VARCHAR(255),
  SHIP_NAME_EN    VARCHAR(255),
  CONTA_NUM       NUMERIC(19),
  EMPTY_CONTA_NUM NUMERIC(19),
  T_GROSS_WT      NUMERIC(19,5),
  T_PACK_NO       NUMERIC(19),
  BILL_NUM        NUMERIC(19),
  TAL_FLAG        VARCHAR(1),
  D_MODE          VARCHAR(1),
  D_DATE          TIMESTAMP,
  BILL_FLAG       VARCHAR(1),
  OP_ID           VARCHAR(8),
  MANIFEST_NO     VARCHAR(18)
)
LOCATION( 
'gpfdist://mdw-1:8081/MANIFEST_HEAD.txt',
'gpfdist://mdw-2:8081/MANIFEST_HEAD.txt',
'gpfdist://mdw-3:8081/MANIFEST_HEAD.txt',
'gpfdist://mdw-4:8081/MANIFEST_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MANIFEST_HEAD_XMS_LOG------------
drop external table IF EXISTS MANIFEST_HEAD_XMS_LOG_INC_EXT;

create external table MANIFEST_HEAD_XMS_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  I_E_FLAG     VARCHAR(1)  ,
  CUSTOMS_CODE VARCHAR(4)  ,
  TRAF_MODE    VARCHAR(1)  ,
  VOYAGE_NO    VARCHAR(32)  ,
  SHIP_ID      VARCHAR(32)  ,
  I_E_DATE     TIMESTAMP  ,
  CREATE_DATE  TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/MANIFEST_HEAD_XMS_LOG.txt',
'gpfdist://mdw-2:8081/MANIFEST_HEAD_XMS_LOG.txt',
'gpfdist://mdw-3:8081/MANIFEST_HEAD_XMS_LOG.txt',
'gpfdist://mdw-4:8081/MANIFEST_HEAD_XMS_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MANIFEST_LIST------------
drop external table IF EXISTS MANIFEST_LIST_INC_EXT;

create external table MANIFEST_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  I_E_FLAG            VARCHAR(1)  ,
  CUSTOMS_CODE        VARCHAR(4)  ,
  TRAF_MODE           VARCHAR(1)  ,
  VOYAGE_NO           VARCHAR(32)  ,
  BILL_NO             VARCHAR(32)  ,
  SHIP_ID             VARCHAR(32)  ,
  I_E_DATE            TIMESTAMP  ,
  BILL_FLAG           VARCHAR(1),
  SHIP_NAME_EN        VARCHAR(255),
  CONSIGNOR           VARCHAR(255),
  CONSIGNEE           VARCHAR(255),
  LOADING_PORT        VARCHAR(6),
  DESTINATION_PORT    VARCHAR(6),
  DISTRICT_CODE       VARCHAR(5),
  DISCHARGE_PLACE     VARCHAR(8),
  MAIN_G_NAME         VARCHAR(255),
  PACK_NO             NUMERIC(19,5),
  WRAP_TYPE           VARCHAR(32),
  VOLUME              NUMERIC(19),
  MARK_CONTR          VARCHAR(32),
  CONTA_NUM           NUMERIC(19),
  GROSS_WT            NUMERIC(19,5),
  BILL_PACK_NO        NUMERIC(19,5),
  BILL_GROSS_WT       NUMERIC(19,5),
  TAL_FLAG            VARCHAR(1),
  TAL_DATE            TIMESTAMP,
  TAL_ER              VARCHAR(8),
  SUR_DATE            TIMESTAMP,
  SUR_ER              VARCHAR(8),
  EXAM_FLAG           VARCHAR(1),
  URG_DATE            TIMESTAMP,
  URG_ER              VARCHAR(8),
  SEL_DATE            TIMESTAMP,
  SEL_ER              VARCHAR(8),
  ITEMS_NO            NUMERIC(19),
  TOTAL_VALUE         NUMERIC(19,4),
  CURR_CODE           VARCHAR(3),
  I_E_PORT            VARCHAR(4),
  DISTRIBUTE_FLAG     VARCHAR(1),
  DISTRIBUTE_DATE     TIMESTAMP,
  TRANS_NO            VARCHAR(32),
  ARRIVE_DATE         TIMESTAMP,
  BILL_NO_ORI         VARCHAR(32),
  RSK_ER              VARCHAR(8),
  RSK_DATE            TIMESTAMP,
  RSK_CODE            VARCHAR(2),
  RSK_LEVEL           VARCHAR(1),
  RELEASE_ER          VARCHAR(8),
  RELEASE_DATE        TIMESTAMP,
  DISCHARGE_PLACE_ORI VARCHAR(8),
  CN_SHIP_ID          VARCHAR(15),
  CN_SHIP_ER          VARCHAR(8),
  CN_SHIP_DATE        TIMESTAMP,
  D_DATE              TIMESTAMP,
  RSK_PHONE           VARCHAR(32),
  RSK_RESULT          VARCHAR(2),
  RSKAPPLY_ER         VARCHAR(8),
  NOTES               VARCHAR(255),
  CREATE_DATE         TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/MANIFEST_LIST.txt',
'gpfdist://mdw-2:8081/MANIFEST_LIST.txt',
'gpfdist://mdw-3:8081/MANIFEST_LIST.txt',
'gpfdist://mdw-4:8081/MANIFEST_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MANIFEST_LIST_CONTA------------
drop external table IF EXISTS MANIFEST_LIST_CONTA_INC_EXT;

create external table MANIFEST_LIST_CONTA_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  I_E_FLAG     VARCHAR(1)  ,
  CUSTOMS_CODE VARCHAR(4)  ,
  TRAF_MODE    VARCHAR(1)  ,
  VOYAGE_NO    VARCHAR(32)  ,
  BILL_NO      VARCHAR(32)  ,
  CONTA_ID     VARCHAR(32)  ,
  SHIP_ID      VARCHAR(32)  ,
  RSK_ER       VARCHAR(8),
  RSK_DATE     TIMESTAMP,
  RSK_CODE     VARCHAR(2),
  RSK_LEVEL    VARCHAR(1),
  RSK_RESULT   VARCHAR(2),
  RELEASE_ER   VARCHAR(8),
  RELEASE_DATE TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/MANIFEST_LIST_CONTA.txt',
'gpfdist://mdw-2:8081/MANIFEST_LIST_CONTA.txt',
'gpfdist://mdw-3:8081/MANIFEST_LIST_CONTA.txt',
'gpfdist://mdw-4:8081/MANIFEST_LIST_CONTA.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MANIFEST_LIST_LOG------------
drop external table IF EXISTS MANIFEST_LIST_LOG_INC_EXT;

create external table MANIFEST_LIST_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  I_E_FLAG            VARCHAR(1)  ,
  CUSTOMS_CODE        VARCHAR(4)  ,
  TRAF_MODE           VARCHAR(1)  ,
  VOYAGE_NO           VARCHAR(32)  ,
  BILL_NO             VARCHAR(32)  ,
  SHIP_ID             VARCHAR(32)  ,
  CREATE_DATE         TIMESTAMP ,
  OPER_FLAG           VARCHAR(1),
  OPER_ER             VARCHAR(8),
  BILL_FLAG           VARCHAR(1),
  SHIP_NAME_EN        VARCHAR(255),
  CONSIGNOR           VARCHAR(255),
  CONSIGNEE           VARCHAR(255),
  LOADING_PORT        VARCHAR(6),
  DESTINATION_PORT    VARCHAR(6),
  DISTRICT_CODE       VARCHAR(5),
  DISCHARGE_PLACE     VARCHAR(8),
  I_E_DATE            TIMESTAMP  ,
  MAIN_G_NAME         VARCHAR(255),
  PACK_NO             NUMERIC(19,5),
  WRAP_TYPE           VARCHAR(32),
  VOLUME              NUMERIC(19),
  MARK_CONTR          VARCHAR(32),
  CONTA_NUM           NUMERIC(19),
  GROSS_WT            NUMERIC(19,5),
  BILL_PACK_NO        NUMERIC(19,5),
  BILL_GROSS_WT       NUMERIC(19,5),
  TAL_FLAG            VARCHAR(1),
  TAL_DATE            TIMESTAMP,
  TAL_ER              VARCHAR(8),
  SUR_DATE            TIMESTAMP,
  SUR_ER              VARCHAR(8),
  EXAM_FLAG           VARCHAR(1),
  URG_DATE            TIMESTAMP,
  URG_ER              VARCHAR(8),
  SEL_DATE            TIMESTAMP,
  SEL_ER              VARCHAR(8),
  ITEMS_NO            NUMERIC(19),
  TOTAL_VALUE         NUMERIC(19,4),
  CURR_CODE           VARCHAR(3),
  I_E_PORT            VARCHAR(4),
  DISTRIBUTE_FLAG     VARCHAR(1),
  DISTRIBUTE_DATE     TIMESTAMP,
  TRANS_NO            VARCHAR(32),
  ARRIVE_DATE         TIMESTAMP,
  RSK_ER              VARCHAR(8),
  RSK_DATE            TIMESTAMP,
  RSK_CODE            VARCHAR(2),
  RSK_LEVEL           VARCHAR(1),
  RELEASE_ER          VARCHAR(8),
  RELEASE_DATE        TIMESTAMP,
  DISCHARGE_PLACE_ORI VARCHAR(8),
  CN_SHIP_ID          VARCHAR(15),
  CN_SHIP_ER          VARCHAR(8),
  CN_SHIP_DATE        TIMESTAMP,
  D_DATE              TIMESTAMP,
  RSK_PHONE           VARCHAR(32),
  RSK_RESULT          VARCHAR(2),
  RSKAPPLY_ER         VARCHAR(8),
  NOTES               VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/MANIFEST_LIST_LOG.txt',
'gpfdist://mdw-2:8081/MANIFEST_LIST_LOG.txt',
'gpfdist://mdw-3:8081/MANIFEST_LIST_LOG.txt',
'gpfdist://mdw-4:8081/MANIFEST_LIST_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MANIFEST_LIST_RSKINFO_LOG------------
drop external table IF EXISTS MANIFEST_LIST_RSKINFO_LOG_INC_EXT;

create external table MANIFEST_LIST_RSKINFO_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BILL_NO      VARCHAR(32)  ,
  CUSTOMS_CODE VARCHAR(4)  ,
  VOYAGE_NO    VARCHAR(32)  ,
  SHIP_ID      VARCHAR(32)  ,
  I_E_DATE     TIMESTAMP  ,
  TRAF_MODE    VARCHAR(1)  ,
  I_E_FLAG     VARCHAR(1)  ,
  SHIP_NAME_EN VARCHAR(255),
  RSK_ER       VARCHAR(8),
  RSK_DATE     TIMESTAMP  ,
  RSK_CODE     VARCHAR(2),
  RSK_LEVEL    VARCHAR(1),
  RSK_RESULT   VARCHAR(2),
  RSKAPPLY_ER  VARCHAR(8),
  RELEASE_ER   VARCHAR(8),
  RELEASE_DATE TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/MANIFEST_LIST_RSKINFO_LOG.txt',
'gpfdist://mdw-2:8081/MANIFEST_LIST_RSKINFO_LOG.txt',
'gpfdist://mdw-3:8081/MANIFEST_LIST_RSKINFO_LOG.txt',
'gpfdist://mdw-4:8081/MANIFEST_LIST_RSKINFO_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNL_PARA------------
drop external table IF EXISTS MNL_PARA_INC_EXT;

create external table MNL_PARA_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PARA_TYPE  VARCHAR(10)  ,
  PARA_ID    VARCHAR(10)  ,
  PARA_NAME  VARCHAR(30),
  PARA_EXP   VARCHAR(30),
  PARA_FLAG  VARCHAR(20),
  PARA_VALUE VARCHAR(255),
  PARA_MARK  VARCHAR(30)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNL_PARA.txt',
'gpfdist://mdw-2:8081/MNL_PARA.txt',
'gpfdist://mdw-3:8081/MNL_PARA.txt',
'gpfdist://mdw-4:8081/MNL_PARA.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNL_PRESS------------
drop external table IF EXISTS MNL_PRESS_INC_EXT;

create external table MNL_PRESS_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PARA_TYPE  VARCHAR(10)  ,
  PARA_ID    VARCHAR(10),
  PARA_NAME  VARCHAR(30)  ,
  PARA_EXP   VARCHAR(30),
  PARA_FLAG  VARCHAR(20),
  PARA_VALUE VARCHAR(255),
  PARA_MARK  VARCHAR(30)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNL_PRESS.txt',
'gpfdist://mdw-2:8081/MNL_PRESS.txt',
'gpfdist://mdw-3:8081/MNL_PRESS.txt',
'gpfdist://mdw-4:8081/MNL_PRESS.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNL_RECEIVE_RECEIPT------------
drop external table IF EXISTS MNL_RECEIVE_RECEIPT_INC_EXT;

create external table MNL_RECEIVE_RECEIPT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO          VARCHAR(12)  ,
  SEND_CUSTOMS       VARCHAR(4)  ,
  CUSTOMS_CODE       VARCHAR(4)  ,
  H2000_RECEIVE_DATE TIMESTAMP  ,
  RECEIVE_DATE       TIMESTAMP,
  TYPE               VARCHAR(7),
  SEND_TIMES         NUMERIC(9),
  APPL_NO            VARCHAR(32),
  FLAG               VARCHAR(1),
  NOTE               VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNL_RECEIVE_RECEIPT.txt',
'gpfdist://mdw-2:8081/MNL_RECEIVE_RECEIPT.txt',
'gpfdist://mdw-3:8081/MNL_RECEIVE_RECEIPT.txt',
'gpfdist://mdw-4:8081/MNL_RECEIVE_RECEIPT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNL_SEQ------------
drop external table IF EXISTS MNL_SEQ_INC_EXT;

create external table MNL_SEQ_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MNL_KEY VARCHAR(10)  ,
  MNL_SEQ NUMERIC(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNL_SEQ.txt',
'gpfdist://mdw-2:8081/MNL_SEQ.txt',
'gpfdist://mdw-3:8081/MNL_SEQ.txt',
'gpfdist://mdw-4:8081/MNL_SEQ.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_ACCOUNT------------
drop external table IF EXISTS MNLBAK_ACCOUNT_INC_EXT;

create external table MNLBAK_ACCOUNT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO         VARCHAR(12)  ,
  ID_STAT           VARCHAR(2)  ,
  CONTR_NO          VARCHAR(32),
  OWNER_NAME        VARCHAR(255),
  LIMIT_DATE        TIMESTAMP,
  ACCOUNT_AMT_RMB   NUMERIC(19,5),
  ACCOUNT_AMT       NUMERIC(19,5),
  ACCOUNT_AMT_ORG   NUMERIC(19,5),
  ACCOUNT_CURR      VARCHAR(3),
  IM_AMT            NUMERIC(19,5),
  TAX_AMT           NUMERIC(19,5),
  DEFER_TAX_AMT     NUMERIC(19,5),
  DEAL_MARK         VARCHAR(1),
  TYPE_ER           VARCHAR(8),
  TYPE_DATE         TIMESTAMP,
  BANK_NOTE_NO      VARCHAR(32),
  BANK_OPEN_DATE    TIMESTAMP,
  BANK_NOTE_DATE    TIMESTAMP,
  APPR_DATE         TIMESTAMP,
  BANK_ID           VARCHAR(20),
  NEXT_FLAG         VARCHAR(2),
  NOTE_S            VARCHAR(255),
  GUA_ID            VARCHAR(12),
  GUA_APPL_DATE     TIMESTAMP,
  GUA_OPEN_DATE     TIMESTAMP,
  GUA_APPR_DATE     TIMESTAMP,
  GUA_REGISTER_ER   VARCHAR(8),
  GUA_REGISTER_DATE TIMESTAMP,
  GUA_COPY          NUMERIC(19),
  GUA_TYPE          VARCHAR(1),
  GUA_OWNER_NAME    VARCHAR(32),
  GUA_LIMIT_DATE    TIMESTAMP,
  GUARANTEE_ADD     NUMERIC(19,5),
  GUARANTEE_AMT     NUMERIC(19,5),
  GUARANTEE_CURR    VARCHAR(3),
  GUARANTEE_RMB     NUMERIC(19,5),
  GUARANTEE_ORG     VARCHAR(70),
  GUA_MARK          VARCHAR(1),
  PROCESS_MARK      VARCHAR(5),
  PROCESS_ER        VARCHAR(8),
  PROCESS_DATE      TIMESTAMP,
  OTHER_AMT         NUMERIC(19,5),
  OTHER_NO          VARCHAR(20),
  SEQ_NO            VARCHAR(12),
  DOCUMENT_NO       VARCHAR(12),
  DOCUMENT_DATE     TIMESTAMP,
  DOCUMENT_MARK     VARCHAR(1),
  DOCUMENT_ER       VARCHAR(8),
  NOTE_MARK         VARCHAR(10),
  PORT_CODE         VARCHAR(4),
  ZQ_PRINT_FLAG     VARCHAR(1),
  SECRECT_KEY       VARCHAR(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_ACCOUNT.txt',
'gpfdist://mdw-2:8081/MNLBAK_ACCOUNT.txt',
'gpfdist://mdw-3:8081/MNLBAK_ACCOUNT.txt',
'gpfdist://mdw-4:8081/MNLBAK_ACCOUNT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_APPL_CLOSE------------
drop external table IF EXISTS MNLBAK_APPL_CLOSE_INC_EXT;

create external table MNLBAK_APPL_CLOSE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  APPL_NO        NUMERIC(19),
  APPL_DATE      TIMESTAMP,
  DECL_IN_AMT    NUMERIC(19,5),
  DECL_EX_AMT    NUMERIC(19,5),
  DECL_IN_COUNT  NUMERIC(19),
  DECL_EX_COUNT  NUMERIC(19),
  REMAIN_IN_AMT  NUMERIC(19,4),
  REMAIN_EX_AMT  NUMERIC(19,4),
  RESOR_IN_COUNT NUMERIC(19),
  PRODU_IN_COUNT NUMERIC(19),
  RESOR_EX_COUNT NUMERIC(19),
  PRODU_EX_COUNT NUMERIC(19),
  RESOR_IN_AMT   NUMERIC(19,4),
  PRODU_IN_AMT   NUMERIC(19,4),
  RESOR_EX_AMT   NUMERIC(19,4),
  PRODU_EX_AMT   NUMERIC(19,4),
  DC_DATE        TIMESTAMP,
  TYPE_ER        VARCHAR(8),
  DECL_CO        VARCHAR(6),
  CHK_ER         VARCHAR(8),
  RECHK_ER       VARCHAR(8),
  CHK_DATE       TIMESTAMP,
  RECHK_DATE     TIMESTAMP,
  NOTE_S         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_APPL_CLOSE.txt',
'gpfdist://mdw-2:8081/MNLBAK_APPL_CLOSE.txt',
'gpfdist://mdw-3:8081/MNLBAK_APPL_CLOSE.txt',
'gpfdist://mdw-4:8081/MNLBAK_APPL_CLOSE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_CLAIM------------
drop external table IF EXISTS MNLBAK_CLAIM_INC_EXT;

create external table MNLBAK_CLAIM_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  GUARANTEE_NO         VARCHAR(12)  ,
  CLAIM_NO             VARCHAR(12),
  MANUAL_NO            VARCHAR(12),
  OWNER_NO             VARCHAR(32),
  GUARANTEE_AMT        NUMERIC(18),
  GUARANTEE_LIMIT_DATE TIMESTAMP,
  BANK_ID              VARCHAR(32),
  CLAIM_AMT            NUMERIC(18,5),
  CLAIM_RATE           NUMERIC(18,5),
  YEAR_RATE            NUMERIC(18,5),
  CHK_ER               VARCHAR(8),
  CHK_DATE             TIMESTAMP,
  RECHK_ER             VARCHAR(8),
  RECHK_DATE           TIMESTAMP,
  CLAIM_DATE           TIMESTAMP,
  CLAIM_ER             VARCHAR(8),
  BANK_DATE            TIMESTAMP,
  TYPE_ER              VARCHAR(8),
  TYPE_DATE            TIMESTAMP,
  OTHER_CERT_NO        VARCHAR(32),
  PROC_MARK            VARCHAR(32),
  LAST_ER              VARCHAR(8),
  LAST_DATE            TIMESTAMP,
  PAY_PRINT_DATE       TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_CLAIM.txt',
'gpfdist://mdw-2:8081/MNLBAK_CLAIM.txt',
'gpfdist://mdw-3:8081/MNLBAK_CLAIM.txt',
'gpfdist://mdw-4:8081/MNLBAK_CLAIM.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_CONSUME------------
drop external table IF EXISTS MNLBAK_CONSUME_INC_EXT;

create external table MNLBAK_CONSUME_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO    VARCHAR(12)  ,
  CONTR_ITEM   NUMERIC(19)  ,
  EX_NO        NUMERIC(19)  ,
  APPR_CONSUME NUMERIC(19,10),
  APPR_DAMAGE  NUMERIC(19,10),
  DECL_CONSUME NUMERIC(19,10),
  DECL_DAMAGE  NUMERIC(19,10)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_CONSUME.txt',
'gpfdist://mdw-2:8081/MNLBAK_CONSUME.txt',
'gpfdist://mdw-3:8081/MNLBAK_CONSUME.txt',
'gpfdist://mdw-4:8081/MNLBAK_CONSUME.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_CONTRACT_HEAD------------
drop external table IF EXISTS MNLBAK_CONTRACT_HEAD_INC_EXT;

create external table MNLBAK_CONTRACT_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO        VARCHAR(12)  ,
  PRE_MANUAL_NO    VARCHAR(12),
  TRADE_CO         VARCHAR(10),
  TRADE_NAME       VARCHAR(255),
  DISTRICT_CODE    VARCHAR(5),
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  FOREIGN_CO_NAME  VARCHAR(32),
  FOREIGN_MGR      VARCHAR(32),
  TRADE_MODE       VARCHAR(4),
  CUT_MODE         VARCHAR(3),
  TRADE_COUNTRY    VARCHAR(3),
  PORT_1           VARCHAR(4),
  PORT_2           VARCHAR(4),
  PORT_3           VARCHAR(4),
  PORT_4           VARCHAR(4),
  PORT_5           VARCHAR(4),
  AGREE_NO         VARCHAR(32),
  LICENSE_NO       VARCHAR(32),
  APPR_NO          VARCHAR(32),
  CONTR_IN         VARCHAR(32),
  CONTR_OUT        VARCHAR(32),
  EQUIP_MODE       VARCHAR(1),
  TRANS_MODE       VARCHAR(1),
  INVEST_MODE      VARCHAR(1),
  PAY_MODE         VARCHAR(1),
  EX_SOURCE        NUMERIC(19),
  PRODUCE_TYPE     VARCHAR(2),
  RATIO_RANGE      NUMERIC(19,4),
  IN_RATIO         NUMERIC(19,4),
  INVEST_AMT       NUMERIC(19,5),
  INVEST_CURR      VARCHAR(3),
  APPR_DEV_AMT     NUMERIC(19,5),
  FACT_DEV_AMT     NUMERIC(19,5),
  IN_AMT           NUMERIC(19,5),
  IN_CURR          VARCHAR(3),
  FACT_IN_AMT      NUMERIC(19,5),
  EX_AMT           NUMERIC(19,5),
  EX_CURR          VARCHAR(3),
  FACT_EX_AMT      NUMERIC(19,5),
  DECL_FLAG        VARCHAR(1),
  EXE_MARK         VARCHAR(1),
  SUPV_MARK        VARCHAR(10),
  IN_PNT           NUMERIC(19),
  EX_PNT           NUMERIC(19),
  CONTR_SEQNO      NUMERIC(19),
  IM_COUNT         NUMERIC(19),
  EX_COUNT         NUMERIC(19),
  I_DATE           TIMESTAMP,
  E_DATE           TIMESTAMP,
  LIMIT_DATE       TIMESTAMP,
  TYPE_ER          VARCHAR(8),
  TYPE_DATE        TIMESTAMP,
  CHK_ER           VARCHAR(8),
  APPR_DATE        TIMESTAMP,
  RECHK_ER         VARCHAR(8),
  CLEAR_ER         VARCHAR(8),
  CLEAR_APPL_DATE  TIMESTAMP,
  CLEAR_DATE       TIMESTAMP,
  CLOSE_ER         VARCHAR(8),
  CLOSE_DATE       TIMESTAMP,
  EXAM_MARK        VARCHAR(10),
  CLEAR_MARK       VARCHAR(10),
  CLOSE_MARK       VARCHAR(1),
  TAX_TYPE         VARCHAR(1),
  RECOVER_DUTY     NUMERIC(19,5),
  RECOVER_TAX      NUMERIC(19,5),
  RECOVER_REG      NUMERIC(19,5),
  DEFER_DUTY       NUMERIC(19,5),
  DEFER_TAX        NUMERIC(19,5),
  DEFER_REG        NUMERIC(19,5),
  FINE_AMT         NUMERIC(19,5),
  REAL_DUTY        NUMERIC(19,5),
  REAL_TAX         NUMERIC(19,5),
  REAL_REG         NUMERIC(19,5),
  SEQ_NO           VARCHAR(12),
  VER_NO           VARCHAR(12),
  VER_ER           VARCHAR(8),
  VER_DATE         TIMESTAMP,
  CUSTOMS_CODE     VARCHAR(4),
  SERVICE_FEE_RATE NUMERIC(19,5),
  PRE_SERVICE_FEE  NUMERIC(19,5),
  FACT_SERVICE_FEE NUMERIC(19,5),
  NOTE_S           VARCHAR(255),
  TR_PNT           NUMERIC(19),
  IN_RMB_RATE      NUMERIC(19,8),
  IN_USD_RATE      NUMERIC(19,8),
  EX_RMB_RATE      NUMERIC(19,8),
  EX_USD_RATE      NUMERIC(19,8),
  DEDUC_DATE       TIMESTAMP,
  CHECK_DATE       TIMESTAMP,
  HASH_SIGN        VARCHAR(380),
  CASE_MARK        VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_CONTRACT_HEAD.txt',
'gpfdist://mdw-2:8081/MNLBAK_CONTRACT_HEAD.txt',
'gpfdist://mdw-3:8081/MNLBAK_CONTRACT_HEAD.txt',
'gpfdist://mdw-4:8081/MNLBAK_CONTRACT_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_CONTRACT_WORKFLOW------------
drop external table IF EXISTS MNLBAK_CONTRACT_WORKFLOW_INC_EXT;

create external table MNLBAK_CONTRACT_WORKFLOW_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO    VARCHAR(12)  ,
  STEP_ID      VARCHAR(8)  ,
  PROC_DATE    TIMESTAMP  ,
  PROC_ER      VARCHAR(20),
  PROC_ID      VARCHAR(8),
  PROC_POS     VARCHAR(4),
  STATUS_STATE VARCHAR(50)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_CONTRACT_WORKFLOW.txt',
'gpfdist://mdw-2:8081/MNLBAK_CONTRACT_WORKFLOW.txt',
'gpfdist://mdw-3:8081/MNLBAK_CONTRACT_WORKFLOW.txt',
'gpfdist://mdw-4:8081/MNLBAK_CONTRACT_WORKFLOW.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_EX_CONTRACT_CLEAR------------
drop external table IF EXISTS MNLBAK_EX_CONTRACT_CLEAR_INC_EXT;

create external table MNLBAK_EX_CONTRACT_CLEAR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO     VARCHAR(12)  ,
  CONTR_ITEM    NUMERIC(19)  ,
  APPR_AMT      NUMERIC(19,5),
  FACT_AMT      NUMERIC(19,5),
  APPR_QTY      NUMERIC(19,4),
  FACT_QTY      NUMERIC(19,4),
  PRODU_EX_AMT  NUMERIC(19,5),
  PRODU_EX_QTY  NUMERIC(19,4),
  PRODU_TAX_AMT NUMERIC(19,5),
  PRODU_TAX_QTY NUMERIC(19,4),
  REMAIN_AMT    NUMERIC(19,5),
  REMAIN_QTY    NUMERIC(19,4),
  ABANDON_AMT   NUMERIC(19,5),
  ABANDON_QTY   NUMERIC(19,4),
  ABANDON_DATE  TIMESTAMP,
  ABANDON_ER    VARCHAR(8),
  UNIT_1        VARCHAR(3),
  CLEAR_ER      VARCHAR(8),
  CLEAR_DATE    TIMESTAMP,
  CLOSE_ER      VARCHAR(8),
  CLOSE_DATE    TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_EX_CONTRACT_CLEAR.txt',
'gpfdist://mdw-2:8081/MNLBAK_EX_CONTRACT_CLEAR.txt',
'gpfdist://mdw-3:8081/MNLBAK_EX_CONTRACT_CLEAR.txt',
'gpfdist://mdw-4:8081/MNLBAK_EX_CONTRACT_CLEAR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_EX_CONTRACT_DEDUC------------
drop external table IF EXISTS MNLBAK_EX_CONTRACT_DEDUC_INC_EXT;

create external table MNLBAK_EX_CONTRACT_DEDUC_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12)  ,
  CONTR_ITEM  NUMERIC(19),
  ENTRY_ID    VARCHAR(18)  ,
  ENTRY_ITEM  NUMERIC(19),
  I_E_PORT    VARCHAR(8),
  I_E_DATE    TIMESTAMP,
  G_NO        NUMERIC(19)  ,
  IN_QTY      NUMERIC(19,4),
  I_ACCOUNT   NUMERIC(19,5),
  I_CURR      VARCHAR(3),
  DUTY_MODE   VARCHAR(1),
  VERIFY_MODE VARCHAR(1),
  VERIFY_DATE TIMESTAMP,
  VERIFY_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_EX_CONTRACT_DEDUC.txt',
'gpfdist://mdw-2:8081/MNLBAK_EX_CONTRACT_DEDUC.txt',
'gpfdist://mdw-3:8081/MNLBAK_EX_CONTRACT_DEDUC.txt',
'gpfdist://mdw-4:8081/MNLBAK_EX_CONTRACT_DEDUC.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_EX_CONTRACT_LIST------------
drop external table IF EXISTS MNLBAK_EX_CONTRACT_LIST_INC_EXT;

create external table MNLBAK_EX_CONTRACT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  CONTR_ITEM     NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  CLASS_MARK     VARCHAR(1),
  G_NAME         VARCHAR(50),
  G_MODEL        VARCHAR(50),
  ORIGIN_COUNTRY VARCHAR(3),
  DUTY_MODE      VARCHAR(1),
  DUTY_RATIO     NUMERIC(19,5),
  LOCAL_CONTR    VARCHAR(20),
  APPR_AMT       NUMERIC(19,5),
  FACT_AMT       NUMERIC(19,5),
  UNIT_PRICE     NUMERIC(19,10),
  APPR_QTY       NUMERIC(19,5),
  FACT_QTY       NUMERIC(19,5),
  TRANSFER_QTY   NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  IN_COUNT       NUMERIC(19),
  WORK_PAY       NUMERIC(19),
  CURR_WORK      VARCHAR(3),
  CONSUME_NOTE   VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_EX_CONTRACT_LIST.txt',
'gpfdist://mdw-2:8081/MNLBAK_EX_CONTRACT_LIST.txt',
'gpfdist://mdw-3:8081/MNLBAK_EX_CONTRACT_LIST.txt',
'gpfdist://mdw-4:8081/MNLBAK_EX_CONTRACT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_EX_FASCICLE_LIST------------
drop external table IF EXISTS MNLBAK_EX_FASCICLE_LIST_INC_EXT;

create external table MNLBAK_EX_FASCICLE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12),
  FASCICLE_NO VARCHAR(12)  ,
  CONTR_ITEM  NUMERIC(19)  ,
  APPR_QTY    NUMERIC(19,4),
  FACT_QTY    NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_EX_FASCICLE_LIST.txt',
'gpfdist://mdw-2:8081/MNLBAK_EX_FASCICLE_LIST.txt',
'gpfdist://mdw-3:8081/MNLBAK_EX_FASCICLE_LIST.txt',
'gpfdist://mdw-4:8081/MNLBAK_EX_FASCICLE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_FASCICLE_HEAD------------
drop external table IF EXISTS MNLBAK_FASCICLE_HEAD_INC_EXT;

create external table MNLBAK_FASCICLE_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO       VARCHAR(12),
  FASCICLE_NO     VARCHAR(12)  ,
  PRE_FASCICLE_NO VARCHAR(12),
  I_E_PORT        VARCHAR(4),
  TYPE_ER         VARCHAR(8),
  TYPE_DATE       TIMESTAMP,
  LIMIT_DATE      TIMESTAMP,
  TRADE_CO        VARCHAR(10),
  CHK_ER          VARCHAR(8),
  RECHK_ER        VARCHAR(8),
  PR_DATE         TIMESTAMP,
  FASCICLE_TYPE   VARCHAR(1),
  EXE_MARK        VARCHAR(1),
  CONTR_IN        VARCHAR(32),
  CONTR_OUT       VARCHAR(32),
  IN_PNT          NUMERIC(19),
  EX_PNT          NUMERIC(19),
  SUPV_MARK       VARCHAR(1),
  NOTE_S          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_FASCICLE_HEAD.txt',
'gpfdist://mdw-2:8081/MNLBAK_FASCICLE_HEAD.txt',
'gpfdist://mdw-3:8081/MNLBAK_FASCICLE_HEAD.txt',
'gpfdist://mdw-4:8081/MNLBAK_FASCICLE_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_FEE_INVOICE------------
drop external table IF EXISTS MNLBAK_FEE_INVOICE_INC_EXT;

create external table MNLBAK_FEE_INVOICE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  F_NO           NUMERIC(19)  ,
  FEE_ID         NUMERIC(19)  ,
  CREATE_DATE    TIMESTAMP,
  CHK_ER         VARCHAR(8),
  TYPE_ER        VARCHAR(8),
  TYPE_DATE      TIMESTAMP,
  FINANCIAL_FLAG VARCHAR(1),
  FINANCIAL_DATE TIMESTAMP,
  BOOK_NO        NUMERIC(19),
  FEE_AMT        NUMERIC(19,5),
  NOTE_S         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_FEE_INVOICE.txt',
'gpfdist://mdw-2:8081/MNLBAK_FEE_INVOICE.txt',
'gpfdist://mdw-3:8081/MNLBAK_FEE_INVOICE.txt',
'gpfdist://mdw-4:8081/MNLBAK_FEE_INVOICE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_IM_CONTRACT_CLEAR------------
drop external table IF EXISTS MNLBAK_IM_CONTRACT_CLEAR_INC_EXT;

create external table MNLBAK_IM_CONTRACT_CLEAR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO     VARCHAR(12)  ,
  CONTR_ITEM    NUMERIC(19)  ,
  APPR_AMT      NUMERIC(19,5),
  FACT_AMT      NUMERIC(19,5),
  APPR_QTY      NUMERIC(19,4),
  FACT_QTY      NUMERIC(19,4),
  CONSUME_AMT   NUMERIC(19,5),
  CONSUME_QTY   NUMERIC(19,4),
  RESOR_IN_AMT  NUMERIC(19,5),
  RESOR_IN_QTY  NUMERIC(19,4),
  RESOR_EX_AMT  NUMERIC(19,5),
  RESOR_EX_QTY  NUMERIC(19,4),
  RESOR_TAX_AMT NUMERIC(19,5),
  RESOR_TAX_QTY NUMERIC(19,4),
  REMAIN_AMT    NUMERIC(19,5),
  REMAIN_QTY    NUMERIC(19,4),
  ABANDON_AMT   NUMERIC(19,5),
  ABANDON_QTY   NUMERIC(19,4),
  ABANDON_DATE  TIMESTAMP,
  ABANDON_ER    VARCHAR(8),
  UNIT_1        VARCHAR(3),
  CLEAR_ER      VARCHAR(8),
  CLEAR_DATE    TIMESTAMP,
  CLOSE_ER      VARCHAR(8),
  CLOSE_DATE    TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_IM_CONTRACT_CLEAR.txt',
'gpfdist://mdw-2:8081/MNLBAK_IM_CONTRACT_CLEAR.txt',
'gpfdist://mdw-3:8081/MNLBAK_IM_CONTRACT_CLEAR.txt',
'gpfdist://mdw-4:8081/MNLBAK_IM_CONTRACT_CLEAR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_IM_CONTRACT_DEDUC------------
drop external table IF EXISTS MNLBAK_IM_CONTRACT_DEDUC_INC_EXT;

create external table MNLBAK_IM_CONTRACT_DEDUC_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12)  ,
  CONTR_ITEM  NUMERIC(19),
  ENTRY_ID    VARCHAR(18)  ,
  ENTRY_ITEM  NUMERIC(19),
  I_E_PORT    VARCHAR(8),
  I_E_DATE    TIMESTAMP,
  G_NO        NUMERIC(19)  ,
  IN_QTY      NUMERIC(19,4),
  I_ACCOUNT   NUMERIC(19,5),
  I_CURR      VARCHAR(3),
  DUTY_MODE   VARCHAR(1),
  VERIFY_MODE VARCHAR(1),
  VERIFY_DATE TIMESTAMP,
  VERIFY_ER   VARCHAR(8),
  DUTY_PRINT  VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_IM_CONTRACT_DEDUC.txt',
'gpfdist://mdw-2:8081/MNLBAK_IM_CONTRACT_DEDUC.txt',
'gpfdist://mdw-3:8081/MNLBAK_IM_CONTRACT_DEDUC.txt',
'gpfdist://mdw-4:8081/MNLBAK_IM_CONTRACT_DEDUC.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_IM_CONTRACT_LIST------------
drop external table IF EXISTS MNLBAK_IM_CONTRACT_LIST_INC_EXT;

create external table MNLBAK_IM_CONTRACT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  CONTR_ITEM     NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  CLASS_MARK     VARCHAR(1),
  G_NAME         VARCHAR(50),
  G_MODEL        VARCHAR(50),
  ORIGIN_COUNTRY VARCHAR(3),
  DUTY_MODE      VARCHAR(1),
  DUTY_RATIO     NUMERIC(19,5),
  LOCAL_CONTR    VARCHAR(20),
  APPR_AMT       NUMERIC(19,5),
  FACT_AMT       NUMERIC(19,5),
  UNIT_PRICE     NUMERIC(19,10),
  APPR_QTY       NUMERIC(19,5),
  FACT_QTY       NUMERIC(19,5),
  TRANSFER_QTY   NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  IN_COUNT       NUMERIC(19),
  IM_MODE        VARCHAR(1),
  CONSUME_NOTE   VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_IM_CONTRACT_LIST.txt',
'gpfdist://mdw-2:8081/MNLBAK_IM_CONTRACT_LIST.txt',
'gpfdist://mdw-3:8081/MNLBAK_IM_CONTRACT_LIST.txt',
'gpfdist://mdw-4:8081/MNLBAK_IM_CONTRACT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_IM_FASCICLE_LIST------------
drop external table IF EXISTS MNLBAK_IM_FASCICLE_LIST_INC_EXT;

create external table MNLBAK_IM_FASCICLE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12),
  FASCICLE_NO VARCHAR(12)  ,
  CONTR_ITEM  NUMERIC(19)  ,
  APPR_QTY    NUMERIC(19,4),
  FACT_QTY    NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_IM_FASCICLE_LIST.txt',
'gpfdist://mdw-2:8081/MNLBAK_IM_FASCICLE_LIST.txt',
'gpfdist://mdw-3:8081/MNLBAK_IM_FASCICLE_LIST.txt',
'gpfdist://mdw-4:8081/MNLBAK_IM_FASCICLE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_PRESS_CLEAR------------
drop external table IF EXISTS MNLBAK_PRESS_CLEAR_INC_EXT;

create external table MNLBAK_PRESS_CLEAR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO     VARCHAR(12)  ,
  PR_NO         VARCHAR(14)  ,
  PR_COUNT      NUMERIC(9),
  PR_CUSTOMS    VARCHAR(4),
  PR_DEPARTMENT VARCHAR(20),
  PR_DATE       TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_PRESS_CLEAR.txt',
'gpfdist://mdw-2:8081/MNLBAK_PRESS_CLEAR.txt',
'gpfdist://mdw-3:8081/MNLBAK_PRESS_CLEAR.txt',
'gpfdist://mdw-4:8081/MNLBAK_PRESS_CLEAR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_SERVICE_FEE------------
drop external table IF EXISTS MNLBAK_SERVICE_FEE_INC_EXT;

create external table MNLBAK_SERVICE_FEE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12)  ,
  DUE_FEE_AMT NUMERIC(19,5),
  PAY_FEE_AMT NUMERIC(19,5),
  CREATE_DATE TIMESTAMP,
  RETURN_ID   NUMERIC(19),
  RETURN_FLAG VARCHAR(1),
  REMAIN_AMT  NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_SERVICE_FEE.txt',
'gpfdist://mdw-2:8081/MNLBAK_SERVICE_FEE.txt',
'gpfdist://mdw-3:8081/MNLBAK_SERVICE_FEE.txt',
'gpfdist://mdw-4:8081/MNLBAK_SERVICE_FEE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MNLBAK_SERVICE_LIST------------
drop external table IF EXISTS MNLBAK_SERVICE_LIST_INC_EXT;

create external table MNLBAK_SERVICE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12)  ,
  F_NO        NUMERIC(19)  ,
  FEE_TYPE    VARCHAR(1),
  FEE_RATE    NUMERIC(19,5),
  G_NO        NUMERIC(19),
  G_NAME      VARCHAR(255),
  FEE_AMT     NUMERIC(19,5),
  FEE_CURR    VARCHAR(3),
  FEE_RMB     NUMERIC(19,5),
  SERVICE_FEE NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/MNLBAK_SERVICE_LIST.txt',
'gpfdist://mdw-2:8081/MNLBAK_SERVICE_LIST.txt',
'gpfdist://mdw-3:8081/MNLBAK_SERVICE_LIST.txt',
'gpfdist://mdw-4:8081/MNLBAK_SERVICE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MOD_PROJECT_HEAD------------
drop external table IF EXISTS MOD_PROJECT_HEAD_INC_EXT;

create external table MOD_PROJECT_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_PROJECT_ID   VARCHAR(18),
  PROJECT_ID       VARCHAR(18)  ,
  MODIFY_TIMES     NUMERIC(9)  ,
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  TRADE_TYPE_NAME  VARCHAR(12),
  APPR_DEPT        VARCHAR(4),
  PROJECT_FUND     VARCHAR(1),
  PROJECT_TYPE     VARCHAR(12),
  PROJECT_NAME     VARCHAR(255),
  PROJECT_DATE     TIMESTAMP,
  START_DATE       TIMESTAMP,
  LIMIT_DATE       TIMESTAMP,
  FOREIGN_CO       VARCHAR(255),
  FOREIGN_COUNTRY  VARCHAR(255),
  INVEST_RATE_NAME VARCHAR(255),
  CONTR_NO         VARCHAR(255),
  RISK_MARK        VARCHAR(10),
  CUT_MODE         VARCHAR(3),
  INVEST_AMT       NUMERIC(19,4),
  INVEST_CURR      VARCHAR(3),
  QUOTA_AMT        NUMERIC(19,4),
  QUOTA_FREE       NUMERIC(19,4),
  APPR_AMT_FREE    NUMERIC(19,4),
  FACT_AMT_FREE    NUMERIC(19,4),
  APPR_AMT         NUMERIC(19,4),
  FACT_AMT         NUMERIC(19,4),
  DUTY_CUT         NUMERIC(19,4),
  TAX_CUT          NUMERIC(19,4),
  OTHER_CUT        NUMERIC(19,4),
  REAL_DUTY        NUMERIC(19,4),
  REAL_TAX         NUMERIC(19,4),
  REAL_OTHER       NUMERIC(19,4),
  REAL_DUTY_CUT    NUMERIC(19,4),
  REAL_TAX_CUT     NUMERIC(19,4),
  REAL_OTHER_CUT   NUMERIC(19,4),
  QTY_CUT          NUMERIC(19,4),
  UNIT_CUT         VARCHAR(3),
  APPR_QTY         NUMERIC(19,4),
  FACT_QTY         NUMERIC(19,4),
  AGREE_NO         VARCHAR(255),
  SECURITY_LEVEL   VARCHAR(1),
  COLLECT_MARK     VARCHAR(1),
  COLLECT_DATE     TIMESTAMP,
  MASTER_CUSTOMS   VARCHAR(4),
  LINKMAN          VARCHAR(255),
  ITEMS_NO         NUMERIC(9),
  INPUT_DATE       TIMESTAMP,
  TYPE_ER          VARCHAR(8),
  INPUT_COP        VARCHAR(255),
  CHK_DATE         TIMESTAMP,
  CHK_ER           VARCHAR(8),
  RECHK_DATE       TIMESTAMP,
  MODIFY_DATE      TIMESTAMP,
  RECHK_ER         VARCHAR(8),
  EXE_MARK         VARCHAR(1),
  SEQ_NO           VARCHAR(12),
  SEQ_DATE         TIMESTAMP,
  SEQ_ER           VARCHAR(8),
  REPORT_MARK      VARCHAR(1),
  REPORT_DATE      TIMESTAMP,
  REPORT_CGAC_DATE TIMESTAMP,
  REPLY_DATE       TIMESTAMP,
  REPLY_ER         VARCHAR(8),
  REASON           VARCHAR(255),
  RESERVE1         VARCHAR(255),
  NOTE             VARCHAR(255),
  HASH_SIGN        VARCHAR(380),
  FIRST_PASS_DATE  TIMESTAMP,
  INVEST_AMT_USD   NUMERIC(19,4),
  MODIFY_ER        VARCHAR(8),
  BELONG_AREA_NAME VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/MOD_PROJECT_HEAD.txt',
'gpfdist://mdw-2:8081/MOD_PROJECT_HEAD.txt',
'gpfdist://mdw-3:8081/MOD_PROJECT_HEAD.txt',
'gpfdist://mdw-4:8081/MOD_PROJECT_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MOD_PROJECT_LIST------------
drop external table IF EXISTS MOD_PROJECT_LIST_INC_EXT;

create external table MOD_PROJECT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PROJECT_ID     VARCHAR(18)  ,
  MODIFY_TIMES   NUMERIC(9)  ,
  G_NO           NUMERIC(9)  ,
  CODE_TS        VARCHAR(16),
  CLASS_MARK     VARCHAR(1),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  G_UNIT         VARCHAR(3),
  G_QTY          NUMERIC(19,4),
  UNIT_1         VARCHAR(3),
  QTY_1          NUMERIC(19,4),
  UNIT_2         VARCHAR(3),
  QTY_2          NUMERIC(19,4),
  DECL_TOTAL     NUMERIC(19,4),
  TRADE_CURR     VARCHAR(3),
  USED_QTY       NUMERIC(19,4),
  USED_AMT       NUMERIC(19,4),
  FACT_QTY       NUMERIC(19,4),
  FACT_AMT       NUMERIC(19,4),
  DUTY_MODE      VARCHAR(1),
  D_RATE         NUMERIC(19,5),
  T_RATE         NUMERIC(19,5),
  O_RATE         NUMERIC(19,5),
  DUTY_RATE      NUMERIC(19,5),
  TAX_RATE       NUMERIC(19,5),
  OTHER_RATE     NUMERIC(19,5),
  CHECK_MARK     VARCHAR(1),
  RESERVE1       VARCHAR(255),
  NOTE           VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/MOD_PROJECT_LIST.txt',
'gpfdist://mdw-2:8081/MOD_PROJECT_LIST.txt',
'gpfdist://mdw-3:8081/MOD_PROJECT_LIST.txt',
'gpfdist://mdw-4:8081/MOD_PROJECT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MOD_RED_HEAD------------
drop external table IF EXISTS MOD_RED_HEAD_INC_EXT;

create external table MOD_RED_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PROJECT_ID       VARCHAR(18),
  PRE_CUT_ID       VARCHAR(18),
  CUT_ID           VARCHAR(12)  ,
  MODIFY_TIMES     NUMERIC(9)  ,
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  TRADE_CO         VARCHAR(10),
  TRADE_NAME       VARCHAR(255),
  APPR_DEPT        VARCHAR(4),
  PROJECT_FUND     VARCHAR(1),
  PROJECT_TYPE     VARCHAR(12),
  CUT_MODE         VARCHAR(3),
  APPR_REASON      VARCHAR(255),
  I_E_PORT         VARCHAR(4),
  I_E_FLAG         VARCHAR(1),
  LICENSE_NO       VARCHAR(20),
  CONTR_NO         VARCHAR(255),
  ITEMS_NO         NUMERIC(9),
  INPUT_DATE       TIMESTAMP,
  TYPE_ER          VARCHAR(8),
  INPUT_COP        VARCHAR(255),
  CHK_DATE         TIMESTAMP,
  CHK_ER           VARCHAR(8),
  RECHK_DATE       TIMESTAMP,
  MODIFY_DATE      TIMESTAMP,
  RECHK_ER         VARCHAR(8),
  EXE_MARK         VARCHAR(1),
  LIMIT_DATE       TIMESTAMP,
  ENTRY_PWD        VARCHAR(12),
  PRINT_DATE       TIMESTAMP,
  PRINT_ER         VARCHAR(8),
  PRINT_MARK       VARCHAR(1),
  TRANS_TIMES      NUMERIC(9),
  APPR_AMT         NUMERIC(19,4),
  FACT_AMT         NUMERIC(19,4),
  APPR_QUOTA_SUM   NUMERIC(19,4),
  APPR_QUOTA_QTY   NUMERIC(19,4),
  REAL_QUOTA_SUM   NUMERIC(19,4),
  REAL_QUOTA_QTY   NUMERIC(19,4),
  DUTY_CUT         NUMERIC(19,4),
  TAX_CUT          NUMERIC(19,4),
  OTHER_CUT        NUMERIC(19,4),
  REAL_DUTY        NUMERIC(19,4),
  REAL_TAX         NUMERIC(19,4),
  REAL_OTHER       NUMERIC(19,4),
  REAL_DUTY_CUT    NUMERIC(19,4),
  REAL_TAX_CUT     NUMERIC(19,4),
  REAL_OTHER_CUT   NUMERIC(19,4),
  VERIFY_DATE      TIMESTAMP,
  MASTER_CUSTOMS   VARCHAR(4),
  CHECK_NOTE       VARCHAR(255),
  RECHK_NOTE       VARCHAR(255),
  REPLY_CHECK_NOTE VARCHAR(255),
  RISK_MARK        VARCHAR(10),
  COLLECT_MARK     VARCHAR(1),
  COLLECT_DATE     TIMESTAMP,
  ENTRY_ID         VARCHAR(18),
  VERIFY_TIMES     NUMERIC(9),
  SECURITY_LEVEL   VARCHAR(1),
  REPORT_MARK      VARCHAR(1),
  REPORT_DATE      TIMESTAMP,
  REPORT_CGAC_DATE TIMESTAMP,
  REPLY_DATE       TIMESTAMP,
  REPLY_ER         VARCHAR(8),
  SEQ_NO           VARCHAR(12),
  SEQ_DATE         TIMESTAMP,
  SEQ_ER           VARCHAR(8),
  RED_TYPE         VARCHAR(1),
  TRADE_MODE       VARCHAR(4),
  TRANS_MODE       VARCHAR(1),
  FEE_MARK         VARCHAR(1),
  OTHER_MARK       VARCHAR(1),
  INSUR_MARK       VARCHAR(1),
  FEE_CURR         VARCHAR(3),
  FEE_RATE         NUMERIC(19,5),
  OTHER_CURR       VARCHAR(3),
  OTHER_RATE       NUMERIC(19,5),
  INSUR_CURR       VARCHAR(3),
  INSUR_RATE       NUMERIC(19,5),
  SERVICE_RATE     NUMERIC(19,5),
  SERVICE_FEE      NUMERIC(19,4),
  MNL_JGF_FLAG     VARCHAR(1),
  REASON           VARCHAR(255),
  RESERVE1         VARCHAR(255),
  NOTE             VARCHAR(255),
  HASH_SIGN        VARCHAR(380),
  MODIFY_ER        VARCHAR(8),
  HAS_DECLARE      VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/MOD_RED_HEAD.txt',
'gpfdist://mdw-2:8081/MOD_RED_HEAD.txt',
'gpfdist://mdw-3:8081/MOD_RED_HEAD.txt',
'gpfdist://mdw-4:8081/MOD_RED_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------MOD_RED_LIST------------
drop external table IF EXISTS MOD_RED_LIST_INC_EXT;

create external table MOD_RED_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUT_ID         VARCHAR(12)  ,
  MODIFY_TIMES   NUMERIC(9)  ,
  G_NO           NUMERIC(9)  ,
  MAN_G_NO       NUMERIC(9),
  CODE_TS        VARCHAR(16),
  CLASS_MARK     VARCHAR(1),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  G_UNIT         VARCHAR(3),
  G_QTY          NUMERIC(19,4),
  UNIT_1         VARCHAR(3),
  QTY_1          NUMERIC(19,4),
  UNIT_2         VARCHAR(3),
  QTY_2          NUMERIC(19,4),
  DECL_TOTAL     NUMERIC(19,4),
  TRADE_CURR     VARCHAR(3),
  DUTY_MODE      VARCHAR(1),
  D_RATE         NUMERIC(19,5),
  T_RATE         NUMERIC(19,5),
  O_RATE         NUMERIC(19,5),
  DUTY_RATE      NUMERIC(19,5),
  TAX_RATE       NUMERIC(19,5),
  OTHER_RATE     NUMERIC(19,5),
  DUTY_CUT       NUMERIC(19,4),
  TAX_CUT        NUMERIC(19,4),
  OTHER_CUT      NUMERIC(19,4),
  APPR_QUOTA     NUMERIC(19,4),
  FACT_AMT       NUMERIC(19,4),
  FACT_QTY       NUMERIC(19,4),
  DUTY_VALUE     NUMERIC(19),
  AUDIT_FLAG     VARCHAR(1),
  RESERVE1       VARCHAR(255),
  NOTE           VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/MOD_RED_LIST.txt',
'gpfdist://mdw-2:8081/MOD_RED_LIST.txt',
'gpfdist://mdw-3:8081/MOD_RED_LIST.txt',
'gpfdist://mdw-4:8081/MOD_RED_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------NONENTRY_CHK_RESULT------------
drop external table IF EXISTS NONENTRY_CHK_RESULT_INC_EXT;

create external table NONENTRY_CHK_RESULT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RSK_NO          VARCHAR(15)  ,
  I_E_FLAG        CHAR(1),
  TRAF_MODE       CHAR(1),
  I_E_DATE        TIMESTAMP,
  TRAF_NAME       VARCHAR(255),
  EXAM_MODE_CODE  VARCHAR(2),
  VOYAGE_NO       VARCHAR(32),
  BILL_NO         VARCHAR(32),
  FORM_ID         VARCHAR(50),
  RSK_REQUEST_STR VARCHAR(255),
  EXAM_ADDR       VARCHAR(50),
  EXAM_ADDR_CODE  VARCHAR(13),
  EXAM_RESULT     VARCHAR(50),
  EXAM_PROC_IDEA  VARCHAR(2),
  ALC_OP          VARCHAR(8),
  ALC_DATE        TIMESTAMP,
  CHK_ER1         VARCHAR(8),
  CHK_ER2         VARCHAR(8),
  EXAM_PROC_TIME  TIMESTAMP,
  CHK_FLAG        VARCHAR(1),
  NOTE_S          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/NONENTRY_CHK_RESULT.txt',
'gpfdist://mdw-2:8081/NONENTRY_CHK_RESULT.txt',
'gpfdist://mdw-3:8081/NONENTRY_CHK_RESULT.txt',
'gpfdist://mdw-4:8081/NONENTRY_CHK_RESULT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------NORSK_COMPANY------------
drop external table IF EXISTS NORSK_COMPANY_INC_EXT;

create external table NORSK_COMPANY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE    VARCHAR(16)  ,
  TRADE_CO     VARCHAR(10),
  TRADE_NAME   VARCHAR(64),
  BEGIN_DATE   TIMESTAMP,
  END_DATE     TIMESTAMP,
  CUSTOMS_CODE VARCHAR(4),
  INPUT_ID     VARCHAR(8),
  AUTHORIZE_ID VARCHAR(8),
  OP_TIME      TIMESTAMP,
  I_E_FLAG     VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/NORSK_COMPANY.txt',
'gpfdist://mdw-2:8081/NORSK_COMPANY.txt',
'gpfdist://mdw-3:8081/NORSK_COMPANY.txt',
'gpfdist://mdw-4:8081/NORSK_COMPANY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------NORSK_COMPANY_BAK------------
drop external table IF EXISTS NORSK_COMPANY_BAK_INC_EXT;

create external table NORSK_COMPANY_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE      VARCHAR(16)  ,
  TRADE_CO       VARCHAR(10),
  TRADE_NAME     VARCHAR(64),
  BEGIN_DATE     TIMESTAMP,
  END_DATE       TIMESTAMP,
  CUSTOMS_CODE   VARCHAR(4),
  INPUT_ID       VARCHAR(8),
  AUTHORIZE_ID   VARCHAR(8),
  OP_TIME        TIMESTAMP,
  I_E_FLAG       VARCHAR(1),
  OP_BAK_TYPE    VARCHAR(8),
  OP_BAK_CUSTOMS VARCHAR(4),
  OP_BAK_MAN     VARCHAR(8),
  OP_BAK_TIME    TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/NORSK_COMPANY_BAK.txt',
'gpfdist://mdw-2:8081/NORSK_COMPANY_BAK.txt',
'gpfdist://mdw-3:8081/NORSK_COMPANY_BAK.txt',
'gpfdist://mdw-4:8081/NORSK_COMPANY_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------NORSK_CONDITION------------
drop external table IF EXISTS NORSK_CONDITION_INC_EXT;

create external table NORSK_CONDITION_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE    VARCHAR(16)  ,
  RSK_COND     VARCHAR(2048),
  RSK_COND_MID VARCHAR(2048),
  RSK_COND_TXT VARCHAR(2048),
  NOTE         VARCHAR(255),
  BEGIN_DATE   TIMESTAMP,
  END_DATE     TIMESTAMP,
  CUSTOMS_CODE VARCHAR(4),
  INPUT_ID     VARCHAR(8),
  AUTHORIZE_ID VARCHAR(8),
  OP_TIME      TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/NORSK_CONDITION.txt',
'gpfdist://mdw-2:8081/NORSK_CONDITION.txt',
'gpfdist://mdw-3:8081/NORSK_CONDITION.txt',
'gpfdist://mdw-4:8081/NORSK_CONDITION.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------NORSK_CONDITION_BAK------------
drop external table IF EXISTS NORSK_CONDITION_BAK_INC_EXT;

create external table NORSK_CONDITION_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE      VARCHAR(16)  ,
  RSK_COND       VARCHAR(2048),
  RSK_COND_MID   VARCHAR(2048),
  RSK_COND_TXT   VARCHAR(2048),
  NOTE           VARCHAR(255),
  BEGIN_DATE     TIMESTAMP,
  END_DATE       TIMESTAMP,
  CUSTOMS_CODE   VARCHAR(4),
  INPUT_ID       VARCHAR(8),
  AUTHORIZE_ID   VARCHAR(8),
  OP_TIME        TIMESTAMP,
  OP_BAK_TYPE    VARCHAR(8),
  OP_BAK_CUSTOMS VARCHAR(4),
  OP_BAK_MAN     VARCHAR(8),
  OP_BAK_TIME    TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/NORSK_CONDITION_BAK.txt',
'gpfdist://mdw-2:8081/NORSK_CONDITION_BAK.txt',
'gpfdist://mdw-3:8081/NORSK_CONDITION_BAK.txt',
'gpfdist://mdw-4:8081/NORSK_CONDITION_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------NORSK_TRADE_MODE------------
drop external table IF EXISTS NORSK_TRADE_MODE_INC_EXT;

create external table NORSK_TRADE_MODE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE    VARCHAR(16)  ,
  TRADE_MODE   VARCHAR(4),
  TRADE_NAME   VARCHAR(255),
  BEGIN_DATE   TIMESTAMP,
  END_DATE     TIMESTAMP,
  CUSTOMS_CODE VARCHAR(4),
  INPUT_ID     VARCHAR(8),
  AUTHORIZE_ID VARCHAR(8),
  OP_TIME      TIMESTAMP,
  I_E_FLAG     VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/NORSK_TRADE_MODE.txt',
'gpfdist://mdw-2:8081/NORSK_TRADE_MODE.txt',
'gpfdist://mdw-3:8081/NORSK_TRADE_MODE.txt',
'gpfdist://mdw-4:8081/NORSK_TRADE_MODE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------NORSK_TRADE_MODE_BAK------------
drop external table IF EXISTS NORSK_TRADE_MODE_BAK_INC_EXT;

create external table NORSK_TRADE_MODE_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE      VARCHAR(16)  ,
  TRADE_MODE     VARCHAR(4),
  TRADE_NAME     VARCHAR(255),
  BEGIN_DATE     TIMESTAMP,
  END_DATE       TIMESTAMP,
  CUSTOMS_CODE   VARCHAR(4),
  INPUT_ID       VARCHAR(8),
  AUTHORIZE_ID   VARCHAR(8),
  OP_TIME        TIMESTAMP,
  I_E_FLAG       VARCHAR(1),
  OP_BAK_TYPE    VARCHAR(8),
  OP_BAK_CUSTOMS VARCHAR(4),
  OP_BAK_MAN     VARCHAR(8),
  OP_BAK_TIME    TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/NORSK_TRADE_MODE_BAK.txt',
'gpfdist://mdw-2:8081/NORSK_TRADE_MODE_BAK.txt',
'gpfdist://mdw-3:8081/NORSK_TRADE_MODE_BAK.txt',
'gpfdist://mdw-4:8081/NORSK_TRADE_MODE_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------OCC_ELE_HEAD------------
drop external table IF EXISTS OCC_ELE_HEAD_INC_EXT;

create external table OCC_ELE_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CERTIFICATE_NO     VARCHAR(12)  ,
  AGREEMENT_ID       VARCHAR(2)  ,
  ISSUE_PLACE        VARCHAR(3)  ,
  MODIFY_NUM         NUMERIC(19)  ,
  TRANSFER_NUM       NUMERIC(19)  ,
  ISSUE_ORGANIZATION VARCHAR(32)  ,
  ISSUE_DATE         TIMESTAMP  ,
  VALID_DATE         TIMESTAMP  ,
  EXPORTER_NAME      VARCHAR(255),
  EXPORTER_ADDR      VARCHAR(255),
  CONSIGNEE_NAME     VARCHAR(255),
  CONSIGNEE_ADDR     VARCHAR(255),
  FACTORY_NUMBER     VARCHAR(6)  ,
  DEPARTURE_DATE     TIMESTAMP,
  TRANS_MODE         VARCHAR(1),
  PLACE_OF_LOADING   VARCHAR(3),
  PORT_OF_DISCHARGE  VARCHAR(4)  ,
  GOODS_NUM          VARCHAR(2)  ,
  OPER_MODE          VARCHAR(1)  ,
  RECV_DATE          TIMESTAMP,
  REUSE1             VARCHAR(32),
  REUSE2             NUMERIC(19,4),
  HASH_SIGN          VARCHAR(380)
)
LOCATION( 
'gpfdist://mdw-1:8081/OCC_ELE_HEAD.txt',
'gpfdist://mdw-2:8081/OCC_ELE_HEAD.txt',
'gpfdist://mdw-3:8081/OCC_ELE_HEAD.txt',
'gpfdist://mdw-4:8081/OCC_ELE_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------OCC_ELE_LIST------------
drop external table IF EXISTS OCC_ELE_LIST_INC_EXT;

create external table OCC_ELE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CERTIFICATE_NO VARCHAR(12)  ,
  AGREEMENT_ID   VARCHAR(2)  ,
  ISSUE_PLACE    VARCHAR(3)  ,
  G_NO           VARCHAR(2)  ,
  CODE_TS        VARCHAR(16)  ,
  G_NAME_MODEL   VARCHAR(270)  ,
  PACK_NO        NUMERIC(19,5),
  PACK_TYPE      VARCHAR(32),
  G_QTY          NUMERIC(19,5)  ,
  G_UNIT         VARCHAR(3)  ,
  FOB_VALUE      NUMERIC(19,2),
  FOB_CURRENCY   VARCHAR(3),
  BRAND_NAME     VARCHAR(255),
  REUSE1         VARCHAR(32),
  REUSE2         NUMERIC(19,4),
  HASH_SIGN      VARCHAR(380)
)
LOCATION( 
'gpfdist://mdw-1:8081/OCC_ELE_LIST.txt',
'gpfdist://mdw-2:8081/OCC_ELE_LIST.txt',
'gpfdist://mdw-3:8081/OCC_ELE_LIST.txt',
'gpfdist://mdw-4:8081/OCC_ELE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------OCC_EXAM------------
drop external table IF EXISTS OCC_EXAM_INC_EXT;

create external table OCC_EXAM_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CERTIFICATE_NO VARCHAR(12)  ,
  AGREEMENT_ID   VARCHAR(2)  ,
  ISSUE_PLACE    VARCHAR(3)  ,
  ENTRY_ID       VARCHAR(18),
  BASE_ID        VARCHAR(17),
  G_NO           VARCHAR(4)  ,
  ENTRY_G_NO     NUMERIC(19)  ,
  FACT_AQTY      NUMERIC(19,4),
  FACT_TOTAL     NUMERIC(19,2),
  FACT_CURR      VARCHAR(3),
  CHK_DATE       TIMESTAMP,
  CHK_ER         VARCHAR(8),
  VERIFY_DATE    TIMESTAMP,
  VERIFY_ER      VARCHAR(8),
  RETURN_DATE    TIMESTAMP,
  REUSE1         VARCHAR(32),
  REUSE2         NUMERIC(19,4),
  HASH_SIGN      VARCHAR(380)
)
LOCATION( 
'gpfdist://mdw-1:8081/OCC_EXAM.txt',
'gpfdist://mdw-2:8081/OCC_EXAM.txt',
'gpfdist://mdw-3:8081/OCC_EXAM.txt',
'gpfdist://mdw-4:8081/OCC_EXAM.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------OCC_RECEIPT------------
drop external table IF EXISTS OCC_RECEIPT_INC_EXT;

create external table OCC_RECEIPT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CERTIFICATE_NO VARCHAR(12)  ,
  AGREEMENT_ID   VARCHAR(2)  ,
  ISSUE_PLACE    VARCHAR(3)  ,
  RETURN_DATE    TIMESTAMP,
  MESSAGE_ID     VARCHAR(43),
  STEP_ID        VARCHAR(3)
)
LOCATION( 
'gpfdist://mdw-1:8081/OCC_RECEIPT.txt',
'gpfdist://mdw-2:8081/OCC_RECEIPT.txt',
'gpfdist://mdw-3:8081/OCC_RECEIPT.txt',
'gpfdist://mdw-4:8081/OCC_RECEIPT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------OTHER_STF_RECORD------------
drop external table IF EXISTS OTHER_STF_RECORD_INC_EXT;

create external table OTHER_STF_RECORD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  OTHER_ID  VARCHAR(32)  ,
  STF_ID    VARCHAR(23),
  MANUAL_NO VARCHAR(23),
  I_E_FLAG  VARCHAR(1),
  STF_DATE1 TIMESTAMP,
  STF_ER1   VARCHAR(8),
  STF_DATE2 TIMESTAMP,
  STF_ER2   VARCHAR(8),
  ROOM_NO   VARCHAR(16),
  NOTE_TEXT VARCHAR(16),
  ID_TYPE   VARCHAR(1)  
)
LOCATION( 
'gpfdist://mdw-1:8081/OTHER_STF_RECORD.txt',
'gpfdist://mdw-2:8081/OTHER_STF_RECORD.txt',
'gpfdist://mdw-3:8081/OTHER_STF_RECORD.txt',
'gpfdist://mdw-4:8081/OTHER_STF_RECORD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PAPERLESS_SELFSAVE_CERT------------
drop external table IF EXISTS PAPERLESS_SELFSAVE_CERT_INC_EXT;

create external table PAPERLESS_SELFSAVE_CERT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID   VARCHAR(18)  ,
  I_E_FLAG   VARCHAR(1),
  DECL_PORT  VARCHAR(4),
  REL_TIME   TIMESTAMP,
  AGENT_CODE VARCHAR(10),
  TRADE_CO   VARCHAR(10),
  TRADE_NAME VARCHAR(255),
  AGENT_NAME VARCHAR(255),
  PRINT_TIME TIMESTAMP,
  PROC_MARK  VARCHAR(1),
  D_DATE     TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/PAPERLESS_SELFSAVE_CERT.txt',
'gpfdist://mdw-2:8081/PAPERLESS_SELFSAVE_CERT.txt',
'gpfdist://mdw-3:8081/PAPERLESS_SELFSAVE_CERT.txt',
'gpfdist://mdw-4:8081/PAPERLESS_SELFSAVE_CERT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PAYOUT_REMIT_HEAD------------
drop external table IF EXISTS PAYOUT_REMIT_HEAD_INC_EXT;

create external table PAYOUT_REMIT_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RPTNO        VARCHAR(32)  ,
  RPTUSER      VARCHAR(128),
  TRADE_CO     VARCHAR(10),
  RCVNAME      VARCHAR(128),
  ACTUCCY      VARCHAR(3),
  ACTUAMT      NUMERIC(21,2),
  CSTSETCODE   VARCHAR(2),
  COUNTRYCODE  VARCHAR(3),
  CSTCNTRCTNO  VARCHAR(32),
  INVOICENO    VARCHAR(64),
  LCBGNO       VARCHAR(32),
  CUS_TRADE_CO VARCHAR(12),
  RECV_DATE    TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/PAYOUT_REMIT_HEAD.txt',
'gpfdist://mdw-2:8081/PAYOUT_REMIT_HEAD.txt',
'gpfdist://mdw-3:8081/PAYOUT_REMIT_HEAD.txt',
'gpfdist://mdw-4:8081/PAYOUT_REMIT_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PAYOUT_REMIT_LIST------------
drop external table IF EXISTS PAYOUT_REMIT_LIST_INC_EXT;

create external table PAYOUT_REMIT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RPTNO       VARCHAR(32)  ,
  ENTRY_ID    VARCHAR(18)  ,
  CUSTOMCCY   VARCHAR(3),
  CUSTOMAMT   NUMERIC(21,2),
  WRITEOFFAMT NUMERIC(21,2),
  RECV_DATE   TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/PAYOUT_REMIT_LIST.txt',
'gpfdist://mdw-2:8081/PAYOUT_REMIT_LIST.txt',
'gpfdist://mdw-3:8081/PAYOUT_REMIT_LIST.txt',
'gpfdist://mdw-4:8081/PAYOUT_REMIT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PES_CANCEL------------
drop external table IF EXISTS PES_CANCEL_INC_EXT;

create external table PES_CANCEL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID      VARCHAR(32)  ,
  I_E_FLAG      VARCHAR(1),
  G_NO          NUMERIC(19),
  NOTE_NO       VARCHAR(16),
  NOTE_TYPE     VARCHAR(4),
  TRADE_CODE    VARCHAR(10),
  TRADE_NAME    VARCHAR(255),
  OWNER_CODE    VARCHAR(10),
  OWNER_NAME    VARCHAR(255),
  DISTRICT_CODE VARCHAR(3),
  TRADE_COUNTRY VARCHAR(3),
  TRADE_MODE    VARCHAR(4),
  DECL_CUSTOM   VARCHAR(4),
  CODE_TS       VARCHAR(16),
  G_NAME        VARCHAR(255),
  G_MODEL       VARCHAR(255),
  QTY           NUMERIC(19,5),
  UNIT          VARCHAR(3),
  DECL_TOTAL    NUMERIC(19,4),
  TRADE_CURR    VARCHAR(3),
  G_DATE        TIMESTAMP,
  STAT          VARCHAR(3)
)
LOCATION( 
'gpfdist://mdw-1:8081/PES_CANCEL.txt',
'gpfdist://mdw-2:8081/PES_CANCEL.txt',
'gpfdist://mdw-3:8081/PES_CANCEL.txt',
'gpfdist://mdw-4:8081/PES_CANCEL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PES_NOTE------------
drop external table IF EXISTS PES_NOTE_INC_EXT;

create external table PES_NOTE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  NOTE_NO       VARCHAR(16)  ,
  NOTE_TYPE     VARCHAR(4),
  I_E_FLAG      VARCHAR(1),
  ID_STAT       VARCHAR(32),
  APPR_DATE     TIMESTAMP,
  BEGIN_DATE    TIMESTAMP,
  END_DATE      TIMESTAMP,
  TRADE_CODE    VARCHAR(16),
  TRADE_NAME    VARCHAR(32),
  CODE_TS       VARCHAR(16),
  G_NAME        VARCHAR(255),
  G_USE         VARCHAR(32),
  QTY           NUMERIC(19,3),
  UNIT          VARCHAR(4),
  DISTRICT_CODE VARCHAR(4),
  TRADE_MODE    VARCHAR(4),
  I_E_PORT      VARCHAR(4),
  STAT          VARCHAR(1),
  VERIFY_DATE   TIMESTAMP,
  VERIFY_ER     VARCHAR(16),
  CLEAR_DATE    TIMESTAMP,
  CLEAR_ER      VARCHAR(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/PES_NOTE.txt',
'gpfdist://mdw-2:8081/PES_NOTE.txt',
'gpfdist://mdw-3:8081/PES_NOTE.txt',
'gpfdist://mdw-4:8081/PES_NOTE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PES_WORKFLOW------------
drop external table IF EXISTS PES_WORKFLOW_INC_EXT;

create external table PES_WORKFLOW_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  NOTE_NO        VARCHAR(18)  ,
  NOTE_TYPE      VARCHAR(4)  ,
  PROCESS_DATE   TIMESTAMP  ,
  STEP_ID        VARCHAR(16)  ,
  PROCESS_STATUS VARCHAR(2),
  STAT           VARCHAR(1),
  ENTRY_ID       VARCHAR(32),
  NOTE           VARCHAR(255),
  PROCESS_ER     VARCHAR(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/PES_WORKFLOW.txt',
'gpfdist://mdw-2:8081/PES_WORKFLOW.txt',
'gpfdist://mdw-3:8081/PES_WORKFLOW.txt',
'gpfdist://mdw-4:8081/PES_WORKFLOW.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PORT_BIND_REL------------
drop external table IF EXISTS PORT_BIND_REL_INC_EXT;

create external table PORT_BIND_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  BIND_NO     VARCHAR(17)  ,
  PRE_NO      VARCHAR(16)  ,
  REC_MARK    VARCHAR(1),
  SPARE_FIELD VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/PORT_BIND_REL.txt',
'gpfdist://mdw-2:8081/PORT_BIND_REL.txt',
'gpfdist://mdw-3:8081/PORT_BIND_REL.txt',
'gpfdist://mdw-4:8081/PORT_BIND_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_APPL_CLOSE------------
drop external table IF EXISTS PRE_APPL_CLOSE_INC_EXT;

create external table PRE_APPL_CLOSE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  APPL_NO        NUMERIC(19),
  APPL_DATE      TIMESTAMP,
  DECL_IN_AMT    NUMERIC(19,5),
  DECL_EX_AMT    NUMERIC(19,5),
  DECL_IN_COUNT  NUMERIC(19),
  DECL_EX_COUNT  NUMERIC(19),
  REMAIN_IN_AMT  NUMERIC(19,4),
  REMAIN_EX_AMT  NUMERIC(19,4),
  RESOR_IN_COUNT NUMERIC(19),
  PRODU_IN_COUNT NUMERIC(19),
  RESOR_EX_COUNT NUMERIC(19),
  PRODU_EX_COUNT NUMERIC(19),
  RESOR_IN_AMT   NUMERIC(19,4),
  PRODU_IN_AMT   NUMERIC(19,4),
  RESOR_EX_AMT   NUMERIC(19,4),
  PRODU_EX_AMT   NUMERIC(19,4),
  DC_DATE        TIMESTAMP,
  TYPE_ER        VARCHAR(8),
  DECL_CO        VARCHAR(6),
  CHK_ER         VARCHAR(8),
  RECHK_ER       VARCHAR(8),
  CHK_DATE       TIMESTAMP,
  RECHK_DATE     TIMESTAMP,
  NOTE_S         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_APPL_CLOSE.txt',
'gpfdist://mdw-2:8081/PRE_APPL_CLOSE.txt',
'gpfdist://mdw-3:8081/PRE_APPL_CLOSE.txt',
'gpfdist://mdw-4:8081/PRE_APPL_CLOSE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_APPL_CLOSE_CONSUME------------
drop external table IF EXISTS PRE_APPL_CLOSE_CONSUME_INC_EXT;

create external table PRE_APPL_CLOSE_CONSUME_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO    VARCHAR(12)  ,
  CONTR_ITEM   NUMERIC(19)  ,
  CODE_TS      VARCHAR(16),
  G_NAME       VARCHAR(32),
  G_MODEL      VARCHAR(32),
  EX_NO        NUMERIC(19)  ,
  DECL_CONSUME NUMERIC(19,10),
  DECL_DAMAGE  NUMERIC(19,10)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_APPL_CLOSE_CONSUME.txt',
'gpfdist://mdw-2:8081/PRE_APPL_CLOSE_CONSUME.txt',
'gpfdist://mdw-3:8081/PRE_APPL_CLOSE_CONSUME.txt',
'gpfdist://mdw-4:8081/PRE_APPL_CLOSE_CONSUME.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_CDL_COMMODITY------------
drop external table IF EXISTS PRE_CDL_COMMODITY_INC_EXT;

create external table PRE_CDL_COMMODITY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RECORDS_NO     VARCHAR(12),
  PRE_RECORDS_NO VARCHAR(18)  ,
  RECORDS_DATE   TIMESTAMP  ,
  PROC_FLAG      VARCHAR(1),
  TRADE_CO       VARCHAR(10),
  G_NO           NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  G_UNIT         VARCHAR(3),
  DECL_PRICE     NUMERIC(19,5),
  TRADE_CURR     VARCHAR(3),
  I_E_FLAG       VARCHAR(1),
  ORIGIN_COUNTRY VARCHAR(3),
  DISTRICT_CODE  VARCHAR(5),
  LICENSE_NO     VARCHAR(20),
  LICENSE_COUNT  NUMERIC(19),
  LICENSE_DATE   TIMESTAMP,
  MOD_TYPE       VARCHAR(1),
  CUSTOMS_CODE   VARCHAR(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_CDL_COMMODITY.txt',
'gpfdist://mdw-2:8081/PRE_CDL_COMMODITY.txt',
'gpfdist://mdw-3:8081/PRE_CDL_COMMODITY.txt',
'gpfdist://mdw-4:8081/PRE_CDL_COMMODITY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_CDL_COMPANY------------
drop external table IF EXISTS PRE_CDL_COMPANY_INC_EXT;

create external table PRE_CDL_COMPANY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO          VARCHAR(10)  ,
  RECORDS_DATE      TIMESTAMP  ,
  PROC_FLAG         VARCHAR(1),
  TRADE_NAME        VARCHAR(255),
  CUSTOMS_CODE      VARCHAR(4),
  APP_MOD_FLAG      VARCHAR(1),
  TRADE_BONDED_FLAG VARCHAR(2)  ,
  GRT_TYPE          VARCHAR(1),
  GRT_PRICE         NUMERIC(19,4),
  GRT_DATE          TIMESTAMP,
  IE_COUNT          NUMERIC(19),
  R_NOTES           VARCHAR(255),
  PRE_COP_NO        VARCHAR(18)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_CDL_COMPANY.txt',
'gpfdist://mdw-2:8081/PRE_CDL_COMPANY.txt',
'gpfdist://mdw-3:8081/PRE_CDL_COMPANY.txt',
'gpfdist://mdw-4:8081/PRE_CDL_COMPANY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_COMPANY_REL------------
drop external table IF EXISTS PRE_COMPANY_REL_INC_EXT;

create external table PRE_COMPANY_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_TRADE_CO  VARCHAR(18)  ,
  TRADE_CO      VARCHAR(10),
  REG_CO        VARCHAR(255),
  FULL_NAME     VARCHAR(255),
  CUSTOMS_CODE  VARCHAR(4),
  VALID_DATE    TIMESTAMP ,
  ACCO_BANK     VARCHAR(32),
  ACCO_NO       VARCHAR(32),
  MAIL_CO       VARCHAR(6),
  BROKER_TYPE   VARCHAR(1),
  LICENSE_ID    VARCHAR(32),
  EN_FULL_CO    VARCHAR(255),
  EN_ADDR_CO    VARCHAR(255),
  ADDR_CO       VARCHAR(255),
  BUSI_TYPE     VARCHAR(32),
  CONTAC_CO     VARCHAR(32),
  TEL_CO        VARCHAR(32),
  APPR_DEP      VARCHAR(32),
  APPR_ID       VARCHAR(32),
  LAW_MAN       VARCHAR(32),
  LAW_MAN_TEL   VARCHAR(32),
  INV_FUND_T    NUMERIC(19,4),
  ID_NUMBER     VARCHAR(32),
  RG_FUND       NUMERIC(19,4),
  CURR_CODE     VARCHAR(3),
  TAXY_RG_NO    VARCHAR(32),
  CO_TYPE       VARCHAR(32),
  IN_RATIO      NUMERIC(19),
  SPE_CO        VARCHAR(8),
  MAIN_PRO      VARCHAR(255),
  ACT_FUND      NUMERIC(18),
  COP_NOTE      VARCHAR(255),
  PRE_OPER_CODE VARCHAR(8),
  PRE_OPER_DATE TIMESTAMP,
  PRE_OPER_FLAG VARCHAR(1),
  PRE_CHK_FLAG  VARCHAR(1),
  PRE_CHK_DATE  TIMESTAMP,
  COP_GB_CODE   VARCHAR(32),
  COP_IO_CODE   VARCHAR(32),
  COP_RANGE     VARCHAR(4000),
  DISTRICT_CODE VARCHAR(5),
  CO_OWNER      VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_COMPANY_REL.txt',
'gpfdist://mdw-2:8081/PRE_COMPANY_REL.txt',
'gpfdist://mdw-3:8081/PRE_COMPANY_REL.txt',
'gpfdist://mdw-4:8081/PRE_COMPANY_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_CONSUME------------
drop external table IF EXISTS PRE_CONSUME_INC_EXT;

create external table PRE_CONSUME_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO    VARCHAR(12)  ,
  CONTR_ITEM   NUMERIC(19)  ,
  EX_NO        NUMERIC(19)  ,
  APPR_CONSUME NUMERIC(19,10),
  APPR_DAMAGE  NUMERIC(19,10),
  DECL_CONSUME NUMERIC(19,10),
  DECL_DAMAGE  NUMERIC(19,10)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_CONSUME.txt',
'gpfdist://mdw-2:8081/PRE_CONSUME.txt',
'gpfdist://mdw-3:8081/PRE_CONSUME.txt',
'gpfdist://mdw-4:8081/PRE_CONSUME.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_CONTRACT_HEAD------------
drop external table IF EXISTS PRE_CONTRACT_HEAD_INC_EXT;

create external table PRE_CONTRACT_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO        VARCHAR(12)  ,
  PRE_MANUAL_NO    VARCHAR(12),
  TRADE_CO         VARCHAR(10),
  TRADE_NAME       VARCHAR(255),
  DISTRICT_CODE    VARCHAR(5),
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  FOREIGN_CO_NAME  VARCHAR(32),
  FOREIGN_MGR      VARCHAR(32),
  TRADE_MODE       VARCHAR(4),
  CUT_MODE         VARCHAR(3),
  TRADE_COUNTRY    VARCHAR(3),
  PORT_1           VARCHAR(4),
  PORT_2           VARCHAR(4),
  PORT_3           VARCHAR(4),
  PORT_4           VARCHAR(4),
  PORT_5           VARCHAR(4),
  AGREE_NO         VARCHAR(32),
  LICENSE_NO       VARCHAR(32),
  APPR_NO          VARCHAR(32),
  CONTR_IN         VARCHAR(32),
  CONTR_OUT        VARCHAR(32),
  EQUIP_MODE       VARCHAR(1),
  TRANS_MODE       VARCHAR(1),
  INVEST_MODE      VARCHAR(1),
  PAY_MODE         VARCHAR(1),
  EX_SOURCE        NUMERIC(19),
  PRODUCE_TYPE     VARCHAR(2),
  RATIO_RANGE      NUMERIC(19,4),
  IN_RATIO         NUMERIC(19,4),
  INVEST_AMT       NUMERIC(19,5),
  INVEST_CURR      VARCHAR(3),
  APPR_DEV_AMT     NUMERIC(19,5),
  FACT_DEV_AMT     NUMERIC(19,5),
  IN_AMT           NUMERIC(19,5),
  IN_CURR          VARCHAR(3),
  FACT_IN_AMT      NUMERIC(19,5),
  EX_AMT           NUMERIC(19,5),
  EX_CURR          VARCHAR(3),
  FACT_EX_AMT      NUMERIC(19,5),
  DECL_FLAG        VARCHAR(1),
  EXE_MARK         VARCHAR(1),
  SUPV_MARK        VARCHAR(10),
  IN_PNT           NUMERIC(19),
  EX_PNT           NUMERIC(19),
  CONTR_SEQNO      NUMERIC(19),
  IM_COUNT         NUMERIC(19),
  EX_COUNT         NUMERIC(19),
  I_DATE           TIMESTAMP,
  E_DATE           TIMESTAMP,
  LIMIT_DATE       TIMESTAMP,
  TYPE_ER          VARCHAR(8),
  TYPE_DATE        TIMESTAMP,
  CHK_ER           VARCHAR(8),
  APPR_DATE        TIMESTAMP,
  RECHK_ER         VARCHAR(8),
  CLEAR_ER         VARCHAR(8),
  CLEAR_APPL_DATE  TIMESTAMP,
  CLEAR_DATE       TIMESTAMP,
  CLOSE_ER         VARCHAR(8),
  CLOSE_DATE       TIMESTAMP,
  EXAM_MARK        VARCHAR(10),
  CLEAR_MARK       VARCHAR(10),
  CLOSE_MARK       VARCHAR(1),
  TAX_TYPE         VARCHAR(1),
  RECOVER_DUTY     NUMERIC(19,5),
  RECOVER_TAX      NUMERIC(19,5),
  RECOVER_REG      NUMERIC(19,5),
  DEFER_DUTY       NUMERIC(19,5),
  DEFER_TAX        NUMERIC(19,5),
  DEFER_REG        NUMERIC(19,5),
  FINE_AMT         NUMERIC(19,5),
  REAL_DUTY        NUMERIC(19,5),
  REAL_TAX         NUMERIC(19,5),
  REAL_REG         NUMERIC(19,5),
  SEQ_NO           VARCHAR(12),
  VER_NO           VARCHAR(12),
  VER_ER           VARCHAR(8),
  VER_DATE         TIMESTAMP,
  CUSTOMS_CODE     VARCHAR(4),
  SERVICE_FEE_RATE NUMERIC(19,5),
  PRE_SERVICE_FEE  NUMERIC(19,5),
  FACT_SERVICE_FEE NUMERIC(19,5),
  NOTE_S           VARCHAR(255),
  TR_PNT           NUMERIC(19),
  IN_RMB_RATE      NUMERIC(19,8),
  IN_USD_RATE      NUMERIC(19,8),
  EX_RMB_RATE      NUMERIC(19,8),
  EX_USD_RATE      NUMERIC(19,8),
  DEDUC_DATE       TIMESTAMP,
  CHECK_DATE       TIMESTAMP,
  HASH_SIGN        VARCHAR(380)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_CONTRACT_HEAD.txt',
'gpfdist://mdw-2:8081/PRE_CONTRACT_HEAD.txt',
'gpfdist://mdw-3:8081/PRE_CONTRACT_HEAD.txt',
'gpfdist://mdw-4:8081/PRE_CONTRACT_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_DECL_REL------------
drop external table IF EXISTS PRE_DECL_REL_INC_EXT;

create external table PRE_DECL_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO         VARCHAR(10),
  DECL_TRAIN_CO    VARCHAR(21)  ,
  DECL_ZG_CODE     VARCHAR(9),
  DECL_NAME        VARCHAR(32),
  DECL_SEX         VARCHAR(2),
  DECL_DEGREE      VARCHAR(32),
  DECL_ID_CODE     VARCHAR(21),
  DECL_TEL_BP_CODE VARCHAR(32),
  DECL_APPL_TIME   NUMERIC(19),
  DECL_TEST_SCORE  NUMERIC(19),
  DECL_APPL_FLAG   VARCHAR(1),
  DECL_INP_DATE    TIMESTAMP ,
  DECL_NOTE        VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_DECL_REL.txt',
'gpfdist://mdw-2:8081/PRE_DECL_REL.txt',
'gpfdist://mdw-3:8081/PRE_DECL_REL.txt',
'gpfdist://mdw-4:8081/PRE_DECL_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_EX_APPL_CLOSE------------
drop external table IF EXISTS PRE_EX_APPL_CLOSE_INC_EXT;

create external table PRE_EX_APPL_CLOSE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  CONTR_ITEM     NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(30),
  G_MODEL        VARCHAR(30),
  FACT_QTY       NUMERIC(19,4),
  T_IN_QTY       NUMERIC(19,4),
  T_EX_QTY       NUMERIC(19,4),
  REMAIN_QTY     NUMERIC(19,4),
  PROC_MODE      VARCHAR(1),
  CORR_MANUAL_NO VARCHAR(12)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_EX_APPL_CLOSE.txt',
'gpfdist://mdw-2:8081/PRE_EX_APPL_CLOSE.txt',
'gpfdist://mdw-3:8081/PRE_EX_APPL_CLOSE.txt',
'gpfdist://mdw-4:8081/PRE_EX_APPL_CLOSE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_EX_CONTRACT_LIST------------
drop external table IF EXISTS PRE_EX_CONTRACT_LIST_INC_EXT;

create external table PRE_EX_CONTRACT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  CONTR_ITEM     NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  CLASS_MARK     VARCHAR(1),
  G_NAME         VARCHAR(50),
  G_MODEL        VARCHAR(50),
  ORIGIN_COUNTRY VARCHAR(3),
  DUTY_MODE      VARCHAR(1),
  DUTY_RATIO     NUMERIC(19,5),
  LOCAL_CONTR    VARCHAR(20),
  APPR_AMT       NUMERIC(19,5),
  FACT_AMT       NUMERIC(19,5),
  UNIT_PRICE     NUMERIC(19,10),
  APPR_QTY       NUMERIC(19,5),
  FACT_QTY       NUMERIC(19,5),
  TRANSFER_QTY   NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  IN_COUNT       NUMERIC(19),
  WORK_PAY       NUMERIC(19),
  CURR_WORK      VARCHAR(3),
  CONSUME_NOTE   VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_EX_CONTRACT_LIST.txt',
'gpfdist://mdw-2:8081/PRE_EX_CONTRACT_LIST.txt',
'gpfdist://mdw-3:8081/PRE_EX_CONTRACT_LIST.txt',
'gpfdist://mdw-4:8081/PRE_EX_CONTRACT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_EX_FASCICLE_LIST------------
drop external table IF EXISTS PRE_EX_FASCICLE_LIST_INC_EXT;

create external table PRE_EX_FASCICLE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12),
  FASCICLE_NO VARCHAR(12)  ,
  CONTR_ITEM  NUMERIC(19)  ,
  APPR_QTY    NUMERIC(19,4),
  FACT_QTY    NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_EX_FASCICLE_LIST.txt',
'gpfdist://mdw-2:8081/PRE_EX_FASCICLE_LIST.txt',
'gpfdist://mdw-3:8081/PRE_EX_FASCICLE_LIST.txt',
'gpfdist://mdw-4:8081/PRE_EX_FASCICLE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_EXA_APPL_CLOSE------------
drop external table IF EXISTS PRE_EXA_APPL_CLOSE_INC_EXT;

create external table PRE_EXA_APPL_CLOSE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO  VARCHAR(12)  ,
  CONTR_ITEM NUMERIC(19)  ,
  CODE_TS    VARCHAR(16),
  G_NAME     VARCHAR(50),
  G_MODEL    VARCHAR(50),
  G_QTY      NUMERIC(19,4),
  DECL_PRICE NUMERIC(19,4),
  G_AMT      NUMERIC(19,5),
  PROC_MODE  VARCHAR(1),
  BOOK_NO    VARCHAR(18)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_EXA_APPL_CLOSE.txt',
'gpfdist://mdw-2:8081/PRE_EXA_APPL_CLOSE.txt',
'gpfdist://mdw-3:8081/PRE_EXA_APPL_CLOSE.txt',
'gpfdist://mdw-4:8081/PRE_EXA_APPL_CLOSE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_FASCICLE_HEAD------------
drop external table IF EXISTS PRE_FASCICLE_HEAD_INC_EXT;

create external table PRE_FASCICLE_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO       VARCHAR(12),
  FASCICLE_NO     VARCHAR(12)  ,
  PRE_FASCICLE_NO VARCHAR(12),
  I_E_PORT        VARCHAR(4),
  TYPE_ER         VARCHAR(8),
  TYPE_DATE       TIMESTAMP,
  LIMIT_DATE      TIMESTAMP,
  TRADE_CO        VARCHAR(10),
  CHK_ER          VARCHAR(8),
  RECHK_ER        VARCHAR(8),
  PR_DATE         TIMESTAMP,
  FASCICLE_TYPE   VARCHAR(1),
  EXE_MARK        VARCHAR(1),
  CONTR_IN        VARCHAR(32),
  CONTR_OUT       VARCHAR(32),
  IN_PNT          NUMERIC(19),
  EX_PNT          NUMERIC(19),
  SUPV_MARK       VARCHAR(1),
  NOTE_S          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_FASCICLE_HEAD.txt',
'gpfdist://mdw-2:8081/PRE_FASCICLE_HEAD.txt',
'gpfdist://mdw-3:8081/PRE_FASCICLE_HEAD.txt',
'gpfdist://mdw-4:8081/PRE_FASCICLE_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_IM_APPL_CLOSE------------
drop external table IF EXISTS PRE_IM_APPL_CLOSE_INC_EXT;

create external table PRE_IM_APPL_CLOSE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  CONTR_ITEM     NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(50),
  G_MODEL        VARCHAR(50),
  FACT_QTY       NUMERIC(19,4),
  T_IN_QTY       NUMERIC(19,4),
  T_EX_QTY       NUMERIC(19,4),
  USED_QTY       NUMERIC(19,4),
  REMAIN_QTY     NUMERIC(19,4),
  PROC_MODE      VARCHAR(1),
  CORR_MANUAL_NO VARCHAR(12)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_IM_APPL_CLOSE.txt',
'gpfdist://mdw-2:8081/PRE_IM_APPL_CLOSE.txt',
'gpfdist://mdw-3:8081/PRE_IM_APPL_CLOSE.txt',
'gpfdist://mdw-4:8081/PRE_IM_APPL_CLOSE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_IM_CONTRACT_LIST------------
drop external table IF EXISTS PRE_IM_CONTRACT_LIST_INC_EXT;

create external table PRE_IM_CONTRACT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  CONTR_ITEM     NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  CLASS_MARK     VARCHAR(1),
  G_NAME         VARCHAR(50),
  G_MODEL        VARCHAR(50),
  ORIGIN_COUNTRY VARCHAR(3),
  DUTY_MODE      VARCHAR(1),
  DUTY_RATIO     NUMERIC(19,5),
  LOCAL_CONTR    VARCHAR(20),
  APPR_AMT       NUMERIC(19,5),
  FACT_AMT       NUMERIC(19,5),
  UNIT_PRICE     NUMERIC(19,10),
  APPR_QTY       NUMERIC(19,5),
  FACT_QTY       NUMERIC(19,5),
  TRANSFER_QTY   NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  IN_COUNT       NUMERIC(19),
  IM_MODE        VARCHAR(1),
  CONSUME_NOTE   VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_IM_CONTRACT_LIST.txt',
'gpfdist://mdw-2:8081/PRE_IM_CONTRACT_LIST.txt',
'gpfdist://mdw-3:8081/PRE_IM_CONTRACT_LIST.txt',
'gpfdist://mdw-4:8081/PRE_IM_CONTRACT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_IM_FASCICLE_LIST------------
drop external table IF EXISTS PRE_IM_FASCICLE_LIST_INC_EXT;

create external table PRE_IM_FASCICLE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12),
  FASCICLE_NO VARCHAR(12)  ,
  CONTR_ITEM  NUMERIC(19)  ,
  APPR_QTY    NUMERIC(19,4),
  FACT_QTY    NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_IM_FASCICLE_LIST.txt',
'gpfdist://mdw-2:8081/PRE_IM_FASCICLE_LIST.txt',
'gpfdist://mdw-3:8081/PRE_IM_FASCICLE_LIST.txt',
'gpfdist://mdw-4:8081/PRE_IM_FASCICLE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_IMA_APPL_CLOSE------------
drop external table IF EXISTS PRE_IMA_APPL_CLOSE_INC_EXT;

create external table PRE_IMA_APPL_CLOSE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO  VARCHAR(12)  ,
  CONTR_ITEM NUMERIC(19)  ,
  CODE_TS    VARCHAR(16),
  G_NAME     VARCHAR(50),
  G_MODEL    VARCHAR(50),
  G_QTY      NUMERIC(19,4),
  G_UNIT     VARCHAR(3),
  DECL_PRICE NUMERIC(19,4),
  G_AMT      NUMERIC(19,5),
  PROC_MODE  VARCHAR(1),
  BOOK_NO    NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_IMA_APPL_CLOSE.txt',
'gpfdist://mdw-2:8081/PRE_IMA_APPL_CLOSE.txt',
'gpfdist://mdw-3:8081/PRE_IMA_APPL_CLOSE.txt',
'gpfdist://mdw-4:8081/PRE_IMA_APPL_CLOSE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_INVESTER_REL------------
drop external table IF EXISTS PRE_INVESTER_REL_INC_EXT;

create external table PRE_INVESTER_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_TRADE_CO VARCHAR(18)  ,
  INV_NO       NUMERIC(8)  ,
  INV_CO       VARCHAR(255),
  INV_MOD      VARCHAR(3),
  INV_FUND     NUMERIC(19,4),
  ACT_FUND     NUMERIC(19,4),
  INV_DATE     TIMESTAMP,
  INV_COUNTRY  VARCHAR(3)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_INVESTER_REL.txt',
'gpfdist://mdw-2:8081/PRE_INVESTER_REL.txt',
'gpfdist://mdw-3:8081/PRE_INVESTER_REL.txt',
'gpfdist://mdw-4:8081/PRE_INVESTER_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_MANA_REL------------
drop external table IF EXISTS PRE_MANA_REL_INC_EXT;

create external table PRE_MANA_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_TRADE_CO VARCHAR(18)  ,
  MANAG_NO     NUMERIC(19)  ,
  MANAG_NAME   VARCHAR(32),
  MANAG_TITLE  VARCHAR(32),
  MANAG_NAT    VARCHAR(3),
  MANAG_ID     VARCHAR(32),
  MANAG_BIR    TIMESTAMP,
  MANAG_SEX    VARCHAR(2),
  MANAG_ADDR   VARCHAR(255),
  MANAG_TEL_BP VARCHAR(32),
  MANAG_NOTE   VARCHAR(255),
  MANAG_DEGREE VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_MANA_REL.txt',
'gpfdist://mdw-2:8081/PRE_MANA_REL.txt',
'gpfdist://mdw-3:8081/PRE_MANA_REL.txt',
'gpfdist://mdw-4:8081/PRE_MANA_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_PROJECT_HEAD------------
drop external table IF EXISTS PRE_PROJECT_HEAD_INC_EXT;

create external table PRE_PROJECT_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_PROJECT_ID   VARCHAR(18),
  PROJECT_ID       VARCHAR(12)  ,
  MODIFY_TIMES     NUMERIC(9)  ,
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  TRADE_TYPE_NAME  VARCHAR(12),
  APPR_DEPT        VARCHAR(4),
  PROJECT_FUND     VARCHAR(1),
  PROJECT_TYPE     VARCHAR(5),
  PROJECT_NAME     VARCHAR(255),
  PROJECT_DATE     TIMESTAMP,
  START_DATE       TIMESTAMP,
  LIMIT_DATE       TIMESTAMP,
  FOREIGN_CO       VARCHAR(255),
  FOREIGN_COUNTRY  VARCHAR(255),
  INVEST_RATE_NAME VARCHAR(255),
  CONTR_NO         VARCHAR(255),
  RISK_MARK        VARCHAR(10),
  CUT_MODE         VARCHAR(3),
  INVEST_AMT       NUMERIC(19,4),
  INVEST_CURR      VARCHAR(3),
  QUOTA_AMT        NUMERIC(19,4),
  QUOTA_FREE       NUMERIC(19,4),
  APPR_AMT_FREE    NUMERIC(19,4),
  FACT_AMT_FREE    NUMERIC(19,4),
  APPR_AMT         NUMERIC(19,4),
  FACT_AMT         NUMERIC(19,4),
  DUTY_CUT         NUMERIC(19,4),
  TAX_CUT          NUMERIC(19,4),
  OTHER_CUT        NUMERIC(19,4),
  REAL_DUTY        NUMERIC(19,4),
  REAL_TAX         NUMERIC(19,4),
  REAL_OTHER       NUMERIC(19,4),
  REAL_DUTY_CUT    NUMERIC(19,4),
  REAL_TAX_CUT     NUMERIC(19,4),
  REAL_OTHER_CUT   NUMERIC(19,4),
  QTY_CUT          NUMERIC(19,4),
  UNIT_CUT         VARCHAR(3),
  APPR_QTY         NUMERIC(19,4),
  FACT_QTY         NUMERIC(19,4),
  AGREE_NO         VARCHAR(255),
  SECURITY_LEVEL   VARCHAR(1),
  COLLECT_MARK     VARCHAR(1),
  COLLECT_DATE     TIMESTAMP,
  MASTER_CUSTOMS   VARCHAR(4),
  LINKMAN          VARCHAR(255),
  ITEMS_NO         NUMERIC(9),
  INPUT_DATE       TIMESTAMP,
  TYPE_ER          VARCHAR(8),
  INPUT_COP        VARCHAR(255),
  CHK_DATE         TIMESTAMP,
  CHK_ER           VARCHAR(8),
  RECHK_DATE       TIMESTAMP,
  MODIFY_DATE      TIMESTAMP,
  RECHK_ER         VARCHAR(8),
  EXE_MARK         VARCHAR(1),
  SEQ_NO           VARCHAR(12),
  SEQ_DATE         TIMESTAMP,
  SEQ_ER           VARCHAR(8),
  REPORT_MARK      VARCHAR(1),
  REPORT_DATE      TIMESTAMP,
  REPORT_CGAC_DATE TIMESTAMP,
  REPLY_DATE       TIMESTAMP,
  REPLY_ER         VARCHAR(8),
  REASON           VARCHAR(255),
  RESERVE1         VARCHAR(255),
  NOTE             VARCHAR(255),
  HASH_SIGN        VARCHAR(380)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_PROJECT_HEAD.txt',
'gpfdist://mdw-2:8081/PRE_PROJECT_HEAD.txt',
'gpfdist://mdw-3:8081/PRE_PROJECT_HEAD.txt',
'gpfdist://mdw-4:8081/PRE_PROJECT_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_PROJECT_LIST------------
drop external table IF EXISTS PRE_PROJECT_LIST_INC_EXT;

create external table PRE_PROJECT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PROJECT_ID     VARCHAR(12)  ,
  MODIFY_TIMES   NUMERIC(9)  ,
  G_NO           NUMERIC(9)  ,
  CODE_TS        VARCHAR(16),
  CLASS_MARK     VARCHAR(1),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  G_UNIT         VARCHAR(3),
  G_QTY          NUMERIC(19,4),
  UNIT_1         VARCHAR(3),
  QTY_1          NUMERIC(19,4),
  UNIT_2         VARCHAR(3),
  QTY_2          NUMERIC(19,4),
  DECL_TOTAL     NUMERIC(19,4),
  TRADE_CURR     VARCHAR(3),
  USED_QTY       NUMERIC(19,4),
  USED_AMT       NUMERIC(19,4),
  FACT_QTY       NUMERIC(19,4),
  FACT_AMT       NUMERIC(19,4),
  DUTY_MODE      VARCHAR(1),
  D_RATE         NUMERIC(19,5),
  T_RATE         NUMERIC(19,5),
  O_RATE         NUMERIC(19,5),
  DUTY_RATE      NUMERIC(19,5),
  TAX_RATE       NUMERIC(19,5),
  OTHER_RATE     NUMERIC(19,5),
  CHECK_MARK     VARCHAR(1),
  RESERVE1       VARCHAR(255),
  NOTE           VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_PROJECT_LIST.txt',
'gpfdist://mdw-2:8081/PRE_PROJECT_LIST.txt',
'gpfdist://mdw-3:8081/PRE_PROJECT_LIST.txt',
'gpfdist://mdw-4:8081/PRE_PROJECT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_RED_HEAD------------
drop external table IF EXISTS PRE_RED_HEAD_INC_EXT;

create external table PRE_RED_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PROJECT_ID       VARCHAR(12),
  PRE_CUT_ID       VARCHAR(18),
  CUT_ID           VARCHAR(12)  ,
  MODIFY_TIMES     NUMERIC(9)  ,
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  TRADE_CO         VARCHAR(10),
  TRADE_NAME       VARCHAR(255),
  APPR_DEPT        VARCHAR(4),
  PROJECT_FUND     VARCHAR(1),
  PROJECT_TYPE     VARCHAR(5),
  CUT_MODE         VARCHAR(3),
  APPR_REASON      VARCHAR(255),
  I_E_PORT         VARCHAR(4),
  I_E_FLAG         VARCHAR(1),
  LICENSE_NO       VARCHAR(20),
  CONTR_NO         VARCHAR(255),
  ITEMS_NO         NUMERIC(9),
  INPUT_DATE       TIMESTAMP,
  TYPE_ER          VARCHAR(8),
  INPUT_COP        VARCHAR(255),
  CHK_DATE         TIMESTAMP,
  CHK_ER           VARCHAR(8),
  RECHK_DATE       TIMESTAMP,
  MODIFY_DATE      TIMESTAMP,
  RECHK_ER         VARCHAR(8),
  EXE_MARK         VARCHAR(1),
  LIMIT_DATE       TIMESTAMP,
  ENTRY_PWD        VARCHAR(12),
  PRINT_DATE       TIMESTAMP,
  PRINT_ER         VARCHAR(8),
  PRINT_MARK       VARCHAR(1),
  TRANS_TIMES      NUMERIC(9),
  APPR_AMT         NUMERIC(19,4),
  FACT_AMT         NUMERIC(19,4),
  APPR_QUOTA_SUM   NUMERIC(19,4),
  APPR_QUOTA_QTY   NUMERIC(19,4),
  REAL_QUOTA_SUM   NUMERIC(19,4),
  REAL_QUOTA_QTY   NUMERIC(19,4),
  DUTY_CUT         NUMERIC(19,4),
  TAX_CUT          NUMERIC(19,4),
  OTHER_CUT        NUMERIC(19,4),
  REAL_DUTY        NUMERIC(19,4),
  REAL_TAX         NUMERIC(19,4),
  REAL_OTHER       NUMERIC(19,4),
  REAL_DUTY_CUT    NUMERIC(19,4),
  REAL_TAX_CUT     NUMERIC(19,4),
  REAL_OTHER_CUT   NUMERIC(19,4),
  VERIFY_DATE      TIMESTAMP,
  MASTER_CUSTOMS   VARCHAR(4),
  CHECK_NOTE       VARCHAR(255),
  RECHK_NOTE       VARCHAR(255),
  REPLY_CHECK_NOTE VARCHAR(255),
  RISK_MARK        VARCHAR(10),
  COLLECT_MARK     VARCHAR(1),
  COLLECT_DATE     TIMESTAMP,
  ENTRY_ID         VARCHAR(18),
  VERIFY_TIMES     NUMERIC(9),
  SECURITY_LEVEL   VARCHAR(1),
  REPORT_MARK      VARCHAR(1),
  REPORT_DATE      TIMESTAMP,
  REPORT_CGAC_DATE TIMESTAMP,
  REPLY_DATE       TIMESTAMP,
  REPLY_ER         VARCHAR(8),
  SEQ_NO           VARCHAR(12),
  SEQ_DATE         TIMESTAMP,
  SEQ_ER           VARCHAR(8),
  RED_TYPE         VARCHAR(1),
  TRADE_MODE       VARCHAR(4),
  TRANS_MODE       VARCHAR(1),
  FEE_MARK         VARCHAR(1),
  OTHER_MARK       VARCHAR(1),
  INSUR_MARK       VARCHAR(1),
  FEE_CURR         VARCHAR(3),
  FEE_RATE         NUMERIC(19,5),
  OTHER_CURR       VARCHAR(3),
  OTHER_RATE       NUMERIC(19,5),
  INSUR_CURR       VARCHAR(3),
  INSUR_RATE       NUMERIC(19,5),
  SERVICE_RATE     NUMERIC(19,5),
  SERVICE_FEE      NUMERIC(19,4),
  MNL_JGF_FLAG     VARCHAR(1),
  REASON           VARCHAR(255),
  RESERVE1         VARCHAR(255),
  NOTE             VARCHAR(255),
  HASH_SIGN        VARCHAR(380)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_RED_HEAD.txt',
'gpfdist://mdw-2:8081/PRE_RED_HEAD.txt',
'gpfdist://mdw-3:8081/PRE_RED_HEAD.txt',
'gpfdist://mdw-4:8081/PRE_RED_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_RED_LIST------------
drop external table IF EXISTS PRE_RED_LIST_INC_EXT;

create external table PRE_RED_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUT_ID         VARCHAR(12)  ,
  MODIFY_TIMES   NUMERIC(9)  ,
  G_NO           NUMERIC(9)  ,
  MAN_G_NO       NUMERIC(9),
  CODE_TS        VARCHAR(16),
  CLASS_MARK     VARCHAR(1),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  G_UNIT         VARCHAR(3),
  G_QTY          NUMERIC(19,4),
  UNIT_1         VARCHAR(3),
  QTY_1          NUMERIC(19,4),
  UNIT_2         VARCHAR(3),
  QTY_2          NUMERIC(19,4),
  DECL_TOTAL     NUMERIC(19,4),
  TRADE_CURR     VARCHAR(3),
  DUTY_MODE      VARCHAR(1),
  D_RATE         NUMERIC(19,5),
  T_RATE         NUMERIC(19,5),
  O_RATE         NUMERIC(19,5),
  DUTY_RATE      NUMERIC(19,5),
  TAX_RATE       NUMERIC(19,5),
  OTHER_RATE     NUMERIC(19,5),
  DUTY_CUT       NUMERIC(19,4),
  TAX_CUT        NUMERIC(19,4),
  OTHER_CUT      NUMERIC(19,4),
  APPR_QUOTA     NUMERIC(19,4),
  FACT_AMT       NUMERIC(19,4),
  FACT_QTY       NUMERIC(19,4),
  DUTY_VALUE     NUMERIC(19),
  AUDIT_FLAG     VARCHAR(1),
  RESERVE1       VARCHAR(255),
  NOTE           VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_RED_LIST.txt',
'gpfdist://mdw-2:8081/PRE_RED_LIST.txt',
'gpfdist://mdw-3:8081/PRE_RED_LIST.txt',
'gpfdist://mdw-4:8081/PRE_RED_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRE_REL_ALC_WORK------------
drop external table IF EXISTS PRE_REL_ALC_WORK_INC_EXT;

create external table PRE_REL_ALC_WORK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID     VARCHAR(18)  ,
  CUSTOMS_CODE VARCHAR(4),
  I_E_PORT     VARCHAR(4),
  D_DATE       TIMESTAMP,
  REC_DATE     TIMESTAMP,
  DECL_TYPE    VARCHAR(1),
  AVR_FLAG     VARCHAR(1),
  RSK_FLAG     VARCHAR(1),
  REL_TYPE     VARCHAR(1),
  TRAF_NAME    VARCHAR(255),
  VOYAGE_NO    VARCHAR(32),
  BILL_NO      VARCHAR(32),
  LAST_STEP    VARCHAR(2),
  PROC_FLAG    VARCHAR(8),
  OP_DATE      TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/PRE_REL_ALC_WORK.txt',
'gpfdist://mdw-2:8081/PRE_REL_ALC_WORK.txt',
'gpfdist://mdw-3:8081/PRE_REL_ALC_WORK.txt',
'gpfdist://mdw-4:8081/PRE_REL_ALC_WORK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRESS_CLEAR------------
drop external table IF EXISTS PRESS_CLEAR_INC_EXT;

create external table PRESS_CLEAR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO     VARCHAR(12)  ,
  PR_NO         VARCHAR(14)  ,
  PR_COUNT      NUMERIC(9),
  PR_CUSTOMS    VARCHAR(4),
  PR_DEPARTMENT VARCHAR(20),
  PR_DATE       TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/PRESS_CLEAR.txt',
'gpfdist://mdw-2:8081/PRESS_CLEAR.txt',
'gpfdist://mdw-3:8081/PRESS_CLEAR.txt',
'gpfdist://mdw-4:8081/PRESS_CLEAR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRICE_LIBRARY------------
drop external table IF EXISTS PRICE_LIBRARY_INC_EXT;

create external table PRICE_LIBRARY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  REC_NO         VARCHAR(18)  ,
  I_E_FLAG       VARCHAR(1)  ,
  REC_TYPE       VARCHAR(1)  ,
  CREATE_DATE    TIMESTAMP  ,
  POST_MARK      TIMESTAMP  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_NAME_E       VARCHAR(255),
  BRAND_C        VARCHAR(255),
  BRAND_E        VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  TRADE_COUNTRY  VARCHAR(3),
  TRANS_MODE     VARCHAR(1),
  TRANS_PORT     VARCHAR(20),
  CURR_CODE      VARCHAR(3),
  PRICE          NUMERIC(19,5),
  DECL_PRICE     NUMERIC(19,5),
  PRICE_CO       VARCHAR(1),
  QTY            NUMERIC(19,5),
  UNIT_NAME      VARCHAR(12),
  TRAF_MODE      VARCHAR(1),
  TRADE_MODE     VARCHAR(4),
  TRADE_NAME     VARCHAR(255),
  OWNER_NAME     VARCHAR(255),
  WRAP_TYPE      VARCHAR(32),
  PAY_WAY        VARCHAR(1),
  NOTE_S         VARCHAR(255),
  I_E_DATE       TIMESTAMP,
  INPUT_DATE     TIMESTAMP,
  BEG_DATE       TIMESTAMP,
  END_DATE       TIMESTAMP,
  CUSTOMER_CODE  VARCHAR(8),
  FORM_ID        VARCHAR(50),
  ID_TYPE        VARCHAR(1),
  MARK1          VARCHAR(1),
  MARK2          VARCHAR(1),
  MARK3          VARCHAR(1),
  MARK4          VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRICE_LIBRARY.txt',
'gpfdist://mdw-2:8081/PRICE_LIBRARY.txt',
'gpfdist://mdw-3:8081/PRICE_LIBRARY.txt',
'gpfdist://mdw-4:8081/PRICE_LIBRARY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRICE_LIBRARY_ENTRY------------
drop external table IF EXISTS PRICE_LIBRARY_ENTRY_INC_EXT;

create external table PRICE_LIBRARY_ENTRY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  REC_NO         VARCHAR(18)  ,
  I_E_FLAG       VARCHAR(1)  ,
  REC_TYPE       VARCHAR(1)  ,
  CREATE_DATE    TIMESTAMP  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_NAME_E       VARCHAR(255),
  BRAND_C        VARCHAR(255),
  BRAND_E        VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  TRADE_COUNTRY  VARCHAR(3),
  TRANS_MODE     VARCHAR(1),
  TRANS_PORT     VARCHAR(20),
  TRADE_CURR     VARCHAR(3),
  VAL_PRICE      NUMERIC(19,5),
  VAL_CURR       VARCHAR(3),
  DECL_PRICE     NUMERIC(19,5),
  G_QTY          NUMERIC(19,5),
  G_UNIT         VARCHAR(3),
  QTY_1          NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  QTY_2          NUMERIC(19,5),
  UNIT_2         VARCHAR(3),
  TRAF_MODE      VARCHAR(1),
  TRADE_MODE     VARCHAR(4),
  TRADE_CO       VARCHAR(10),
  TRADE_NAME     VARCHAR(255),
  OWNER_CO       VARCHAR(10),
  OWNER_NAME     VARCHAR(255),
  WRAP_TYPE      VARCHAR(32),
  PAY_WAY        VARCHAR(1),
  NOTE_S         VARCHAR(255),
  I_E_DATE       TIMESTAMP,
  SIGN_DATE      TIMESTAMP,
  BEG_DATE       TIMESTAMP,
  END_DATE       TIMESTAMP,
  CUSTOMER_CODE  VARCHAR(8),
  FORM_ID        VARCHAR(50),
  ID_TYPE        VARCHAR(1),
  MARK1          VARCHAR(1),
  MARK2          VARCHAR(1),
  MARK3          VARCHAR(1),
  MARK4          VARCHAR(1),
  REMARK         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRICE_LIBRARY_ENTRY.txt',
'gpfdist://mdw-2:8081/PRICE_LIBRARY_ENTRY.txt',
'gpfdist://mdw-3:8081/PRICE_LIBRARY_ENTRY.txt',
'gpfdist://mdw-4:8081/PRICE_LIBRARY_ENTRY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRICE_LIBRARY_MAN------------
drop external table IF EXISTS PRICE_LIBRARY_MAN_INC_EXT;

create external table PRICE_LIBRARY_MAN_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  REC_NO         VARCHAR(18)  ,
  I_E_FLAG       VARCHAR(1)  ,
  REC_TYPE       VARCHAR(1)  ,
  CREATE_DATE    TIMESTAMP  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_NAME_E       VARCHAR(255),
  BRAND_C        VARCHAR(255),
  BRAND_E        VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  TRADE_COUNTRY  VARCHAR(3),
  TRANS_MODE     VARCHAR(1),
  TRANS_PORT     VARCHAR(20),
  TRADE_CURR     VARCHAR(3),
  VAL_PRICE      NUMERIC(19,5),
  VAL_CURR       VARCHAR(3),
  DECL_PRICE     NUMERIC(19,5),
  G_QTY          NUMERIC(19,5),
  G_UNIT         VARCHAR(3),
  QTY_1          NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  QTY_2          NUMERIC(19,5),
  UNIT_2         VARCHAR(3),
  TRAF_MODE      VARCHAR(1),
  TRADE_MODE     VARCHAR(4),
  TRADE_CO       VARCHAR(10),
  TRADE_NAME     VARCHAR(255),
  OWNER_CO       VARCHAR(10),
  OWNER_NAME     VARCHAR(255),
  WRAP_TYPE      VARCHAR(32),
  PAY_WAY        VARCHAR(1),
  NOTE_S         VARCHAR(255),
  I_E_DATE       TIMESTAMP,
  SIGN_DATE      TIMESTAMP,
  BEG_DATE       TIMESTAMP,
  END_DATE       TIMESTAMP,
  CUSTOMER_CODE  VARCHAR(8),
  FORM_ID        VARCHAR(50),
  ID_TYPE        VARCHAR(1),
  MARK1          VARCHAR(1),
  MARK2          VARCHAR(1),
  MARK3          VARCHAR(1),
  MARK4          VARCHAR(1),
  REMARK         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRICE_LIBRARY_MAN.txt',
'gpfdist://mdw-2:8081/PRICE_LIBRARY_MAN.txt',
'gpfdist://mdw-3:8081/PRICE_LIBRARY_MAN.txt',
'gpfdist://mdw-4:8081/PRICE_LIBRARY_MAN.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PRICE_LIBRARY_RISK------------
drop external table IF EXISTS PRICE_LIBRARY_RISK_INC_EXT;

create external table PRICE_LIBRARY_RISK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  REC_NO         VARCHAR(18)  ,
  I_E_FLAG       VARCHAR(1)  ,
  REC_TYPE       VARCHAR(1)  ,
  CREATE_DATE    TIMESTAMP  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_NAME_E       VARCHAR(255),
  BRAND_C        VARCHAR(255),
  BRAND_E        VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  TRADE_COUNTRY  VARCHAR(3),
  TRANS_MODE     VARCHAR(1),
  TRANS_PORT     VARCHAR(20),
  TRADE_CURR     VARCHAR(3),
  VAL_PRICE      NUMERIC(19,5),
  VAL_CURR       VARCHAR(3),
  DECL_PRICE     NUMERIC(19,5),
  G_QTY          NUMERIC(19,5),
  G_UNIT         VARCHAR(3),
  QTY_1          NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  QTY_2          NUMERIC(19,5),
  UNIT_2         VARCHAR(3),
  TRAF_MODE      VARCHAR(1),
  TRADE_MODE     VARCHAR(4),
  TRADE_CO       VARCHAR(10),
  TRADE_NAME     VARCHAR(255),
  OWNER_CO       VARCHAR(10),
  OWNER_NAME     VARCHAR(255),
  WRAP_TYPE      VARCHAR(32),
  PAY_WAY        VARCHAR(1),
  NOTE_S         VARCHAR(255),
  I_E_DATE       TIMESTAMP,
  SIGN_DATE      TIMESTAMP,
  BEG_DATE       TIMESTAMP,
  END_DATE       TIMESTAMP,
  CUSTOMER_CODE  VARCHAR(8),
  FORM_ID        VARCHAR(50),
  ID_TYPE        VARCHAR(1),
  MARK1          VARCHAR(1),
  MARK2          VARCHAR(1),
  MARK3          VARCHAR(1),
  MARK4          VARCHAR(1),
  REMARK         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/PRICE_LIBRARY_RISK.txt',
'gpfdist://mdw-2:8081/PRICE_LIBRARY_RISK.txt',
'gpfdist://mdw-3:8081/PRICE_LIBRARY_RISK.txt',
'gpfdist://mdw-4:8081/PRICE_LIBRARY_RISK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PROJECT_HEAD------------
drop external table IF EXISTS PROJECT_HEAD_INC_EXT;

create external table PROJECT_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_PROJECT_ID   VARCHAR(18),
  PROJECT_ID       VARCHAR(18)  ,
  MODIFY_TIMES     NUMERIC(9)  ,
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  TRADE_TYPE_NAME  VARCHAR(12),
  APPR_DEPT        VARCHAR(4),
  PROJECT_FUND     VARCHAR(1),
  PROJECT_TYPE     VARCHAR(12),
  PROJECT_NAME     VARCHAR(255),
  PROJECT_DATE     TIMESTAMP,
  START_DATE       TIMESTAMP,
  LIMIT_DATE       TIMESTAMP,
  FOREIGN_CO       VARCHAR(255),
  FOREIGN_COUNTRY  VARCHAR(255),
  INVEST_RATE_NAME VARCHAR(255),
  CONTR_NO         VARCHAR(255),
  RISK_MARK        VARCHAR(10),
  CUT_MODE         VARCHAR(3),
  INVEST_AMT       NUMERIC(19,4),
  INVEST_CURR      VARCHAR(3),
  QUOTA_AMT        NUMERIC(19,4),
  QUOTA_FREE       NUMERIC(19,4),
  APPR_AMT_FREE    NUMERIC(19,4),
  FACT_AMT_FREE    NUMERIC(19,4),
  APPR_AMT         NUMERIC(19,4),
  FACT_AMT         NUMERIC(19,4),
  DUTY_CUT         NUMERIC(19,4),
  TAX_CUT          NUMERIC(19,4),
  OTHER_CUT        NUMERIC(19,4),
  REAL_DUTY        NUMERIC(19,4),
  REAL_TAX         NUMERIC(19,4),
  REAL_OTHER       NUMERIC(19,4),
  REAL_DUTY_CUT    NUMERIC(19,4),
  REAL_TAX_CUT     NUMERIC(19,4),
  REAL_OTHER_CUT   NUMERIC(19,4),
  QTY_CUT          NUMERIC(19,4),
  UNIT_CUT         VARCHAR(3),
  APPR_QTY         NUMERIC(19,4),
  FACT_QTY         NUMERIC(19,4),
  AGREE_NO         VARCHAR(255),
  SECURITY_LEVEL   VARCHAR(1),
  COLLECT_MARK     VARCHAR(1),
  COLLECT_DATE     TIMESTAMP,
  MASTER_CUSTOMS   VARCHAR(4),
  LINKMAN          VARCHAR(255),
  ITEMS_NO         NUMERIC(9),
  INPUT_DATE       TIMESTAMP,
  TYPE_ER          VARCHAR(8),
  INPUT_COP        VARCHAR(255),
  CHK_DATE         TIMESTAMP,
  CHK_ER           VARCHAR(8),
  RECHK_DATE       TIMESTAMP,
  MODIFY_DATE      TIMESTAMP,
  RECHK_ER         VARCHAR(8),
  EXE_MARK         VARCHAR(1),
  SEQ_NO           VARCHAR(12),
  SEQ_DATE         TIMESTAMP,
  SEQ_ER           VARCHAR(8),
  REPORT_MARK      VARCHAR(1),
  REPORT_DATE      TIMESTAMP,
  REPORT_CGAC_DATE TIMESTAMP,
  REPLY_DATE       TIMESTAMP,
  REPLY_ER         VARCHAR(8),
  REASON           VARCHAR(255),
  RESERVE1         VARCHAR(255),
  NOTE             VARCHAR(255),
  HASH_SIGN        VARCHAR(380),
  FIRST_PASS_DATE  TIMESTAMP,
  INVEST_AMT_USD   NUMERIC(19,4),
  MODIFY_ER        VARCHAR(8),
  BELONG_AREA_NAME VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/PROJECT_HEAD.txt',
'gpfdist://mdw-2:8081/PROJECT_HEAD.txt',
'gpfdist://mdw-3:8081/PROJECT_HEAD.txt',
'gpfdist://mdw-4:8081/PROJECT_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PROJECT_LIST------------
drop external table IF EXISTS PROJECT_LIST_INC_EXT;

create external table PROJECT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PROJECT_ID     VARCHAR(18)  ,
  MODIFY_TIMES   NUMERIC(9)  ,
  G_NO           NUMERIC(9)  ,
  CODE_TS        VARCHAR(16),
  CLASS_MARK     VARCHAR(1),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  G_UNIT         VARCHAR(3),
  G_QTY          NUMERIC(19,4),
  UNIT_1         VARCHAR(3),
  QTY_1          NUMERIC(19,4),
  UNIT_2         VARCHAR(3),
  QTY_2          NUMERIC(19,4),
  DECL_TOTAL     NUMERIC(19,4),
  TRADE_CURR     VARCHAR(3),
  USED_QTY       NUMERIC(19,4),
  USED_AMT       NUMERIC(19,4),
  FACT_QTY       NUMERIC(19,4),
  FACT_AMT       NUMERIC(19,4),
  DUTY_MODE      VARCHAR(1),
  D_RATE         NUMERIC(19,5),
  T_RATE         NUMERIC(19,5),
  O_RATE         NUMERIC(19,5),
  DUTY_RATE      NUMERIC(19,5),
  TAX_RATE       NUMERIC(19,5),
  OTHER_RATE     NUMERIC(19,5),
  CHECK_MARK     VARCHAR(1),
  RESERVE1       VARCHAR(255),
  NOTE           VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/PROJECT_LIST.txt',
'gpfdist://mdw-2:8081/PROJECT_LIST.txt',
'gpfdist://mdw-3:8081/PROJECT_LIST.txt',
'gpfdist://mdw-4:8081/PROJECT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PROJECT_MAX_NO------------
drop external table IF EXISTS PROJECT_MAX_NO_INC_EXT;

create external table PROJECT_MAX_NO_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MASTER_CUSTOMS VARCHAR(4)  ,
  YEAR_2         CHAR(2)  ,
  CUT_MODE       VARCHAR(3)  ,
  MAX_NO         NUMERIC(3)
)
LOCATION( 
'gpfdist://mdw-1:8081/PROJECT_MAX_NO.txt',
'gpfdist://mdw-2:8081/PROJECT_MAX_NO.txt',
'gpfdist://mdw-3:8081/PROJECT_MAX_NO.txt',
'gpfdist://mdw-4:8081/PROJECT_MAX_NO.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------PROJECT_MAX_NO_2007------------
drop external table IF EXISTS PROJECT_MAX_NO_2007_INC_EXT;

create external table PROJECT_MAX_NO_2007_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MASTER_CUSTOMS VARCHAR(4)  ,
  YEAR_4         CHAR(4)  ,
  CUT_MODE       VARCHAR(3)  ,
  MAX_NO         NUMERIC(4)
)
LOCATION( 
'gpfdist://mdw-1:8081/PROJECT_MAX_NO_2007.txt',
'gpfdist://mdw-2:8081/PROJECT_MAX_NO_2007.txt',
'gpfdist://mdw-3:8081/PROJECT_MAX_NO_2007.txt',
'gpfdist://mdw-4:8081/PROJECT_MAX_NO_2007.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RAM_HEAD------------
drop external table IF EXISTS RAM_HEAD_INC_EXT;

create external table RAM_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_RAM_ID       VARCHAR(18),
  RAM_ID           VARCHAR(18)  ,
  CUT_ID           VARCHAR(18),
  RELATIVE_ID      VARCHAR(18),
  RAM_TYPE         VARCHAR(5),
  PROJECT_ID       VARCHAR(18),
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  MASTER_CUSTOMS   VARCHAR(4),
  LINKMAN          VARCHAR(255),
  I_DATE           TIMESTAMP,
  INPUT_DATE       TIMESTAMP,
  INPUT_ER         VARCHAR(8),
  PRE_PRINT_ER     VARCHAR(8),
  PRE_PRINT_DATE   TIMESTAMP,
  DECL_DATE        TIMESTAMP,
  CHK_DATE         TIMESTAMP,
  CHK_ER           VARCHAR(8),
  CHECK_NOTE       VARCHAR(255),
  RECHK_DATE       TIMESTAMP,
  RECHK_ER         VARCHAR(8),
  RECHK_NOTE       VARCHAR(255),
  REPLY_DATE       TIMESTAMP,
  REPLY_ER         VARCHAR(8),
  REPLY_CHECK_NOTE VARCHAR(255),
  MODIFY_DATE      TIMESTAMP,
  MODIFY_ER        VARCHAR(8),
  MODIFY_NOTE      VARCHAR(255),
  EXE_MARK         VARCHAR(1),
  TOTAL_AMT        NUMERIC(19,4),
  PRINT_DATE       TIMESTAMP,
  PRINT_ER         VARCHAR(8),
  SOURCE_TYPE      VARCHAR(12),
  RESERVE1         VARCHAR(255),
  NOTE             VARCHAR(255),
  HASH_SIGN        VARCHAR(380),
  REASON           VARCHAR(255),
  LIMIT_DATE       TIMESTAMP,
  VERIFY_DATE      TIMESTAMP,
  ENTRY_ID         VARCHAR(18),
  RTX_DATE         TIMESTAMP,
  BANK_NAME        VARCHAR(255),
  DATE_BEGIN       TIMESTAMP,
  DATE_END         TIMESTAMP,
  MAX_LOAN_VALUE   NUMERIC(19,4),
  TAX_AMT          NUMERIC(19,4),
  END_LOAN_DATE    TIMESTAMP,
  END_LOAN_ER      VARCHAR(8),
  UNFREEZE_TYPE    VARCHAR(2),
  I_E_PORT         VARCHAR(4),
  CUT_APP_REASON   VARCHAR(255),
  CUT_FILE         VARCHAR(255),
  I_E_ZGCUST       VARCHAR(4),
  IM_CUSTOMS_CODE  VARCHAR(4),
  IM_COP_CODE      VARCHAR(10),
  IM_COP_NAME      VARCHAR(255),
  IM_PROJECT_ID    VARCHAR(18),
  IM_LINKMAN       VARCHAR(255),
  YD_REPLY_ER      VARCHAR(8),
  YD_REPLY_DATE    TIMESTAMP,
  YD_REPLY_NOTE    VARCHAR(255),
  REAL_DUTY        NUMERIC(19,4),
  REAL_TAX         NUMERIC(19,4),
  REAL_REG         NUMERIC(19,4),
  REAL_ANTI        NUMERIC(19,4),
  REAL_OTHER       NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/RAM_HEAD.txt',
'gpfdist://mdw-2:8081/RAM_HEAD.txt',
'gpfdist://mdw-3:8081/RAM_HEAD.txt',
'gpfdist://mdw-4:8081/RAM_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RAM_LIST------------
drop external table IF EXISTS RAM_LIST_INC_EXT;

create external table RAM_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RAM_ID     VARCHAR(18)  ,
  NUM        NUMERIC(9)  ,
  G_NO       NUMERIC(9),
  CODE_TS    VARCHAR(16),
  G_NAME     VARCHAR(255),
  G_MODEL    VARCHAR(255),
  G_UNIT     VARCHAR(3),
  G_QTY      NUMERIC(19,4),
  DECL_TOTAL NUMERIC(19,4),
  TRADE_CURR VARCHAR(3),
  FACT_AMT   NUMERIC(19,4),
  RESERVE1   VARCHAR(255),
  NOTE       VARCHAR(255),
  CUT_ID     VARCHAR(18),
  PROJECT_ID VARCHAR(18),
  I_DATE     TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/RAM_LIST.txt',
'gpfdist://mdw-2:8081/RAM_LIST.txt',
'gpfdist://mdw-3:8081/RAM_LIST.txt',
'gpfdist://mdw-4:8081/RAM_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RAM_PRINT_LOG------------
drop external table IF EXISTS RAM_PRINT_LOG_INC_EXT;

create external table RAM_PRINT_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RAM_ID     VARCHAR(18)  ,
  PRINT_DATE TIMESTAMP  ,
  PRINT_ER   VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/RAM_PRINT_LOG.txt',
'gpfdist://mdw-2:8081/RAM_PRINT_LOG.txt',
'gpfdist://mdw-3:8081/RAM_PRINT_LOG.txt',
'gpfdist://mdw-4:8081/RAM_PRINT_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RAM_RG_COP_OWNER------------
drop external table IF EXISTS RAM_RG_COP_OWNER_INC_EXT;

create external table RAM_RG_COP_OWNER_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RAM_ID      VARCHAR(18)  ,
  TYPE        VARCHAR(1)  ,
  COP_NO      VARCHAR(5)  ,
  OWNER_NO    VARCHAR(5)  ,
  OWNER_NAME  VARCHAR(255),
  COUNTRY     VARCHAR(3),
  INVEST_RATE VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RAM_RG_COP_OWNER.txt',
'gpfdist://mdw-2:8081/RAM_RG_COP_OWNER.txt',
'gpfdist://mdw-3:8081/RAM_RG_COP_OWNER.txt',
'gpfdist://mdw-4:8081/RAM_RG_COP_OWNER.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RAM_RG_COP_PROJECT------------
drop external table IF EXISTS RAM_RG_COP_PROJECT_INC_EXT;

create external table RAM_RG_COP_PROJECT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RAM_ID       VARCHAR(18)  ,
  TYPE         VARCHAR(1)  ,
  COP_NO       VARCHAR(5)  ,
  PROJECT_NO   VARCHAR(6)  ,
  PROJECT_ID   VARCHAR(18),
  PROJECT_NAME VARCHAR(255),
  PROJECT_FUND VARCHAR(1),
  PROJECT_TYPE VARCHAR(32),
  INVEST_AMT   NUMERIC(19,4),
  INVEST_CURR  VARCHAR(3),
  QUOTA_AMT    NUMERIC(19,4),
  QUOTA_FREE   NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/RAM_RG_COP_PROJECT.txt',
'gpfdist://mdw-2:8081/RAM_RG_COP_PROJECT.txt',
'gpfdist://mdw-3:8081/RAM_RG_COP_PROJECT.txt',
'gpfdist://mdw-4:8081/RAM_RG_COP_PROJECT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RAM_RG_COPINFO------------
drop external table IF EXISTS RAM_RG_COPINFO_INC_EXT;

create external table RAM_RG_COPINFO_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RAM_ID         VARCHAR(18)  ,
  TYPE           VARCHAR(1)  ,
  COP_NO         VARCHAR(5)  ,
  COP_CODE       VARCHAR(10),
  COP_NAME       VARCHAR(255),
  COP_TYPE       VARCHAR(1),
  MASTER_CUSTOMS VARCHAR(4),
  CHANGE_NOTE    VARCHAR(255),
  NOTE           VARCHAR(255),
  LINKMAN        VARCHAR(255),
  YD_CHK_DATE    TIMESTAMP,
  YD_CHK_ER      VARCHAR(8),
  YD_CHK_MARK    VARCHAR(1),
  YD_CHK_NOTE    VARCHAR(255),
  YD_LINK_NO     VARCHAR(5)
)
LOCATION( 
'gpfdist://mdw-1:8081/RAM_RG_COPINFO.txt',
'gpfdist://mdw-2:8081/RAM_RG_COPINFO.txt',
'gpfdist://mdw-3:8081/RAM_RG_COPINFO.txt',
'gpfdist://mdw-4:8081/RAM_RG_COPINFO.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RAM_RG_HEAD------------
drop external table IF EXISTS RAM_RG_HEAD_INC_EXT;

create external table RAM_RG_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_RAM_ID       VARCHAR(18),
  RAM_ID           VARCHAR(18)  ,
  MASTER_CUSTOMS   VARCHAR(4),
  RAM_TYPE         VARCHAR(5),
  INPUT_DATE       TIMESTAMP,
  INPUT_ER         VARCHAR(8),
  PRE_PRINT_ER     VARCHAR(8),
  PRE_PRINT_DATE   TIMESTAMP,
  DECL_DATE        TIMESTAMP,
  CHK_DATE         TIMESTAMP,
  CHK_ER           VARCHAR(8),
  CHECK_NOTE       VARCHAR(255),
  RECHK_DATE       TIMESTAMP,
  RECHK_ER         VARCHAR(8),
  RECHK_NOTE       VARCHAR(255),
  REPLY_DATE       TIMESTAMP,
  REPLY_ER         VARCHAR(8),
  REPLY_CHECK_NOTE VARCHAR(255),
  MODIFY_DATE      TIMESTAMP,
  MODIFY_ER        VARCHAR(8),
  MODIFY_NOTE      VARCHAR(255),
  EXE_MARK         VARCHAR(1),
  PRINT_DATE       TIMESTAMP,
  PRINT_ER         VARCHAR(8),
  SOURCE_TYPE      VARCHAR(12),
  YD_LINK_CNT      NUMERIC(9)
)
LOCATION( 
'gpfdist://mdw-1:8081/RAM_RG_HEAD.txt',
'gpfdist://mdw-2:8081/RAM_RG_HEAD.txt',
'gpfdist://mdw-3:8081/RAM_RG_HEAD.txt',
'gpfdist://mdw-4:8081/RAM_RG_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RAM_RN_INFO------------
drop external table IF EXISTS RAM_RN_INFO_INC_EXT;

create external table RAM_RN_INFO_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_RAM_ID       VARCHAR(18),
  RAM_ID           VARCHAR(18)  ,
  COP_CODE         VARCHAR(10),
  COP_NAME         VARCHAR(255),
  RAM_TYPE         VARCHAR(5),
  RN_YEAR          VARCHAR(4),
  MASTER_CUSTOMS   VARCHAR(4),
  INPUT_DATE       TIMESTAMP,
  INPUT_ER         VARCHAR(8),
  PRE_PRINT_ER     VARCHAR(8),
  PRE_PRINT_DATE   TIMESTAMP,
  DECL_DATE        TIMESTAMP,
  CHK_DATE         TIMESTAMP,
  CHK_ER           VARCHAR(8),
  CHECK_NOTE       VARCHAR(255),
  RECHK_DATE       TIMESTAMP,
  RECHK_ER         VARCHAR(8),
  RECHK_NOTE       VARCHAR(255),
  REPLY_DATE       TIMESTAMP,
  REPLY_ER         VARCHAR(8),
  REPLY_CHECK_NOTE VARCHAR(255),
  MODIFY_DATE      TIMESTAMP,
  MODIFY_ER        VARCHAR(8),
  MODIFY_NOTE      VARCHAR(255),
  EXE_MARK         VARCHAR(1),
  PRINT_DATE       TIMESTAMP,
  PRINT_ER         VARCHAR(8),
  SOURCE_TYPE      VARCHAR(12),
  NOTE_PLACE       VARCHAR(255),
  NOTE_RAM         VARCHAR(255),
  NOTE_OVER_SCOPE  VARCHAR(255),
  NOTE_GOODS       VARCHAR(255),
  NOTE_COP         VARCHAR(255),
  NOTE_PROJECT     VARCHAR(255),
  NOTE_ASSETS      VARCHAR(255),
  OTHER            VARCHAR(255),
  NOTE             VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RAM_RN_INFO.txt',
'gpfdist://mdw-2:8081/RAM_RN_INFO.txt',
'gpfdist://mdw-3:8081/RAM_RN_INFO.txt',
'gpfdist://mdw-4:8081/RAM_RN_INFO.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RAM_RY_COMMUNICATION------------
drop external table IF EXISTS RAM_RY_COMMUNICATION_INC_EXT;

create external table RAM_RY_COMMUNICATION_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RAM_ID            VARCHAR(18)  ,
  SEQ_NO            VARCHAR(5)  ,
  SEND_CUSTOMS_CODE VARCHAR(4),
  SEND_DATE         TIMESTAMP,
  SEND_CONTENT      VARCHAR(1023),
  SEND_ER           VARCHAR(8),
  REC_CUSTOMS_CODE  VARCHAR(4),
  FEEDBACK_DATE     TIMESTAMP,
  FEEDBACK_ER       VARCHAR(8),
  FEEDBACK_CONTENT  VARCHAR(1023)
)
LOCATION( 
'gpfdist://mdw-1:8081/RAM_RY_COMMUNICATION.txt',
'gpfdist://mdw-2:8081/RAM_RY_COMMUNICATION.txt',
'gpfdist://mdw-3:8081/RAM_RY_COMMUNICATION.txt',
'gpfdist://mdw-4:8081/RAM_RY_COMMUNICATION.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RAM_STATUS------------
drop external table IF EXISTS RAM_STATUS_INC_EXT;

create external table RAM_STATUS_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUT_ID         VARCHAR(18)  ,
  G_NO           NUMERIC(9)  ,
  MASTER_CUSTOMS VARCHAR(4),
  CUT_MODE       VARCHAR(3),
  VERIFY_DATE    TIMESTAMP,
  OWNER_CODE     VARCHAR(10),
  OWNER_NAME     VARCHAR(255),
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  FREEZE_MONTHS  NUMERIC(19,4),
  G_UNIT         VARCHAR(3),
  FACT_AMT       NUMERIC(19,4),
  FACT_QTY       NUMERIC(19,4)
)
LOCATION( 
'gpfdist://mdw-1:8081/RAM_STATUS.txt',
'gpfdist://mdw-2:8081/RAM_STATUS.txt',
'gpfdist://mdw-3:8081/RAM_STATUS.txt',
'gpfdist://mdw-4:8081/RAM_STATUS.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RAM_STATUS_LIST------------
drop external table IF EXISTS RAM_STATUS_LIST_INC_EXT;

create external table RAM_STATUS_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUT_ID       VARCHAR(18)  ,
  G_NO         NUMERIC(9)  ,
  RJ_QTY       NUMERIC(19,4),
  RT_QTY       NUMERIC(19,4),
  RT_QTY_DONE  NUMERIC(19,4),
  RD_QTY       NUMERIC(19,4),
  RD_QTY_DONE  NUMERIC(19,4),
  RY_QTY       NUMERIC(19,4),
  RY_QTY_DONE  NUMERIC(19,4),
  RZ_QTY       NUMERIC(19,4),
  RZ_QTY_DONE  NUMERIC(19,4),
  RB_QTY       NUMERIC(19,4),
  RB_QTY_DONE  NUMERIC(19,4),
  RYE_QTY      NUMERIC(19,4),
  RYE_QTY_DONE NUMERIC(19,4),
  RESERVE1     VARCHAR(255),
  NOTE         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RAM_STATUS_LIST.txt',
'gpfdist://mdw-2:8081/RAM_STATUS_LIST.txt',
'gpfdist://mdw-3:8081/RAM_STATUS_LIST.txt',
'gpfdist://mdw-4:8081/RAM_STATUS_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RAM_STATUS_MODI_LOG------------
drop external table IF EXISTS RAM_STATUS_MODI_LOG_INC_EXT;

create external table RAM_STATUS_MODI_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUT_ID       VARCHAR(18)  ,
  G_NO         NUMERIC(9)  ,
  MODIFY_DATE  TIMESTAMP  ,
  MODIFY_ER    VARCHAR(8),
  FIELD_NAME   VARCHAR(50)  ,
  ORIGIN_VALUE VARCHAR(255),
  NEW_VALUE    VARCHAR(255),
  REASON       VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RAM_STATUS_MODI_LOG.txt',
'gpfdist://mdw-2:8081/RAM_STATUS_MODI_LOG.txt',
'gpfdist://mdw-3:8081/RAM_STATUS_MODI_LOG.txt',
'gpfdist://mdw-4:8081/RAM_STATUS_MODI_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RCP_INCOME_HEAD------------
drop external table IF EXISTS RCP_INCOME_HEAD_INC_EXT;

create external table RCP_INCOME_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LEVYNO           VARCHAR(32)  ,
  BANKORGCODE      VARCHAR(12),
  PAYEENAME        VARCHAR(128),
  PAYEEORGCODE     VARCHAR(16),
  PAYEECGACCODE    VARCHAR(32),
  PAYEEACCT        VARCHAR(64),
  PAYERNAME        VARCHAR(255),
  PAYERCOUNTRYCODE VARCHAR(8),
  SWIFTBIC         VARCHAR(64),
  PAYEEDATE        TIMESTAMP,
  PAYEECNY         VARCHAR(64),
  PAYEEAMT         NUMERIC(19,2),
  CUSTOMSAMT       NUMERIC(19,2),
  PREPAYEEAMT      NUMERIC(19,2),
  REFUNDMENTAMT    NUMERIC(19,2),
  BALANCEMODE      VARCHAR(4),
  ACCOUNTPERIOD    NUMERIC(19),
  BANKTRANO        VARCHAR(64),
  ADDWORD          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RCP_INCOME_HEAD.txt',
'gpfdist://mdw-2:8081/RCP_INCOME_HEAD.txt',
'gpfdist://mdw-3:8081/RCP_INCOME_HEAD.txt',
'gpfdist://mdw-4:8081/RCP_INCOME_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RCP_INCOME_HEAD_BAK------------
drop external table IF EXISTS RCP_INCOME_HEAD_BAK_INC_EXT;

create external table RCP_INCOME_HEAD_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LEVYNO           VARCHAR(32)  ,
  BANKORGCODE      VARCHAR(12),
  PAYEENAME        VARCHAR(128),
  PAYEEORGCODE     VARCHAR(16),
  PAYEECGACCODE    VARCHAR(32),
  PAYEEACCT        VARCHAR(64),
  PAYERNAME        VARCHAR(255),
  PAYERCOUNTRYCODE VARCHAR(8),
  SWIFTBIC         VARCHAR(64),
  PAYEEDATE        TIMESTAMP,
  PAYEECNY         VARCHAR(64),
  PAYEEAMT         NUMERIC(19,2),
  CUSTOMSAMT       NUMERIC(19,2),
  PREPAYEEAMT      NUMERIC(19,2),
  REFUNDMENTAMT    NUMERIC(19,2),
  BALANCEMODE      VARCHAR(4),
  ACCOUNTPERIOD    NUMERIC(19),
  BANKTRANO        VARCHAR(64),
  ADDWORD          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RCP_INCOME_HEAD_BAK.txt',
'gpfdist://mdw-2:8081/RCP_INCOME_HEAD_BAK.txt',
'gpfdist://mdw-3:8081/RCP_INCOME_HEAD_BAK.txt',
'gpfdist://mdw-4:8081/RCP_INCOME_HEAD_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RCP_INCOME_LIST------------
drop external table IF EXISTS RCP_INCOME_LIST_INC_EXT;

create external table RCP_INCOME_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LEVYNO      VARCHAR(32)  ,
  LISTNO      NUMERIC(19)  ,
  CUSTOMSDATE TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/RCP_INCOME_LIST.txt',
'gpfdist://mdw-2:8081/RCP_INCOME_LIST.txt',
'gpfdist://mdw-3:8081/RCP_INCOME_LIST.txt',
'gpfdist://mdw-4:8081/RCP_INCOME_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RCP_INCOME_LIST_BAK------------
drop external table IF EXISTS RCP_INCOME_LIST_BAK_INC_EXT;

create external table RCP_INCOME_LIST_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LEVYNO      VARCHAR(32)  ,
  LISTNO      NUMERIC(19)  ,
  CUSTOMSDATE TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/RCP_INCOME_LIST_BAK.txt',
'gpfdist://mdw-2:8081/RCP_INCOME_LIST_BAK.txt',
'gpfdist://mdw-3:8081/RCP_INCOME_LIST_BAK.txt',
'gpfdist://mdw-4:8081/RCP_INCOME_LIST_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RCP_PAYMENT_HEAD------------
drop external table IF EXISTS RCP_PAYMENT_HEAD_INC_EXT;

create external table RCP_PAYMENT_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LEVYNO           VARCHAR(32)  ,
  BANKORGCODE      VARCHAR(12),
  PAYERNAME        VARCHAR(128),
  PAYERORGCODE     VARCHAR(16),
  PAYERCGACCODE    VARCHAR(32),
  PAYERACCT        VARCHAR(64),
  PAYEENAME        VARCHAR(255),
  PAYEECOUNTRYCODE VARCHAR(8),
  SWIFTBIC         VARCHAR(64),
  PAYERDATE        TIMESTAMP,
  PAYERCNY         VARCHAR(64),
  PAYERAMT         NUMERIC(19,2),
  CUSTOMSAMT       NUMERIC(19,2),
  PREPAYERAMT      NUMERIC(19,2),
  REFUNDMENTAMT    NUMERIC(19,2),
  BALANCEMODE      VARCHAR(4),
  ACCOUNTPERIOD    NUMERIC(19),
  BANKTRANO        VARCHAR(64),
  ADDWORD          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RCP_PAYMENT_HEAD.txt',
'gpfdist://mdw-2:8081/RCP_PAYMENT_HEAD.txt',
'gpfdist://mdw-3:8081/RCP_PAYMENT_HEAD.txt',
'gpfdist://mdw-4:8081/RCP_PAYMENT_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RCP_PAYMENT_HEAD_BAK------------
drop external table IF EXISTS RCP_PAYMENT_HEAD_BAK_INC_EXT;

create external table RCP_PAYMENT_HEAD_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LEVYNO           VARCHAR(32)  ,
  BANKORGCODE      VARCHAR(12),
  PAYERNAME        VARCHAR(128),
  PAYERORGCODE     VARCHAR(16),
  PAYERCGACCODE    VARCHAR(32),
  PAYERACCT        VARCHAR(64),
  PAYEENAME        VARCHAR(255),
  PAYEECOUNTRYCODE VARCHAR(8),
  SWIFTBIC         VARCHAR(64),
  PAYERDATE        TIMESTAMP,
  PAYERCNY         VARCHAR(64),
  PAYERAMT         NUMERIC(19,2),
  CUSTOMSAMT       NUMERIC(19,2),
  PREPAYERAMT      NUMERIC(19,2),
  REFUNDMENTAMT    NUMERIC(19,2),
  BALANCEMODE      VARCHAR(4),
  ACCOUNTPERIOD    NUMERIC(19),
  BANKTRANO        VARCHAR(64),
  ADDWORD          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RCP_PAYMENT_HEAD_BAK.txt',
'gpfdist://mdw-2:8081/RCP_PAYMENT_HEAD_BAK.txt',
'gpfdist://mdw-3:8081/RCP_PAYMENT_HEAD_BAK.txt',
'gpfdist://mdw-4:8081/RCP_PAYMENT_HEAD_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RCP_PAYMENT_LIST------------
drop external table IF EXISTS RCP_PAYMENT_LIST_INC_EXT;

create external table RCP_PAYMENT_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LEVYNO      VARCHAR(32)  ,
  LISTNO      NUMERIC(19)  ,
  CUSTOMSDATE TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/RCP_PAYMENT_LIST.txt',
'gpfdist://mdw-2:8081/RCP_PAYMENT_LIST.txt',
'gpfdist://mdw-3:8081/RCP_PAYMENT_LIST.txt',
'gpfdist://mdw-4:8081/RCP_PAYMENT_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RCP_PAYMENT_LIST_BAK------------
drop external table IF EXISTS RCP_PAYMENT_LIST_BAK_INC_EXT;

create external table RCP_PAYMENT_LIST_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LEVYNO      VARCHAR(32)  ,
  LISTNO      NUMERIC(19)  ,
  CUSTOMSDATE TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/RCP_PAYMENT_LIST_BAK.txt',
'gpfdist://mdw-2:8081/RCP_PAYMENT_LIST_BAK.txt',
'gpfdist://mdw-3:8081/RCP_PAYMENT_LIST_BAK.txt',
'gpfdist://mdw-4:8081/RCP_PAYMENT_LIST_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RCP_RECORD_HEAD------------
drop external table IF EXISTS RCP_RECORD_HEAD_INC_EXT;

create external table RCP_RECORD_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LEVYNO      VARCHAR(32)  ,
  ORGCODE     VARCHAR(16),
  CGACCODE    VARCHAR(32),
  ORGNAME     VARCHAR(255),
  ENTRYID     VARCHAR(32),
  TRADEDATE   TIMESTAMP,
  TOTALAMT    NUMERIC(19,2),
  BALANCEMODE VARCHAR(4),
  PACTNO      VARCHAR(64),
  PRERECDATE  TIMESTAMP,
  PRERECAMT   NUMERIC(19,2)
)
LOCATION( 
'gpfdist://mdw-1:8081/RCP_RECORD_HEAD.txt',
'gpfdist://mdw-2:8081/RCP_RECORD_HEAD.txt',
'gpfdist://mdw-3:8081/RCP_RECORD_HEAD.txt',
'gpfdist://mdw-4:8081/RCP_RECORD_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RCP_RECORD_HEAD_BAK------------
drop external table IF EXISTS RCP_RECORD_HEAD_BAK_INC_EXT;

create external table RCP_RECORD_HEAD_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LEVYNO      VARCHAR(32)  ,
  ORGCODE     VARCHAR(16),
  CGACCODE    VARCHAR(32),
  ORGNAME     VARCHAR(255),
  ENTRYID     VARCHAR(32),
  TRADEDATE   TIMESTAMP,
  TOTALAMT    NUMERIC(19,2),
  BALANCEMODE VARCHAR(4),
  PACTNO      VARCHAR(64),
  PRERECDATE  TIMESTAMP,
  PRERECAMT   NUMERIC(19,2)
)
LOCATION( 
'gpfdist://mdw-1:8081/RCP_RECORD_HEAD_BAK.txt',
'gpfdist://mdw-2:8081/RCP_RECORD_HEAD_BAK.txt',
'gpfdist://mdw-3:8081/RCP_RECORD_HEAD_BAK.txt',
'gpfdist://mdw-4:8081/RCP_RECORD_HEAD_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RCP_RECORD_LIST------------
drop external table IF EXISTS RCP_RECORD_LIST_INC_EXT;

create external table RCP_RECORD_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LEVYNO      VARCHAR(32)  ,
  LISTNO      NUMERIC(19)  ,
  COUNTRYAREA VARCHAR(4),
  BANKNAMEOUT VARCHAR(255),
  BANKACCTOUT VARCHAR(64),
  BANKAMTOUT  NUMERIC(19,2),
  RECDATEOUT  TIMESTAMP,
  REMARK      VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RCP_RECORD_LIST.txt',
'gpfdist://mdw-2:8081/RCP_RECORD_LIST.txt',
'gpfdist://mdw-3:8081/RCP_RECORD_LIST.txt',
'gpfdist://mdw-4:8081/RCP_RECORD_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RCP_RECORD_LIST_BAK------------
drop external table IF EXISTS RCP_RECORD_LIST_BAK_INC_EXT;

create external table RCP_RECORD_LIST_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LEVYNO      VARCHAR(32)  ,
  LISTNO      NUMERIC(19)  ,
  COUNTRYAREA VARCHAR(4),
  BANKNAMEOUT VARCHAR(255),
  BANKACCTOUT VARCHAR(64),
  BANKAMTOUT  NUMERIC(19,2),
  RECDATEOUT  TIMESTAMP,
  REMARK      VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RCP_RECORD_LIST_BAK.txt',
'gpfdist://mdw-2:8081/RCP_RECORD_LIST_BAK.txt',
'gpfdist://mdw-3:8081/RCP_RECORD_LIST_BAK.txt',
'gpfdist://mdw-4:8081/RCP_RECORD_LIST_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RCP_WORKFLOW------------
drop external table IF EXISTS RCP_WORKFLOW_INC_EXT;

create external table RCP_WORKFLOW_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LEVYNO         VARCHAR(64)  ,
  TRANSFER_NUM   VARCHAR(32)  ,
  PROCESS_STATUS VARCHAR(2)  ,
  PROCESS_DATE   TIMESTAMP  ,
  ENTRY_ID       VARCHAR(32),
  NOTE           VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RCP_WORKFLOW.txt',
'gpfdist://mdw-2:8081/RCP_WORKFLOW.txt',
'gpfdist://mdw-3:8081/RCP_WORKFLOW.txt',
'gpfdist://mdw-4:8081/RCP_WORKFLOW.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RED_ENTRY_HEAD------------
drop external table IF EXISTS RED_ENTRY_HEAD_INC_EXT;

create external table RED_ENTRY_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID           VARCHAR(18)  ,
  PRE_ENTRY_ID       VARCHAR(18),
  ID_CHK             VARCHAR(1),
  I_E_FLAG           VARCHAR(1),
  I_E_PORT           VARCHAR(4),
  I_E_DATE           TIMESTAMP,
  D_DATE             TIMESTAMP,
  DESTINATION_PORT   VARCHAR(4),
  TRAF_NAME          VARCHAR(255),
  VOYAGE_NO          VARCHAR(32),
  TRAF_MODE          VARCHAR(1),
  TRADE_CO           VARCHAR(10),
  TRADE_NAME         VARCHAR(255),
  DISTRICT_CODE      VARCHAR(5),
  OWNER_CODE         VARCHAR(10),
  OWNER_NAME         VARCHAR(255),
  AGENT_CODE         VARCHAR(10),
  AGENT_NAME         VARCHAR(255),
  CONTR_NO           VARCHAR(32),
  IN_RATIO           NUMERIC(19,5),
  BILL_NO            VARCHAR(32),
  TRADE_COUNTRY      VARCHAR(3),
  TRADE_MODE         VARCHAR(4),
  CUT_MODE           VARCHAR(3),
  TRANS_MODE         VARCHAR(1),
  CONTAINER_NO       NUMERIC(19,4),
  PAY_WAY            VARCHAR(1),
  FEE_MARK           VARCHAR(1),
  FEE_CURR           VARCHAR(3),
  FEE_RATE           NUMERIC(19,5),
  INSUR_MARK         VARCHAR(1),
  INSUR_CURR         VARCHAR(3),
  INSUR_RATE         NUMERIC(19,5),
  OTHER_MARK         VARCHAR(1),
  OTHER_CURR         VARCHAR(3),
  OTHER_RATE         NUMERIC(19,5),
  PACK_NO            NUMERIC(19),
  GROSS_WT           NUMERIC(19,5),
  NET_WT             NUMERIC(19,5),
  WRAP_TYPE          VARCHAR(32),
  MANUAL_NO          VARCHAR(12),
  LICENSE_NO         VARCHAR(20),
  APPR_NO            VARCHAR(32),
  NOTE_S             VARCHAR(255),
  DECL_PORT          VARCHAR(4),
  CO_OWNER           VARCHAR(1),
  TAXY_RG_NO         VARCHAR(32),
  MNL_JGF_FLAG       VARCHAR(1),
  SERVICE_FEE        NUMERIC(19,4),
  SERVICE_RATE       NUMERIC(19,5),
  RELATIVE_ID        VARCHAR(18),
  BONDED_NO          VARCHAR(32),
  BP_NO              VARCHAR(255),
  TYPIST_NO          VARCHAR(32),
  INPUT_NO           VARCHAR(32),
  P_DATE             TIMESTAMP,
  CTA_CHK_RESULT     VARCHAR(255),
  MODI_NO            NUMERIC(19),
  EDI_ID             VARCHAR(1),
  STATUS_RESULT      VARCHAR(120),
  DECLARE_NO         VARCHAR(32),
  JOU_EVENT          VARCHAR(15),
  JOU_FLAG           VARCHAR(15),
  EDI_REMARK         VARCHAR(32),
  PARTNER_ID         VARCHAR(20),
  CUSTOMS_FIELD      VARCHAR(8),
  ENTRY_TYPE         VARCHAR(4),
  RELATIVE_MANUAL_NO VARCHAR(12),
  PRICE_RANGE        NUMERIC(19,4),
  SPECIAL_FLAG       VARCHAR(1),
  DELAY_DAYS         NUMERIC(19),
  DELAY_ACCOUNT      NUMERIC(19,2),
  HASH_SIGN          VARCHAR(380)
)
LOCATION( 
'gpfdist://mdw-1:8081/RED_ENTRY_HEAD.txt',
'gpfdist://mdw-2:8081/RED_ENTRY_HEAD.txt',
'gpfdist://mdw-3:8081/RED_ENTRY_HEAD.txt',
'gpfdist://mdw-4:8081/RED_ENTRY_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RED_ENTRY_LIST------------
drop external table IF EXISTS RED_ENTRY_LIST_INC_EXT;

create external table RED_ENTRY_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID       VARCHAR(18)  ,
  G_NO           NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  CONTR_ITEM     NUMERIC(19),
  TRADE_CURR     VARCHAR(3),
  EXCHANGE_RATE  NUMERIC(19,7),
  DECL_PRICE     NUMERIC(19,5),
  DECL_TOTAL     NUMERIC(19,4),
  USE_TO         VARCHAR(2),
  DUTY_MODE      VARCHAR(1),
  G_QTY          NUMERIC(19,5),
  G_UNIT         VARCHAR(3),
  QTY_1          NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  QTY_2          NUMERIC(19,5),
  UNIT_2         VARCHAR(3),
  TRADE_TOTAL    NUMERIC(19,4),
  RMB_PRICE      NUMERIC(19),
  USD_PRICE      NUMERIC(19),
  DUTY_VALUE     NUMERIC(19),
  G_PROCESS_MARK VARCHAR(2),
  WORK_USD       NUMERIC(19,4),
  CLASS_MARK     VARCHAR(1),
  G_CERT_FLAG    VARCHAR(32),
  TARIFF_MARK    VARCHAR(32),
  DUTY_TYPE      VARCHAR(1),
  REAL_DUTY      NUMERIC(19,4),
  DUTY_CUT       NUMERIC(19,4),
  DUTY_RATE      NUMERIC(19,5),
  D_RATE         NUMERIC(19,5),
  QTY_DUTY_RATE  NUMERIC(19,5),
  QTY_D_RATE     NUMERIC(19,5),
  TAX_TYPE       VARCHAR(1),
  REAL_TAX       NUMERIC(19,4),
  TAX_CUT        NUMERIC(19,4),
  TAX_RATE       NUMERIC(19,5),
  T_RATE         NUMERIC(19,5),
  QTY_TAX_RATE   NUMERIC(19,5),
  QTY_T_RATE     NUMERIC(19,5),
  REG_TYPE       VARCHAR(1),
  REAL_REG       NUMERIC(19,4),
  REG_CUT        NUMERIC(19,4),
  REG_RATE       NUMERIC(19,5),
  R_RATE         NUMERIC(19,5),
  QTY_REG_RATE   NUMERIC(19,5),
  QTY_R_RATE     NUMERIC(19,5),
  OIL_TYPE       VARCHAR(1),
  REAL_OIL       NUMERIC(19,4),
  OIL_CUT        NUMERIC(19,4),
  OIL_RATE       NUMERIC(19,5),
  O_RATE         NUMERIC(19,5),
  QTY_OIL_RATE   NUMERIC(19,5),
  QTY_O_RATE     NUMERIC(19,5),
  ANTI_TYPE      VARCHAR(1),
  REAL_ANTI      NUMERIC(19,4),
  ANTI_CUT       NUMERIC(19,4),
  ANTI_RATE      NUMERIC(19,5),
  A_RATE         NUMERIC(19,5),
  QTY_ANTI_RATE  NUMERIC(19,5),
  QTY_A_RATE     NUMERIC(19,5),
  PRDT_NO        VARCHAR(32),
  GOODS_ID       VARCHAR(32),
  DECL_CODE_TS   VARCHAR(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/RED_ENTRY_LIST.txt',
'gpfdist://mdw-2:8081/RED_ENTRY_LIST.txt',
'gpfdist://mdw-3:8081/RED_ENTRY_LIST.txt',
'gpfdist://mdw-4:8081/RED_ENTRY_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RED_FEE_INVOICE------------
drop external table IF EXISTS RED_FEE_INVOICE_INC_EXT;

create external table RED_FEE_INVOICE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO      VARCHAR(12)  ,
  F_NO           NUMERIC(19),
  FEE_ID         NUMERIC(19)  ,
  CREATE_DATE    TIMESTAMP,
  CHK_ER         VARCHAR(8),
  TYPE_ER        VARCHAR(8),
  TYPE_DATE      TIMESTAMP,
  FINANCIAL_FLAG VARCHAR(1),
  FINANCIAL_DATE TIMESTAMP,
  BOOK_NO        NUMERIC(19),
  FEE_AMT        NUMERIC(19,5),
  NOTE_S         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RED_FEE_INVOICE.txt',
'gpfdist://mdw-2:8081/RED_FEE_INVOICE.txt',
'gpfdist://mdw-3:8081/RED_FEE_INVOICE.txt',
'gpfdist://mdw-4:8081/RED_FEE_INVOICE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RED_HEAD------------
drop external table IF EXISTS RED_HEAD_INC_EXT;

create external table RED_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PROJECT_ID       VARCHAR(18),
  PRE_CUT_ID       VARCHAR(18),
  CUT_ID           VARCHAR(12)  ,
  MODIFY_TIMES     NUMERIC(9)  ,
  OWNER_CODE       VARCHAR(10),
  OWNER_NAME       VARCHAR(255),
  TRADE_CO         VARCHAR(10),
  TRADE_NAME       VARCHAR(255),
  APPR_DEPT        VARCHAR(4),
  PROJECT_FUND     VARCHAR(1),
  PROJECT_TYPE     VARCHAR(12),
  CUT_MODE         VARCHAR(3),
  APPR_REASON      VARCHAR(255),
  I_E_PORT         VARCHAR(4),
  I_E_FLAG         VARCHAR(1),
  LICENSE_NO       VARCHAR(20),
  CONTR_NO         VARCHAR(255),
  ITEMS_NO         NUMERIC(9),
  INPUT_DATE       TIMESTAMP,
  TYPE_ER          VARCHAR(8),
  INPUT_COP        VARCHAR(255),
  CHK_DATE         TIMESTAMP,
  CHK_ER           VARCHAR(8),
  RECHK_DATE       TIMESTAMP,
  MODIFY_DATE      TIMESTAMP,
  RECHK_ER         VARCHAR(8),
  EXE_MARK         VARCHAR(1),
  LIMIT_DATE       TIMESTAMP,
  ENTRY_PWD        VARCHAR(12),
  PRINT_DATE       TIMESTAMP,
  PRINT_ER         VARCHAR(8),
  PRINT_MARK       VARCHAR(1),
  TRANS_TIMES      NUMERIC(9),
  APPR_AMT         NUMERIC(19,4),
  FACT_AMT         NUMERIC(19,4),
  APPR_QUOTA_SUM   NUMERIC(19,4),
  APPR_QUOTA_QTY   NUMERIC(19,4),
  REAL_QUOTA_SUM   NUMERIC(19,4),
  REAL_QUOTA_QTY   NUMERIC(19,4),
  DUTY_CUT         NUMERIC(19,4),
  TAX_CUT          NUMERIC(19,4),
  OTHER_CUT        NUMERIC(19,4),
  REAL_DUTY        NUMERIC(19,4),
  REAL_TAX         NUMERIC(19,4),
  REAL_OTHER       NUMERIC(19,4),
  REAL_DUTY_CUT    NUMERIC(19,4),
  REAL_TAX_CUT     NUMERIC(19,4),
  REAL_OTHER_CUT   NUMERIC(19,4),
  VERIFY_DATE      TIMESTAMP,
  MASTER_CUSTOMS   VARCHAR(4),
  CHECK_NOTE       VARCHAR(255),
  RECHK_NOTE       VARCHAR(255),
  REPLY_CHECK_NOTE VARCHAR(255),
  RISK_MARK        VARCHAR(10),
  COLLECT_MARK     VARCHAR(1),
  COLLECT_DATE     TIMESTAMP,
  ENTRY_ID         VARCHAR(18),
  VERIFY_TIMES     NUMERIC(9),
  SECURITY_LEVEL   VARCHAR(1),
  REPORT_MARK      VARCHAR(1),
  REPORT_DATE      TIMESTAMP,
  REPORT_CGAC_DATE TIMESTAMP,
  REPLY_DATE       TIMESTAMP,
  REPLY_ER         VARCHAR(8),
  SEQ_NO           VARCHAR(12),
  SEQ_DATE         TIMESTAMP,
  SEQ_ER           VARCHAR(8),
  RED_TYPE         VARCHAR(1),
  TRADE_MODE       VARCHAR(4),
  TRANS_MODE       VARCHAR(1),
  FEE_MARK         VARCHAR(1),
  OTHER_MARK       VARCHAR(1),
  INSUR_MARK       VARCHAR(1),
  FEE_CURR         VARCHAR(3),
  FEE_RATE         NUMERIC(19,5),
  OTHER_CURR       VARCHAR(3),
  OTHER_RATE       NUMERIC(19,5),
  INSUR_CURR       VARCHAR(3),
  INSUR_RATE       NUMERIC(19,5),
  SERVICE_RATE     NUMERIC(19,5),
  SERVICE_FEE      NUMERIC(19,4),
  MNL_JGF_FLAG     VARCHAR(1),
  REASON           VARCHAR(255),
  RESERVE1         VARCHAR(255),
  NOTE             VARCHAR(255),
  HASH_SIGN        VARCHAR(380),
  MODIFY_ER        VARCHAR(8),
  HAS_DECLARE      VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/RED_HEAD.txt',
'gpfdist://mdw-2:8081/RED_HEAD.txt',
'gpfdist://mdw-3:8081/RED_HEAD.txt',
'gpfdist://mdw-4:8081/RED_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RED_LIST------------
drop external table IF EXISTS RED_LIST_INC_EXT;

create external table RED_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUT_ID         VARCHAR(12)  ,
  MODIFY_TIMES   NUMERIC(9)  ,
  G_NO           NUMERIC(9)  ,
  MAN_G_NO       NUMERIC(9),
  CODE_TS        VARCHAR(16),
  CLASS_MARK     VARCHAR(1),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  G_UNIT         VARCHAR(3),
  G_QTY          NUMERIC(19,4),
  UNIT_1         VARCHAR(3),
  QTY_1          NUMERIC(19,4),
  UNIT_2         VARCHAR(3),
  QTY_2          NUMERIC(19,4),
  DECL_TOTAL     NUMERIC(19,4),
  TRADE_CURR     VARCHAR(3),
  DUTY_MODE      VARCHAR(1),
  D_RATE         NUMERIC(19,5),
  T_RATE         NUMERIC(19,5),
  O_RATE         NUMERIC(19,5),
  DUTY_RATE      NUMERIC(19,5),
  TAX_RATE       NUMERIC(19,5),
  OTHER_RATE     NUMERIC(19,5),
  DUTY_CUT       NUMERIC(19,4),
  TAX_CUT        NUMERIC(19,4),
  OTHER_CUT      NUMERIC(19,4),
  APPR_QUOTA     NUMERIC(19,4),
  FACT_AMT       NUMERIC(19,4),
  FACT_QTY       NUMERIC(19,4),
  DUTY_VALUE     NUMERIC(19),
  AUDIT_FLAG     VARCHAR(1),
  RESERVE1       VARCHAR(255),
  NOTE           VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RED_LIST.txt',
'gpfdist://mdw-2:8081/RED_LIST.txt',
'gpfdist://mdw-3:8081/RED_LIST.txt',
'gpfdist://mdw-4:8081/RED_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RED_MAX_NO------------
drop external table IF EXISTS RED_MAX_NO_INC_EXT;

create external table RED_MAX_NO_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MASTER_CUSTOMS VARCHAR(4)  ,
  YEAR_1         CHAR(1)  ,
  CLASS          CHAR(1)  ,
  MAX_NO         NUMERIC(5)
)
LOCATION( 
'gpfdist://mdw-1:8081/RED_MAX_NO.txt',
'gpfdist://mdw-2:8081/RED_MAX_NO.txt',
'gpfdist://mdw-3:8081/RED_MAX_NO.txt',
'gpfdist://mdw-4:8081/RED_MAX_NO.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RED_MAX_NO_2007------------
drop external table IF EXISTS RED_MAX_NO_2007_INC_EXT;

create external table RED_MAX_NO_2007_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MASTER_CUSTOMS VARCHAR(4)  ,
  YEAR_2         CHAR(2)  ,
  MAX_NO         NUMERIC(5)
)
LOCATION( 
'gpfdist://mdw-1:8081/RED_MAX_NO_2007.txt',
'gpfdist://mdw-2:8081/RED_MAX_NO_2007.txt',
'gpfdist://mdw-3:8081/RED_MAX_NO_2007.txt',
'gpfdist://mdw-4:8081/RED_MAX_NO_2007.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RED_RECEIVE_RECEIPT------------
drop external table IF EXISTS RED_RECEIVE_RECEIPT_INC_EXT;

create external table RED_RECEIVE_RECEIPT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUT_ID           VARCHAR(12)  ,
  SEND_TIMES       NUMERIC(9)  ,
  SEND_CUSTOMS     VARCHAR(4),
  REC_CUSTOMS_CODE VARCHAR(4),
  RECEIVE_DATE     TIMESTAMP,
  TYPE             VARCHAR(1),
  LINE             NUMERIC(9),
  VERSION          NUMERIC(9),
  FLAG             VARCHAR(7),
  NOTE             VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RED_RECEIVE_RECEIPT.txt',
'gpfdist://mdw-2:8081/RED_RECEIVE_RECEIPT.txt',
'gpfdist://mdw-3:8081/RED_RECEIVE_RECEIPT.txt',
'gpfdist://mdw-4:8081/RED_RECEIVE_RECEIPT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RED_SERVICE_FEE------------
drop external table IF EXISTS RED_SERVICE_FEE_INC_EXT;

create external table RED_SERVICE_FEE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12)  ,
  DUE_FEE_AMT NUMERIC(19,5),
  PAY_FEE_AMT NUMERIC(19,5),
  CREATE_DATE TIMESTAMP,
  RETURN_ID   NUMERIC(19),
  RETURN_FLAG VARCHAR(1),
  REMAIN_AMT  NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/RED_SERVICE_FEE.txt',
'gpfdist://mdw-2:8081/RED_SERVICE_FEE.txt',
'gpfdist://mdw-3:8081/RED_SERVICE_FEE.txt',
'gpfdist://mdw-4:8081/RED_SERVICE_FEE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------REL_ALC_WORK------------
drop external table IF EXISTS REL_ALC_WORK_INC_EXT;

create external table REL_ALC_WORK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID     VARCHAR(18)  ,
  STEP_ID      VARCHAR(8)  ,
  REC_DATE     TIMESTAMP  ,
  CUSTOMS_CODE VARCHAR(4),
  I_E_PORT     VARCHAR(4),
  TRAF_NAME    VARCHAR(255),
  VOYAGE_NO    VARCHAR(32),
  BILL_NO      VARCHAR(32),
  PROC_FLAG    VARCHAR(8),
  OP_DATE      TIMESTAMP,
  PASSED_FLAG  VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/REL_ALC_WORK.txt',
'gpfdist://mdw-2:8081/REL_ALC_WORK.txt',
'gpfdist://mdw-3:8081/REL_ALC_WORK.txt',
'gpfdist://mdw-4:8081/REL_ALC_WORK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RETURN_REL------------
drop external table IF EXISTS RETURN_REL_INC_EXT;

create external table RETURN_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RET_TRANS_NO VARCHAR(16)  ,
  RET_TYPE     VARCHAR(8)  ,
  RET_TIME     TIMESTAMP  ,
  RET_CODE     NUMERIC(9),
  RET_MESS     VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RETURN_REL.txt',
'gpfdist://mdw-2:8081/RETURN_REL.txt',
'gpfdist://mdw-3:8081/RETURN_REL.txt',
'gpfdist://mdw-4:8081/RETURN_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RISK_CONTROL------------
drop external table IF EXISTS RISK_CONTROL_INC_EXT;

create external table RISK_CONTROL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RISK_CONTROL_CODE VARCHAR(32)  ,
  RISK_TYPE         VARCHAR(1)  ,
  RISK_SCHEDULE     NUMERIC(19)  ,
  RISK_SOURCE       VARCHAR(4),
  RISK_RANGE        VARCHAR(1),
  RISK_PRIORITY     VARCHAR(1),
  RISK_DEPT         VARCHAR(10),
  RISK_ADM_CODE     VARCHAR(8),
  RISK_ADM          VARCHAR(32),
  RISK_DATE         TIMESTAMP,
  RISK_OPEN         TIMESTAMP,
  RISK_CLOSE        TIMESTAMP,
  RISK_REASON       VARCHAR(255),
  RISK_ACTIVITY     VARCHAR(255),
  RISK_COP_INF      VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RISK_CONTROL.txt',
'gpfdist://mdw-2:8081/RISK_CONTROL.txt',
'gpfdist://mdw-3:8081/RISK_CONTROL.txt',
'gpfdist://mdw-4:8081/RISK_CONTROL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_ASSAY_APPLICATION------------
drop external table IF EXISTS RSK_ASSAY_APPLICATION_INC_EXT;

create external table RSK_ASSAY_APPLICATION_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID              VARCHAR(18)  ,
  G_NO                  NUMERIC(19)  ,
  APPLY_NO              VARCHAR(32),
  ASSAY_AGENT_NAME      VARCHAR(32),
  CUSTOMS_DEPARTMENT    VARCHAR(64),
  G_NAME                VARCHAR(255),
  TRADE_NAME            VARCHAR(255),
  OWNER_NAME            VARCHAR(255),
  TRADE_MODE            VARCHAR(4),
  G_QTY                 NUMERIC(19,5),
  DECL_PRICE            NUMERIC(19,5),
  DECL_TOTAL            NUMERIC(19,5),
  ORIGIN_COUNTRY        VARCHAR(3),
  WRAP_TYPE             VARCHAR(32),
  G_DESCRIPITION        VARCHAR(1024),
  ASSAY_AIM             VARCHAR(1024),
  ASSAY_AIM_OTHER       VARCHAR(512),
  CODE_TS               VARCHAR(10),
  DRAFT_CODE_TS         VARCHAR(10),
  SAMPLE_TIME           TIMESTAMP,
  SAMPLE_ADDR           VARCHAR(32),
  SAMPLE_DESCRIPITION   VARCHAR(1024),
  OP_ER_PHONE           VARCHAR(32),
  OWNER_NAME_PHONE      VARCHAR(32),
  APPLY_OP_ER           VARCHAR(8),
  APPLY_TIME            TIMESTAMP,
  FEEDBACK_CERT_NO      VARCHAR(32),
  FEEDBACK_DESCRIPITION VARCHAR(1024),
  FEEDBACK_RESULT       VARCHAR(1),
  FEEDBACK_CODE_TS      VARCHAR(10),
  FEEDBACK_OP_ER        VARCHAR(8),
  FEEDBACK_TIME         TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_ASSAY_APPLICATION.txt',
'gpfdist://mdw-2:8081/RSK_ASSAY_APPLICATION.txt',
'gpfdist://mdw-3:8081/RSK_ASSAY_APPLICATION.txt',
'gpfdist://mdw-4:8081/RSK_ASSAY_APPLICATION.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_CASE_FEEDBACK_HEAD------------
drop external table IF EXISTS RSK_CASE_FEEDBACK_HEAD_INC_EXT;

create external table RSK_CASE_FEEDBACK_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID             VARCHAR(18)  ,
  CASE_ID              VARCHAR(18)  ,
  TRADE_NAME           VARCHAR(255),
  AGENT_NAME           VARCHAR(255),
  BILL_NO              VARCHAR(32),
  D_DATE               TIMESTAMP,
  I_E_DATE             TIMESTAMP,
  EXAM_ER1             VARCHAR(8),
  EXAM_PROC_TIME       TIMESTAMP,
  CASE_PROPERTY        VARCHAR(1),
  ADMIN_PUNISH_CERT_NO VARCHAR(32),
  NOTE_S               VARCHAR(255),
  OP_ER                VARCHAR(8),
  CASE_VALUE           NUMERIC(19,5),
  TRANSFER_DEPARTMENT  VARCHAR(32),
  RECEIVE_DEPARTMENT   VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_CASE_FEEDBACK_HEAD.txt',
'gpfdist://mdw-2:8081/RSK_CASE_FEEDBACK_HEAD.txt',
'gpfdist://mdw-3:8081/RSK_CASE_FEEDBACK_HEAD.txt',
'gpfdist://mdw-4:8081/RSK_CASE_FEEDBACK_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_CASE_FEEDBACK_LIST------------
drop external table IF EXISTS RSK_CASE_FEEDBACK_LIST_INC_EXT;

create external table RSK_CASE_FEEDBACK_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID    VARCHAR(18)  ,
  CASE_ID     VARCHAR(18)  ,
  PROC_NO     VARCHAR(12)  ,
  PROC_RESULT VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_CASE_FEEDBACK_LIST.txt',
'gpfdist://mdw-2:8081/RSK_CASE_FEEDBACK_LIST.txt',
'gpfdist://mdw-3:8081/RSK_CASE_FEEDBACK_LIST.txt',
'gpfdist://mdw-4:8081/RSK_CASE_FEEDBACK_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_CASE_FEEDBACK_LIST_CERT------------
drop external table IF EXISTS RSK_CASE_FEEDBACK_LIST_CERT_INC_EXT;

create external table RSK_CASE_FEEDBACK_LIST_CERT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID        VARCHAR(18)  ,
  CASE_ID         VARCHAR(18)  ,
  CERT_NO         VARCHAR(2)  ,
  CERT_NAME       VARCHAR(32),
  CERT_NUM        NUMERIC(5),
  CERT_TOTAL_PAGE NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_CASE_FEEDBACK_LIST_CERT.txt',
'gpfdist://mdw-2:8081/RSK_CASE_FEEDBACK_LIST_CERT.txt',
'gpfdist://mdw-3:8081/RSK_CASE_FEEDBACK_LIST_CERT.txt',
'gpfdist://mdw-4:8081/RSK_CASE_FEEDBACK_LIST_CERT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_CASE_TRANSFER_G_NO------------
drop external table IF EXISTS RSK_CASE_TRANSFER_G_NO_INC_EXT;

create external table RSK_CASE_TRANSFER_G_NO_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID VARCHAR(18)  ,
  CASE_ID  VARCHAR(18)  ,
  G_NO     NUMERIC(19)  ,
  G_NAME   VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_CASE_TRANSFER_G_NO.txt',
'gpfdist://mdw-2:8081/RSK_CASE_TRANSFER_G_NO.txt',
'gpfdist://mdw-3:8081/RSK_CASE_TRANSFER_G_NO.txt',
'gpfdist://mdw-4:8081/RSK_CASE_TRANSFER_G_NO.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_CASE_TRANSFER_HEAD------------
drop external table IF EXISTS RSK_CASE_TRANSFER_HEAD_INC_EXT;

create external table RSK_CASE_TRANSFER_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID            VARCHAR(18)  ,
  CASE_ID             VARCHAR(18)  ,
  G_NAME              VARCHAR(255),
  GROSS_WT            NUMERIC(19,5),
  TRADE_TOTAL         NUMERIC(19,5),
  TRADE_NAME          VARCHAR(255),
  AGENT_NAME          VARCHAR(255),
  BILL_NO             VARCHAR(32),
  D_DATE              TIMESTAMP,
  TRAF_MODE           VARCHAR(1),
  I_E_DATE            TIMESTAMP,
  EXAM_ER1            VARCHAR(8),
  CASE_DESCRIBATION   VARCHAR(512),
  TRANSFER_DEPARTMENT VARCHAR(32),
  TRANSFER_REASON     VARCHAR(2),
  TRANSFER_ER         VARCHAR(8),
  TRANSFER_TIME       TIMESTAMP,
  RECEIVE_DEPARTMENT  VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_CASE_TRANSFER_HEAD.txt',
'gpfdist://mdw-2:8081/RSK_CASE_TRANSFER_HEAD.txt',
'gpfdist://mdw-3:8081/RSK_CASE_TRANSFER_HEAD.txt',
'gpfdist://mdw-4:8081/RSK_CASE_TRANSFER_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_CASE_TRANSFER_LIST------------
drop external table IF EXISTS RSK_CASE_TRANSFER_LIST_INC_EXT;

create external table RSK_CASE_TRANSFER_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID        VARCHAR(18)  ,
  CASE_ID         VARCHAR(18)  ,
  CERT_NO         VARCHAR(2)  ,
  CERT_NAME       VARCHAR(32),
  CERT_NUM        NUMERIC(5),
  CERT_TOTAL_PAGE NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_CASE_TRANSFER_LIST.txt',
'gpfdist://mdw-2:8081/RSK_CASE_TRANSFER_LIST.txt',
'gpfdist://mdw-3:8081/RSK_CASE_TRANSFER_LIST.txt',
'gpfdist://mdw-4:8081/RSK_CASE_TRANSFER_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_CODE_TS------------
drop external table IF EXISTS RSK_CODE_TS_INC_EXT;

create external table RSK_CODE_TS_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE    VARCHAR(16)  ,
  CODE_TS      VARCHAR(16),
  I_E_FLAG     VARCHAR(1),
  CUSTOMS_CODE VARCHAR(4),
  BEGIN_DATE   TIMESTAMP,
  END_DATE     TIMESTAMP,
  INPUT_ID     VARCHAR(8),
  AUTHORIZE_ID VARCHAR(8),
  OP_TIME      TIMESTAMP,
  NOTE         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_CODE_TS.txt',
'gpfdist://mdw-2:8081/RSK_CODE_TS.txt',
'gpfdist://mdw-3:8081/RSK_CODE_TS.txt',
'gpfdist://mdw-4:8081/RSK_CODE_TS.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_CODE_TS_BAK------------
drop external table IF EXISTS RSK_CODE_TS_BAK_INC_EXT;

create external table RSK_CODE_TS_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE      VARCHAR(16)  ,
  CODE_TS        VARCHAR(16),
  I_E_FLAG       VARCHAR(1),
  CUSTOMS_CODE   VARCHAR(4),
  BEGIN_DATE     TIMESTAMP,
  END_DATE       TIMESTAMP,
  INPUT_ID       VARCHAR(8),
  AUTHORIZE_ID   VARCHAR(8),
  OP_TIME        TIMESTAMP,
  NOTE           VARCHAR(255),
  OP_BAK_TYPE    VARCHAR(8),
  OP_BAK_CUSTOMS VARCHAR(4),
  OP_BAK_MAN     VARCHAR(8),
  OP_BAK_TIME    TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_CODE_TS_BAK.txt',
'gpfdist://mdw-2:8081/RSK_CODE_TS_BAK.txt',
'gpfdist://mdw-3:8081/RSK_CODE_TS_BAK.txt',
'gpfdist://mdw-4:8081/RSK_CODE_TS_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_CONDITION------------
drop external table IF EXISTS RSK_CONDITION_INC_EXT;

create external table RSK_CONDITION_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE    VARCHAR(16)  ,
  TRADE_CO     VARCHAR(10),
  TRADE_NAME   VARCHAR(255),
  CORP_TYPE    VARCHAR(1),
  RSK_COND     VARCHAR(2048),
  RSK_COND_MID VARCHAR(2048),
  RSK_COND_TXT VARCHAR(2048),
  BEGIN_DATE   TIMESTAMP,
  END_DATE     TIMESTAMP,
  CUSTOMS_CODE VARCHAR(4),
  SMUGGLE_MODE VARCHAR(112),
  INPUT_ID     VARCHAR(8),
  AUTHORIZE_ID VARCHAR(8),
  OP_TIME      TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_CONDITION.txt',
'gpfdist://mdw-2:8081/RSK_CONDITION.txt',
'gpfdist://mdw-3:8081/RSK_CONDITION.txt',
'gpfdist://mdw-4:8081/RSK_CONDITION.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_CONDITION_BAK------------
drop external table IF EXISTS RSK_CONDITION_BAK_INC_EXT;

create external table RSK_CONDITION_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE      VARCHAR(16)  ,
  TRADE_CO       VARCHAR(10),
  TRADE_NAME     VARCHAR(255),
  CORP_TYPE      VARCHAR(1),
  RSK_COND       VARCHAR(2048),
  RSK_COND_MID   VARCHAR(2048),
  RSK_COND_TXT   VARCHAR(2048),
  BEGIN_DATE     TIMESTAMP,
  END_DATE       TIMESTAMP,
  CUSTOMS_CODE   VARCHAR(4),
  SMUGGLE_MODE   VARCHAR(112),
  INPUT_ID       VARCHAR(8),
  AUTHORIZE_ID   VARCHAR(8),
  OP_TIME        TIMESTAMP,
  OP_BAK_TYPE    VARCHAR(8),
  OP_BAK_CUSTOMS VARCHAR(4),
  OP_BAK_MAN     VARCHAR(8),
  OP_BAK_TIME    TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_CONDITION_BAK.txt',
'gpfdist://mdw-2:8081/RSK_CONDITION_BAK.txt',
'gpfdist://mdw-3:8081/RSK_CONDITION_BAK.txt',
'gpfdist://mdw-4:8081/RSK_CONDITION_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_CONTA_CAPACITY------------
drop external table IF EXISTS RSK_CONTA_CAPACITY_INC_EXT;

create external table RSK_CONTA_CAPACITY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE         VARCHAR(16)  ,
  CONTA_MODEL       VARCHAR(4),
  CONTA_BULK        VARCHAR(16),
  CONTA_WEIGHT_LOW  NUMERIC(19,4),
  CONTA_WEIGHT_HIGH NUMERIC(19,4),
  CUSTOMS_CODE      VARCHAR(4),
  INPUT_ID          VARCHAR(8),
  BEGIN_DATE        TIMESTAMP,
  END_DATE          TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_CONTA_CAPACITY.txt',
'gpfdist://mdw-2:8081/RSK_CONTA_CAPACITY.txt',
'gpfdist://mdw-3:8081/RSK_CONTA_CAPACITY.txt',
'gpfdist://mdw-4:8081/RSK_CONTA_CAPACITY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_CONTA_CAPACITY_BAK------------
drop external table IF EXISTS RSK_CONTA_CAPACITY_BAK_INC_EXT;

create external table RSK_CONTA_CAPACITY_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE         VARCHAR(16)  ,
  CONTA_MODEL       VARCHAR(4),
  CONTA_BULK        VARCHAR(16),
  CONTA_WEIGHT_LOW  NUMERIC(19,4),
  CONTA_WEIGHT_HIGH NUMERIC(19,4),
  CUSTOMS_CODE      VARCHAR(4),
  INPUT_ID          VARCHAR(8),
  BEGIN_DATE        TIMESTAMP,
  END_DATE          TIMESTAMP,
  OP_BAK_TYPE       VARCHAR(8),
  OP_BAK_CUSTOMS    VARCHAR(4),
  OP_BAK_MAN        VARCHAR(8),
  OP_BAK_TIME       TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_CONTA_CAPACITY_BAK.txt',
'gpfdist://mdw-2:8081/RSK_CONTA_CAPACITY_BAK.txt',
'gpfdist://mdw-3:8081/RSK_CONTA_CAPACITY_BAK.txt',
'gpfdist://mdw-4:8081/RSK_CONTA_CAPACITY_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_EXAM_HEAD_REL------------
drop external table IF EXISTS RSK_EXAM_HEAD_REL_INC_EXT;

create external table RSK_EXAM_HEAD_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EXAM_REC_ID                 VARCHAR(18)  ,
  GOODS_ADDR                  VARCHAR(8),
  I_E_FLAG                    VARCHAR(1),
  FORM_ID                     VARCHAR(20),
  FORM_TYPE                   VARCHAR(1),
  TRAF_NAME                   VARCHAR(255),
  TRAF_MODE                   VARCHAR(1),
  TRADE_CO                    VARCHAR(10),
  TRADE_NAME                  VARCHAR(255),
  OWNER_NAME                  VARCHAR(255),
  AGENT_NAME                  VARCHAR(255),
  CONTR_NO                    VARCHAR(32),
  BILL_NO                     VARCHAR(32),
  TRADE_MODE                  VARCHAR(4),
  LICENSE_NO                  VARCHAR(20),
  APPR_NO                     VARCHAR(32),
  MANUAL_NO                   VARCHAR(12),
  I_E_DATE                    TIMESTAMP,
  D_DATE                      TIMESTAMP,
  PACK_NO                     NUMERIC(19),
  REAL_PACK_NO                NUMERIC(19),
  GROSS_WT                    NUMERIC(19,5),
  REAL_GROSS_WT               NUMERIC(19,5),
  EXAM_TYPE                   VARCHAR(32),
  EXAM_MODE_CODE              VARCHAR(64),
  EXAM_TIME                   TIMESTAMP,
  EXAM_ADDR                   VARCHAR(20),
  EXAM_ER1                    VARCHAR(8),
  EXAM_ER2                    VARCHAR(8),
  EXAM_ASSIGN                 VARCHAR(8),
  EXAM_RESULT                 VARCHAR(16),
  EXAM_PROC_CODE              VARCHAR(2),
  EXAM_PROC_TIME              TIMESTAMP,
  EXAM_PROC_ER                VARCHAR(8),
  EXAM_PROC_IDEA              VARCHAR(40),
  EXAM_APPR_IDEA              VARCHAR(40),
  EXAM_FORM_ID                VARCHAR(16),
  RSK_REQUEST_STR             VARCHAR(20),
  INVES_PROC_ID               VARCHAR(16),
  CUS_COVER_ID                VARCHAR(255),
  TRAF_CO_CORR                VARCHAR(1),
  NOTE_S                      VARCHAR(255),
  EXAM_ER3                    VARCHAR(8),
  MAC_EXAM_PROC_IDEA          VARCHAR(2),
  MAC_EXAM_RESULT             VARCHAR(2),
  MAC_EXAM_ER1                VARCHAR(8),
  MAC_EXAM_ER2                VARCHAR(8),
  MAC_CHK_NOTES               VARCHAR(2408),
  MAN_CHK_NOTES               VARCHAR(2408),
  EXAM_MODE_CODE_RESULT       VARCHAR(64),
  EXAM_MODE_CODE_LOCAL        VARCHAR(64),
  EXAM_MODE_CODE_LOCAL_RESULT VARCHAR(64),
  RSK_NO                      VARCHAR(15),
  EXAM_MODE                   VARCHAR(1),
  SECURITY_INFO               VARCHAR(255),
  OTHER_REQUIRE               VARCHAR(255),
  LAST_RESULT_ER              VARCHAR(8),
  MAC_EXAM_ADDR               VARCHAR(32),
  MAC_TIME                    TIMESTAMP,
  LAST_RESULT_TIME            TIMESTAMP,
  OWNER_CODE                  VARCHAR(10)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_EXAM_HEAD_REL.txt',
'gpfdist://mdw-2:8081/RSK_EXAM_HEAD_REL.txt',
'gpfdist://mdw-3:8081/RSK_EXAM_HEAD_REL.txt',
'gpfdist://mdw-4:8081/RSK_EXAM_HEAD_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_EXAM_LIST_CONTAINER------------
drop external table IF EXISTS RSK_EXAM_LIST_CONTAINER_INC_EXT;

create external table RSK_EXAM_LIST_CONTAINER_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EXAM_REC_ID         VARCHAR(18)  ,
  C_NO                NUMERIC(19),
  CONTAINER_ID        VARCHAR(32)  ,
  CONTAINER_ID_RESULT VARCHAR(4),
  NEW_SEAL_NO         VARCHAR(32),
  SEAL_NO             VARCHAR(32),
  SEAL_NO_RESULT      VARCHAR(1),
  HOLLOW_AREA1        VARCHAR(2),
  HOLLOW_AREA2        VARCHAR(2),
  MANUAL_FLAG         VARCHAR(1),
  CONTA_RESULT        VARCHAR(2)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_EXAM_LIST_CONTAINER.txt',
'gpfdist://mdw-2:8081/RSK_EXAM_LIST_CONTAINER.txt',
'gpfdist://mdw-3:8081/RSK_EXAM_LIST_CONTAINER.txt',
'gpfdist://mdw-4:8081/RSK_EXAM_LIST_CONTAINER.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_EXAM_LIST_REL------------
drop external table IF EXISTS RSK_EXAM_LIST_REL_INC_EXT;

create external table RSK_EXAM_LIST_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EXAM_REC_ID           VARCHAR(18)  ,
  G_NO                  NUMERIC(19)  ,
  CODE_TS               VARCHAR(16),
  G_NAME                VARCHAR(255),
  G_MODEL               VARCHAR(255),
  ORIGIN_COUNTRY        VARCHAR(3),
  QTY_1                 NUMERIC(19,5),
  G_UNIT                VARCHAR(3),
  DECL_PRICE            NUMERIC(19,5),
  TRADE_CURR            VARCHAR(3),
  TRADE_TOTAL           NUMERIC(19,4),
  REAL_CODE_TS          VARCHAR(16),
  REAL_G_NAME           VARCHAR(255),
  REAL_G_MODEL          VARCHAR(255),
  REAL_ORIGIN_COUNTRY   VARCHAR(3),
  REAL_QTY_1            NUMERIC(19,5),
  REAL_TRADE_TOTAL      NUMERIC(19,4),
  REAL_G_UNIT           VARCHAR(3),
  REAL_TRADE_CURR       VARCHAR(3),
  EXAM_RESULT           VARCHAR(16),
  EXAM_MODE_CODE        VARCHAR(2),
  CODE_TS_RESULT        VARCHAR(4),
  G_NAME_RESULT         VARCHAR(4),
  G_MODEL_RESULT        VARCHAR(4),
  ORIGIN_COUNTRY_RESULT VARCHAR(4),
  QTY_1_RESULT          VARCHAR(4),
  G_UNIT_RESULT         VARCHAR(4),
  DECL_PRICE_RESULT     VARCHAR(4),
  TRADE_CURR_RESULT     VARCHAR(4),
  EXAM_MODE_CODE_RESULT VARCHAR(2)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_EXAM_LIST_REL.txt',
'gpfdist://mdw-2:8081/RSK_EXAM_LIST_REL.txt',
'gpfdist://mdw-3:8081/RSK_EXAM_LIST_REL.txt',
'gpfdist://mdw-4:8081/RSK_EXAM_LIST_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_EXAM_OP_LOG------------
drop external table IF EXISTS RSK_EXAM_OP_LOG_INC_EXT;

create external table RSK_EXAM_OP_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EXAM_REC_ID  VARCHAR(18)  ,
  OP_TIME      TIMESTAMP  ,
  OP_ER        VARCHAR(8),
  MODI_TYPE    VARCHAR(64)  ,
  FORM_ID      VARCHAR(18),
  TABLE_NAME   VARCHAR(255)  ,
  ITEM_NAME    VARCHAR(255)  ,
  ITEM_SOURCE  VARCHAR(255),
  ITEM_CURRENT VARCHAR(255),
  NOTE         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_EXAM_OP_LOG.txt',
'gpfdist://mdw-2:8081/RSK_EXAM_OP_LOG.txt',
'gpfdist://mdw-3:8081/RSK_EXAM_OP_LOG.txt',
'gpfdist://mdw-4:8081/RSK_EXAM_OP_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_FAKE_CODE_TS------------
drop external table IF EXISTS RSK_FAKE_CODE_TS_INC_EXT;

create external table RSK_FAKE_CODE_TS_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE    VARCHAR(16)  ,
  CODE_TS      VARCHAR(16),
  I_E_FLAG     VARCHAR(1),
  BEGIN_DATE   TIMESTAMP,
  END_DATE     TIMESTAMP,
  CUSTOMS_CODE VARCHAR(4),
  INPUT_ID     VARCHAR(8),
  AUTHORIZE_ID VARCHAR(8),
  OP_TIME      TIMESTAMP,
  SMUGGLE_TYPE VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_FAKE_CODE_TS.txt',
'gpfdist://mdw-2:8081/RSK_FAKE_CODE_TS.txt',
'gpfdist://mdw-3:8081/RSK_FAKE_CODE_TS.txt',
'gpfdist://mdw-4:8081/RSK_FAKE_CODE_TS.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_FAKE_CODE_TS_BAK------------
drop external table IF EXISTS RSK_FAKE_CODE_TS_BAK_INC_EXT;

create external table RSK_FAKE_CODE_TS_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE      VARCHAR(16)  ,
  CODE_TS        VARCHAR(16),
  I_E_FLAG       VARCHAR(1),
  BEGIN_DATE     TIMESTAMP,
  END_DATE       TIMESTAMP,
  CUSTOMS_CODE   VARCHAR(4),
  INPUT_ID       VARCHAR(8),
  AUTHORIZE_ID   VARCHAR(8),
  OP_TIME        TIMESTAMP,
  SMUGGLE_TYPE   VARCHAR(1),
  OP_BAK_TYPE    VARCHAR(8),
  OP_BAK_CUSTOMS VARCHAR(4),
  OP_BAK_MAN     VARCHAR(8),
  OP_BAK_TIME    TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_FAKE_CODE_TS_BAK.txt',
'gpfdist://mdw-2:8081/RSK_FAKE_CODE_TS_BAK.txt',
'gpfdist://mdw-3:8081/RSK_FAKE_CODE_TS_BAK.txt',
'gpfdist://mdw-4:8081/RSK_FAKE_CODE_TS_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_FIT_LOG_REL------------
drop external table IF EXISTS RSK_FIT_LOG_REL_INC_EXT;

create external table RSK_FIT_LOG_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RSK_NO             VARCHAR(15)  ,
  FORM_ID            VARCHAR(20)  ,
  FORM_TYPE          CHAR(1),
  I_E_FLAG           CHAR(1),
  D_DATE             TIMESTAMP  ,
  R_DATE             TIMESTAMP,
  FIT_FLAG           CHAR(1),
  INFO_LOCK_FLAG     VARCHAR(2),
  RSK_REQUEST_DETAIL VARCHAR(1),
  EXAM_CONTA_FLAG    VARCHAR(1),
  RSK_BEFORE         VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_FIT_LOG_REL.txt',
'gpfdist://mdw-2:8081/RSK_FIT_LOG_REL.txt',
'gpfdist://mdw-3:8081/RSK_FIT_LOG_REL.txt',
'gpfdist://mdw-4:8081/RSK_FIT_LOG_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_FIT_RESULT_LOG------------
drop external table IF EXISTS RSK_FIT_RESULT_LOG_INC_EXT;

create external table RSK_FIT_RESULT_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RSK_NO           VARCHAR(15)  ,
  FORM_ID          VARCHAR(20)  ,
  FORM_TYPE        CHAR(1),
  I_E_FLAG         CHAR(1),
  D_DATE           TIMESTAMP  ,
  RSK_POS          VARCHAR(8)  ,
  RSLT_FLAG_CODE   VARCHAR(2),
  RTN_FLAG         VARCHAR(16),
  EXAM_REC_ID      VARCHAR(18),
  OPER_ID          VARCHAR(8),
  OPER_CUSTOMSCODE VARCHAR(4),
  OPER_DATE        TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_FIT_RESULT_LOG.txt',
'gpfdist://mdw-2:8081/RSK_FIT_RESULT_LOG.txt',
'gpfdist://mdw-3:8081/RSK_FIT_RESULT_LOG.txt',
'gpfdist://mdw-4:8081/RSK_FIT_RESULT_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_INSTR_ATTR_REL------------
drop external table IF EXISTS RSK_INSTR_ATTR_REL_INC_EXT;

create external table RSK_INSTR_ATTR_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RSK_NO            VARCHAR(15)  ,
  RSK_CUSTOMS       VARCHAR(4),
  RSK_DEP           VARCHAR(32),
  IN_OP_ID          VARCHAR(8),
  INPUT_DATE        TIMESTAMP,
  RSK_SRC           VARCHAR(2),
  RSK_REASON        VARCHAR(255),
  EXE_AREA          VARCHAR(100),
  RSK_CONF_CUSTOMS  VARCHAR(4),
  RSK_CONF_DEP      VARCHAR(32),
  CONF_OP_ID        VARCHAR(8),
  CONF_DATE         TIMESTAMP,
  REFUSE_FLAG       CHAR(1),
  REFUSE_REASON     VARCHAR(255),
  DISPATCH_DATE     TIMESTAMP,
  B_DATE            TIMESTAMP,
  E_DATE            TIMESTAMP,
  FORCE_E_CUSTOMS   VARCHAR(4),
  FORCE_E_DEP       VARCHAR(32),
  FORCE_E_OP_ID     VARCHAR(8),
  FORCE_E_DATE      TIMESTAMP,
  I_E_FLAG          CHAR(1),
  BP1               VARCHAR(32),
  BP2               VARCHAR(32),
  TEL1              VARCHAR(32),
  TEL2              VARCHAR(32),
  EMAIL             VARCHAR(32),
  RSK_INSTR_STAT    CHAR(1),
  RSK_COND          VARCHAR(2048),
  RSK_COND_MID      VARCHAR(2048),
  RSK_COND_TXT      VARCHAR(2048),
  NOTE_S            VARCHAR(255),
  MEM1              VARCHAR(32),
  MEM2              VARCHAR(32),
  INFO_UNLOCK_OP_ID VARCHAR(8),
  CONTACTER         VARCHAR(8),
  CONTACTER_TEL     VARCHAR(32),
  INFO_UNLOCK_DATE  TIMESTAMP,
  FIT_COUNT         NUMERIC(19),
  LAST_FIT_TIME     TIMESTAMP,
  MAX_FIT_COUNT     NUMERIC(19),
  RND_RATE          NUMERIC(19,4),
  FORM_TYPE         VARCHAR(1),
  RSK_NOTES         VARCHAR(32),
  TOTAL_FIT_COUNT   NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_INSTR_ATTR_REL.txt',
'gpfdist://mdw-2:8081/RSK_INSTR_ATTR_REL.txt',
'gpfdist://mdw-3:8081/RSK_INSTR_ATTR_REL.txt',
'gpfdist://mdw-4:8081/RSK_INSTR_ATTR_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_INSTR_PROC_REL------------
drop external table IF EXISTS RSK_INSTR_PROC_REL_INC_EXT;

create external table RSK_INSTR_PROC_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RSK_NO              VARCHAR(15)  ,
  RSK_POS             VARCHAR(8)  ,
  RSK_REQUEST_STR     VARCHAR(20),
  RSK_PROC_TYPE_STR   VARCHAR(20),
  INFO_REQUEST_DETAIL VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_INSTR_PROC_REL.txt',
'gpfdist://mdw-2:8081/RSK_INSTR_PROC_REL.txt',
'gpfdist://mdw-3:8081/RSK_INSTR_PROC_REL.txt',
'gpfdist://mdw-4:8081/RSK_INSTR_PROC_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_OP_LOG------------
drop external table IF EXISTS RSK_OP_LOG_INC_EXT;

create external table RSK_OP_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FORM_ID      VARCHAR(18)  ,
  FORM_TYPE    VARCHAR(1),
  CUSTOMS_CODE VARCHAR(4),
  OP_ER        VARCHAR(8),
  OP_TIME      TIMESTAMP  ,
  OP_POS       VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_OP_LOG.txt',
'gpfdist://mdw-2:8081/RSK_OP_LOG.txt',
'gpfdist://mdw-3:8081/RSK_OP_LOG.txt',
'gpfdist://mdw-4:8081/RSK_OP_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_RECHECK_REL------------
drop external table IF EXISTS RSK_RECHECK_REL_INC_EXT;

create external table RSK_RECHECK_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FORM_ID         VARCHAR(32)  ,
  CHECK_FLAG      VARCHAR(2),
  LOCK_OP_CUSTOMS VARCHAR(4),
  LOCK_OP_ID      VARCHAR(8),
  LOCK_OP_TEL     VARCHAR(32),
  LOCK_DATE       TIMESTAMP,
  UNLOCK_CUSTOMS  VARCHAR(4),
  UNLOCK_OP_ID    VARCHAR(8),
  UNLOCK_DATE     TIMESTAMP,
  RSK_NO          VARCHAR(15)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_RECHECK_REL.txt',
'gpfdist://mdw-2:8081/RSK_RECHECK_REL.txt',
'gpfdist://mdw-3:8081/RSK_RECHECK_REL.txt',
'gpfdist://mdw-4:8081/RSK_RECHECK_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_REPLICATION_LOG------------
drop external table IF EXISTS RSK_REPLICATION_LOG_INC_EXT;

create external table RSK_REPLICATION_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOMS_CODE VARCHAR(4)  ,
  TABLE_NAME   VARCHAR(32)  ,
  TABLE_C_NAME VARCHAR(255),
  REPLI_DATE   TIMESTAMP  ,
  REPLI_ER     VARCHAR(8)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_REPLICATION_LOG.txt',
'gpfdist://mdw-2:8081/RSK_REPLICATION_LOG.txt',
'gpfdist://mdw-3:8081/RSK_REPLICATION_LOG.txt',
'gpfdist://mdw-4:8081/RSK_REPLICATION_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_RESULT_REL------------
drop external table IF EXISTS RSK_RESULT_REL_INC_EXT;

create external table RSK_RESULT_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RSK_NO         VARCHAR(15)  ,
  FORM_ID        VARCHAR(20)  ,
  FORM_TYPE      CHAR(1),
  FIT_DATE       TIMESTAMP,
  I_E_FLAG       CHAR(1),
  RSK_POS        VARCHAR(8)  ,
  RSLT_FLAG_CODE VARCHAR(2),
  RTN_FLAG       VARCHAR(16),
  EXAM_REC_ID    VARCHAR(18)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_RESULT_REL.txt',
'gpfdist://mdw-2:8081/RSK_RESULT_REL.txt',
'gpfdist://mdw-3:8081/RSK_RESULT_REL.txt',
'gpfdist://mdw-4:8081/RSK_RESULT_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_TRADE_CO------------
drop external table IF EXISTS RSK_TRADE_CO_INC_EXT;

create external table RSK_TRADE_CO_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE    VARCHAR(16)  ,
  TRADE_CO     VARCHAR(10),
  TRADE_NAME   VARCHAR(255),
  BEGIN_DATE   TIMESTAMP,
  END_DATE     TIMESTAMP,
  CUSTOMS_CODE VARCHAR(4),
  INPUT_ID     VARCHAR(8),
  AUTHORIZE_ID VARCHAR(8),
  OP_TIME      TIMESTAMP,
  I_E_FLAG     VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_TRADE_CO.txt',
'gpfdist://mdw-2:8081/RSK_TRADE_CO.txt',
'gpfdist://mdw-3:8081/RSK_TRADE_CO.txt',
'gpfdist://mdw-4:8081/RSK_TRADE_CO.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_TRADE_CO_BAK------------
drop external table IF EXISTS RSK_TRADE_CO_BAK_INC_EXT;

create external table RSK_TRADE_CO_BAK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CCTS_CODE      VARCHAR(16)  ,
  TRADE_CO       VARCHAR(10),
  TRADE_NAME     VARCHAR(255),
  BEGIN_DATE     TIMESTAMP,
  END_DATE       TIMESTAMP,
  CUSTOMS_CODE   VARCHAR(4),
  INPUT_ID       VARCHAR(8),
  AUTHORIZE_ID   VARCHAR(8),
  OP_TIME        TIMESTAMP,
  I_E_FLAG       VARCHAR(1),
  OP_BAK_TYPE    VARCHAR(8),
  OP_BAK_CUSTOMS VARCHAR(4),
  OP_BAK_MAN     VARCHAR(8),
  OP_BAK_TIME    TIMESTAMP  
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_TRADE_CO_BAK.txt',
'gpfdist://mdw-2:8081/RSK_TRADE_CO_BAK.txt',
'gpfdist://mdw-3:8081/RSK_TRADE_CO_BAK.txt',
'gpfdist://mdw-4:8081/RSK_TRADE_CO_BAK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_UNLOCK_OP_LOG------------
drop external table IF EXISTS RSK_UNLOCK_OP_LOG_INC_EXT;

create external table RSK_UNLOCK_OP_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FORM_ID       VARCHAR(18)  ,
  RSK_NO        VARCHAR(15)  ,
  FORM_TYPE     VARCHAR(1),
  CUSTOMS_CODE  VARCHAR(4),
  UNLOCK_ER     VARCHAR(8),
  UNLOCK_TIME   TIMESTAMP  ,
  UNLOCK_REASON VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_UNLOCK_OP_LOG.txt',
'gpfdist://mdw-2:8081/RSK_UNLOCK_OP_LOG.txt',
'gpfdist://mdw-3:8081/RSK_UNLOCK_OP_LOG.txt',
'gpfdist://mdw-4:8081/RSK_UNLOCK_OP_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_VS_EXAM------------
drop external table IF EXISTS RSK_VS_EXAM_INC_EXT;

create external table RSK_VS_EXAM_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  FORM_ID     VARCHAR(20)  ,
  FORM_TYPE   CHAR(1)  ,
  RSK_NO      VARCHAR(15)  ,
  D_DATE      TIMESTAMP  ,
  EXAM_REC_ID VARCHAR(18)  
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_VS_EXAM.txt',
'gpfdist://mdw-2:8081/RSK_VS_EXAM.txt',
'gpfdist://mdw-3:8081/RSK_VS_EXAM.txt',
'gpfdist://mdw-4:8081/RSK_VS_EXAM.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------RSK_WORKFLOW------------
drop external table IF EXISTS RSK_WORKFLOW_INC_EXT;

create external table RSK_WORKFLOW_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID          VARCHAR(18)  ,
  EXAM_REC_ID       VARCHAR(18)  ,
  CHK_CUSTOMS_CODE  VARCHAR(4),
  INPUT_DATE        TIMESTAMP,
  EXAM_PRINT        TIMESTAMP,
  EXAM_CONTA_FLAG   VARCHAR(1),
  PRINT_TIME        TIMESTAMP,
  EXAM_E_TIME       TIMESTAMP,
  ALC_DATE          TIMESTAMP,
  MAC_TIME          TIMESTAMP,
  EXAM_TIME         TIMESTAMP,
  EXAM_PROC_TIME    TIMESTAMP,
  LAST_RESULT_TIME  TIMESTAMP,
  EXAM_CONTA_PERIOD NUMERIC(19),
  EXAM_CHK_PERIOD   NUMERIC(19),
  EXAM_PROC_PERIOD  NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/RSK_WORKFLOW.txt',
'gpfdist://mdw-2:8081/RSK_WORKFLOW.txt',
'gpfdist://mdw-3:8081/RSK_WORKFLOW.txt',
'gpfdist://mdw-4:8081/RSK_WORKFLOW.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------SERVICE_FEE------------
drop external table IF EXISTS SERVICE_FEE_INC_EXT;

create external table SERVICE_FEE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12)  ,
  DUE_FEE_AMT NUMERIC(19,5),
  PAY_FEE_AMT NUMERIC(19,5),
  CREATE_DATE TIMESTAMP,
  RETURN_ID   NUMERIC(19),
  RETURN_FLAG VARCHAR(1),
  REMAIN_AMT  NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/SERVICE_FEE.txt',
'gpfdist://mdw-2:8081/SERVICE_FEE.txt',
'gpfdist://mdw-3:8081/SERVICE_FEE.txt',
'gpfdist://mdw-4:8081/SERVICE_FEE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------SERVICE_LIST------------
drop external table IF EXISTS SERVICE_LIST_INC_EXT;

create external table SERVICE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO   VARCHAR(12)  ,
  F_NO        NUMERIC(19)  ,
  FEE_TYPE    VARCHAR(1),
  FEE_RATE    NUMERIC(19,5),
  G_NO        NUMERIC(19),
  G_NAME      VARCHAR(255),
  FEE_AMT     NUMERIC(19,5),
  FEE_CURR    VARCHAR(3),
  FEE_RMB     NUMERIC(19,5),
  SERVICE_FEE NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/SERVICE_LIST.txt',
'gpfdist://mdw-2:8081/SERVICE_LIST.txt',
'gpfdist://mdw-3:8081/SERVICE_LIST.txt',
'gpfdist://mdw-4:8081/SERVICE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------SHIP_TONNAGE------------
drop external table IF EXISTS SHIP_TONNAGE_INC_EXT;

create external table SHIP_TONNAGE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  LICENSE_NO      VARCHAR(32)  ,
  SHIP_ID         VARCHAR(32),
  SHIP_NAME_EN    VARCHAR(255),
  SHIP_NAME_CN    VARCHAR(255),
  SHIP_NAME_ORI   VARCHAR(255),
  COUNTRY_CODE    VARCHAR(3),
  SHIP_TYPE       VARCHAR(3),
  SHIP_ATTR       VARCHAR(3),
  SHIP_USE_CODE   VARCHAR(3),
  TONNAGE         NUMERIC(19,2),
  TON_MOD_FLAG    VARCHAR(2),
  I_E_DATE        TIMESTAMP,
  DECL_CODE       VARCHAR(4),
  TONNAGE_TERM    NUMERIC(19),
  SHIP_AGENT_CODE VARCHAR(10),
  SHIP_AGENT_NAME VARCHAR(255),
  DUTYFORM_NO     VARCHAR(18),
  REAL_DUTY       NUMERIC(19,2),
  INPUT_DATE      TIMESTAMP,
  INPUT_ER        VARCHAR(8),
  GRANT_DATE      TIMESTAMP,
  GRANT_ER        VARCHAR(8),
  SIGN_NAME       VARCHAR(32),
  BEGIN_DATE      TIMESTAMP,
  END_DATE        TIMESTAMP,
  DUTY_MODE       VARCHAR(1),
  DEFER_REASON    VARCHAR(2),
  OP_FLAG         VARCHAR(1),
  PROC_RESULT     VARCHAR(1),
  TAX_RATE        NUMERIC(19,2),
  HASH_SIGN       VARCHAR(380),
  MANUAL_LIC_NO   VARCHAR(32),
  NOTE_MAN        VARCHAR(255),
  NOTE_AUTO       VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/SHIP_TONNAGE.txt',
'gpfdist://mdw-2:8081/SHIP_TONNAGE.txt',
'gpfdist://mdw-3:8081/SHIP_TONNAGE.txt',
'gpfdist://mdw-4:8081/SHIP_TONNAGE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------SPECIAL_ENTRY------------
drop external table IF EXISTS SPECIAL_ENTRY_INC_EXT;

create external table SPECIAL_ENTRY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID VARCHAR(18)  ,
  OP_TIME  TIMESTAMP  ,
  OP_ER    VARCHAR(32),
  OP_NOTE  VARCHAR(255),
  OP_FLAG  VARCHAR(1),
  REV_ER   VARCHAR(32),
  REV_TIME TIMESTAMP,
  END_ER   VARCHAR(32),
  END_TIME TIMESTAMP,
  END_NOTE VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/SPECIAL_ENTRY.txt',
'gpfdist://mdw-2:8081/SPECIAL_ENTRY.txt',
'gpfdist://mdw-3:8081/SPECIAL_ENTRY.txt',
'gpfdist://mdw-4:8081/SPECIAL_ENTRY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------STATUS_DETAIL------------
drop external table IF EXISTS STATUS_DETAIL_INC_EXT;

create external table STATUS_DETAIL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID      VARCHAR(18)  ,
  DETAIL_COUNT  NUMERIC(9)  ,
  STATUS_NUMBER NUMERIC(9),
  STATUS_RESULT VARCHAR(1),
  STATUS_DETAIL VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/STATUS_DETAIL.txt',
'gpfdist://mdw-2:8081/STATUS_DETAIL.txt',
'gpfdist://mdw-3:8081/STATUS_DETAIL.txt',
'gpfdist://mdw-4:8081/STATUS_DETAIL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------STATUS_DETAIL------------
drop external table IF EXISTS STATUS_DETAIL_INC_EXT;

create external table STATUS_DETAIL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID      VARCHAR(18)  ,
  DETAIL_COUNT  NUMERIC(9)  ,
  STATUS_NUMBER NUMERIC(9),
  STATUS_RESULT VARCHAR(1),
  STATUS_DETAIL VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/STATUS_DETAIL.txt',
'gpfdist://mdw-2:8081/STATUS_DETAIL.txt',
'gpfdist://mdw-3:8081/STATUS_DETAIL.txt',
'gpfdist://mdw-4:8081/STATUS_DETAIL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------STF_RECORD------------
drop external table IF EXISTS STF_RECORD_INC_EXT;

create external table STF_RECORD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID  VARCHAR(18)  ,
  STF_ID    VARCHAR(22),
  I_E_FLAG  VARCHAR(1),
  MANUAL_NO VARCHAR(20),
  STF_DATE1 TIMESTAMP,
  STF_ER1   VARCHAR(8),
  STF_DATE2 TIMESTAMP,
  STF_ER2   VARCHAR(8),
  ROOM_NO   VARCHAR(16),
  NOTE_TEXT VARCHAR(10)
)
LOCATION( 
'gpfdist://mdw-1:8081/STF_RECORD.txt',
'gpfdist://mdw-2:8081/STF_RECORD.txt',
'gpfdist://mdw-3:8081/STF_RECORD.txt',
'gpfdist://mdw-4:8081/STF_RECORD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------STL_DATA_CONTA_LIST------------
drop external table IF EXISTS STL_DATA_CONTA_LIST_INC_EXT;

create external table STL_DATA_CONTA_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  UCR_CODE     VARCHAR(35)  ,
  CONTAINER_ID VARCHAR(17)  ,
  SEAL_NO      VARCHAR(4000)
)
LOCATION( 
'gpfdist://mdw-1:8081/STL_DATA_CONTA_LIST.txt',
'gpfdist://mdw-2:8081/STL_DATA_CONTA_LIST.txt',
'gpfdist://mdw-3:8081/STL_DATA_CONTA_LIST.txt',
'gpfdist://mdw-4:8081/STL_DATA_CONTA_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------STL_DATA_HEAD------------
drop external table IF EXISTS STL_DATA_HEAD_INC_EXT;

create external table STL_DATA_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  UCR_CODE                  VARCHAR(35)  ,
  ENTRY_ID                  VARCHAR(18),
  CREATE_DATE               TIMESTAMP,
  STEP_ID                   VARCHAR(3),
  STATUS_CODE               VARCHAR(32),
  I_E_FLAG                  VARCHAR(1),
  I_E_PORT                  VARCHAR(11),
  DESTINATION_CUSTOMS_CODE  VARCHAR(11),
  TRADE_CO                  VARCHAR(17),
  TRAF_NAME                 VARCHAR(35),
  VOYAGE_NO                 VARCHAR(17),
  BILL_NO                   VARCHAR(35),
  OUT_PORT_DATE             TIMESTAMP,
  TRADE_PORT                VARCHAR(11),
  PACK_NO                   NUMERIC(19),
  REL_DATE                  TIMESTAMP,
  HASH_SIGN                 VARCHAR(380),
  CUSTOMS_REMARK            VARCHAR(11),
  CUSTOMS_REMARK_NOTES      VARCHAR(4000),
  CUSTOMS_REMARK_3          VARCHAR(11),
  CUSTOMS_REMARK_NOTES_3    VARCHAR(4000),
  CARRIER_NAME              VARCHAR(70),
  CONSIGNEE_NAME            VARCHAR(70),
  CONSIGNOR_NAME            VARCHAR(70),
  NOTIFYPARTY_NAME          VARCHAR(70),
  SUBMITTER_NAME            VARCHAR(70),
  FIRSTARRIVALLOCATION_CODE VARCHAR(17),
  ARRIVAL_DATETIME          TIMESTAMP,
  ROUTINGCOUNTRY_CODE       VARCHAR(300),
  DESTINATION_PORT          VARCHAR(11),
  UPDATE_DATE               TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/STL_DATA_HEAD.txt',
'gpfdist://mdw-2:8081/STL_DATA_HEAD.txt',
'gpfdist://mdw-3:8081/STL_DATA_HEAD.txt',
'gpfdist://mdw-4:8081/STL_DATA_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------STL_DATA_TS_LIST------------
drop external table IF EXISTS STL_DATA_TS_LIST_INC_EXT;

create external table STL_DATA_TS_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  UCR_CODE VARCHAR(35)  ,
  G_NO     NUMERIC(19)  ,
  CODE_TS  VARCHAR(12),
  G_NAME   VARCHAR(255),
  PACK_NO  NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/STL_DATA_TS_LIST.txt',
'gpfdist://mdw-2:8081/STL_DATA_TS_LIST.txt',
'gpfdist://mdw-3:8081/STL_DATA_TS_LIST.txt',
'gpfdist://mdw-4:8081/STL_DATA_TS_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------STL_REQUEST_CHK------------
drop external table IF EXISTS STL_REQUEST_CHK_INC_EXT;

create external table STL_REQUEST_CHK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  UCR_CODE                 VARCHAR(35)  ,
  ENTRY_ID                 VARCHAR(18),
  I_E_FLAG                 VARCHAR(1),
  CREATE_DATE              TIMESTAMP,
  DESTINATION_CUSTOMS_CODE VARCHAR(11),
  TRADE_CO                 VARCHAR(17),
  TRAF_NAME                VARCHAR(35),
  VOYAGE_NO                VARCHAR(17),
  BILL_NO                  VARCHAR(35),
  CHK_REQUEST              VARCHAR(11),
  NOTES                    VARCHAR(4000),
  CHK_STATUS               VARCHAR(1),
  CUSTOMS_REMARK           VARCHAR(11),
  CUSTOMS_REMARK_NOTES     VARCHAR(4000)
)
LOCATION( 
'gpfdist://mdw-1:8081/STL_REQUEST_CHK.txt',
'gpfdist://mdw-2:8081/STL_REQUEST_CHK.txt',
'gpfdist://mdw-3:8081/STL_REQUEST_CHK.txt',
'gpfdist://mdw-4:8081/STL_REQUEST_CHK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TAR_DEL_LOG------------
drop external table IF EXISTS TAR_DEL_LOG_INC_EXT;

create external table TAR_DEL_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ENTRY_ID           VARCHAR(18)  ,
  ID_CHK             VARCHAR(1),
  DUTY_FLAG          VARCHAR(1),
  TAX_TYPE           VARCHAR(1),
  TAX_ID             VARCHAR(2)  ,
  BOOK_NO            VARCHAR(32),
  DUTYFOR_NO         VARCHAR(32),
  REAL_TAX           NUMERIC(19,4),
  DELAY_DAY          NUMERIC(19),
  P_DATE             TIMESTAMP,
  P_LIMIT            TIMESTAMP,
  C_DATE             TIMESTAMP,
  CANCEL_ER          VARCHAR(8),
  RECHK_ER           VARCHAR(8),
  SYS_DATE           TIMESTAMP,
  SUBJECT_CODE       VARCHAR(10),
  SUBJECT_NAME       VARCHAR(32),
  SUBJECT_LEVEL      VARCHAR(16),
  DUTY_FLAG_NOTE     VARCHAR(1),
  OP_TIME            TIMESTAMP  ,
  OP_ID              VARCHAR(8),
  DELAY_MARK         VARCHAR(1),
  GEN_DATE           TIMESTAMP,
  BANK_CODE          VARCHAR(20),
  BANK_ACCOUNT_NAME  VARCHAR(128),
  PAYER_ACCOUNT_NO   VARCHAR(32),
  PAYER_ACCOUNT_NAME VARCHAR(255),
  PAYER_BANK_NAME    VARCHAR(255),
  PAYER_BANK_CODE    VARCHAR(20)
)
LOCATION( 
'gpfdist://mdw-1:8081/TAR_DEL_LOG.txt',
'gpfdist://mdw-2:8081/TAR_DEL_LOG.txt',
'gpfdist://mdw-3:8081/TAR_DEL_LOG.txt',
'gpfdist://mdw-4:8081/TAR_DEL_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TCS_COUNTER------------
drop external table IF EXISTS TCS_COUNTER_INC_EXT;

create external table TCS_COUNTER_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TCS_KEY VARCHAR(64)  ,
  COUNTER NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/TCS_COUNTER.txt',
'gpfdist://mdw-2:8081/TCS_COUNTER.txt',
'gpfdist://mdw-3:8081/TCS_COUNTER.txt',
'gpfdist://mdw-4:8081/TCS_COUNTER.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TCS_DETAIL_HEAD------------
drop external table IF EXISTS TCS_DETAIL_HEAD_INC_EXT;

create external table TCS_DETAIL_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MSG_ID           VARCHAR(20),
  ACCOUNT_ORG_CODE VARCHAR(15)  ,
  IN_TREASURY_DATE TIMESTAMP  ,
  PACK_NO          VARCHAR(8)  ,
  CHILD_PACK_NUM   NUMERIC(19),
  CURRENT_PACK_NO  NUMERIC(19)  ,
  ALL_NUM          NUMERIC(19),
  ALL_AMOUNT       NUMERIC(19,2),
  CURRENT_NUM      NUMERIC(19),
  CURRENT_AMOUNT   NUMERIC(19,2),
  VERIFY_MARK      VARCHAR(1),
  VERIFY_NOTE      VARCHAR(128),
  MAX_ITEM_NO      NUMERIC(19),
  RECEIVE_DATE     TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/TCS_DETAIL_HEAD.txt',
'gpfdist://mdw-2:8081/TCS_DETAIL_HEAD.txt',
'gpfdist://mdw-3:8081/TCS_DETAIL_HEAD.txt',
'gpfdist://mdw-4:8081/TCS_DETAIL_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TCS_DETAIL_LIST------------
drop external table IF EXISTS TCS_DETAIL_LIST_INC_EXT;

create external table TCS_DETAIL_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ACCOUNT_ORG_CODE    VARCHAR(15)  ,
  IN_TREASURY_DATE    TIMESTAMP  ,
  PACK_NO             VARCHAR(8)  ,
  CURRENT_PACK_NO     NUMERIC(19),
  ITEM_NO             NUMERIC(19)  ,
  ENTRY_ID            VARCHAR(18),
  TAX_ID              VARCHAR(2),
  EXPORT_VOU_TYPE     VARCHAR(1),
  TREASURY_CODE       VARCHAR(10),
  BUDGET_LEVEL_CODE   VARCHAR(1),
  BUDGET_SUBJECT_CODE VARCHAR(30),
  TRA_AMT             NUMERIC(19,2),
  ORIGIN              VARCHAR(1),
  REMARK1             VARCHAR(255),
  REMARK2             VARCHAR(255),
  REMARK3             VARCHAR(255),
  DEAL_MARK           VARCHAR(8),
  DEAL_TIME           TIMESTAMP,
  DEAL_NOTE           VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TCS_DETAIL_LIST.txt',
'gpfdist://mdw-2:8081/TCS_DETAIL_LIST.txt',
'gpfdist://mdw-3:8081/TCS_DETAIL_LIST.txt',
'gpfdist://mdw-4:8081/TCS_DETAIL_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TCS_ERROR_LOG------------
drop external table IF EXISTS TCS_ERROR_LOG_INC_EXT;

create external table TCS_ERROR_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  GUID        VARCHAR(36)  ,
  BIZ_ID      VARCHAR(64)  ,
  CREATE_TIME TIMESTAMP  ,
  ERR_ID      VARCHAR(8),
  NOTE        VARCHAR(2048)
)
LOCATION( 
'gpfdist://mdw-1:8081/TCS_ERROR_LOG.txt',
'gpfdist://mdw-2:8081/TCS_ERROR_LOG.txt',
'gpfdist://mdw-3:8081/TCS_ERROR_LOG.txt',
'gpfdist://mdw-4:8081/TCS_ERROR_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TCS_SEND_LOG------------
drop external table IF EXISTS TCS_SEND_LOG_INC_EXT;

create external table TCS_SEND_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRANS_NO               VARCHAR(20)  ,
  ENTRY_ID               VARCHAR(18),
  TAX_ID                 VARCHAR(2),
  SEND_DATE              TIMESTAMP,
  ACCOUNT_ORG_CODE       VARCHAR(15),
  ORIGINAL_SOURCE        VARCHAR(2),
  GEN_DATE               TIMESTAMP,
  TAX_TYPE               VARCHAR(1),
  DELAY_MARK             VARCHAR(1),
  DUTY_FLAG              VARCHAR(1),
  P_DATE                 TIMESTAMP,
  BUDGET_SUBJECT_CODE    VARCHAR(30),
  TREASURY_CODE          VARCHAR(10),
  BUDGET_LEVEL_CODE      VARCHAR(1),
  REAL_TAX               NUMERIC(19,2),
  C_DATE                 TIMESTAMP,
  PAY_MODE               VARCHAR(1),
  PAYER_BANK_NAME        VARCHAR(255),
  PAYER_ACCOUNT_NO       VARCHAR(32),
  REMARK1                VARCHAR(255),
  REMARK2                VARCHAR(255),
  REMARK3                VARCHAR(255),
  TREASURY_RESPONSE_DATE TIMESTAMP,
  RESPONSE_OP_DATE       TIMESTAMP,
  TREASURY_RESULT        VARCHAR(10),
  TREASURY_ADD_WORD      VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TCS_SEND_LOG.txt',
'gpfdist://mdw-2:8081/TCS_SEND_LOG.txt',
'gpfdist://mdw-3:8081/TCS_SEND_LOG.txt',
'gpfdist://mdw-4:8081/TCS_SEND_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TCS_STATISTIC_REPORT------------
drop external table IF EXISTS TCS_STATISTIC_REPORT_INC_EXT;

create external table TCS_STATISTIC_REPORT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MSG_ID              VARCHAR(20),
  ACCOUNT_ORG_CODE    VARCHAR(15)  ,
  REPORT_DATE         TIMESTAMP  ,
  SPECIAL_PERIOD_FLAG VARCHAR(1)  ,
  TREASURY_CODE       VARCHAR(10)  ,
  BUDGET_LEVEL_CODE   VARCHAR(1)  ,
  BUDGET_SUBJECT_CODE VARCHAR(30)  ,
  BUDGET_SUBJECT_NAME VARCHAR(128),
  DAY_AMOUNT          NUMERIC(19,2),
  TENDAY_AMOUNT       NUMERIC(19,2),
  MONTH_AMOUNT        NUMERIC(19,2),
  QUARTER_AMOUNT      NUMERIC(19,2),
  YEAR_AMOUNT         NUMERIC(19,2),
  RECEIVE_DATE        TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/TCS_STATISTIC_REPORT.txt',
'gpfdist://mdw-2:8081/TCS_STATISTIC_REPORT.txt',
'gpfdist://mdw-3:8081/TCS_STATISTIC_REPORT.txt',
'gpfdist://mdw-4:8081/TCS_STATISTIC_REPORT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEMP_DB------------
drop external table IF EXISTS TEMP_DB_INC_EXT;

create external table TEMP_DB_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_NO       VARCHAR(16)  ,
  PROCESS_STEP VARCHAR(1)  
)
LOCATION( 
'gpfdist://mdw-1:8081/TEMP_DB.txt',
'gpfdist://mdw-2:8081/TEMP_DB.txt',
'gpfdist://mdw-3:8081/TEMP_DB.txt',
'gpfdist://mdw-4:8081/TEMP_DB.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEMP_DEL_EMS_CONSUME------------
drop external table IF EXISTS TEMP_DEL_EMS_CONSUME_INC_EXT;

create external table TEMP_DEL_EMS_CONSUME_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RID VARCHAR(255)  
)
LOCATION( 
'gpfdist://mdw-1:8081/TEMP_DEL_EMS_CONSUME.txt',
'gpfdist://mdw-2:8081/TEMP_DEL_EMS_CONSUME.txt',
'gpfdist://mdw-3:8081/TEMP_DEL_EMS_CONSUME.txt',
'gpfdist://mdw-4:8081/TEMP_DEL_EMS_CONSUME.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEMP_DEL_EMS_HEAD------------
drop external table IF EXISTS TEMP_DEL_EMS_HEAD_INC_EXT;

create external table TEMP_DEL_EMS_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO VARCHAR(12)  
)
LOCATION( 
'gpfdist://mdw-1:8081/TEMP_DEL_EMS_HEAD.txt',
'gpfdist://mdw-2:8081/TEMP_DEL_EMS_HEAD.txt',
'gpfdist://mdw-3:8081/TEMP_DEL_EMS_HEAD.txt',
'gpfdist://mdw-4:8081/TEMP_DEL_EMS_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEMP_PAGE_RANGE------------
drop external table IF EXISTS TEMP_PAGE_RANGE_INC_EXT;

create external table TEMP_PAGE_RANGE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PR_KEY    VARCHAR(255)  ,
  PR_DETAIL VARCHAR(255)  
)
LOCATION( 
'gpfdist://mdw-1:8081/TEMP_PAGE_RANGE.txt',
'gpfdist://mdw-2:8081/TEMP_PAGE_RANGE.txt',
'gpfdist://mdw-3:8081/TEMP_PAGE_RANGE.txt',
'gpfdist://mdw-4:8081/TEMP_PAGE_RANGE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_COMPANY------------
drop external table IF EXISTS TEP_COMPANY_INC_EXT;

create external table TEP_COMPANY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  PRE_TEP_NO       VARCHAR(20),
  TEP_NO           VARCHAR(21)  ,
  TEP_TYPE         VARCHAR(1),
  APPLY_DATE       TIMESTAMP,
  RECORD_DATE      TIMESTAMP,
  PLATFORM_NAME    VARCHAR(7),
  CUSTOM_CODE      VARCHAR(4),
  TRADE_CODE       VARCHAR(32),
  ORG_CODE         VARCHAR(9),
  AGREE_NO         VARCHAR(26),
  LINKMAN          VARCHAR(64),
  ADDRESS          VARCHAR(255),
  PHONE            VARCHAR(32),
  BANK_NAME        VARCHAR(255),
  APPLY_STATE      VARCHAR(1),
  BANK_VOUCH_ID    VARCHAR(32),
  BANK_ID          VARCHAR(7),
  VOUCH_BANK_NAME  VARCHAR(255),
  VOUCH_MONEY      NUMERIC(21,2),
  VOUCH_BEGIN_DATE TIMESTAMP,
  VOUCH_END_DATE   TIMESTAMP,
  AUDIT_STATE      VARCHAR(1),
  AUDIT_ER         VARCHAR(8),
  AUDIT_NOTE       VARCHAR(255),
  AUDIT_DATE       TIMESTAMP,
  SPT1             VARCHAR(255),
  SPT2             VARCHAR(255),
  SPT3             VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_COMPANY.txt',
'gpfdist://mdw-2:8081/TEP_COMPANY.txt',
'gpfdist://mdw-3:8081/TEP_COMPANY.txt',
'gpfdist://mdw-4:8081/TEP_COMPANY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_DEBIT_REC_REQUEST------------
drop external table IF EXISTS TEP_DEBIT_REC_REQUEST_INC_EXT;

create external table TEP_DEBIT_REC_REQUEST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  REQUEST_DATE CHAR(10)  ,
  TRANS_NO     CHAR(27)  ,
  REQUEST_TIME TIMESTAMP  ,
  PAY_STATUS   CHAR(2),
  ENTRY_ID     CHAR(18),
  DUTY_FLAG    CHAR(1),
  TAX_TYPE     CHAR(1),
  TAX_ID       CHAR(2),
  GUA_ID       CHAR(18),
  AMOUNT       NUMERIC(19,2),
  P_LIMIT      TIMESTAMP,
  MEMO         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_DEBIT_REC_REQUEST.txt',
'gpfdist://mdw-2:8081/TEP_DEBIT_REC_REQUEST.txt',
'gpfdist://mdw-3:8081/TEP_DEBIT_REC_REQUEST.txt',
'gpfdist://mdw-4:8081/TEP_DEBIT_REC_REQUEST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_DEBIT_REC_RESPONSE------------
drop external table IF EXISTS TEP_DEBIT_REC_RESPONSE_INC_EXT;

create external table TEP_DEBIT_REC_RESPONSE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRANS_NO      CHAR(27)  ,
  RESPONSE_DATE CHAR(10)  ,
  RESPONSE_TIME TIMESTAMP  ,
  REC_CODE      CHAR(6)  ,
  MEMO          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_DEBIT_REC_RESPONSE.txt',
'gpfdist://mdw-2:8081/TEP_DEBIT_REC_RESPONSE.txt',
'gpfdist://mdw-3:8081/TEP_DEBIT_REC_RESPONSE.txt',
'gpfdist://mdw-4:8081/TEP_DEBIT_REC_RESPONSE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_EPLAT_RESPONSE------------
drop external table IF EXISTS TEP_EPLAT_RESPONSE_INC_EXT;

create external table TEP_EPLAT_RESPONSE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MSG_TYPE        VARCHAR(10)  ,
  CREATE_DATE     TIMESTAMP  ,
  CUSTOMS_CODE    VARCHAR(10),
  RETURN_CODE     VARCHAR(10),
  ERR_RETURN_CODE VARCHAR(10),
  ERR_RETURN_INFO VARCHAR(255),
  SPT1            VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_EPLAT_RESPONSE.txt',
'gpfdist://mdw-2:8081/TEP_EPLAT_RESPONSE.txt',
'gpfdist://mdw-3:8081/TEP_EPLAT_RESPONSE.txt',
'gpfdist://mdw-4:8081/TEP_EPLAT_RESPONSE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_ERR_LOG------------
drop external table IF EXISTS TEP_ERR_LOG_INC_EXT;

create external table TEP_ERR_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ERR_NO      VARCHAR(27)  ,
  CREATE_DATE TIMESTAMP  ,
  TEP_TYPE    VARCHAR(1),
  STEP_ID     VARCHAR(8),
  NOTE        VARCHAR(512)
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_ERR_LOG.txt',
'gpfdist://mdw-2:8081/TEP_ERR_LOG.txt',
'gpfdist://mdw-3:8081/TEP_ERR_LOG.txt',
'gpfdist://mdw-4:8081/TEP_ERR_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_LOG------------
drop external table IF EXISTS TEP_LOG_INC_EXT;

create external table TEP_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  STEP_ID         VARCHAR(8)  ,
  BIZ_ID          VARCHAR(32)  ,
  CREATE_DATE     TIMESTAMP  ,
  OPER_ID         VARCHAR(32),
  OPER_DECRIPTION VARCHAR(2048),
  NOTE_S          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_LOG.txt',
'gpfdist://mdw-2:8081/TEP_LOG.txt',
'gpfdist://mdw-3:8081/TEP_LOG.txt',
'gpfdist://mdw-4:8081/TEP_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_PAY_LOG------------
drop external table IF EXISTS TEP_PAY_LOG_INC_EXT;

create external table TEP_PAY_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRANS_NO              VARCHAR(32)  ,
  EPLAT_CODE            VARCHAR(10)  ,
  CUSTOMS_CODE          VARCHAR(4),
  TAX_TYPE              VARCHAR(1),
  ENTRY_ID              VARCHAR(18),
  TAX_ID                VARCHAR(2),
  GEN_DATE              TIMESTAMP,
  GUA_ID                VARCHAR(18),
  DUTY_FLAG             VARCHAR(1),
  DELAY_MARK            VARCHAR(1),
  REAL_TAX              NUMERIC(19,2),
  EXE_MARK              VARCHAR(2),
  PAY_MODE              VARCHAR(1),
  PAY_DATE              TIMESTAMP,
  PAY_OP_DATE           TIMESTAMP,
  PAYER_CODE            VARCHAR(32),
  PAYER_NAME            VARCHAR(255),
  PAYER_ACCOUNT_NO      VARCHAR(32),
  PAYER_ACCOUNT_NAME    VARCHAR(255),
  PAYER_BANK_NAME       VARCHAR(255),
  PAYER_BANK_CODE       VARCHAR(20),
  PAY_SIGNER_INFO       VARCHAR(64),
  PAY_SIGN              VARCHAR(255),
  PAY_RETURN_CODE       VARCHAR(10),
  PAY_ERR_RETURN_CODE   VARCHAR(10),
  PAY_ERR_RETRUN_INFO   VARCHAR(255),
  CANCEL_PAY_DATE       TIMESTAMP,
  DELETE_DATE           TIMESTAMP,
  DEBIT_ORDER_DATE      TIMESTAMP,
  DEBIT_REPONSE_DATE    TIMESTAMP,
  DEBIT_REPONSE_OP_DATE TIMESTAMP,
  DEBIT_REPONSE_OP_INFO VARCHAR(255),
  DEBIT_DATE            TIMESTAMP,
  DEBIT_OP_DATE         TIMESTAMP,
  DEBIT_OP_INFO         VARCHAR(512),
  DEBIT_RETURN_CODE     VARCHAR(10),
  DEBIT_ERR_RETURN_CODE VARCHAR(10),
  DEBIT_ERR_RETURN_INFO VARCHAR(255),
  DEBIT_SIGNER_INFO     VARCHAR(64),
  DEBIT_SIGN            VARCHAR(255),
  BATCH_PRINT_DATE      TIMESTAMP,
  REC_DATE              TIMESTAMP,
  P_LIMIT               TIMESTAMP,
  LAST_UPDATE_DATE      TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_PAY_LOG.txt',
'gpfdist://mdw-2:8081/TEP_PAY_LOG.txt',
'gpfdist://mdw-3:8081/TEP_PAY_LOG.txt',
'gpfdist://mdw-4:8081/TEP_PAY_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_PAY_REC_REQUEST------------
drop external table IF EXISTS TEP_PAY_REC_REQUEST_INC_EXT;

create external table TEP_PAY_REC_REQUEST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  REQUEST_DATE CHAR(10)  ,
  TRANS_NO     CHAR(27)  ,
  REQUEST_TIME TIMESTAMP  ,
  PAY_STATUS   CHAR(2),
  ENTRY_ID     CHAR(18),
  DUTY_FLAG    CHAR(1),
  TAX_TYPE     CHAR(1),
  TAX_ID       CHAR(2),
  GUA_ID       CHAR(18),
  AMOUNT       NUMERIC(19,2),
  MEMO         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_PAY_REC_REQUEST.txt',
'gpfdist://mdw-2:8081/TEP_PAY_REC_REQUEST.txt',
'gpfdist://mdw-3:8081/TEP_PAY_REC_REQUEST.txt',
'gpfdist://mdw-4:8081/TEP_PAY_REC_REQUEST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_PAY_REC_RESPONSE------------
drop external table IF EXISTS TEP_PAY_REC_RESPONSE_INC_EXT;

create external table TEP_PAY_REC_RESPONSE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  RESPONSE_DATE CHAR(10)  ,
  TRANS_NO      CHAR(27)  ,
  RESPONSE_TIME TIMESTAMP  ,
  REC_CODE      CHAR(6)  ,
  MEMO          VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_PAY_REC_RESPONSE.txt',
'gpfdist://mdw-2:8081/TEP_PAY_REC_RESPONSE.txt',
'gpfdist://mdw-3:8081/TEP_PAY_REC_RESPONSE.txt',
'gpfdist://mdw-4:8081/TEP_PAY_REC_RESPONSE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_REC_LOG------------
drop external table IF EXISTS TEP_REC_LOG_INC_EXT;

create external table TEP_REC_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  REC_DATE    CHAR(10)  ,
  TRANS_NO    CHAR(27)  ,
  REC_TIME    TIMESTAMP  ,
  REC_SIGN    CHAR(1),
  REC_TYPE    CHAR(1)  ,
  ENTRY_ID    VARCHAR(50),
  TAX_ID      CHAR(2),
  TAX_TYPE    CHAR(1),
  GUA_ID      CHAR(18),
  PAY_STATUS  CHAR(2),
  DUTY_FLAG   CHAR(1),
  AMOUNT      NUMERIC(19,2),
  P_LIMIT     TIMESTAMP,
  RESULT_NO   CHAR(6),
  DESCRIPTION VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_REC_LOG.txt',
'gpfdist://mdw-2:8081/TEP_REC_LOG.txt',
'gpfdist://mdw-3:8081/TEP_REC_LOG.txt',
'gpfdist://mdw-4:8081/TEP_REC_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_SEQ------------
drop external table IF EXISTS TEP_SEQ_INC_EXT;

create external table TEP_SEQ_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TEP_KEY VARCHAR(32)  ,
  TEP_SEQ NUMERIC(19)
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_SEQ.txt',
'gpfdist://mdw-2:8081/TEP_SEQ.txt',
'gpfdist://mdw-3:8081/TEP_SEQ.txt',
'gpfdist://mdw-4:8081/TEP_SEQ.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_STATUS_QUERY------------
drop external table IF EXISTS TEP_STATUS_QUERY_INC_EXT;

create external table TEP_STATUS_QUERY_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRANS_NO     VARCHAR(27)  ,
  SENDER_ID    VARCHAR(7)  ,
  DEAL_TIME    TIMESTAMP  ,
  TRANS_STATUS VARCHAR(10),
  SENDT_FLAG   VARCHAR(1),
  RESERVE      VARCHAR(128)
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_STATUS_QUERY.txt',
'gpfdist://mdw-2:8081/TEP_STATUS_QUERY.txt',
'gpfdist://mdw-3:8081/TEP_STATUS_QUERY.txt',
'gpfdist://mdw-4:8081/TEP_STATUS_QUERY.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_VOUCHER_REC_LIST------------
drop external table IF EXISTS TEP_VOUCHER_REC_LIST_INC_EXT;

create external table TEP_VOUCHER_REC_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  VOUCHER_RECEIVABLE_SEQ_NO VARCHAR(27)  ,
  VOUCHER_PRODUCE_TIME      TIMESTAMP,
  CUSTOMS_CODE              CHAR(4),
  CUSTOMS_NAME              VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_VOUCHER_REC_LIST.txt',
'gpfdist://mdw-2:8081/TEP_VOUCHER_REC_LIST.txt',
'gpfdist://mdw-3:8081/TEP_VOUCHER_REC_LIST.txt',
'gpfdist://mdw-4:8081/TEP_VOUCHER_REC_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_VOUCHER_REC_LIST_DETAIL------------
drop external table IF EXISTS TEP_VOUCHER_REC_LIST_DETAIL_INC_EXT;

create external table TEP_VOUCHER_REC_LIST_DETAIL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  VOUCHER_RECEIVABLE_SEQ_NO VARCHAR(27)  ,
  BANK_CODE                 VARCHAR(7)  ,
  PAYEE_BANK_ACCOUNT        VARCHAR(32)  ,
  PAYEE_CODE                VARCHAR(4)  ,
  PAYEE_BANK_NAME           VARCHAR(255),
  PAYEE_BRANCH_CODE         VARCHAR(12),
  PAYEE_BANK_ACCOUNT_NAME   VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_VOUCHER_REC_LIST_DETAIL.txt',
'gpfdist://mdw-2:8081/TEP_VOUCHER_REC_LIST_DETAIL.txt',
'gpfdist://mdw-3:8081/TEP_VOUCHER_REC_LIST_DETAIL.txt',
'gpfdist://mdw-4:8081/TEP_VOUCHER_REC_LIST_DETAIL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TEP_VOUCHER_REC_PAGE_LIST------------
drop external table IF EXISTS TEP_VOUCHER_REC_PAGE_LIST_INC_EXT;

create external table TEP_VOUCHER_REC_PAGE_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  VOUCHER_RECEIVABLE_SEQ_NO VARCHAR(27)  ,
  BANK_CODE                 VARCHAR(7)  ,
  PAYEE_BANK_ACCOUNT        VARCHAR(32)  ,
  PAYER_CONGREG_BK_ID       CHAR(7),
  PAYER_CONGREG_BK_NAME     VARCHAR(255),
  PAGE_NO                   NUMERIC(4)  ,
  PAGE_NAME                 VARCHAR(26)  ,
  PAGE_OBJECT               VARCHAR(3000),
  PAYEE_CODE                VARCHAR(4)  
)
LOCATION( 
'gpfdist://mdw-1:8081/TEP_VOUCHER_REC_PAGE_LIST.txt',
'gpfdist://mdw-2:8081/TEP_VOUCHER_REC_PAGE_LIST.txt',
'gpfdist://mdw-3:8081/TEP_VOUCHER_REC_PAGE_LIST.txt',
'gpfdist://mdw-4:8081/TEP_VOUCHER_REC_PAGE_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TMP_EMS_CONSUME------------
drop external table IF EXISTS TMP_EMS_CONSUME_INC_EXT;

create external table TMP_EMS_CONSUME_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO       VARCHAR(12)  ,
  EXG_NO       NUMERIC(19)  ,
  EXG_VERSION  VARCHAR(32)  ,
  IMG_NO       NUMERIC(19)  ,
  MODIFY_TIMES NUMERIC(19)  ,
  DEC_CM       NUMERIC(19,9),
  DEC_DM       NUMERIC(19,9),
  OTHER_CM     NUMERIC(19,9),
  OTHER_DM     NUMERIC(19,9),
  CM_MARK      VARCHAR(1),
  PRODUCT_MARK VARCHAR(10),
  PRODUCT_TYPE VARCHAR(1),
  MODIFY_MARK  VARCHAR(1),
  CONTROL_MARK VARCHAR(1),
  NOTE         VARCHAR(10),
  ETL_MARK     VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/TMP_EMS_CONSUME.txt',
'gpfdist://mdw-2:8081/TMP_EMS_CONSUME.txt',
'gpfdist://mdw-3:8081/TMP_EMS_CONSUME.txt',
'gpfdist://mdw-4:8081/TMP_EMS_CONSUME.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TMP_EMS_DCR_ENT------------
drop external table IF EXISTS TMP_EMS_DCR_ENT_INC_EXT;

create external table TMP_EMS_DCR_ENT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO         VARCHAR(12)  ,
  DCR_TIMES      NUMERIC(19)  ,
  ENTRY_ID       VARCHAR(18)  ,
  MASTER_CUSTOMS VARCHAR(4),
  I_E_FLAG       VARCHAR(1),
  ITEMS_NUM      NUMERIC(19),
  DECLARE_DATE   TIMESTAMP,
  I_E_DATE       TIMESTAMP,
  DU_CODE        VARCHAR(2),
  ENT_MARK       VARCHAR(1),
  NOTE           VARCHAR(255),
  MODIFY_MARK    VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/TMP_EMS_DCR_ENT.txt',
'gpfdist://mdw-2:8081/TMP_EMS_DCR_ENT.txt',
'gpfdist://mdw-3:8081/TMP_EMS_DCR_ENT.txt',
'gpfdist://mdw-4:8081/TMP_EMS_DCR_ENT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TMP_EMS_HEAD------------
drop external table IF EXISTS TMP_EMS_HEAD_INC_EXT;

create external table TMP_EMS_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO            VARCHAR(12)  ,
  MODIFY_TIMES      NUMERIC(19)  ,
  PRE_EMS_NO        VARCHAR(12),
  COP_EMS_NO        VARCHAR(20),
  TRADE_CODE        VARCHAR(10),
  TRADE_NAME        VARCHAR(255),
  HOUSE_NO          VARCHAR(12),
  OWNER_CODE        VARCHAR(10),
  OWNER_NAME        VARCHAR(255),
  OWNER_TYPE        VARCHAR(1),
  DECLARE_ER_TYPE   VARCHAR(1),
  DECLARE_CODE      VARCHAR(10),
  DECLARE_NAME      VARCHAR(255),
  DISTRICT_CODE     VARCHAR(5),
  ADDRESS           VARCHAR(255),
  PHONE             VARCHAR(20),
  EMS_TYPE          VARCHAR(1),
  DECLARE_TYPE      VARCHAR(1),
  APPEND_TYPE       VARCHAR(1),
  INVEST_MODE       VARCHAR(1),
  TRADE_MODE        VARCHAR(4),
  BEGIN_DATE        TIMESTAMP,
  END_DATE          TIMESTAMP,
  IMG_AMOUNT        NUMERIC(19,5),
  EXG_AMOUNT        NUMERIC(19,5),
  IMG_WEIGHT        NUMERIC(19,5),
  EXG_WEIGHT        NUMERIC(19,5),
  STORE_VOL         NUMERIC(19,5),
  STORE_AREA        NUMERIC(19,5),
  IMG_ITEMS         NUMERIC(19),
  EXG_ITEMS         NUMERIC(19),
  EMS_APPR_NO       VARCHAR(40),
  LICENSE_NO        VARCHAR(20),
  LAST_EMS_NO       VARCHAR(12),
  CORR_EMS_NO       VARCHAR(12),
  CONTR_NO          VARCHAR(20),
  ID_CARD           VARCHAR(20),
  ID_CARD_PWD       VARCHAR(20),
  NOTE_1            VARCHAR(10),
  NOTE_2            VARCHAR(10),
  INVEST_AMOUNT     NUMERIC(19,5),
  NOTE_AMOUNT       NUMERIC(19,5),
  NOTE_QTY          NUMERIC(19,5),
  NOTE              VARCHAR(256),
  INPUT_DATE        TIMESTAMP,
  INPUT_ER          VARCHAR(8),
  DECLARE_DATE      TIMESTAMP,
  EMS_APPR_MARK     VARCHAR(10),
  EMS_CERTIFY       VARCHAR(10),
  PRODUCT_RATIO     NUMERIC(19,5),
  MODIFY_MARK       VARCHAR(1),
  DECLARE_MARK      VARCHAR(1),
  CHK_MARK          VARCHAR(1),
  EXE_MARK          VARCHAR(1),
  NEW_APPR_DATE     TIMESTAMP,
  CNG_APPR_DATE     TIMESTAMP,
  CLEAR_DATE        TIMESTAMP,
  SIGN_DATE         TIMESTAMP,
  SIGN_COPY         NUMERIC(19),
  PRINT_DATE        TIMESTAMP,
  PRINT_MARK        VARCHAR(1),
  RETURN_DATE       TIMESTAMP,
  RETURN_MARK       VARCHAR(1),
  EMS_ACE_MARK      VARCHAR(32),
  H883_ACE_MARK     VARCHAR(32),
  CONTROL_MARK      VARCHAR(32),
  PROCESS_MARK      VARCHAR(32),
  CLEAR_MODE        VARCHAR(1),
  CLEAR_TERM        NUMERIC(19),
  CLEAR_MARK        VARCHAR(32),
  CLEAR_TIMES       NUMERIC(19),
  SERVICE_FEE_MARK  VARCHAR(1),
  SERVICE_FEE_RATE  NUMERIC(19,5),
  SERVICE_FEE       NUMERIC(19,5),
  FILE_NO           VARCHAR(20),
  RECORDER_NO       VARCHAR(20),
  DOCUMENT_NO       VARCHAR(20),
  MASTER_CUSTOMS    VARCHAR(4),
  I_E_PORT          VARCHAR(255),
  FOREIGN_CO_NAME   VARCHAR(255),
  AGREE_NO          VARCHAR(32),
  CUT_MODE          VARCHAR(4),
  PAY_MODE          VARCHAR(1),
  PRODUCE_TYPE      VARCHAR(2),
  CONTR_OUT         VARCHAR(32),
  MESSAGE_TYPE      VARCHAR(8),
  EPORT_ID          VARCHAR(18),
  DIGITAL_SIGN_MARK VARCHAR(1),
  DIGITAL_SIGN_LEN  VARCHAR(255),
  DIGITAL_SIGN      VARCHAR(262),
  ETL_MARK          VARCHAR(1),
  I_DATE            TIMESTAMP,
  IMGED_AMOUNT      NUMERIC(19,5),
  CLEAR_APPR_MARK   VARCHAR(1),
  CLEAR_APPL_DATE   TIMESTAMP,
  CLOSE_MARK        VARCHAR(1),
  CLOSE_DATE        TIMESTAMP,
  CHECK_MARK        VARCHAR(1),
  CHECK_RESULT      VARCHAR(255),
  FOREIGN_MGR       VARCHAR(32),
  TRANS_MODE        VARCHAR(1),
  TRADE_COUNTRY     VARCHAR(3),
  EQUIP_MODE        VARCHAR(1),
  IN_RATIO          NUMERIC(19,4),
  EX_CURR           VARCHAR(3),
  IM_CURR           VARCHAR(3),
  OPER_MARK         VARCHAR(32),
  FACT_DEV_AMT      NUMERIC(19,5),
  APPR_IMG_AMT      NUMERIC(19,5),
  APPR_EXG_AMT      NUMERIC(19,5),
  CLOSE_RESULT      VARCHAR(32),
  DEDUCT_DATE       TIMESTAMP,
  ACCOUNT_FLAG      VARCHAR(2),
  HT_APPR_IMG_AMT   NUMERIC(19,5),
  CASE_MARK         VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/TMP_EMS_HEAD.txt',
'gpfdist://mdw-2:8081/TMP_EMS_HEAD.txt',
'gpfdist://mdw-3:8081/TMP_EMS_HEAD.txt',
'gpfdist://mdw-4:8081/TMP_EMS_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TMP_EMS_LIST------------
drop external table IF EXISTS TMP_EMS_LIST_INC_EXT;

create external table TMP_EMS_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  EMS_NO        VARCHAR(12)  ,
  G_TYPE        VARCHAR(1)  ,
  G_NO          NUMERIC(19)  ,
  MODIFY_TIMES  NUMERIC(19)  ,
  COP_G_NO      VARCHAR(30),
  CODE_TS       VARCHAR(10),
  CLASS_MARK    VARCHAR(1),
  G_NAME        VARCHAR(255),
  G_MODEL       VARCHAR(255),
  UNIT          VARCHAR(3),
  UNIT_1        VARCHAR(3),
  UNIT_2        VARCHAR(3),
  COUNTRY_CODE  VARCHAR(4),
  SOURCE_MARK   VARCHAR(1),
  DEC_PRICE     NUMERIC(19,5),
  CURR          VARCHAR(4),
  DEC_PRICE_RMB NUMERIC(19,4),
  FACTOR_1      NUMERIC(19,4),
  FACTOR_2      NUMERIC(19,4),
  FACTOR_WT     NUMERIC(19,4),
  FACTOR_RATE   NUMERIC(19,5),
  QTY           NUMERIC(19,5),
  MAX_QTY       NUMERIC(19,5),
  FIRST_QTY     NUMERIC(19,5),
  I_E_TYPE      VARCHAR(1),
  USE_TYPE      VARCHAR(10),
  NOTE_1        VARCHAR(1),
  NOTE_2        VARCHAR(1),
  NOTE          VARCHAR(10),
  MODIFY_MARK   VARCHAR(1),
  G_MERGE       VARCHAR(10),
  G_TRADE       VARCHAR(10),
  QTY_MARK      VARCHAR(1),
  INC_AMOUNT    NUMERIC(19,5),
  INC_QTY       NUMERIC(19,5),
  INC_WT        NUMERIC(19,5),
  CUT_AMOUNT    NUMERIC(19,5),
  CUT_QTY       NUMERIC(19,5),
  CUT_WT        NUMERIC(19,5),
  CM_AMOUNT     NUMERIC(19,5),
  CM_QTY        NUMERIC(19,5),
  CM_WT         NUMERIC(19,5),
  CLR_INC_QTY   NUMERIC(19,5),
  CLR_CUT_QTY   NUMERIC(19,5),
  DUTY_MODE     VARCHAR(1),
  DUTY_RATE     NUMERIC(19,5),
  CHK_PRICE     NUMERIC(19,5),
  PROCESS_MARK  VARCHAR(10),
  ENTRY_ID      VARCHAR(18),
  LIMIT_DATE    TIMESTAMP,
  ETL_MARK      VARCHAR(1),
  USD_PRICE     NUMERIC(19,5),
  APPR_AMT      NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/TMP_EMS_LIST.txt',
'gpfdist://mdw-2:8081/TMP_EMS_LIST.txt',
'gpfdist://mdw-3:8081/TMP_EMS_LIST.txt',
'gpfdist://mdw-4:8081/TMP_EMS_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRADE_ERR------------
drop external table IF EXISTS TRADE_ERR_INC_EXT;

create external table TRADE_ERR_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  HG_CODE   VARCHAR(20)  ,
  HG_NAME   VARCHAR(50),
  CURR_DATE TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/TRADE_ERR.txt',
'gpfdist://mdw-2:8081/TRADE_ERR.txt',
'gpfdist://mdw-3:8081/TRADE_ERR.txt',
'gpfdist://mdw-4:8081/TRADE_ERR.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRADE_GPM_RTX------------
drop external table IF EXISTS TRADE_GPM_RTX_INC_EXT;

create external table TRADE_GPM_RTX_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_MODE VARCHAR(4)  ,
  SIGN_TYPE  VARCHAR(3)  ,
  SIGN_MODE  VARCHAR(1)  
)
LOCATION( 
'gpfdist://mdw-1:8081/TRADE_GPM_RTX.txt',
'gpfdist://mdw-2:8081/TRADE_GPM_RTX.txt',
'gpfdist://mdw-3:8081/TRADE_GPM_RTX.txt',
'gpfdist://mdw-4:8081/TRADE_GPM_RTX.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRANSFER_FEE------------
drop external table IF EXISTS TRANSFER_FEE_INC_EXT;

create external table TRANSFER_FEE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO     VARCHAR(12)  ,
  RTN_MANUAL_NO VARCHAR(12)  ,
  TRANSFER_FEE  NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/TRANSFER_FEE.txt',
'gpfdist://mdw-2:8081/TRANSFER_FEE.txt',
'gpfdist://mdw-3:8081/TRANSFER_FEE.txt',
'gpfdist://mdw-4:8081/TRANSFER_FEE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRANSFER_FEE_LOG------------
drop external table IF EXISTS TRANSFER_FEE_LOG_INC_EXT;

create external table TRANSFER_FEE_LOG_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  MANUAL_NO     VARCHAR(12)  ,
  RTN_MANUAL_NO VARCHAR(12)  ,
  CREATE_DATE   TIMESTAMP  ,
  TRANSFER_FEE  NUMERIC(19,5)
)
LOCATION( 
'gpfdist://mdw-1:8081/TRANSFER_FEE_LOG.txt',
'gpfdist://mdw-2:8081/TRANSFER_FEE_LOG.txt',
'gpfdist://mdw-3:8081/TRANSFER_FEE_LOG.txt',
'gpfdist://mdw-4:8081/TRANSFER_FEE_LOG.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_ALC_REL------------
drop external table IF EXISTS TRN_ALC_REL_INC_EXT;

create external table TRN_ALC_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOMS_CODE VARCHAR(4)  ,
  TRN_MODE     VARCHAR(2)  ,
  TRAF_MODE    VARCHAR(1)  ,
  ALC_REL_FLAG VARCHAR(2),
  OP_ER        VARCHAR(8),
  OP_DATE      TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_ALC_REL.txt',
'gpfdist://mdw-2:8081/TRN_ALC_REL.txt',
'gpfdist://mdw-3:8081/TRN_ALC_REL.txt',
'gpfdist://mdw-4:8081/TRN_ALC_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_CHECK------------
drop external table IF EXISTS TRN_CHECK_INC_EXT;

create external table TRN_CHECK_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  NO            NUMERIC(9)  ,
  I_E_FLAG      VARCHAR(1),
  CODE_S        VARCHAR(16),
  CODE_E        VARCHAR(16),
  GOODS_NAME    VARCHAR(255),
  AGENT_NAME    VARCHAR(255),
  TRANS_NAME    VARCHAR(255),
  TRAF_NAME     VARCHAR(32),
  PORT_CO       VARCHAR(4),
  RESULT_MARK   VARCHAR(4),
  RESULT_STATUS VARCHAR(40),
  EFFECT_D_S    TIMESTAMP,
  EFFECT_D_E    TIMESTAMP,
  ISSUE_PORT    VARCHAR(4),
  ISSUE_OP_ID   VARCHAR(8),
  ISSUE_TIME    TIMESTAMP,
  MODI_TIME     TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_CHECK.txt',
'gpfdist://mdw-2:8081/TRN_CHECK.txt',
'gpfdist://mdw-3:8081/TRN_CHECK.txt',
'gpfdist://mdw-4:8081/TRN_CHECK.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_CHK_GOODS------------
drop external table IF EXISTS TRN_CHK_GOODS_INC_EXT;

create external table TRN_CHK_GOODS_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CHK_CODE_TS VARCHAR(16)  ,
  CHK_G_NAME  VARCHAR(255),
  USE_1       VARCHAR(32),
  USE_2       VARCHAR(32),
  USE_3       VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_CHK_GOODS.txt',
'gpfdist://mdw-2:8081/TRN_CHK_GOODS.txt',
'gpfdist://mdw-3:8081/TRN_CHK_GOODS.txt',
'gpfdist://mdw-4:8081/TRN_CHK_GOODS.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_COP_REL------------
drop external table IF EXISTS TRN_COP_REL_INC_EXT;

create external table TRN_COP_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CO_REG_NO          VARCHAR(9)  ,
  CO_CUSTOMS_NO      VARCHAR(10),
  MAIN_PORT          VARCHAR(4),
  CO_NAME            VARCHAR(255),
  CO_ADDRESS         VARCHAR(255),
  CO_PHONE_NO        VARCHAR(20),
  VALID_FLAG         VARCHAR(1),
  VALID_DATE         TIMESTAMP,
  INPUT_DATE         TIMESTAMP,
  INPUT_OP_ID        VARCHAR(8),
  PERMIT_FLAG        VARCHAR(1),
  PERMIT_DATE        TIMESTAMP,
  PERMIT_OP_ID       VARCHAR(8),
  RESERV_FIELD       VARCHAR(10),
  CO_REG_TYPE        VARCHAR(1),
  CO_PROPERTY        VARCHAR(1),
  CO_DEAL_RANGE      VARCHAR(1),
  CO_AUTHORIZE_NO    VARCHAR(30),
  CO_DEAL_DATE       TIMESTAMP,
  CO_CORPORATION_REP VARCHAR(20),
  CO_ABROAD_NAME     VARCHAR(255),
  GANG_AO_CARS       NUMERIC(9),
  GANG_AO_CARS_USED  NUMERIC(9),
  CK_FLAG            VARCHAR(1),
  NOTE_FIELD         VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_COP_REL.txt',
'gpfdist://mdw-2:8081/TRN_COP_REL.txt',
'gpfdist://mdw-3:8081/TRN_COP_REL.txt',
'gpfdist://mdw-4:8081/TRN_COP_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_DELAY_FORM------------
drop external table IF EXISTS TRN_DELAY_FORM_INC_EXT;

create external table TRN_DELAY_FORM_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TURN_NO       VARCHAR(16)  ,
  ID_CHK        VARCHAR(1),
  DUTY_FLAG     VARCHAR(1),
  TAX_TYPE      VARCHAR(1),
  TAX_ID        VARCHAR(2),
  DELAY_MARK    VARCHAR(1),
  BOOK_NO       NUMERIC(19),
  DELAY_ACCOUNT NUMERIC(19,4),
  DELAY_DAY     NUMERIC(19),
  P_DATE        TIMESTAMP,
  DUTY_PRINT    VARCHAR(1),
  C_DATE        TIMESTAMP,
  CANCEL_ER     VARCHAR(8),
  SYS_DATE      TIMESTAMP,
  TAX_TYPES     VARCHAR(32),
  CUT_NOTE      VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_DELAY_FORM.txt',
'gpfdist://mdw-2:8081/TRN_DELAY_FORM.txt',
'gpfdist://mdw-3:8081/TRN_DELAY_FORM.txt',
'gpfdist://mdw-4:8081/TRN_DELAY_FORM.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_DR_REL------------
drop external table IF EXISTS TRN_DR_REL_INC_EXT;

create external table TRN_DR_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  DR_REG_TYPE      VARCHAR(1),
  DR_CUSTOMS_NO    VARCHAR(10)  ,
  DR_IC_NO         VARCHAR(10),
  DR_NAME          VARCHAR(20),
  DR_IDCARD_NO     VARCHAR(18),
  DR_GENDER        VARCHAR(1),
  DR_NATIVE        VARCHAR(20),
  DR_BIRTH_DATE    TIMESTAMP,
  CO_REG_NO        VARCHAR(9),
  CO_NAME          VARCHAR(255),
  MAIN_PORT        VARCHAR(4),
  DR_LIC_CUS       VARCHAR(4),
  DR_IE_CERF_NO    VARCHAR(30),
  DR_PERMIT_VE     VARCHAR(255),
  VALID_FLAG       VARCHAR(1),
  CK_FLAG          VARCHAR(1),
  VALID_DATE       TIMESTAMP,
  TRAIN_VALID_DATE TIMESTAMP,
  INPUT_DATE       TIMESTAMP,
  INPUT_OP_ID      VARCHAR(8),
  RESERV_FIELD     VARCHAR(10),
  NOTE_FIELD       VARCHAR(255),
  DR_IC_NO2        VARCHAR(16)
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_DR_REL.txt',
'gpfdist://mdw-2:8081/TRN_DR_REL.txt',
'gpfdist://mdw-3:8081/TRN_DR_REL.txt',
'gpfdist://mdw-4:8081/TRN_DR_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_ESEAL_REL------------
drop external table IF EXISTS TRN_ESEAL_REL_INC_EXT;

create external table TRN_ESEAL_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  ESEAL_ID      VARCHAR(20)  ,
  CUSTOMS_CODE  VARCHAR(4),
  CO_REG_NO     VARCHAR(9),
  CO_NAME       VARCHAR(255),
  VE_CUSTOMS_NO VARCHAR(10),
  VE_NAME       VARCHAR(32),
  INPUT_OP_ID   VARCHAR(8),
  INPUT_DATE    TIMESTAMP,
  VALID_FLAG    VARCHAR(1)
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_ESEAL_REL.txt',
'gpfdist://mdw-2:8081/TRN_ESEAL_REL.txt',
'gpfdist://mdw-3:8081/TRN_ESEAL_REL.txt',
'gpfdist://mdw-4:8081/TRN_ESEAL_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_EXAM_MAX_SEQ------------
drop external table IF EXISTS TRN_EXAM_MAX_SEQ_INC_EXT;

create external table TRN_EXAM_MAX_SEQ_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TYPE     CHAR(1)  ,
  YEARAREA VARCHAR(10)  ,
  MAX_SEQ  VARCHAR(6)
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_EXAM_MAX_SEQ.txt',
'gpfdist://mdw-2:8081/TRN_EXAM_MAX_SEQ.txt',
'gpfdist://mdw-3:8081/TRN_EXAM_MAX_SEQ.txt',
'gpfdist://mdw-4:8081/TRN_EXAM_MAX_SEQ.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_I_E_PORT------------
drop external table IF EXISTS TRN_I_E_PORT_INC_EXT;

create external table TRN_I_E_PORT_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  VE_CUSTOMS_NO VARCHAR(10)  ,
  MAIN_PORT     VARCHAR(4),
  I_E_PORT      VARCHAR(4)  ,
  INPUT_OP_ID   VARCHAR(8),
  INPUT_DATE    TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_I_E_PORT.txt',
'gpfdist://mdw-2:8081/TRN_I_E_PORT.txt',
'gpfdist://mdw-3:8081/TRN_I_E_PORT.txt',
'gpfdist://mdw-4:8081/TRN_I_E_PORT.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_PARAMETER------------
drop external table IF EXISTS TRN_PARAMETER_INC_EXT;

create external table TRN_PARAMETER_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOMS_CODE VARCHAR(4)  ,
  P_NAME       VARCHAR(32)  ,
  P_VALUE      VARCHAR(32),
  OPERATOR_NO  VARCHAR(8),
  MODI_DATE    TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_PARAMETER.txt',
'gpfdist://mdw-2:8081/TRN_PARAMETER.txt',
'gpfdist://mdw-3:8081/TRN_PARAMETER.txt',
'gpfdist://mdw-4:8081/TRN_PARAMETER.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_POP_COP_REL------------
drop external table IF EXISTS TRN_POP_COP_REL_INC_EXT;

create external table TRN_POP_COP_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  AGENT_CODE      VARCHAR(10)  ,
  AGENT_NAME      VARCHAR(255),
  CUSTOMS_CODE    VARCHAR(4)  ,
  OTHER_COP       VARCHAR(512),
  OTHER_RECV_PORT VARCHAR(255),
  VALID_FLAG      VARCHAR(1),
  OP_ER           VARCHAR(8),
  OP_DATE         TIMESTAMP
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_POP_COP_REL.txt',
'gpfdist://mdw-2:8081/TRN_POP_COP_REL.txt',
'gpfdist://mdw-3:8081/TRN_POP_COP_REL.txt',
'gpfdist://mdw-4:8081/TRN_POP_COP_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_POP_HEAD------------
drop external table IF EXISTS TRN_POP_HEAD_INC_EXT;

create external table TRN_POP_HEAD_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  APPLY_NO          VARCHAR(18)  ,
  CUSTOMS_CODE      VARCHAR(4),
  APPLY_MODE        VARCHAR(1),
  I_E_FLAG          VARCHAR(1),
  INPUT_OP_ID       VARCHAR(13),
  INPUT_DATE        TIMESTAMP,
  DECL_CO           VARCHAR(32),
  TRANS_PRE_NO      VARCHAR(18),
  EXAM_OP_ID        VARCHAR(8),
  EXAM_TIME         TIMESTAMP,
  EXAM_MARK         VARCHAR(1),
  REJECT_REASON     VARCHAR(255),
  PRE_NO_NEW        VARCHAR(16),
  APPL_NAME         VARCHAR(255),
  APPL_CODE         VARCHAR(10),
  CONTRACTOR        VARCHAR(255),
  CONTRACTOR_CODE   VARCHAR(10),
  TRAF_WAY          VARCHAR(1),
  CUSTOMS_NO        VARCHAR(13),
  TRANS_NO          VARCHAR(32),
  NATIVE_VOYAGE_NO  VARCHAR(32),
  BILL_COUNT        NUMERIC(9) ,
  CONTA_AMOUNT      NUMERIC(19,4) ,
  CONTA_INI_COUNT   NUMERIC(19,4) ,
  CONTA_EMPTY_COUNT NUMERIC(19,4) ,
  ESEAL_FLAG        VARCHAR(1),
  RECV_PORT         VARCHAR(4),
  MFT_GOODS_PIECE   NUMERIC(9) ,
  MFT_GROSS_WEIGHT  NUMERIC(19,4) ,
  TRN_MODE          VARCHAR(2),
  NOTE              VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_POP_HEAD.txt',
'gpfdist://mdw-2:8081/TRN_POP_HEAD.txt',
'gpfdist://mdw-3:8081/TRN_POP_HEAD.txt',
'gpfdist://mdw-4:8081/TRN_POP_HEAD.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_POP_LIST------------
drop external table IF EXISTS TRN_POP_LIST_INC_EXT;

create external table TRN_POP_LIST_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  APPLY_NO           VARCHAR(18)  ,
  RECORD_NUMBER      NUMERIC(19)  ,
  ENTRY_ID           VARCHAR(18),
  PRE_NO             VARCHAR(16),
  PROCESS_FLAG       VARCHAR(1),
  SELECT_FLAG        VARCHAR(1),
  BILL_REJECT_REASON VARCHAR(255),
  TRAF_MODE          VARCHAR(1),
  SHIP_ID            VARCHAR(32),
  SHIP_NAME_EN       VARCHAR(255),
  VOYAGE_NO          VARCHAR(32),
  BILL_NO            VARCHAR(32),
  PACK_NO            NUMERIC(9) ,
  GROSS_WT           NUMERIC(19,4) ,
  GOODS_COUNT        NUMERIC(9) ,
  CONTA_C            NUMERIC(9) ,
  OWNER_NAME         VARCHAR(255),
  CONTA_NO           VARCHAR(11),
  TRANS_NAME         VARCHAR(32),
  TRANS_WEIGHT       NUMERIC(19,4) ,
  CONTA_MODEL        VARCHAR(2),
  SEAL_NO            VARCHAR(10),
  SEAL_NUM           NUMERIC(9) ,
  ESEAL_ID           VARCHAR(128)
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_POP_LIST.txt',
'gpfdist://mdw-2:8081/TRN_POP_LIST.txt',
'gpfdist://mdw-3:8081/TRN_POP_LIST.txt',
'gpfdist://mdw-4:8081/TRN_POP_LIST.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_PRE_MAX_SEQ------------
drop external table IF EXISTS TRN_PRE_MAX_SEQ_INC_EXT;

create external table TRN_PRE_MAX_SEQ_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TYPE     CHAR(1)  ,
  YEARAREA VARCHAR(10)  ,
  MAX_SEQ  VARCHAR(6)
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_PRE_MAX_SEQ.txt',
'gpfdist://mdw-2:8081/TRN_PRE_MAX_SEQ.txt',
'gpfdist://mdw-3:8081/TRN_PRE_MAX_SEQ.txt',
'gpfdist://mdw-4:8081/TRN_PRE_MAX_SEQ.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_SHIP------------
drop external table IF EXISTS TRN_SHIP_INC_EXT;

create external table TRN_SHIP_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOM_NO     VARCHAR(8)  ,
  VALID_FLAG    VARCHAR(1),
  CK_FLAG       VARCHAR(1),
  MAN_CUSTOM_NO VARCHAR(4),
  DR_NAME       VARCHAR(32),
  CO_NAME       VARCHAR(255),
  SHIP_NO       VARCHAR(32),
  VALID_DATE    TIMESTAMP,
  OPERATOR_NO   VARCHAR(8),
  INPUT_DATE    TIMESTAMP,
  CO_ADDRESS    VARCHAR(255),
  CO_TELE       VARCHAR(32),
  CO_MAIL       VARCHAR(6),
  TRAF_FLAG     VARCHAR(1),
  TRAF_NOTE     VARCHAR(255)
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_SHIP.txt',
'gpfdist://mdw-2:8081/TRN_SHIP.txt',
'gpfdist://mdw-3:8081/TRN_SHIP.txt',
'gpfdist://mdw-4:8081/TRN_SHIP.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_VE_REL------------
drop external table IF EXISTS TRN_VE_REL_INC_EXT;

create external table TRN_VE_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  VE_CUSTOMS_NO  VARCHAR(10)  ,
  CAR_EC_NO      VARCHAR(20),
  VE_TYPE        VARCHAR(1),
  MAIN_PORT      VARCHAR(4),
  VE_NAME        VARCHAR(32),
  CO_REG_NO      VARCHAR(9),
  CO_NAME        VARCHAR(255),
  CK_FLAG        VARCHAR(1),
  VALID_FLAG     VARCHAR(1),
  VALID_DATE     TIMESTAMP,
  INPUT_DATE     TIMESTAMP,
  INPUT_OP_ID    VARCHAR(8),
  RESERV_FIELD   VARCHAR(10),
  VE_WT          NUMERIC(9),
  REG_TYPE       VARCHAR(1),
  VE_NO1         VARCHAR(10),
  VE_BELONG_AREA VARCHAR(1),
  VE_PROPERTY    VARCHAR(1),
  VE_BRAND       VARCHAR(8),
  VE_OILTANK_VOL NUMERIC(9),
  VE_INDEX_NO    VARCHAR(20),
  VE_IE_CERF_NO  VARCHAR(30),
  VE_COLOR       VARCHAR(10),
  VE_MOTOR_NO    VARCHAR(30),
  VE_FRAME_NO    VARCHAR(30),
  VE_TON         NUMERIC(9),
  NOTE_FIELD     VARCHAR(255),
  VE_IE_PORT     VARCHAR(255),
  GPS_ID         VARCHAR(20),
  SIM_1          VARCHAR(15),
  SIM_2          VARCHAR(15),
  GPS_PROVIDER   VARCHAR(255),
  GPS_FLAG       VARCHAR(1),
  TRANS_NO       VARCHAR(32)
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_VE_REL.txt',
'gpfdist://mdw-2:8081/TRN_VE_REL.txt',
'gpfdist://mdw-3:8081/TRN_VE_REL.txt',
'gpfdist://mdw-4:8081/TRN_VE_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------TRN_VEHICLE------------
drop external table IF EXISTS TRN_VEHICLE_INC_EXT;

create external table TRN_VEHICLE_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  CUSTOM_NO     VARCHAR(8)  ,
  VALID_FLAG    VARCHAR(1),
  CK_FLAG       VARCHAR(1),
  MAN_CUSTOM_NO VARCHAR(4),
  DR_NAME       VARCHAR(32),
  DR_SFZ        VARCHAR(18),
  CO_NAME       VARCHAR(255),
  CAR_NO        VARCHAR(12),
  CAR_EC_NO     VARCHAR(8),
  VALID_DATE    TIMESTAMP,
  OPERATOR_NO   VARCHAR(8),
  INPUT_DATE    TIMESTAMP,
  CO_ADDRESS    VARCHAR(255),
  CO_TELE       VARCHAR(32),
  CO_MAIL       VARCHAR(6),
  TRAF_FLAG     VARCHAR(1),
  TRAF_NOTE     VARCHAR(30)
)
LOCATION( 
'gpfdist://mdw-1:8081/TRN_VEHICLE.txt',
'gpfdist://mdw-2:8081/TRN_VEHICLE.txt',
'gpfdist://mdw-3:8081/TRN_VEHICLE.txt',
'gpfdist://mdw-4:8081/TRN_VEHICLE.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;


\echo --------------YD_DECLARE_REL------------
drop external table IF EXISTS YD_DECLARE_REL_INC_EXT;

create external table YD_DECLARE_REL_INC_EXT
(
  CMD_TYPE    VARCHAR(1),
  TRADE_CO     VARCHAR(10)  ,
  CUSTOMS_CODE VARCHAR(4)  
)
LOCATION( 
'gpfdist://mdw-1:8081/YD_DECLARE_REL.txt',
'gpfdist://mdw-2:8081/YD_DECLARE_REL.txt',
'gpfdist://mdw-3:8081/YD_DECLARE_REL.txt',
'gpfdist://mdw-4:8081/YD_DECLARE_REL.txt')
Format  'CSV'
(
DELIMITER  '|'
NULL  ''
QUOTE  '"'
ESCAPE  '"'
)
ENCODING  'UTF8'
LOG errors into error_table segment reject limit 10000;




select now(); 

