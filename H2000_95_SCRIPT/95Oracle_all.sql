---------------------------------------------------
-- Export file for user ALLSYS                   --
-- Created by admin_xiong on 2011-7-12, 15:27:27 --
---------------------------------------------------

spool structure.log

prompt
prompt Creating table ACCOUNT
prompt ======================
prompt
create table ALLSYS.ACCOUNT
(
  MANUAL_NO         VARCHAR2(12) not null,
  ID_STAT           VARCHAR2(2) not null,
  CONTR_NO          VARCHAR2(32),
  OWNER_NAME        VARCHAR2(255),
  LIMIT_DATE        DATE,
  ACCOUNT_AMT_RMB   NUMBER(19,5),
  ACCOUNT_AMT       NUMBER(19,5),
  ACCOUNT_AMT_ORG   NUMBER(19,5),
  ACCOUNT_CURR      VARCHAR2(3),
  IM_AMT            NUMBER(19,5),
  TAX_AMT           NUMBER(19,5),
  DEFER_TAX_AMT     NUMBER(19,5),
  DEAL_MARK         VARCHAR2(1),
  TYPE_ER           VARCHAR2(8),
  TYPE_DATE         DATE,
  BANK_NOTE_NO      VARCHAR2(32),
  BANK_OPEN_DATE    DATE,
  BANK_NOTE_DATE    DATE,
  APPR_DATE         DATE,
  BANK_ID           VARCHAR2(64),
  NEXT_FLAG         VARCHAR2(2),
  NOTE_S            VARCHAR2(255),
  GUA_ID            VARCHAR2(32),
  GUA_APPL_DATE     DATE,
  GUA_OPEN_DATE     DATE,
  GUA_APPR_DATE     DATE,
  GUA_REGISTER_ER   VARCHAR2(8),
  GUA_REGISTER_DATE DATE,
  GUA_COPY          NUMBER(19),
  GUA_TYPE          VARCHAR2(1),
  GUA_OWNER_NAME    VARCHAR2(32),
  GUA_LIMIT_DATE    DATE,
  GUARANTEE_ADD     NUMBER(19,5),
  GUARANTEE_AMT     NUMBER(19,5),
  GUARANTEE_CURR    VARCHAR2(3),
  GUARANTEE_RMB     NUMBER(19,5),
  GUARANTEE_ORG     VARCHAR2(70),
  GUA_MARK          VARCHAR2(1),
  PROCESS_MARK      VARCHAR2(5),
  PROCESS_ER        VARCHAR2(8),
  PROCESS_DATE      DATE,
  OTHER_AMT         NUMBER(19,5),
  OTHER_NO          VARCHAR2(20),
  SEQ_NO            VARCHAR2(12),
  DOCUMENT_NO       VARCHAR2(12),
  DOCUMENT_DATE     DATE,
  DOCUMENT_MARK     VARCHAR2(1),
  DOCUMENT_ER       VARCHAR2(8),
  NOTE_MARK         VARCHAR2(10),
  PORT_CODE         VARCHAR2(4),
  ZQ_PRINT_FLAG     VARCHAR2(1),
  SECRECT_KEY       VARCHAR2(16)
)
;
alter table ALLSYS.ACCOUNT
  add constraint PK_ACCOUNT primary key (MANUAL_NO, ID_STAT);

prompt
prompt Creating table AGREEMENT_GOODS_LIST
prompt ===================================
prompt
create table ALLSYS.AGREEMENT_GOODS_LIST
(
  ENTRY_ID       VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  D_DATE         DATE,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  AGREEMENT_ID   VARCHAR2(2),
  QTY_1          NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  ORIGIN_COUNTRY VARCHAR2(3),
  RMB_PRICE      NUMBER(19,5),
  USD_PRICE      NUMBER(19,5),
  CREATE_DATE    DATE
)
;
alter table ALLSYS.AGREEMENT_GOODS_LIST
  add constraint PK_AGREEMENT_GOODS_LIST primary key (ENTRY_ID, G_NO);
create index ALLSYS.IDX_AGREEMENTGOODSLIST_D_DATE on ALLSYS.AGREEMENT_GOODS_LIST (D_DATE, AGREEMENT_ID, CODE_TS, QTY_1);

prompt
prompt Creating table AMSLIST_BODY
prompt ===========================
prompt
create table ALLSYS.AMSLIST_BODY
(
  LIST_ID        VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  CONTR_ITEM     NUMBER(19),
  DECL_PRICE     NUMBER(19,5),
  REF_VALUE      NUMBER(19,5),
  CUS_VALUE      NUMBER(19,4),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  DUTY_VALUE     NUMBER(19),
  TARIFF_MARK    VARCHAR2(32),
  DUTY_TYPE      VARCHAR2(1),
  REAL_DUTY      NUMBER(19,4),
  DUTY_CUT       NUMBER(19,4),
  DUTY_RATE      NUMBER(19,5),
  D_RATE         NUMBER(19,5),
  QTY_DUTY_RATE  NUMBER(19,5),
  QTY_D_RATE     NUMBER(19,5),
  TAX_TYPE       VARCHAR2(1),
  REAL_TAX       NUMBER(19,4),
  TAX_CUT        NUMBER(19,4),
  TAX_RATE       NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  QTY_TAX_RATE   NUMBER(19,5),
  QTY_T_RATE     NUMBER(19,5)
)
;
alter table ALLSYS.AMSLIST_BODY
  add constraint PK_AMSLIST_BODY primary key (LIST_ID, G_NO);

prompt
prompt Creating table AMSLIST_HEAD
prompt ===========================
prompt
create table ALLSYS.AMSLIST_HEAD
(
  LIST_ID       VARCHAR2(18) not null,
  LIST_TYPE     VARCHAR2(1),
  REC_ID        VARCHAR2(12),
  COP_LIST_ID   VARCHAR2(20),
  CHK_ID        VARCHAR2(70),
  D_DATE        DATE,
  TAX_DATE      VARCHAR2(6),
  TRADE_CODE    VARCHAR2(10),
  TRADE_NAME    VARCHAR2(255),
  OWNER_CODE    VARCHAR2(10),
  OWNER_NAME    VARCHAR2(255),
  PAYER_CODE    VARCHAR2(10),
  PAYER_NAME    VARCHAR2(70),
  CUT_MODE      VARCHAR2(3),
  TRANS_MODE    VARCHAR2(1),
  MANUAL_NO     VARCHAR2(12),
  CODE_TS       VARCHAR2(16),
  AUTO_RATE     NUMBER(19,5),
  LOW_RATE      VARCHAR2(1),
  SET_COUNT     NUMBER(19),
  HAVE_PAY      VARCHAR2(1),
  USE_TO        VARCHAR2(1),
  NOTE          VARCHAR2(255),
  INPUTER_IC_ID VARCHAR2(18),
  INPUTER_NAME  VARCHAR2(30),
  INPUT_DATE    DATE,
  PRE_AMS_NO    VARCHAR2(12),
  PROC_FLAG     VARCHAR2(1),
  PROC_DATE     DATE,
  PROC_ER       VARCHAR2(8),
  PROC_NOTE     VARCHAR2(255),
  LOG_FLAG      VARCHAR2(18),
  LOG_DATE      DATE,
  LOG_ER        VARCHAR2(8),
  CHK_FLAG      VARCHAR2(1),
  CHK_ER        VARCHAR2(8),
  CHK_DATE      DATE
)
;
alter table ALLSYS.AMSLIST_HEAD
  add constraint PK_AMSLIST_HEAD primary key (LIST_ID);
create index ALLSYS.IX_AMSLISTHEAD_LOGFLAG on ALLSYS.AMSLIST_HEAD (LOG_FLAG);

prompt
prompt Creating table AMS_MODI_LOG
prompt ===========================
prompt
create table ALLSYS.AMS_MODI_LOG
(
  EMS_NO       VARCHAR2(12) not null,
  OP_TIME      DATE not null,
  MODI_TYPE    NUMBER(19) not null,
  ITEM_NAME    VARCHAR2(255) not null,
  ITEM_SOURCE  VARCHAR2(255),
  ITEM_CURRENT VARCHAR2(255),
  OP_ER        VARCHAR2(8),
  NOTE         VARCHAR2(255)
)
;
alter table ALLSYS.AMS_MODI_LOG
  add constraint PK_AMS_MODI_LOG primary key (EMS_NO, OP_TIME, MODI_TYPE, ITEM_NAME);

prompt
prompt Creating table APPLY_HEAD
prompt =========================
prompt
create table ALLSYS.APPLY_HEAD
(
  APPL_NO      VARCHAR2(16) not null,
  CONTACT_NO   VARCHAR2(16),
  INPUT_DATE   DATE,
  CONTR_NO     VARCHAR2(40),
  LICENSE_NO   VARCHAR2(20),
  MANUAL_NO    VARCHAR2(12),
  TRADE_MODE   VARCHAR2(4),
  OWNER_NAME   VARCHAR2(255),
  OWNER_TELE   VARCHAR2(32),
  OWNER_CONT   VARCHAR2(32),
  VALID_TIME   DATE,
  PRE_TIMES    NUMBER(9),
  IMPORT_TIMES NUMBER(9),
  REC_MARK     VARCHAR2(1),
  INPUT_OP_ID  VARCHAR2(8),
  EXAM_OP_ID   VARCHAR2(8),
  EXAM_TIME    DATE,
  DEL_OP_ID    VARCHAR2(8),
  DEL_TIME     DATE,
  DEL_REASON   VARCHAR2(1),
  CHECK_OP_ID  VARCHAR2(8),
  CHECK_TIME   DATE,
  CHECK_MARK   VARCHAR2(1),
  GOODS_NOTE   VARCHAR2(255),
  DELI_MARK    VARCHAR2(1),
  DELI_TIME    DATE,
  PRE_FIEL     VARCHAR2(32),
  SEND_PORT    VARCHAR2(4),
  RECV_PORT    VARCHAR2(4),
  TRANS_PRE_NO VARCHAR2(18),
  CA_KEY       VARCHAR2(380),
  HASH_SIGN    VARCHAR2(380)
)
;
alter table ALLSYS.APPLY_HEAD
  add constraint PK_APPLY_HEAD primary key (APPL_NO);
create index ALLSYS.IDX_APPLY_HEAD_CONTACT_NO on ALLSYS.APPLY_HEAD (CONTACT_NO);
create index ALLSYS.IDX_APPLY_HEAD_RECV on ALLSYS.APPLY_HEAD (RECV_PORT, EXAM_TIME);
create index ALLSYS.IDX_APPLY_HEAD_SEND on ALLSYS.APPLY_HEAD (SEND_PORT, EXAM_TIME);
create index ALLSYS.IDX_APPLY_HEAD_TRANS_PRE_NO on ALLSYS.APPLY_HEAD (TRANS_PRE_NO);

prompt
prompt Creating table APPLY_LIST
prompt =========================
prompt
create table ALLSYS.APPLY_LIST
(
  APPL_NO      VARCHAR2(16) not null,
  CONTACT_NO   VARCHAR2(16),
  G_NO         NUMBER(9) not null,
  CODE_TS      VARCHAR2(16),
  G_NAME       VARCHAR2(255),
  PACK_TYPE    VARCHAR2(1),
  GOODS_PIECE  NUMBER(9) default 0,
  GOODS_AMOUNT NUMBER(19,4) default 0,
  GOODS_WEIGHT NUMBER(19,4) default 0,
  GOODS_PRICE  NUMBER(19,4) default 0
)
;
alter table ALLSYS.APPLY_LIST
  add constraint PK_APPLY_LIST primary key (APPL_NO, G_NO);
create index ALLSYS.IDX_APPLY_LIST_CONTACT_NO on ALLSYS.APPLY_LIST (CONTACT_NO);

prompt
prompt Creating table APPL_CLOSE
prompt =========================
prompt
create table ALLSYS.APPL_CLOSE
(
  MANUAL_NO      VARCHAR2(12) not null,
  APPL_NO        NUMBER(19),
  APPL_DATE      DATE,
  DECL_IN_AMT    NUMBER(19,5),
  DECL_EX_AMT    NUMBER(19,5),
  DECL_IN_COUNT  NUMBER(19),
  DECL_EX_COUNT  NUMBER(19),
  REMAIN_IN_AMT  NUMBER(19,4),
  REMAIN_EX_AMT  NUMBER(19,4),
  RESOR_IN_COUNT NUMBER(19),
  PRODU_IN_COUNT NUMBER(19),
  RESOR_EX_COUNT NUMBER(19),
  PRODU_EX_COUNT NUMBER(19),
  RESOR_IN_AMT   NUMBER(19,4),
  PRODU_IN_AMT   NUMBER(19,4),
  RESOR_EX_AMT   NUMBER(19,4),
  PRODU_EX_AMT   NUMBER(19,4),
  DC_DATE        DATE,
  TYPE_ER        VARCHAR2(8),
  DECL_CO        VARCHAR2(6),
  CHK_ER         VARCHAR2(8),
  RECHK_ER       VARCHAR2(8),
  CHK_DATE       DATE,
  RECHK_DATE     DATE,
  NOTE_S         VARCHAR2(255)
)
;
alter table ALLSYS.APPL_CLOSE
  add constraint PK_APPL_CLOSE primary key (MANUAL_NO);

prompt
prompt Creating table APPL_CLOSE_CONSUME
prompt =================================
prompt
create table ALLSYS.APPL_CLOSE_CONSUME
(
  MANUAL_NO    VARCHAR2(12) not null,
  CONTR_ITEM   NUMBER(19) not null,
  CODE_TS      VARCHAR2(16),
  G_NAME       VARCHAR2(32),
  G_MODEL      VARCHAR2(32),
  EX_NO        NUMBER(19) not null,
  DECL_CONSUME NUMBER(19,10),
  DECL_DAMAGE  NUMBER(19,10)
)
;
alter table ALLSYS.APPL_CLOSE_CONSUME
  add constraint PK_APPL_CLOSE_CONSUME primary key (MANUAL_NO, CONTR_ITEM, EX_NO);

prompt
prompt Creating table ARRIVAL_INFO_HEAD
prompt ================================
prompt
create table ALLSYS.ARRIVAL_INFO_HEAD
(
  VOYAGE_NO     VARCHAR2(32) not null,
  SHIP_ID       VARCHAR2(32) not null,
  I_E_DATE      DATE not null,
  CUSTOMS_CODE  VARCHAR2(4) not null,
  TRAF_MODE     VARCHAR2(1) not null,
  I_E_FLAG      VARCHAR2(1),
  VOYAGE_NO_MOD VARCHAR2(32),
  ARRIVE_DATE   DATE,
  RECV_DATE     DATE,
  SEQ_NO        VARCHAR2(18)
)
;
alter table ALLSYS.ARRIVAL_INFO_HEAD
  add constraint PK_ARRIVAL_INFO_HEAD primary key (VOYAGE_NO, SHIP_ID, I_E_DATE, CUSTOMS_CODE, TRAF_MODE);
create index ALLSYS.IDX_ARRIVAL_HEAD_RECV_DATE on ALLSYS.ARRIVAL_INFO_HEAD (ARRIVE_DATE);

prompt
prompt Creating table ARRIVAL_INFO_LIST
prompt ================================
prompt
create table ALLSYS.ARRIVAL_INFO_LIST
(
  BILL_NO         VARCHAR2(32) not null,
  VOYAGE_NO       VARCHAR2(32) not null,
  SHIP_ID         VARCHAR2(32) not null,
  I_E_DATE        DATE not null,
  CUSTOMS_CODE    VARCHAR2(4) not null,
  TRAF_MODE       VARCHAR2(1) not null,
  I_E_FLAG        VARCHAR2(1),
  VOYAGE_NO_MOD   VARCHAR2(32),
  ARRIVE_DATE     DATE,
  RECV_DATE       DATE,
  DISCHARGE_PLACE VARCHAR2(8),
  TAL_FLAG        VARCHAR2(1),
  PACK_NO         NUMBER(19,5),
  GROSS_WT        NUMBER(19,5),
  SEQ_NO          VARCHAR2(18)
)
;
alter table ALLSYS.ARRIVAL_INFO_LIST
  add constraint PK_ARRIVAL_INFO_LIST primary key (BILL_NO, VOYAGE_NO, SHIP_ID, I_E_DATE, CUSTOMS_CODE, TRAF_MODE);
create index ALLSYS.IDX_ARRIVAL_LIST_RECV_DATE on ALLSYS.ARRIVAL_INFO_LIST (ARRIVE_DATE);

prompt
prompt Creating table BACKUP_EMS_CONSUME
prompt =================================
prompt
create table ALLSYS.BACKUP_EMS_CONSUME
(
  EMS_NO       VARCHAR2(12) not null,
  EXG_NO       NUMBER(19) not null,
  EXG_VERSION  VARCHAR2(32) not null,
  IMG_NO       NUMBER(19) not null,
  MODIFY_TIMES NUMBER(19) not null,
  DEC_CM       NUMBER(19,9),
  DEC_DM       NUMBER(19,9),
  OTHER_CM     NUMBER(19,9),
  OTHER_DM     NUMBER(19,9),
  CM_MARK      VARCHAR2(1),
  PRODUCT_MARK VARCHAR2(10),
  PRODUCT_TYPE VARCHAR2(1),
  MODIFY_MARK  VARCHAR2(1),
  CONTROL_MARK VARCHAR2(1),
  NOTE         VARCHAR2(10),
  ETL_MARK     VARCHAR2(1)
)
;

prompt
prompt Creating table BAK1_EMS_CLR_LIST
prompt ================================
prompt
create table ALLSYS.BAK1_EMS_CLR_LIST
(
  EMS_NO         VARCHAR2(12) not null,
  DCR_TIMES      NUMBER(19) not null,
  G_TYPE         VARCHAR2(1) not null,
  G_NO           NUMBER(19) not null,
  DU_CODE        VARCHAR2(4) not null,
  ITEMS_NO       NUMBER(19),
  QTY            NUMBER(19,5),
  AMOUNT         NUMBER(19,5),
  WEIGHT         NUMBER(19,5),
  DU_MARK        VARCHAR2(1),
  NOTE_1         VARCHAR2(1),
  NOTE           VARCHAR2(255),
  I_E_FLAG       VARCHAR2(1),
  TRADE_MODE     VARCHAR2(4),
  PARENT_DU_CODE VARCHAR2(4),
  DISPSUB        VARCHAR2(1)
)
;

prompt
prompt Creating table BAK1_EMS_CONSUME
prompt ===============================
prompt
create table ALLSYS.BAK1_EMS_CONSUME
(
  EMS_NO       VARCHAR2(12) not null,
  EXG_NO       NUMBER(19) not null,
  EXG_VERSION  VARCHAR2(32) not null,
  IMG_NO       NUMBER(19) not null,
  MODIFY_TIMES NUMBER(19) not null,
  DEC_CM       NUMBER(19,9),
  DEC_DM       NUMBER(19,9),
  OTHER_CM     NUMBER(19,9),
  OTHER_DM     NUMBER(19,9),
  CM_MARK      VARCHAR2(1),
  PRODUCT_MARK VARCHAR2(10),
  PRODUCT_TYPE VARCHAR2(1),
  MODIFY_MARK  VARCHAR2(1),
  CONTROL_MARK VARCHAR2(1),
  NOTE         VARCHAR2(10),
  ETL_MARK     VARCHAR2(1)
)
;

prompt
prompt Creating table BAK1_EMS_DCR_ENT
prompt ===============================
prompt
create table ALLSYS.BAK1_EMS_DCR_ENT
(
  EMS_NO         VARCHAR2(12) not null,
  DCR_TIMES      NUMBER(19) not null,
  ENTRY_ID       VARCHAR2(18) not null,
  MASTER_CUSTOMS VARCHAR2(4),
  I_E_FLAG       VARCHAR2(1),
  ITEMS_NUM      NUMBER(19),
  DECLARE_DATE   DATE,
  I_E_DATE       DATE,
  DU_CODE        VARCHAR2(2),
  ENT_MARK       VARCHAR2(1),
  NOTE           VARCHAR2(255),
  MODIFY_MARK    VARCHAR2(1)
)
;

prompt
prompt Creating table BAK1_EMS_DCR_HEAD
prompt ================================
prompt
create table ALLSYS.BAK1_EMS_DCR_HEAD
(
  EMS_NO            VARCHAR2(12) not null,
  DCR_TIMES         NUMBER(19) not null,
  DCR_TYPE          VARCHAR2(1),
  BEGIN_DATE        DATE,
  END_DATE          DATE,
  ENTRY_I_NUM       NUMBER(19),
  ENTRY_E_NUM       NUMBER(19),
  IMG_NUM           NUMBER(19),
  EXG_NUM           NUMBER(19),
  IMR_NUM           NUMBER(19),
  EXR_NUM           NUMBER(19),
  ID_CARD           VARCHAR2(20),
  ID_CARD_PWD       VARCHAR2(20),
  INPUT_DATE        DATE,
  INPUT_ER          VARCHAR2(8),
  DCR_DATE          DATE,
  EMS_APPR_MARK     VARCHAR2(10),
  EMS_CERTIFY       VARCHAR2(10),
  NOTE_1            VARCHAR2(1),
  NOTE_AMOUNT       NUMBER(19,5),
  NOTE_QTY          NUMBER(19,5),
  NOTE              VARCHAR2(255),
  DCR_MARK          VARCHAR2(1),
  DECLARE_MARK      VARCHAR2(1),
  CHK_MARK          VARCHAR2(1),
  CHK_DATE          DATE,
  PRINT_DATE        DATE,
  PRINT_MARK        VARCHAR2(1),
  RETURN_DATE       DATE,
  RETURN_MARK       VARCHAR2(1),
  NOTE_MARK         VARCHAR2(1),
  PROCESS_MARK      VARCHAR2(10),
  MESSAGE_TYPE      VARCHAR2(8),
  DIGITAL_SIGN_MARK VARCHAR2(1),
  DIGITAL_SIGN_LEN  VARCHAR2(255),
  DIGITAL_SIGN      VARCHAR2(262),
  DECL_IN_AMT       NUMBER(19,5),
  DECL_EX_AMT       NUMBER(19,5)
)
;

prompt
prompt Creating table BAK1_EMS_DCR_LIST
prompt ================================
prompt
create table ALLSYS.BAK1_EMS_DCR_LIST
(
  EMS_NO             VARCHAR2(12) not null,
  DCR_TIMES          NUMBER(19) not null,
  G_TYPE             VARCHAR2(1) not null,
  G_NO               NUMBER(19) not null,
  GR_QTY             NUMBER(19,5),
  GR_AMOUNT          NUMBER(19,5),
  GR_WEIGHT          NUMBER(19,5),
  REMAIN_QTY         NUMBER(19,5),
  REMAIN_AMOUNT      NUMBER(19,5),
  REMAIN_WEIGHT      NUMBER(19,5),
  CM_QTY             NUMBER(19,5),
  CM_AMOUNT          NUMBER(19,5),
  CM_WEIGHT          NUMBER(19,5),
  FACT_REMAIN_QTY    NUMBER(19,5),
  FACT_REMAIN_AMOUNT NUMBER(19,5),
  FACT_REMAIN_WEIGHT NUMBER(19,5),
  NOTE_1             VARCHAR2(1),
  NOTE_2             VARCHAR2(1),
  NOTE               VARCHAR2(255),
  MODIFY_MARK        VARCHAR2(1),
  FACT_QTY           NUMBER(19,5),
  T_QTY              NUMBER(19,5),
  IN_QTY             NUMBER(19,5),
  REX_QTY            NUMBER(19,5),
  DISCLAIM_QTY       NUMBER(19,5),
  REMAIN_T_QTY       NUMBER(19,5),
  EXCHANGE_EX_QTY    NUMBER(19,5),
  EXCHANGE_IM_QTY    NUMBER(19,5)
)
;

prompt
prompt Creating table BAK1_EMS_DEDUCT
prompt ==============================
prompt
create table ALLSYS.BAK1_EMS_DEDUCT
(
  ENTRY_ID    VARCHAR2(18) not null,
  EMS_NO      VARCHAR2(12) not null,
  G_TYPE      VARCHAR2(1) not null,
  EMS_G_NO    NUMBER(19),
  ENTRY_G_NO  NUMBER(19) not null,
  EXG_VERSION VARCHAR2(32),
  IN_QTY      NUMBER(19,5),
  I_ACCOUNT   NUMBER(19,5),
  I_WT        NUMBER(19,5),
  I_E_FLAG    VARCHAR2(1),
  I_CURR      VARCHAR2(4),
  I_E_PORT    VARCHAR2(255),
  TRADE_MODE  VARCHAR2(4),
  TRAF_MODE   VARCHAR2(1),
  VERIFY_MODE VARCHAR2(2),
  VERIFY_DATE DATE,
  VERIFY_ER   VARCHAR2(8),
  JOU_MARK    VARCHAR2(1),
  I_E_DATE    DATE,
  USD_ACCOUNT NUMBER(19,5)
)
;

prompt
prompt Creating table BAK1_EMS_DEDUCT_LOG
prompt ==================================
prompt
create table ALLSYS.BAK1_EMS_DEDUCT_LOG
(
  ENTRY_ID    VARCHAR2(18) not null,
  EMS_NO      VARCHAR2(12) not null,
  CREATE_DATE DATE not null,
  JOU_MARK    VARCHAR2(1) not null,
  NOTE        VARCHAR2(1),
  VERIFY_ER   VARCHAR2(8)
)
;

prompt
prompt Creating table BAK1_EMS_HEAD
prompt ============================
prompt
create table ALLSYS.BAK1_EMS_HEAD
(
  EMS_NO            VARCHAR2(12) not null,
  MODIFY_TIMES      NUMBER(19) not null,
  PRE_EMS_NO        VARCHAR2(12),
  COP_EMS_NO        VARCHAR2(20),
  TRADE_CODE        VARCHAR2(10),
  TRADE_NAME        VARCHAR2(255),
  HOUSE_NO          VARCHAR2(12),
  OWNER_CODE        VARCHAR2(10),
  OWNER_NAME        VARCHAR2(255),
  OWNER_TYPE        VARCHAR2(1),
  DECLARE_ER_TYPE   VARCHAR2(1),
  DECLARE_CODE      VARCHAR2(10),
  DECLARE_NAME      VARCHAR2(255),
  DISTRICT_CODE     VARCHAR2(5),
  ADDRESS           VARCHAR2(255),
  PHONE             VARCHAR2(20),
  EMS_TYPE          VARCHAR2(1),
  DECLARE_TYPE      VARCHAR2(1),
  APPEND_TYPE       VARCHAR2(1),
  INVEST_MODE       VARCHAR2(1),
  TRADE_MODE        VARCHAR2(4),
  BEGIN_DATE        DATE,
  END_DATE          DATE,
  IMG_AMOUNT        NUMBER(19,5),
  EXG_AMOUNT        NUMBER(19,5),
  IMG_WEIGHT        NUMBER(19,5),
  EXG_WEIGHT        NUMBER(19,5),
  STORE_VOL         NUMBER(19,5),
  STORE_AREA        NUMBER(19,5),
  IMG_ITEMS         NUMBER(19),
  EXG_ITEMS         NUMBER(19),
  EMS_APPR_NO       VARCHAR2(40),
  LICENSE_NO        VARCHAR2(20),
  LAST_EMS_NO       VARCHAR2(12),
  CORR_EMS_NO       VARCHAR2(12),
  CONTR_NO          VARCHAR2(20),
  ID_CARD           VARCHAR2(20),
  ID_CARD_PWD       VARCHAR2(20),
  NOTE_1            VARCHAR2(10),
  NOTE_2            VARCHAR2(10),
  INVEST_AMOUNT     NUMBER(19,5),
  NOTE_AMOUNT       NUMBER(19,5),
  NOTE_QTY          NUMBER(19,5),
  NOTE              VARCHAR2(256),
  INPUT_DATE        DATE,
  INPUT_ER          VARCHAR2(8),
  DECLARE_DATE      DATE,
  EMS_APPR_MARK     VARCHAR2(10),
  EMS_CERTIFY       VARCHAR2(10),
  PRODUCT_RATIO     NUMBER(19,5),
  MODIFY_MARK       VARCHAR2(1),
  DECLARE_MARK      VARCHAR2(1),
  CHK_MARK          VARCHAR2(1),
  EXE_MARK          VARCHAR2(1),
  NEW_APPR_DATE     DATE,
  CNG_APPR_DATE     DATE,
  CLEAR_DATE        DATE,
  SIGN_DATE         DATE,
  SIGN_COPY         NUMBER(19),
  PRINT_DATE        DATE,
  PRINT_MARK        VARCHAR2(1),
  RETURN_DATE       DATE,
  RETURN_MARK       VARCHAR2(1),
  EMS_ACE_MARK      VARCHAR2(32),
  H883_ACE_MARK     VARCHAR2(32),
  CONTROL_MARK      VARCHAR2(32),
  PROCESS_MARK      VARCHAR2(32),
  CLEAR_MODE        VARCHAR2(1),
  CLEAR_TERM        NUMBER(19),
  CLEAR_MARK        VARCHAR2(32),
  CLEAR_TIMES       NUMBER(19),
  SERVICE_FEE_MARK  VARCHAR2(1),
  SERVICE_FEE_RATE  NUMBER(19,5),
  SERVICE_FEE       NUMBER(19,5),
  FILE_NO           VARCHAR2(20),
  RECORDER_NO       VARCHAR2(20),
  DOCUMENT_NO       VARCHAR2(20),
  MASTER_CUSTOMS    VARCHAR2(4),
  I_E_PORT          VARCHAR2(255),
  FOREIGN_CO_NAME   VARCHAR2(255),
  AGREE_NO          VARCHAR2(32),
  CUT_MODE          VARCHAR2(4),
  PAY_MODE          VARCHAR2(1),
  PRODUCE_TYPE      VARCHAR2(2),
  CONTR_OUT         VARCHAR2(32),
  MESSAGE_TYPE      VARCHAR2(8),
  EPORT_ID          VARCHAR2(18),
  DIGITAL_SIGN_MARK VARCHAR2(1),
  DIGITAL_SIGN_LEN  VARCHAR2(255),
  DIGITAL_SIGN      VARCHAR2(262),
  ETL_MARK          VARCHAR2(1),
  I_DATE            DATE,
  IMGED_AMOUNT      NUMBER(19,5),
  CLEAR_APPR_MARK   VARCHAR2(1),
  CLEAR_APPL_DATE   DATE,
  CLOSE_MARK        VARCHAR2(1),
  CLOSE_DATE        DATE,
  CHECK_MARK        VARCHAR2(1),
  CHECK_RESULT      VARCHAR2(255),
  FOREIGN_MGR       VARCHAR2(32),
  TRANS_MODE        VARCHAR2(1),
  TRADE_COUNTRY     VARCHAR2(3),
  EQUIP_MODE        VARCHAR2(1),
  IN_RATIO          NUMBER(19,4),
  EX_CURR           VARCHAR2(3),
  IM_CURR           VARCHAR2(3),
  OPER_MARK         VARCHAR2(32),
  FACT_DEV_AMT      NUMBER(19,5),
  APPR_IMG_AMT      NUMBER(19,5),
  APPR_EXG_AMT      NUMBER(19,5),
  CLOSE_RESULT      VARCHAR2(32),
  DEDUCT_DATE       DATE,
  ACCOUNT_FLAG      VARCHAR2(2),
  HT_APPR_IMG_AMT   NUMBER(19,5),
  CASE_MARK         VARCHAR2(1)
)
;

prompt
prompt Creating table BAK1_EMS_LIST
prompt ============================
prompt
create table ALLSYS.BAK1_EMS_LIST
(
  EMS_NO        VARCHAR2(12) not null,
  G_TYPE        VARCHAR2(1) not null,
  G_NO          NUMBER(19) not null,
  MODIFY_TIMES  NUMBER(19) not null,
  COP_G_NO      VARCHAR2(30),
  CODE_TS       VARCHAR2(10),
  CLASS_MARK    VARCHAR2(1),
  G_NAME        VARCHAR2(255),
  G_MODEL       VARCHAR2(255),
  UNIT          VARCHAR2(3),
  UNIT_1        VARCHAR2(3),
  UNIT_2        VARCHAR2(3),
  COUNTRY_CODE  VARCHAR2(4),
  SOURCE_MARK   VARCHAR2(1),
  DEC_PRICE     NUMBER(19,5),
  CURR          VARCHAR2(4),
  DEC_PRICE_RMB NUMBER(19,4),
  FACTOR_1      NUMBER(19,4),
  FACTOR_2      NUMBER(19,4),
  FACTOR_WT     NUMBER(19,4),
  FACTOR_RATE   NUMBER(19,5),
  QTY           NUMBER(19,5),
  MAX_QTY       NUMBER(19,5),
  FIRST_QTY     NUMBER(19,5),
  I_E_TYPE      VARCHAR2(1),
  USE_TYPE      VARCHAR2(10),
  NOTE_1        VARCHAR2(1),
  NOTE_2        VARCHAR2(1),
  NOTE          VARCHAR2(10),
  MODIFY_MARK   VARCHAR2(1),
  G_MERGE       VARCHAR2(10),
  G_TRADE       VARCHAR2(10),
  QTY_MARK      VARCHAR2(1),
  INC_AMOUNT    NUMBER(19,5),
  INC_QTY       NUMBER(19,5),
  INC_WT        NUMBER(19,5),
  CUT_AMOUNT    NUMBER(19,5),
  CUT_QTY       NUMBER(19,5),
  CUT_WT        NUMBER(19,5),
  CM_AMOUNT     NUMBER(19,5),
  CM_QTY        NUMBER(19,5),
  CM_WT         NUMBER(19,5),
  CLR_INC_QTY   NUMBER(19,5),
  CLR_CUT_QTY   NUMBER(19,5),
  DUTY_MODE     VARCHAR2(1),
  DUTY_RATE     NUMBER(19,5),
  CHK_PRICE     NUMBER(19,5),
  PROCESS_MARK  VARCHAR2(10),
  ENTRY_ID      VARCHAR2(18),
  LIMIT_DATE    DATE,
  ETL_MARK      VARCHAR2(1),
  USD_PRICE     NUMBER(19,5),
  APPR_AMT      NUMBER(19,5)
)
;

prompt
prompt Creating table BAK1_ENTRY_CERTIFICATE_1213
prompt ==========================================
prompt
create table ALLSYS.BAK1_ENTRY_CERTIFICATE_1213
(
  ENTRY_ID  VARCHAR2(18) not null,
  DOCU_CODE VARCHAR2(1) not null,
  CERT_CODE VARCHAR2(32) not null
)
;

prompt
prompt Creating table BAK1_ENTRY_CONTAINER_1213
prompt ========================================
prompt
create table ALLSYS.BAK1_ENTRY_CONTAINER_1213
(
  ENTRY_ID     VARCHAR2(18) not null,
  CONTAINER_ID VARCHAR2(32) not null,
  CONTAINER_WT NUMBER(19,5)
)
;

prompt
prompt Creating table BAK1_ENTRY_HEAD_1213
prompt ===================================
prompt
create table ALLSYS.BAK1_ENTRY_HEAD_1213
(
  ENTRY_ID           VARCHAR2(18) not null,
  PRE_ENTRY_ID       VARCHAR2(18),
  ID_CHK             VARCHAR2(1),
  I_E_FLAG           VARCHAR2(1),
  I_E_PORT           VARCHAR2(4),
  I_E_DATE           DATE,
  D_DATE             DATE,
  DESTINATION_PORT   VARCHAR2(4),
  TRAF_NAME          VARCHAR2(255),
  VOYAGE_NO          VARCHAR2(32),
  TRAF_MODE          VARCHAR2(1),
  TRADE_CO           VARCHAR2(10),
  TRADE_NAME         VARCHAR2(255),
  DISTRICT_CODE      VARCHAR2(5),
  OWNER_CODE         VARCHAR2(10),
  OWNER_NAME         VARCHAR2(255),
  AGENT_CODE         VARCHAR2(10),
  AGENT_NAME         VARCHAR2(255),
  CONTR_NO           VARCHAR2(32),
  IN_RATIO           NUMBER(19,5),
  BILL_NO            VARCHAR2(32),
  TRADE_COUNTRY      VARCHAR2(3),
  TRADE_MODE         VARCHAR2(4),
  CUT_MODE           VARCHAR2(3),
  TRANS_MODE         VARCHAR2(1),
  CONTAINER_NO       NUMBER(19,4),
  PAY_WAY            VARCHAR2(1),
  FEE_MARK           VARCHAR2(1),
  FEE_CURR           VARCHAR2(3),
  FEE_RATE           NUMBER(19,5),
  INSUR_MARK         VARCHAR2(1),
  INSUR_CURR         VARCHAR2(3),
  INSUR_RATE         NUMBER(19,5),
  OTHER_MARK         VARCHAR2(1),
  OTHER_CURR         VARCHAR2(3),
  OTHER_RATE         NUMBER(19,5),
  PACK_NO            NUMBER(19),
  GROSS_WT           NUMBER(19,5),
  NET_WT             NUMBER(19,5),
  WRAP_TYPE          VARCHAR2(32),
  MANUAL_NO          VARCHAR2(12),
  LICENSE_NO         VARCHAR2(20),
  APPR_NO            VARCHAR2(32),
  NOTE_S             VARCHAR2(255),
  DECL_PORT          VARCHAR2(4),
  CO_OWNER           VARCHAR2(1),
  TAXY_RG_NO         VARCHAR2(32),
  MNL_JGF_FLAG       VARCHAR2(1),
  SERVICE_FEE        NUMBER(19,4),
  SERVICE_RATE       NUMBER(19,5),
  RELATIVE_ID        VARCHAR2(18),
  BONDED_NO          VARCHAR2(32),
  BP_NO              VARCHAR2(255),
  TYPIST_NO          VARCHAR2(32),
  INPUT_NO           VARCHAR2(32),
  P_DATE             DATE,
  CTA_CHK_RESULT     VARCHAR2(255),
  MODI_NO            NUMBER(19),
  EDI_ID             VARCHAR2(1),
  STATUS_RESULT      VARCHAR2(120),
  DECLARE_NO         VARCHAR2(32),
  JOU_EVENT          VARCHAR2(15),
  JOU_FLAG           VARCHAR2(15),
  EDI_REMARK         VARCHAR2(32),
  PARTNER_ID         VARCHAR2(20),
  CUSTOMS_FIELD      VARCHAR2(8),
  ENTRY_TYPE         VARCHAR2(4),
  RELATIVE_MANUAL_NO VARCHAR2(12),
  PRICE_RANGE        NUMBER(19,4),
  SPECIAL_FLAG       VARCHAR2(1),
  DELAY_DAYS         NUMBER(19),
  DELAY_ACCOUNT      NUMBER(19,2),
  HASH_SIGN          VARCHAR2(380)
)
;

prompt
prompt Creating table BAK1_ENTRY_LIST_1213
prompt ===================================
prompt
create table ALLSYS.BAK1_ENTRY_LIST_1213
(
  ENTRY_ID       VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  CONTR_ITEM     NUMBER(19),
  TRADE_CURR     VARCHAR2(3),
  EXCHANGE_RATE  NUMBER(19,7),
  DECL_PRICE     NUMBER(19,5),
  DECL_TOTAL     NUMBER(19,4),
  USE_TO         VARCHAR2(2),
  DUTY_MODE      VARCHAR2(1),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  QTY_1          NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  QTY_2          NUMBER(19,5),
  UNIT_2         VARCHAR2(3),
  TRADE_TOTAL    NUMBER(19,4),
  RMB_PRICE      NUMBER(19),
  USD_PRICE      NUMBER(19),
  DUTY_VALUE     NUMBER(19),
  G_PROCESS_MARK VARCHAR2(2),
  WORK_USD       NUMBER(19,4),
  CLASS_MARK     VARCHAR2(1),
  G_CERT_FLAG    VARCHAR2(32),
  TARIFF_MARK    VARCHAR2(32),
  DUTY_TYPE      VARCHAR2(1),
  REAL_DUTY      NUMBER(19,4),
  DUTY_CUT       NUMBER(19,4),
  DUTY_RATE      NUMBER(19,5),
  D_RATE         NUMBER(19,5),
  QTY_DUTY_RATE  NUMBER(19,5),
  QTY_D_RATE     NUMBER(19,5),
  TAX_TYPE       VARCHAR2(1),
  REAL_TAX       NUMBER(19,4),
  TAX_CUT        NUMBER(19,4),
  TAX_RATE       NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  QTY_TAX_RATE   NUMBER(19,5),
  QTY_T_RATE     NUMBER(19,5),
  REG_TYPE       VARCHAR2(1),
  REAL_REG       NUMBER(19,4),
  REG_CUT        NUMBER(19,4),
  REG_RATE       NUMBER(19,5),
  R_RATE         NUMBER(19,5),
  QTY_REG_RATE   NUMBER(19,5),
  QTY_R_RATE     NUMBER(19,5),
  OIL_TYPE       VARCHAR2(1),
  REAL_OIL       NUMBER(19,4),
  OIL_CUT        NUMBER(19,4),
  OIL_RATE       NUMBER(19,5),
  O_RATE         NUMBER(19,5),
  QTY_OIL_RATE   NUMBER(19,5),
  QTY_O_RATE     NUMBER(19,5),
  ANTI_TYPE      VARCHAR2(1),
  REAL_ANTI      NUMBER(19,4),
  ANTI_CUT       NUMBER(19,4),
  ANTI_RATE      NUMBER(19,5),
  A_RATE         NUMBER(19,5),
  QTY_ANTI_RATE  NUMBER(19,5),
  QTY_A_RATE     NUMBER(19,5),
  PRDT_NO        VARCHAR2(32),
  GOODS_ID       VARCHAR2(32),
  DECL_CODE_TS   VARCHAR2(16),
  AGREEMENT_ID   VARCHAR2(2),
  RSV1_TYPE      VARCHAR2(1),
  REAL_RSV1      NUMBER(19,4),
  RSV1_CUT       NUMBER(19,4),
  RSV1_RATE      NUMBER(19,5),
  R1_RATE        NUMBER(19,5),
  QTY_RSV1_RATE  NUMBER(19,5),
  QTY_R1_RATE    NUMBER(19,5),
  RSV2_TYPE      VARCHAR2(1),
  REAL_RSV2      NUMBER(19,4),
  RSV2_CUT       NUMBER(19,4),
  RSV2_RATE      NUMBER(19,5),
  R2_RATE        NUMBER(19,5),
  QTY_RSV2_RATE  NUMBER(19,5),
  QTY_R2_RATE    NUMBER(19,5)
)
;

prompt
prompt Creating table BAK2_ENTRY_CERTIFICATE_1213
prompt ==========================================
prompt
create table ALLSYS.BAK2_ENTRY_CERTIFICATE_1213
(
  ENTRY_ID  VARCHAR2(18) not null,
  DOCU_CODE VARCHAR2(1) not null,
  CERT_CODE VARCHAR2(32) not null
)
;

prompt
prompt Creating table BAK2_ENTRY_CONTAINER_1213
prompt ========================================
prompt
create table ALLSYS.BAK2_ENTRY_CONTAINER_1213
(
  ENTRY_ID     VARCHAR2(18) not null,
  CONTAINER_ID VARCHAR2(32) not null,
  CONTAINER_WT NUMBER(19,5)
)
;

prompt
prompt Creating table BAK2_ENTRY_HEAD_1213
prompt ===================================
prompt
create table ALLSYS.BAK2_ENTRY_HEAD_1213
(
  ENTRY_ID           VARCHAR2(18) not null,
  PRE_ENTRY_ID       VARCHAR2(18),
  ID_CHK             VARCHAR2(1),
  I_E_FLAG           VARCHAR2(1),
  I_E_PORT           VARCHAR2(4),
  I_E_DATE           DATE,
  D_DATE             DATE,
  DESTINATION_PORT   VARCHAR2(4),
  TRAF_NAME          VARCHAR2(255),
  VOYAGE_NO          VARCHAR2(32),
  TRAF_MODE          VARCHAR2(1),
  TRADE_CO           VARCHAR2(10),
  TRADE_NAME         VARCHAR2(255),
  DISTRICT_CODE      VARCHAR2(5),
  OWNER_CODE         VARCHAR2(10),
  OWNER_NAME         VARCHAR2(255),
  AGENT_CODE         VARCHAR2(10),
  AGENT_NAME         VARCHAR2(255),
  CONTR_NO           VARCHAR2(32),
  IN_RATIO           NUMBER(19,5),
  BILL_NO            VARCHAR2(32),
  TRADE_COUNTRY      VARCHAR2(3),
  TRADE_MODE         VARCHAR2(4),
  CUT_MODE           VARCHAR2(3),
  TRANS_MODE         VARCHAR2(1),
  CONTAINER_NO       NUMBER(19,4),
  PAY_WAY            VARCHAR2(1),
  FEE_MARK           VARCHAR2(1),
  FEE_CURR           VARCHAR2(3),
  FEE_RATE           NUMBER(19,5),
  INSUR_MARK         VARCHAR2(1),
  INSUR_CURR         VARCHAR2(3),
  INSUR_RATE         NUMBER(19,5),
  OTHER_MARK         VARCHAR2(1),
  OTHER_CURR         VARCHAR2(3),
  OTHER_RATE         NUMBER(19,5),
  PACK_NO            NUMBER(19),
  GROSS_WT           NUMBER(19,5),
  NET_WT             NUMBER(19,5),
  WRAP_TYPE          VARCHAR2(32),
  MANUAL_NO          VARCHAR2(12),
  LICENSE_NO         VARCHAR2(20),
  APPR_NO            VARCHAR2(32),
  NOTE_S             VARCHAR2(255),
  DECL_PORT          VARCHAR2(4),
  CO_OWNER           VARCHAR2(1),
  TAXY_RG_NO         VARCHAR2(32),
  MNL_JGF_FLAG       VARCHAR2(1),
  SERVICE_FEE        NUMBER(19,4),
  SERVICE_RATE       NUMBER(19,5),
  RELATIVE_ID        VARCHAR2(18),
  BONDED_NO          VARCHAR2(32),
  BP_NO              VARCHAR2(255),
  TYPIST_NO          VARCHAR2(32),
  INPUT_NO           VARCHAR2(32),
  P_DATE             DATE,
  CTA_CHK_RESULT     VARCHAR2(255),
  MODI_NO            NUMBER(19),
  EDI_ID             VARCHAR2(1),
  STATUS_RESULT      VARCHAR2(120),
  DECLARE_NO         VARCHAR2(32),
  JOU_EVENT          VARCHAR2(15),
  JOU_FLAG           VARCHAR2(15),
  EDI_REMARK         VARCHAR2(32),
  PARTNER_ID         VARCHAR2(20),
  CUSTOMS_FIELD      VARCHAR2(8),
  ENTRY_TYPE         VARCHAR2(4),
  RELATIVE_MANUAL_NO VARCHAR2(12),
  PRICE_RANGE        NUMBER(19,4),
  SPECIAL_FLAG       VARCHAR2(1),
  DELAY_DAYS         NUMBER(19),
  DELAY_ACCOUNT      NUMBER(19,2),
  HASH_SIGN          VARCHAR2(380)
)
;

prompt
prompt Creating table BAK2_ENTRY_LIST_1213
prompt ===================================
prompt
create table ALLSYS.BAK2_ENTRY_LIST_1213
(
  ENTRY_ID       VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  CONTR_ITEM     NUMBER(19),
  TRADE_CURR     VARCHAR2(3),
  EXCHANGE_RATE  NUMBER(19,7),
  DECL_PRICE     NUMBER(19,5),
  DECL_TOTAL     NUMBER(19,4),
  USE_TO         VARCHAR2(2),
  DUTY_MODE      VARCHAR2(1),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  QTY_1          NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  QTY_2          NUMBER(19,5),
  UNIT_2         VARCHAR2(3),
  TRADE_TOTAL    NUMBER(19,4),
  RMB_PRICE      NUMBER(19),
  USD_PRICE      NUMBER(19),
  DUTY_VALUE     NUMBER(19),
  G_PROCESS_MARK VARCHAR2(2),
  WORK_USD       NUMBER(19,4),
  CLASS_MARK     VARCHAR2(1),
  G_CERT_FLAG    VARCHAR2(32),
  TARIFF_MARK    VARCHAR2(32),
  DUTY_TYPE      VARCHAR2(1),
  REAL_DUTY      NUMBER(19,4),
  DUTY_CUT       NUMBER(19,4),
  DUTY_RATE      NUMBER(19,5),
  D_RATE         NUMBER(19,5),
  QTY_DUTY_RATE  NUMBER(19,5),
  QTY_D_RATE     NUMBER(19,5),
  TAX_TYPE       VARCHAR2(1),
  REAL_TAX       NUMBER(19,4),
  TAX_CUT        NUMBER(19,4),
  TAX_RATE       NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  QTY_TAX_RATE   NUMBER(19,5),
  QTY_T_RATE     NUMBER(19,5),
  REG_TYPE       VARCHAR2(1),
  REAL_REG       NUMBER(19,4),
  REG_CUT        NUMBER(19,4),
  REG_RATE       NUMBER(19,5),
  R_RATE         NUMBER(19,5),
  QTY_REG_RATE   NUMBER(19,5),
  QTY_R_RATE     NUMBER(19,5),
  OIL_TYPE       VARCHAR2(1),
  REAL_OIL       NUMBER(19,4),
  OIL_CUT        NUMBER(19,4),
  OIL_RATE       NUMBER(19,5),
  O_RATE         NUMBER(19,5),
  QTY_OIL_RATE   NUMBER(19,5),
  QTY_O_RATE     NUMBER(19,5),
  ANTI_TYPE      VARCHAR2(1),
  REAL_ANTI      NUMBER(19,4),
  ANTI_CUT       NUMBER(19,4),
  ANTI_RATE      NUMBER(19,5),
  A_RATE         NUMBER(19,5),
  QTY_ANTI_RATE  NUMBER(19,5),
  QTY_A_RATE     NUMBER(19,5),
  PRDT_NO        VARCHAR2(32),
  GOODS_ID       VARCHAR2(32),
  DECL_CODE_TS   VARCHAR2(16),
  AGREEMENT_ID   VARCHAR2(2),
  RSV1_TYPE      VARCHAR2(1),
  REAL_RSV1      NUMBER(19,4),
  RSV1_CUT       NUMBER(19,4),
  RSV1_RATE      NUMBER(19,5),
  R1_RATE        NUMBER(19,5),
  QTY_RSV1_RATE  NUMBER(19,5),
  QTY_R1_RATE    NUMBER(19,5),
  RSV2_TYPE      VARCHAR2(1),
  REAL_RSV2      NUMBER(19,4),
  RSV2_CUT       NUMBER(19,4),
  RSV2_RATE      NUMBER(19,5),
  R2_RATE        NUMBER(19,5),
  QTY_RSV2_RATE  NUMBER(19,5),
  QTY_R2_RATE    NUMBER(19,5)
)
;

prompt
prompt Creating table BAKTJ_ENTRY_CERTIFICATE_1214
prompt ===========================================
prompt
create table ALLSYS.BAKTJ_ENTRY_CERTIFICATE_1214
(
  ENTRY_ID  VARCHAR2(18) not null,
  DOCU_CODE VARCHAR2(1) not null,
  CERT_CODE VARCHAR2(32) not null
)
;

prompt
prompt Creating table BAKTJ_ENTRY_CONTAINER_1214
prompt =========================================
prompt
create table ALLSYS.BAKTJ_ENTRY_CONTAINER_1214
(
  ENTRY_ID     VARCHAR2(18) not null,
  CONTAINER_ID VARCHAR2(32) not null,
  CONTAINER_WT NUMBER(19,5)
)
;

prompt
prompt Creating table BAKTJ_ENTRY_HEAD_1214
prompt ====================================
prompt
create table ALLSYS.BAKTJ_ENTRY_HEAD_1214
(
  ENTRY_ID           VARCHAR2(18) not null,
  PRE_ENTRY_ID       VARCHAR2(18),
  ID_CHK             VARCHAR2(1),
  I_E_FLAG           VARCHAR2(1),
  I_E_PORT           VARCHAR2(4),
  I_E_DATE           DATE,
  D_DATE             DATE,
  DESTINATION_PORT   VARCHAR2(4),
  TRAF_NAME          VARCHAR2(255),
  VOYAGE_NO          VARCHAR2(32),
  TRAF_MODE          VARCHAR2(1),
  TRADE_CO           VARCHAR2(10),
  TRADE_NAME         VARCHAR2(255),
  DISTRICT_CODE      VARCHAR2(5),
  OWNER_CODE         VARCHAR2(10),
  OWNER_NAME         VARCHAR2(255),
  AGENT_CODE         VARCHAR2(10),
  AGENT_NAME         VARCHAR2(255),
  CONTR_NO           VARCHAR2(32),
  IN_RATIO           NUMBER(19,5),
  BILL_NO            VARCHAR2(32),
  TRADE_COUNTRY      VARCHAR2(3),
  TRADE_MODE         VARCHAR2(4),
  CUT_MODE           VARCHAR2(3),
  TRANS_MODE         VARCHAR2(1),
  CONTAINER_NO       NUMBER(19,4),
  PAY_WAY            VARCHAR2(1),
  FEE_MARK           VARCHAR2(1),
  FEE_CURR           VARCHAR2(3),
  FEE_RATE           NUMBER(19,5),
  INSUR_MARK         VARCHAR2(1),
  INSUR_CURR         VARCHAR2(3),
  INSUR_RATE         NUMBER(19,5),
  OTHER_MARK         VARCHAR2(1),
  OTHER_CURR         VARCHAR2(3),
  OTHER_RATE         NUMBER(19,5),
  PACK_NO            NUMBER(19),
  GROSS_WT           NUMBER(19,5),
  NET_WT             NUMBER(19,5),
  WRAP_TYPE          VARCHAR2(32),
  MANUAL_NO          VARCHAR2(12),
  LICENSE_NO         VARCHAR2(20),
  APPR_NO            VARCHAR2(32),
  NOTE_S             VARCHAR2(255),
  DECL_PORT          VARCHAR2(4),
  CO_OWNER           VARCHAR2(1),
  TAXY_RG_NO         VARCHAR2(32),
  MNL_JGF_FLAG       VARCHAR2(1),
  SERVICE_FEE        NUMBER(19,4),
  SERVICE_RATE       NUMBER(19,5),
  RELATIVE_ID        VARCHAR2(18),
  BONDED_NO          VARCHAR2(32),
  BP_NO              VARCHAR2(255),
  TYPIST_NO          VARCHAR2(32),
  INPUT_NO           VARCHAR2(32),
  P_DATE             DATE,
  CTA_CHK_RESULT     VARCHAR2(255),
  MODI_NO            NUMBER(19),
  EDI_ID             VARCHAR2(1),
  STATUS_RESULT      VARCHAR2(120),
  DECLARE_NO         VARCHAR2(32),
  JOU_EVENT          VARCHAR2(15),
  JOU_FLAG           VARCHAR2(15),
  EDI_REMARK         VARCHAR2(32),
  PARTNER_ID         VARCHAR2(20),
  CUSTOMS_FIELD      VARCHAR2(8),
  ENTRY_TYPE         VARCHAR2(4),
  RELATIVE_MANUAL_NO VARCHAR2(12),
  PRICE_RANGE        NUMBER(19,4),
  SPECIAL_FLAG       VARCHAR2(1),
  DELAY_DAYS         NUMBER(19),
  DELAY_ACCOUNT      NUMBER(19,2),
  HASH_SIGN          VARCHAR2(380)
)
;

prompt
prompt Creating table BAKTJ_ENTRY_LIST_1214
prompt ====================================
prompt
create table ALLSYS.BAKTJ_ENTRY_LIST_1214
(
  ENTRY_ID       VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  CONTR_ITEM     NUMBER(19),
  TRADE_CURR     VARCHAR2(3),
  EXCHANGE_RATE  NUMBER(19,7),
  DECL_PRICE     NUMBER(19,5),
  DECL_TOTAL     NUMBER(19,4),
  USE_TO         VARCHAR2(2),
  DUTY_MODE      VARCHAR2(1),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  QTY_1          NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  QTY_2          NUMBER(19,5),
  UNIT_2         VARCHAR2(3),
  TRADE_TOTAL    NUMBER(19,4),
  RMB_PRICE      NUMBER(19),
  USD_PRICE      NUMBER(19),
  DUTY_VALUE     NUMBER(19),
  G_PROCESS_MARK VARCHAR2(2),
  WORK_USD       NUMBER(19,4),
  CLASS_MARK     VARCHAR2(1),
  G_CERT_FLAG    VARCHAR2(32),
  TARIFF_MARK    VARCHAR2(32),
  DUTY_TYPE      VARCHAR2(1),
  REAL_DUTY      NUMBER(19,4),
  DUTY_CUT       NUMBER(19,4),
  DUTY_RATE      NUMBER(19,5),
  D_RATE         NUMBER(19,5),
  QTY_DUTY_RATE  NUMBER(19,5),
  QTY_D_RATE     NUMBER(19,5),
  TAX_TYPE       VARCHAR2(1),
  REAL_TAX       NUMBER(19,4),
  TAX_CUT        NUMBER(19,4),
  TAX_RATE       NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  QTY_TAX_RATE   NUMBER(19,5),
  QTY_T_RATE     NUMBER(19,5),
  REG_TYPE       VARCHAR2(1),
  REAL_REG       NUMBER(19,4),
  REG_CUT        NUMBER(19,4),
  REG_RATE       NUMBER(19,5),
  R_RATE         NUMBER(19,5),
  QTY_REG_RATE   NUMBER(19,5),
  QTY_R_RATE     NUMBER(19,5),
  OIL_TYPE       VARCHAR2(1),
  REAL_OIL       NUMBER(19,4),
  OIL_CUT        NUMBER(19,4),
  OIL_RATE       NUMBER(19,5),
  O_RATE         NUMBER(19,5),
  QTY_OIL_RATE   NUMBER(19,5),
  QTY_O_RATE     NUMBER(19,5),
  ANTI_TYPE      VARCHAR2(1),
  REAL_ANTI      NUMBER(19,4),
  ANTI_CUT       NUMBER(19,4),
  ANTI_RATE      NUMBER(19,5),
  A_RATE         NUMBER(19,5),
  QTY_ANTI_RATE  NUMBER(19,5),
  QTY_A_RATE     NUMBER(19,5),
  PRDT_NO        VARCHAR2(32),
  GOODS_ID       VARCHAR2(32),
  DECL_CODE_TS   VARCHAR2(16),
  AGREEMENT_ID   VARCHAR2(2),
  RSV1_TYPE      VARCHAR2(1),
  REAL_RSV1      NUMBER(19,4),
  RSV1_CUT       NUMBER(19,4),
  RSV1_RATE      NUMBER(19,5),
  R1_RATE        NUMBER(19,5),
  QTY_RSV1_RATE  NUMBER(19,5),
  QTY_R1_RATE    NUMBER(19,5),
  RSV2_TYPE      VARCHAR2(1),
  REAL_RSV2      NUMBER(19,4),
  RSV2_CUT       NUMBER(19,4),
  RSV2_RATE      NUMBER(19,5),
  R2_RATE        NUMBER(19,5),
  QTY_RSV2_RATE  NUMBER(19,5),
  QTY_R2_RATE    NUMBER(19,5)
)
;

prompt
prompt Creating table BAK_BWS_EXAM_CERT_LIST
prompt =====================================
prompt
create table ALLSYS.BAK_BWS_EXAM_CERT_LIST
(
  BWS_EXAM_NO VARCHAR2(16) not null,
  G_NO        NUMBER(19) not null,
  CERT_NO     VARCHAR2(18),
  PACK_NO     NUMBER(19,5),
  GROSS_WT    NUMBER(19,5),
  BILL_NO     VARCHAR2(32)
)
;
alter table ALLSYS.BAK_BWS_EXAM_CERT_LIST
  add constraint PK_BAK_BWS_EXAM_CERT_LIST primary key (BWS_EXAM_NO, G_NO);

prompt
prompt Creating table BAK_BWS_EXAM_GOOD_LIST
prompt =====================================
prompt
create table ALLSYS.BAK_BWS_EXAM_GOOD_LIST
(
  BWS_EXAM_NO VARCHAR2(16) not null,
  G_NO        NUMBER(19) not null,
  CERT_NO     VARCHAR2(18),
  CERT_G_NO   NUMBER(19),
  G_NAME      VARCHAR2(128),
  QTY         NUMBER(19,5),
  UNIT        VARCHAR2(3)
)
;
alter table ALLSYS.BAK_BWS_EXAM_GOOD_LIST
  add constraint PK_BAK_BWS_EXAM_GOOD_LIST primary key (BWS_EXAM_NO, G_NO);

prompt
prompt Creating table BAK_BWS_EXAM_HEAD
prompt ================================
prompt
create table ALLSYS.BAK_BWS_EXAM_HEAD
(
  BWS_EXAM_NO    VARCHAR2(16) not null,
  EPORT_NO       VARCHAR2(18),
  EXAM_TYPE      VARCHAR2(1),
  CERT_TYPE      VARCHAR2(2),
  I_E_FLAG       VARCHAR2(1),
  BWS_NO         VARCHAR2(12),
  MASTER_CUSTOMS VARCHAR2(4),
  TRADE_CODE     VARCHAR2(10),
  TRADE_NAME     VARCHAR2(128),
  TRANSIT_CODE   VARCHAR2(10),
  TRANSIT_NAME   VARCHAR2(128),
  ENTRUST_CODE   VARCHAR2(10),
  ENTRUST_NAME   VARCHAR2(128),
  VEHICLE_NT     NUMBER(19,5),
  TOTAL_PACK_NO  NUMBER(19,5),
  TOTAL_WEIGHT   NUMBER(19,5),
  IC_CARD        VARCHAR2(18),
  SHIP_ID        VARCHAR2(18),
  CONTA_ID1      VARCHAR2(32),
  SEAL_NO1       VARCHAR2(101),
  CONTA_ID2      VARCHAR2(32),
  SEAL_NO2       VARCHAR2(101),
  INPUT_DATE     DATE,
  INPUT_ER       VARCHAR2(8),
  DECLARE_DATE   DATE,
  NOTE           VARCHAR2(255),
  CHK_MARK       VARCHAR2(1),
  PASS_MODE      VARCHAR2(10),
  PASS_TIME      DATE,
  KK_CODE        VARCHAR2(18),
  KK_PASS_WEIGHT NUMBER(19,5),
  PASS_REASON    VARCHAR2(255)
)
;
alter table ALLSYS.BAK_BWS_EXAM_HEAD
  add constraint PK_BAK_BWS_EXAM_HEAD primary key (BWS_EXAM_NO);

prompt
prompt Creating table BAK_CONSUME
prompt ==========================
prompt
create table ALLSYS.BAK_CONSUME
(
  MANUAL_NO    VARCHAR2(12) not null,
  CONTR_ITEM   NUMBER(19) not null,
  EX_NO        NUMBER(19) not null,
  APPR_CONSUME NUMBER(19,10),
  APPR_DAMAGE  NUMBER(19,10),
  DECL_CONSUME NUMBER(19,10),
  DECL_DAMAGE  NUMBER(19,10)
)
;
alter table ALLSYS.BAK_CONSUME
  add constraint PK_BAK_CONSUME primary key (MANUAL_NO, CONTR_ITEM, EX_NO);

prompt
prompt Creating table BAK_CONTRACT_HEAD
prompt ================================
prompt
create table ALLSYS.BAK_CONTRACT_HEAD
(
  MANUAL_NO        VARCHAR2(12) not null,
  PRE_MANUAL_NO    VARCHAR2(12),
  TRADE_CO         VARCHAR2(10),
  TRADE_NAME       VARCHAR2(255),
  DISTRICT_CODE    VARCHAR2(5),
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  FOREIGN_CO_NAME  VARCHAR2(32),
  FOREIGN_MGR      VARCHAR2(32),
  TRADE_MODE       VARCHAR2(4),
  CUT_MODE         VARCHAR2(3),
  TRADE_COUNTRY    VARCHAR2(3),
  PORT_1           VARCHAR2(4),
  PORT_2           VARCHAR2(4),
  PORT_3           VARCHAR2(4),
  PORT_4           VARCHAR2(4),
  PORT_5           VARCHAR2(4),
  AGREE_NO         VARCHAR2(32),
  LICENSE_NO       VARCHAR2(32),
  APPR_NO          VARCHAR2(32),
  CONTR_IN         VARCHAR2(32),
  CONTR_OUT        VARCHAR2(32),
  EQUIP_MODE       VARCHAR2(1),
  TRANS_MODE       VARCHAR2(1),
  INVEST_MODE      VARCHAR2(1),
  PAY_MODE         VARCHAR2(1),
  EX_SOURCE        NUMBER(19),
  PRODUCE_TYPE     VARCHAR2(2),
  RATIO_RANGE      NUMBER(19,4),
  IN_RATIO         NUMBER(19,4),
  INVEST_AMT       NUMBER(19,5),
  INVEST_CURR      VARCHAR2(3),
  APPR_DEV_AMT     NUMBER(19,5),
  FACT_DEV_AMT     NUMBER(19,5),
  IN_AMT           NUMBER(19,5),
  IN_CURR          VARCHAR2(3),
  FACT_IN_AMT      NUMBER(19,5),
  EX_AMT           NUMBER(19,5),
  EX_CURR          VARCHAR2(3),
  FACT_EX_AMT      NUMBER(19,5),
  DECL_FLAG        VARCHAR2(1),
  EXE_MARK         VARCHAR2(1),
  SUPV_MARK        VARCHAR2(10),
  IN_PNT           NUMBER(19),
  EX_PNT           NUMBER(19),
  CONTR_SEQNO      NUMBER(19),
  IM_COUNT         NUMBER(19),
  EX_COUNT         NUMBER(19),
  I_DATE           DATE,
  E_DATE           DATE,
  LIMIT_DATE       DATE,
  TYPE_ER          VARCHAR2(8),
  TYPE_DATE        DATE,
  CHK_ER           VARCHAR2(8),
  APPR_DATE        DATE,
  RECHK_ER         VARCHAR2(8),
  CLEAR_ER         VARCHAR2(8),
  CLEAR_APPL_DATE  DATE,
  CLEAR_DATE       DATE,
  CLOSE_ER         VARCHAR2(8),
  CLOSE_DATE       DATE,
  EXAM_MARK        VARCHAR2(10),
  CLEAR_MARK       VARCHAR2(10),
  CLOSE_MARK       VARCHAR2(1),
  TAX_TYPE         VARCHAR2(1),
  RECOVER_DUTY     NUMBER(19,5),
  RECOVER_TAX      NUMBER(19,5),
  RECOVER_REG      NUMBER(19,5),
  DEFER_DUTY       NUMBER(19,5),
  DEFER_TAX        NUMBER(19,5),
  DEFER_REG        NUMBER(19,5),
  FINE_AMT         NUMBER(19,5),
  REAL_DUTY        NUMBER(19,5),
  REAL_TAX         NUMBER(19,5),
  REAL_REG         NUMBER(19,5),
  SEQ_NO           VARCHAR2(12),
  VER_NO           VARCHAR2(12),
  VER_ER           VARCHAR2(8),
  VER_DATE         DATE,
  CUSTOMS_CODE     VARCHAR2(4),
  SERVICE_FEE_RATE NUMBER(19,5),
  PRE_SERVICE_FEE  NUMBER(19,5),
  FACT_SERVICE_FEE NUMBER(19,5),
  NOTE_S           VARCHAR2(255),
  TR_PNT           NUMBER(19),
  IN_RMB_RATE      NUMBER(19,8),
  IN_USD_RATE      NUMBER(19,8),
  EX_RMB_RATE      NUMBER(19,8),
  EX_USD_RATE      NUMBER(19,8),
  DEDUC_DATE       DATE,
  CHECK_DATE       DATE,
  HASH_SIGN        VARCHAR2(380),
  CASE_MARK        VARCHAR2(1)
)
;
alter table ALLSYS.BAK_CONTRACT_HEAD
  add constraint PK_BAK_CONTRACT_HEAD primary key (MANUAL_NO);
create index ALLSYS.IX_BAK_HEAD_PRE_NO on ALLSYS.BAK_CONTRACT_HEAD (PRE_MANUAL_NO);

prompt
prompt Creating table BAK_DCG_BILL_HEAD
prompt ================================
prompt
create table ALLSYS.BAK_DCG_BILL_HEAD
(
  BILL_NO         VARCHAR2(17) not null,
  BILL_FLAG       VARCHAR2(1),
  EPORT_NO        VARCHAR2(18),
  DCG_NO          VARCHAR2(12),
  EX_COP_BILL_NO  VARCHAR2(20),
  EX_TRADE_CODE   VARCHAR2(10),
  EX_DECLARE_ER   VARCHAR2(20),
  EX_DECLARE_DATE DATE,
  IM_COP_BILL_NO  VARCHAR2(20),
  IM_TRADE_CODE   VARCHAR2(10),
  IM_DECLARE_ER   VARCHAR2(20),
  IM_DECLARE_DATE DATE,
  IM_DATE         DATE,
  CONTR_NO        VARCHAR2(20),
  VE_TYPE         VARCHAR2(1),
  SHIP_ID         VARCHAR2(32),
  EX_DATE         DATE,
  STATUS          VARCHAR2(1),
  PRE_FLAG        VARCHAR2(3),
  EXE_MARK        VARCHAR2(1),
  CUSTOMS_CODE    VARCHAR2(4),
  BAR_CODE        VARCHAR2(32),
  NOTE            VARCHAR2(255)
)
;
alter table ALLSYS.BAK_DCG_BILL_HEAD
  add constraint PK_BAK_DCG_BILL_HEAD primary key (BILL_NO);
create index ALLSYS.IX_BAKDCGBILLH_DCGNO on ALLSYS.BAK_DCG_BILL_HEAD (DCG_NO);

prompt
prompt Creating table BAK_DCG_BILL_LIST
prompt ================================
prompt
create table ALLSYS.BAK_DCG_BILL_LIST
(
  BILL_NO    VARCHAR2(17) not null,
  G_TYPE     VARCHAR2(1) not null,
  G_NO       NUMBER(19) not null,
  DCG_G_NO   NUMBER(19),
  QTY        NUMBER(19,5),
  CHECK_DATE DATE,
  COP_QTY    NUMBER(19,5),
  COP_UNIT   VARCHAR2(3),
  G_MARK     VARCHAR2(8)
)
;
alter table ALLSYS.BAK_DCG_BILL_LIST
  add constraint PK_BAK_DCG_BILL_LIST primary key (BILL_NO, G_TYPE, G_NO);

prompt
prompt Creating table BAK_DCG_DEDUCT
prompt =============================
prompt
create table ALLSYS.BAK_DCG_DEDUCT
(
  ENTRY_ID    VARCHAR2(18) not null,
  DCG_NO      VARCHAR2(12) not null,
  G_TYPE      VARCHAR2(1) not null,
  ENTRY_G_NO  NUMBER(19) not null,
  DCG_G_NO    NUMBER(19),
  EMS_NO      VARCHAR2(12),
  EMS_G_NO    NUMBER(19),
  QTY         NUMBER(19,5),
  VERIFY_DATE DATE,
  VERIFY_ER   VARCHAR2(8)
)
;
alter table ALLSYS.BAK_DCG_DEDUCT
  add constraint PK_BAK_DCG_DEDUCT primary key (ENTRY_ID, DCG_NO, G_TYPE, ENTRY_G_NO);
create index ALLSYS.IX_BAKDCGDEDUCT_DCGNO on ALLSYS.BAK_DCG_DEDUCT (DCG_NO);

prompt
prompt Creating table BAK_DCG_DEDUCT_LOG
prompt =================================
prompt
create table ALLSYS.BAK_DCG_DEDUCT_LOG
(
  ENTRY_ID    VARCHAR2(18) not null,
  DCG_NO      VARCHAR2(12) not null,
  CREATE_DATE DATE not null,
  JOU_MARK    VARCHAR2(1) not null,
  NOTE        VARCHAR2(1),
  VERIFY_ER   VARCHAR2(8)
)
;
alter table ALLSYS.BAK_DCG_DEDUCT_LOG
  add constraint PK_BAK_DCG_DEDUCT_LOG primary key (ENTRY_ID, DCG_NO, CREATE_DATE, JOU_MARK);
create index ALLSYS.IX_BAKDCGDEDUCTLOG_DCGNO on ALLSYS.BAK_DCG_DEDUCT_LOG (DCG_NO);

prompt
prompt Creating table BAK_DCG_HEAD
prompt ===========================
prompt
create table ALLSYS.BAK_DCG_HEAD
(
  DCG_NO           VARCHAR2(12) not null,
  DCG_TYPE         VARCHAR2(1),
  EPORT_NO         VARCHAR2(18),
  EX_EMS_NO        VARCHAR2(12),
  EX_COP_EMS_NO    VARCHAR2(20),
  EX_CUSTOMS_CODE  VARCHAR2(4),
  EX_TRADE_CODE    VARCHAR2(10),
  EX_TRADE_NAME    VARCHAR2(255),
  EX_DECLARE_CODE  VARCHAR2(10),
  EX_DECLARE_NAME  VARCHAR2(255),
  EX_CORP_ER       VARCHAR2(64),
  EX_DECLARE_ER    VARCHAR2(20),
  EX_DISTRICT_CODE VARCHAR2(5),
  EX_CONTR_NO      VARCHAR2(20),
  EX_APPR_NO       VARCHAR2(20),
  EX_NOTE          VARCHAR2(64),
  EX_DECLARE_DATE  DATE,
  EX_CHK_ER        VARCHAR2(8),
  EX_CHK_DATE      DATE,
  EX_CHK_NOTE      VARCHAR2(255),
  IM_COP_EMS_NO    VARCHAR2(20),
  IM_CUSTOMS_CODE  VARCHAR2(4),
  IM_TRADE_CODE    VARCHAR2(10),
  IM_TRADE_NAME    VARCHAR2(255),
  IM_DECLARE_CODE  VARCHAR2(10),
  IM_DECLARE_NAME  VARCHAR2(255),
  IM_CORP_ER       VARCHAR2(64),
  IM_DECLARE_ER    VARCHAR2(20),
  IM_DISTRICT_CODE VARCHAR2(5),
  IM_CONTR_NO      VARCHAR2(20),
  IM_APPR_NO       VARCHAR2(20),
  IM_NOTE          VARCHAR2(64),
  IM_DECLARE_DATE  DATE,
  IM_CHK_ER        VARCHAR2(8),
  IM_CHK_DATE      DATE,
  IM_CHK_NOTE      VARCHAR2(255),
  INTEND_COST_TIME NUMBER(19,5),
  DISTANCE         NUMBER(19,5),
  CHK_MARK         VARCHAR2(2),
  EXE_MARK         VARCHAR2(1),
  PAUSE_MARK       VARCHAR2(3),
  END_DATE         DATE,
  FIRST_DATE       DATE,
  LATE_DATE        DATE,
  NOTE_1           VARCHAR2(8),
  NOTE_2           VARCHAR2(8),
  DECLARE_TYPE     VARCHAR2(1),
  LW_MARK          VARCHAR2(1)
)
;
alter table ALLSYS.BAK_DCG_HEAD
  add constraint PK_BAK_DCG_HEAD primary key (DCG_NO);

prompt
prompt Creating table BAK_DCG_LIST
prompt ===========================
prompt
create table ALLSYS.BAK_DCG_LIST
(
  DCG_NO      VARCHAR2(12) not null,
  G_TYPE      VARCHAR2(1) not null,
  G_NO        NUMBER(19) not null,
  EX_G_NO     NUMBER(19),
  EMS_NO      VARCHAR2(12),
  EMS_G_NO    NUMBER(19),
  CODE_TS     VARCHAR2(10),
  G_NAME      VARCHAR2(255),
  G_MODEL     VARCHAR2(255),
  UNIT        VARCHAR2(3),
  QTY         NUMBER(19,5),
  UNIT_1      VARCHAR2(3),
  QTY_1       NUMBER(19,5),
  FACT_QTY    NUMBER(19,5),
  FACT_COUNT  NUMBER(19),
  BACK_COUNT  NUMBER(19),
  DEDUCT_QTY  NUMBER(19,5),
  DEDUCT_DATE DATE,
  G_MARK      VARCHAR2(8),
  PAUSE_MARK  VARCHAR2(3),
  BAK_CODE_TS VARCHAR2(10),
  MODIFY_MARK VARCHAR2(1)
)
;
alter table ALLSYS.BAK_DCG_LIST
  add constraint PK_BAK_DCG_LIST primary key (DCG_NO, G_TYPE, G_NO);

prompt
prompt Creating table BAK_EMS_APPR_HEAD
prompt ================================
prompt
create table ALLSYS.BAK_EMS_APPR_HEAD
(
  APPR_NO           VARCHAR2(40) not null,
  RECEIVE_TIMES     NUMBER(19) not null,
  MODIFY_NO         VARCHAR2(40),
  EPORT_NO          VARCHAR2(20),
  CORP_CODE         VARCHAR2(13),
  CORP_NAME         VARCHAR2(70),
  CORP_TYPE_NAME    VARCHAR2(20),
  CORP_CUSTOMS_CODE VARCHAR2(10),
  ENTP_CODE         VARCHAR2(13),
  ENTP_NAME         VARCHAR2(70),
  ENTP_TYPE_NAME    VARCHAR2(20),
  ENTP_CUSTOMS_CODE VARCHAR2(10),
  EMS_TYPE          VARCHAR2(1),
  DECLARE_TYPE      VARCHAR2(1),
  PRODUCT_RATIO     NUMBER(19,5),
  BEGIN_DATE        DATE,
  END_DATE          DATE,
  CONTR_IN          VARCHAR2(32),
  CONTR_OUT         VARCHAR2(32),
  CONTR_OTHER       VARCHAR2(32),
  AGREE_NO          VARCHAR2(32),
  FOREIGN_CO_NAME   VARCHAR2(255),
  IMG_CURR          VARCHAR2(3),
  IMG_AMOUNT        NUMBER(19,5),
  EXG_AMOUNT        NUMBER(19,5),
  WORK_AMOUNT       NUMBER(19,5),
  HOME_AMOUNT       NUMBER(19,5),
  I_E_PORT          VARCHAR2(255),
  NOTE              VARCHAR2(255),
  ALLOW_TRANS       VARCHAR2(1),
  HAS_EXG_1         VARCHAR2(1),
  HAS_EXG_2         VARCHAR2(1),
  MASTER_CUSTOMS    VARCHAR2(4),
  APPR_FEC          VARCHAR2(6),
  APPR_FEC_NAME     VARCHAR2(40),
  APPR_DATE         DATE,
  MODIFY_APPR_DATE  DATE,
  EXG_CURR          VARCHAR2(3),
  LICENSE_NO        VARCHAR2(255),
  RECEIVE_TIME      DATE
)
;
alter table ALLSYS.BAK_EMS_APPR_HEAD
  add constraint PK_BAK_EMS_APPR_HEAD primary key (APPR_NO, RECEIVE_TIMES);

prompt
prompt Creating table BAK_EMS_APPR_LIST
prompt ================================
prompt
create table ALLSYS.BAK_EMS_APPR_LIST
(
  APPR_NO        VARCHAR2(40) not null,
  G_TYPE         VARCHAR2(1) not null,
  G_NO           NUMBER(19) not null,
  RECEIVE_TIMES  NUMBER(19) not null,
  CODE_TS        VARCHAR2(10),
  G_NAME         VARCHAR2(50),
  G_MODEL        VARCHAR2(50),
  UNIT           VARCHAR2(3),
  UNIT_PRICE     NUMBER(19,5),
  QTY            NUMBER(19,5),
  AMT            NUMBER(19,5),
  ORIGIN_COUNTRY VARCHAR2(3),
  UNIT_1         VARCHAR2(3),
  FACTOR_1       NUMBER(18,9),
  NOTE           VARCHAR2(10),
  CURR           VARCHAR2(3),
  MODIFY_MARK    VARCHAR2(1)
)
;
alter table ALLSYS.BAK_EMS_APPR_LIST
  add constraint PK_BAK_EMS_APPR_LIST primary key (APPR_NO, G_TYPE, G_NO, RECEIVE_TIMES);

prompt
prompt Creating table BAK_EMS_CONSUME
prompt ==============================
prompt
create table ALLSYS.BAK_EMS_CONSUME
(
  EMS_NO       VARCHAR2(12) not null,
  EXG_NO       NUMBER(19) not null,
  EXG_VERSION  VARCHAR2(32) not null,
  IMG_NO       NUMBER(19) not null,
  MODIFY_TIMES NUMBER(19) not null,
  DEC_CM       NUMBER(19,9),
  DEC_DM       NUMBER(19,9),
  OTHER_CM     NUMBER(19,9),
  OTHER_DM     NUMBER(19,9),
  CM_MARK      VARCHAR2(1),
  PRODUCT_MARK VARCHAR2(10),
  PRODUCT_TYPE VARCHAR2(1),
  MODIFY_MARK  VARCHAR2(1),
  CONTROL_MARK VARCHAR2(1),
  NOTE         VARCHAR2(10),
  ETL_MARK     VARCHAR2(1)
)
;
alter table ALLSYS.BAK_EMS_CONSUME
  add constraint PK_BAK_EMS_CONSUME primary key (EMS_NO, EXG_NO, EXG_VERSION, IMG_NO, MODIFY_TIMES);
create index ALLSYS.IDX_BAKEMSCONSUME_ETLMARK on ALLSYS.BAK_EMS_CONSUME (ETL_MARK);

prompt
prompt Creating table BAK_EMS_DEDUCT_CLR
prompt =================================
prompt
create table ALLSYS.BAK_EMS_DEDUCT_CLR
(
  EMS_NO      VARCHAR2(12) not null,
  IMG_NO      NUMBER(19) not null,
  ENTRY_ID    VARCHAR2(18) not null,
  ENTRY_G_NO  NUMBER(19) not null,
  EXG_NO      NUMBER(19),
  EXG_VERSION VARCHAR2(32),
  IN_QTY      NUMBER(19,5),
  DEC_CM      NUMBER(19,9),
  DEC_DM      NUMBER(19,9),
  DEC_CM_QTY  NUMBER(19,9),
  DEC_DM_QTY  NUMBER(19,9),
  I_E_FLAG    VARCHAR2(1),
  TRADE_MODE  VARCHAR2(4),
  TRAF_MODE   VARCHAR2(1),
  VERIFY_MODE VARCHAR2(2),
  JOU_MARK    VARCHAR2(1)
)
;
alter table ALLSYS.BAK_EMS_DEDUCT_CLR
  add constraint PK_BAK_EMS_DEDUCT_CLR primary key (EMS_NO, IMG_NO, ENTRY_ID, ENTRY_G_NO);

prompt
prompt Creating table BAK_EMS_HEAD
prompt ===========================
prompt
create table ALLSYS.BAK_EMS_HEAD
(
  EMS_NO            VARCHAR2(12) not null,
  MODIFY_TIMES      NUMBER(19) not null,
  PRE_EMS_NO        VARCHAR2(12),
  COP_EMS_NO        VARCHAR2(20),
  TRADE_CODE        VARCHAR2(10),
  TRADE_NAME        VARCHAR2(255),
  HOUSE_NO          VARCHAR2(12),
  OWNER_CODE        VARCHAR2(10),
  OWNER_NAME        VARCHAR2(255),
  OWNER_TYPE        VARCHAR2(1),
  DECLARE_ER_TYPE   VARCHAR2(1),
  DECLARE_CODE      VARCHAR2(10),
  DECLARE_NAME      VARCHAR2(255),
  DISTRICT_CODE     VARCHAR2(5),
  ADDRESS           VARCHAR2(255),
  PHONE             VARCHAR2(20),
  EMS_TYPE          VARCHAR2(1),
  DECLARE_TYPE      VARCHAR2(1),
  APPEND_TYPE       VARCHAR2(1),
  INVEST_MODE       VARCHAR2(1),
  TRADE_MODE        VARCHAR2(4),
  BEGIN_DATE        DATE,
  END_DATE          DATE,
  IMG_AMOUNT        NUMBER(19,5),
  EXG_AMOUNT        NUMBER(19,5),
  IMG_WEIGHT        NUMBER(19,5),
  EXG_WEIGHT        NUMBER(19,5),
  STORE_VOL         NUMBER(19,5),
  STORE_AREA        NUMBER(19,5),
  IMG_ITEMS         NUMBER(19),
  EXG_ITEMS         NUMBER(19),
  EMS_APPR_NO       VARCHAR2(40),
  LICENSE_NO        VARCHAR2(20),
  LAST_EMS_NO       VARCHAR2(12),
  CORR_EMS_NO       VARCHAR2(12),
  CONTR_NO          VARCHAR2(20),
  ID_CARD           VARCHAR2(20),
  ID_CARD_PWD       VARCHAR2(20),
  NOTE_1            VARCHAR2(10),
  NOTE_2            VARCHAR2(10),
  INVEST_AMOUNT     NUMBER(19,5),
  NOTE_AMOUNT       NUMBER(19,5),
  NOTE_QTY          NUMBER(19,5),
  NOTE              VARCHAR2(256),
  INPUT_DATE        DATE,
  INPUT_ER          VARCHAR2(8),
  DECLARE_DATE      DATE,
  EMS_APPR_MARK     VARCHAR2(10),
  EMS_CERTIFY       VARCHAR2(10),
  PRODUCT_RATIO     NUMBER(19,5),
  MODIFY_MARK       VARCHAR2(1),
  DECLARE_MARK      VARCHAR2(1),
  CHK_MARK          VARCHAR2(1),
  EXE_MARK          VARCHAR2(1),
  NEW_APPR_DATE     DATE,
  CNG_APPR_DATE     DATE,
  CLEAR_DATE        DATE,
  SIGN_DATE         DATE,
  SIGN_COPY         NUMBER(19),
  PRINT_DATE        DATE,
  PRINT_MARK        VARCHAR2(1),
  RETURN_DATE       DATE,
  RETURN_MARK       VARCHAR2(1),
  EMS_ACE_MARK      VARCHAR2(32),
  H883_ACE_MARK     VARCHAR2(32),
  CONTROL_MARK      VARCHAR2(32),
  PROCESS_MARK      VARCHAR2(32),
  CLEAR_MODE        VARCHAR2(1),
  CLEAR_TERM        NUMBER(19),
  CLEAR_MARK        VARCHAR2(32),
  CLEAR_TIMES       NUMBER(19),
  SERVICE_FEE_MARK  VARCHAR2(1),
  SERVICE_FEE_RATE  NUMBER(19,5),
  SERVICE_FEE       NUMBER(19,5),
  FILE_NO           VARCHAR2(20),
  RECORDER_NO       VARCHAR2(20),
  DOCUMENT_NO       VARCHAR2(20),
  MASTER_CUSTOMS    VARCHAR2(4),
  I_E_PORT          VARCHAR2(255),
  FOREIGN_CO_NAME   VARCHAR2(255),
  AGREE_NO          VARCHAR2(32),
  CUT_MODE          VARCHAR2(4),
  PAY_MODE          VARCHAR2(1),
  PRODUCE_TYPE      VARCHAR2(2),
  CONTR_OUT         VARCHAR2(32),
  MESSAGE_TYPE      VARCHAR2(8),
  EPORT_ID          VARCHAR2(18),
  DIGITAL_SIGN_MARK VARCHAR2(1),
  DIGITAL_SIGN_LEN  VARCHAR2(255),
  DIGITAL_SIGN      VARCHAR2(262),
  ETL_MARK          VARCHAR2(1),
  I_DATE            DATE,
  IMGED_AMOUNT      NUMBER(19,5),
  CLEAR_APPR_MARK   VARCHAR2(1),
  CLEAR_APPL_DATE   DATE,
  CLOSE_MARK        VARCHAR2(1),
  CLOSE_DATE        DATE,
  CHECK_MARK        VARCHAR2(1),
  CHECK_RESULT      VARCHAR2(255),
  FOREIGN_MGR       VARCHAR2(32),
  TRANS_MODE        VARCHAR2(1),
  TRADE_COUNTRY     VARCHAR2(3),
  EQUIP_MODE        VARCHAR2(1),
  IN_RATIO          NUMBER(19,4),
  EX_CURR           VARCHAR2(3),
  IM_CURR           VARCHAR2(3),
  OPER_MARK         VARCHAR2(32),
  FACT_DEV_AMT      NUMBER(19,5),
  APPR_IMG_AMT      NUMBER(19,5),
  APPR_EXG_AMT      NUMBER(19,5),
  CLOSE_RESULT      VARCHAR2(32),
  DEDUCT_DATE       DATE,
  ACCOUNT_FLAG      VARCHAR2(2),
  HT_APPR_IMG_AMT   NUMBER(19,5),
  CASE_MARK         VARCHAR2(1)
)
;
alter table ALLSYS.BAK_EMS_HEAD
  add constraint PK_BAK_EMS_HEAD primary key (EMS_NO, MODIFY_TIMES);

prompt
prompt Creating table BAK_EMS_LIST
prompt ===========================
prompt
create table ALLSYS.BAK_EMS_LIST
(
  EMS_NO        VARCHAR2(12) not null,
  G_TYPE        VARCHAR2(1) not null,
  G_NO          NUMBER(19) not null,
  MODIFY_TIMES  NUMBER(19) not null,
  COP_G_NO      VARCHAR2(30),
  CODE_TS       VARCHAR2(10),
  CLASS_MARK    VARCHAR2(1),
  G_NAME        VARCHAR2(255),
  G_MODEL       VARCHAR2(255),
  UNIT          VARCHAR2(3),
  UNIT_1        VARCHAR2(3),
  UNIT_2        VARCHAR2(3),
  COUNTRY_CODE  VARCHAR2(4),
  SOURCE_MARK   VARCHAR2(1),
  DEC_PRICE     NUMBER(19,5),
  CURR          VARCHAR2(4),
  DEC_PRICE_RMB NUMBER(19,4),
  FACTOR_1      NUMBER(19,4),
  FACTOR_2      NUMBER(19,4),
  FACTOR_WT     NUMBER(19,4),
  FACTOR_RATE   NUMBER(19,5),
  QTY           NUMBER(19,5),
  MAX_QTY       NUMBER(19,5),
  FIRST_QTY     NUMBER(19,5),
  I_E_TYPE      VARCHAR2(1),
  USE_TYPE      VARCHAR2(10),
  NOTE_1        VARCHAR2(1),
  NOTE_2        VARCHAR2(1),
  NOTE          VARCHAR2(10),
  MODIFY_MARK   VARCHAR2(1),
  G_MERGE       VARCHAR2(10),
  G_TRADE       VARCHAR2(10),
  QTY_MARK      VARCHAR2(1),
  INC_AMOUNT    NUMBER(19,5),
  INC_QTY       NUMBER(19,5),
  INC_WT        NUMBER(19,5),
  CUT_AMOUNT    NUMBER(19,5),
  CUT_QTY       NUMBER(19,5),
  CUT_WT        NUMBER(19,5),
  CM_AMOUNT     NUMBER(19,5),
  CM_QTY        NUMBER(19,5),
  CM_WT         NUMBER(19,5),
  CLR_INC_QTY   NUMBER(19,5),
  CLR_CUT_QTY   NUMBER(19,5),
  DUTY_MODE     VARCHAR2(1),
  DUTY_RATE     NUMBER(19,5),
  CHK_PRICE     NUMBER(19,5),
  PROCESS_MARK  VARCHAR2(10),
  ENTRY_ID      VARCHAR2(18),
  LIMIT_DATE    DATE,
  ETL_MARK      VARCHAR2(1),
  USD_PRICE     NUMBER(19,5),
  APPR_AMT      NUMBER(19,5)
)
;
alter table ALLSYS.BAK_EMS_LIST
  add constraint PK_BAK_EMS_LIST primary key (EMS_NO, G_TYPE, G_NO, MODIFY_TIMES);

prompt
prompt Creating table BAK_ENTRY_CERTIFICATE_1213
prompt =========================================
prompt
create table ALLSYS.BAK_ENTRY_CERTIFICATE_1213
(
  ENTRY_ID  VARCHAR2(18) not null,
  DOCU_CODE VARCHAR2(1) not null,
  CERT_CODE VARCHAR2(32) not null
)
;

prompt
prompt Creating table BAK_ENTRY_CONTAINER_1213
prompt =======================================
prompt
create table ALLSYS.BAK_ENTRY_CONTAINER_1213
(
  ENTRY_ID     VARCHAR2(18) not null,
  CONTAINER_ID VARCHAR2(32) not null,
  CONTAINER_WT NUMBER(19,5)
)
;

prompt
prompt Creating table BAK_ENTRY_HEAD_1213
prompt ==================================
prompt
create table ALLSYS.BAK_ENTRY_HEAD_1213
(
  ENTRY_ID           VARCHAR2(18) not null,
  PRE_ENTRY_ID       VARCHAR2(18),
  ID_CHK             VARCHAR2(1),
  I_E_FLAG           VARCHAR2(1),
  I_E_PORT           VARCHAR2(4),
  I_E_DATE           DATE,
  D_DATE             DATE,
  DESTINATION_PORT   VARCHAR2(4),
  TRAF_NAME          VARCHAR2(255),
  VOYAGE_NO          VARCHAR2(32),
  TRAF_MODE          VARCHAR2(1),
  TRADE_CO           VARCHAR2(10),
  TRADE_NAME         VARCHAR2(255),
  DISTRICT_CODE      VARCHAR2(5),
  OWNER_CODE         VARCHAR2(10),
  OWNER_NAME         VARCHAR2(255),
  AGENT_CODE         VARCHAR2(10),
  AGENT_NAME         VARCHAR2(255),
  CONTR_NO           VARCHAR2(32),
  IN_RATIO           NUMBER(19,5),
  BILL_NO            VARCHAR2(32),
  TRADE_COUNTRY      VARCHAR2(3),
  TRADE_MODE         VARCHAR2(4),
  CUT_MODE           VARCHAR2(3),
  TRANS_MODE         VARCHAR2(1),
  CONTAINER_NO       NUMBER(19,4),
  PAY_WAY            VARCHAR2(1),
  FEE_MARK           VARCHAR2(1),
  FEE_CURR           VARCHAR2(3),
  FEE_RATE           NUMBER(19,5),
  INSUR_MARK         VARCHAR2(1),
  INSUR_CURR         VARCHAR2(3),
  INSUR_RATE         NUMBER(19,5),
  OTHER_MARK         VARCHAR2(1),
  OTHER_CURR         VARCHAR2(3),
  OTHER_RATE         NUMBER(19,5),
  PACK_NO            NUMBER(19),
  GROSS_WT           NUMBER(19,5),
  NET_WT             NUMBER(19,5),
  WRAP_TYPE          VARCHAR2(32),
  MANUAL_NO          VARCHAR2(12),
  LICENSE_NO         VARCHAR2(20),
  APPR_NO            VARCHAR2(32),
  NOTE_S             VARCHAR2(255),
  DECL_PORT          VARCHAR2(4),
  CO_OWNER           VARCHAR2(1),
  TAXY_RG_NO         VARCHAR2(32),
  MNL_JGF_FLAG       VARCHAR2(1),
  SERVICE_FEE        NUMBER(19,4),
  SERVICE_RATE       NUMBER(19,5),
  RELATIVE_ID        VARCHAR2(18),
  BONDED_NO          VARCHAR2(32),
  BP_NO              VARCHAR2(255),
  TYPIST_NO          VARCHAR2(32),
  INPUT_NO           VARCHAR2(32),
  P_DATE             DATE,
  CTA_CHK_RESULT     VARCHAR2(255),
  MODI_NO            NUMBER(19),
  EDI_ID             VARCHAR2(1),
  STATUS_RESULT      VARCHAR2(120),
  DECLARE_NO         VARCHAR2(32),
  JOU_EVENT          VARCHAR2(15),
  JOU_FLAG           VARCHAR2(15),
  EDI_REMARK         VARCHAR2(32),
  PARTNER_ID         VARCHAR2(20),
  CUSTOMS_FIELD      VARCHAR2(8),
  ENTRY_TYPE         VARCHAR2(4),
  RELATIVE_MANUAL_NO VARCHAR2(12),
  PRICE_RANGE        NUMBER(19,4),
  SPECIAL_FLAG       VARCHAR2(1),
  DELAY_DAYS         NUMBER(19),
  DELAY_ACCOUNT      NUMBER(19,2),
  HASH_SIGN          VARCHAR2(380)
)
;

prompt
prompt Creating table BAK_ENTRY_LIST_1213
prompt ==================================
prompt
create table ALLSYS.BAK_ENTRY_LIST_1213
(
  ENTRY_ID       VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  CONTR_ITEM     NUMBER(19),
  TRADE_CURR     VARCHAR2(3),
  EXCHANGE_RATE  NUMBER(19,7),
  DECL_PRICE     NUMBER(19,5),
  DECL_TOTAL     NUMBER(19,4),
  USE_TO         VARCHAR2(2),
  DUTY_MODE      VARCHAR2(1),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  QTY_1          NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  QTY_2          NUMBER(19,5),
  UNIT_2         VARCHAR2(3),
  TRADE_TOTAL    NUMBER(19,4),
  RMB_PRICE      NUMBER(19),
  USD_PRICE      NUMBER(19),
  DUTY_VALUE     NUMBER(19),
  G_PROCESS_MARK VARCHAR2(2),
  WORK_USD       NUMBER(19,4),
  CLASS_MARK     VARCHAR2(1),
  G_CERT_FLAG    VARCHAR2(32),
  TARIFF_MARK    VARCHAR2(32),
  DUTY_TYPE      VARCHAR2(1),
  REAL_DUTY      NUMBER(19,4),
  DUTY_CUT       NUMBER(19,4),
  DUTY_RATE      NUMBER(19,5),
  D_RATE         NUMBER(19,5),
  QTY_DUTY_RATE  NUMBER(19,5),
  QTY_D_RATE     NUMBER(19,5),
  TAX_TYPE       VARCHAR2(1),
  REAL_TAX       NUMBER(19,4),
  TAX_CUT        NUMBER(19,4),
  TAX_RATE       NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  QTY_TAX_RATE   NUMBER(19,5),
  QTY_T_RATE     NUMBER(19,5),
  REG_TYPE       VARCHAR2(1),
  REAL_REG       NUMBER(19,4),
  REG_CUT        NUMBER(19,4),
  REG_RATE       NUMBER(19,5),
  R_RATE         NUMBER(19,5),
  QTY_REG_RATE   NUMBER(19,5),
  QTY_R_RATE     NUMBER(19,5),
  OIL_TYPE       VARCHAR2(1),
  REAL_OIL       NUMBER(19,4),
  OIL_CUT        NUMBER(19,4),
  OIL_RATE       NUMBER(19,5),
  O_RATE         NUMBER(19,5),
  QTY_OIL_RATE   NUMBER(19,5),
  QTY_O_RATE     NUMBER(19,5),
  ANTI_TYPE      VARCHAR2(1),
  REAL_ANTI      NUMBER(19,4),
  ANTI_CUT       NUMBER(19,4),
  ANTI_RATE      NUMBER(19,5),
  A_RATE         NUMBER(19,5),
  QTY_ANTI_RATE  NUMBER(19,5),
  QTY_A_RATE     NUMBER(19,5),
  PRDT_NO        VARCHAR2(32),
  GOODS_ID       VARCHAR2(32),
  DECL_CODE_TS   VARCHAR2(16),
  AGREEMENT_ID   VARCHAR2(2),
  RSV1_TYPE      VARCHAR2(1),
  REAL_RSV1      NUMBER(19,4),
  RSV1_CUT       NUMBER(19,4),
  RSV1_RATE      NUMBER(19,5),
  R1_RATE        NUMBER(19,5),
  QTY_RSV1_RATE  NUMBER(19,5),
  QTY_R1_RATE    NUMBER(19,5),
  RSV2_TYPE      VARCHAR2(1),
  REAL_RSV2      NUMBER(19,4),
  RSV2_CUT       NUMBER(19,4),
  RSV2_RATE      NUMBER(19,5),
  R2_RATE        NUMBER(19,5),
  QTY_RSV2_RATE  NUMBER(19,5),
  QTY_R2_RATE    NUMBER(19,5)
)
;

prompt
prompt Creating table BAK_EX_CONTRACT_LIST
prompt ===================================
prompt
create table ALLSYS.BAK_EX_CONTRACT_LIST
(
  MANUAL_NO      VARCHAR2(12) not null,
  CONTR_ITEM     NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  CLASS_MARK     VARCHAR2(1),
  G_NAME         VARCHAR2(50),
  G_MODEL        VARCHAR2(50),
  ORIGIN_COUNTRY VARCHAR2(3),
  DUTY_MODE      VARCHAR2(1),
  DUTY_RATIO     NUMBER(19,5),
  LOCAL_CONTR    VARCHAR2(20),
  APPR_AMT       NUMBER(19,5),
  FACT_AMT       NUMBER(19,5),
  UNIT_PRICE     NUMBER(19,10),
  APPR_QTY       NUMBER(19,5),
  FACT_QTY       NUMBER(19,5),
  TRANSFER_QTY   NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  IN_COUNT       NUMBER(19),
  WORK_PAY       NUMBER(19),
  CURR_WORK      VARCHAR2(3),
  CONSUME_NOTE   VARCHAR2(255)
)
;
alter table ALLSYS.BAK_EX_CONTRACT_LIST
  add constraint PK_BAK_EX_CONTRACT_LIST primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table BAK_EX_FASCICLE_LIST
prompt ===================================
prompt
create table ALLSYS.BAK_EX_FASCICLE_LIST
(
  MANUAL_NO   VARCHAR2(12),
  FASCICLE_NO VARCHAR2(12) not null,
  CONTR_ITEM  NUMBER(19) not null,
  APPR_QTY    NUMBER(19,4),
  FACT_QTY    NUMBER(19,4)
)
;
alter table ALLSYS.BAK_EX_FASCICLE_LIST
  add constraint PK_BAK_EX_FASCICLE_LIST primary key (FASCICLE_NO, CONTR_ITEM);

prompt
prompt Creating table BAK_FASCICLE_HEAD
prompt ================================
prompt
create table ALLSYS.BAK_FASCICLE_HEAD
(
  MANUAL_NO       VARCHAR2(12),
  FASCICLE_NO     VARCHAR2(12) not null,
  PRE_FASCICLE_NO VARCHAR2(12),
  I_E_PORT        VARCHAR2(4),
  TYPE_ER         VARCHAR2(8),
  TYPE_DATE       DATE,
  LIMIT_DATE      DATE,
  TRADE_CO        VARCHAR2(10),
  CHK_ER          VARCHAR2(8),
  RECHK_ER        VARCHAR2(8),
  PR_DATE         DATE,
  FASCICLE_TYPE   VARCHAR2(1),
  EXE_MARK        VARCHAR2(1),
  CONTR_IN        VARCHAR2(32),
  CONTR_OUT       VARCHAR2(32),
  IN_PNT          NUMBER(19),
  EX_PNT          NUMBER(19),
  SUPV_MARK       VARCHAR2(1),
  NOTE_S          VARCHAR2(255)
)
;
alter table ALLSYS.BAK_FASCICLE_HEAD
  add constraint PK_BAK_FASCICLE_HEAD primary key (FASCICLE_NO);

prompt
prompt Creating table BAK_IM_CONTRACT_LIST
prompt ===================================
prompt
create table ALLSYS.BAK_IM_CONTRACT_LIST
(
  MANUAL_NO      VARCHAR2(12) not null,
  CONTR_ITEM     NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  CLASS_MARK     VARCHAR2(1),
  G_NAME         VARCHAR2(50),
  G_MODEL        VARCHAR2(50),
  ORIGIN_COUNTRY VARCHAR2(3),
  DUTY_MODE      VARCHAR2(1),
  DUTY_RATIO     NUMBER(19,5),
  LOCAL_CONTR    VARCHAR2(20),
  APPR_AMT       NUMBER(19,5),
  FACT_AMT       NUMBER(19,5),
  UNIT_PRICE     NUMBER(19,10),
  APPR_QTY       NUMBER(19,5),
  FACT_QTY       NUMBER(19,5),
  TRANSFER_QTY   NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  IN_COUNT       NUMBER(19),
  IM_MODE        VARCHAR2(1),
  CONSUME_NOTE   VARCHAR2(255)
)
;
alter table ALLSYS.BAK_IM_CONTRACT_LIST
  add constraint PK_BAK_IM_CONTRACT_LIST primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table BAK_IM_FASCICLE_LIST
prompt ===================================
prompt
create table ALLSYS.BAK_IM_FASCICLE_LIST
(
  MANUAL_NO   VARCHAR2(12),
  FASCICLE_NO VARCHAR2(12) not null,
  CONTR_ITEM  NUMBER(19) not null,
  APPR_QTY    NUMBER(19,4),
  FACT_QTY    NUMBER(19,4)
)
;
alter table ALLSYS.BAK_IM_FASCICLE_LIST
  add constraint PK_BAK_IM_FASCICLE_LIST primary key (FASCICLE_NO, CONTR_ITEM);

prompt
prompt Creating table BANK_ACCOUNT
prompt ===========================
prompt
create table ALLSYS.BANK_ACCOUNT
(
  MANUAL_NO        VARCHAR2(12) not null,
  ID_STAT          VARCHAR2(2) not null,
  RECEIVE_DATE     DATE not null,
  M_CONTR_NO       VARCHAR2(32),
  M_OWNER_NAME     VARCHAR2(32),
  M_LIMIT_DATE     DATE,
  M_ACCOUNT_AMT    NUMBER(19,5),
  M_DEAL_MARK      VARCHAR2(1),
  M_TYPE_DATE      DATE,
  M_BANK_NOTE_NO   VARCHAR2(32),
  M_BANK_OPEN_DATE DATE,
  M_BANK_NOTE_DATE DATE,
  M_APPR_DATE      DATE,
  M_NEXT_FLAG      VARCHAR2(2),
  CONTR_NO         VARCHAR2(32),
  OWNER_NAME       VARCHAR2(32),
  LIMIT_DATE       DATE,
  ACCOUNT_AMT      NUMBER(19,5),
  DEAL_MARK        VARCHAR2(1),
  TYPE_DATE        DATE,
  BANK_NOTE_NO     VARCHAR2(32),
  BANK_OPEN_DATE   DATE,
  BANK_NOTE_DATE   DATE,
  APPR_DATE        DATE,
  BANK_ID          VARCHAR2(20),
  NEXT_FLAG        VARCHAR2(2),
  PORT_CODE        VARCHAR2(4),
  COMP_RESULT      VARCHAR2(32)
)
;
alter table ALLSYS.BANK_ACCOUNT
  add constraint PK_BANK_ACCOUNT primary key (MANUAL_NO, ID_STAT, RECEIVE_DATE);

prompt
prompt Creating table BCK_COP_HEAD
prompt ===========================
prompt
create table ALLSYS.BCK_COP_HEAD
(
  TRADE_CODE      VARCHAR2(12) not null,
  CUSTOMS_CODE    VARCHAR2(4),
  REG_CO          VARCHAR2(255),
  ADDR_CO         VARCHAR2(255),
  RISK_VALUE      NUMBER(19,5),
  RISK_TYPE       VARCHAR2(1),
  LAW_MAN         VARCHAR2(32),
  TEL_CO          VARCHAR2(32),
  CONTAC_CO       VARCHAR2(32),
  TEL_CONTAC      VARCHAR2(32),
  INV_CO          VARCHAR2(255),
  INV_COUNTRY     VARCHAR2(3),
  RG_FUND         NUMBER(19,5),
  TRADE_AREA      VARCHAR2(255),
  STAFF_NUM       NUMBER(6),
  EMS_TYPE        VARCHAR2(1),
  EMS_NO          VARCHAR2(12),
  LAST_CHECK_DATE DATE,
  PRODUCE_TYPE    VARCHAR2(1),
  NOTE            VARCHAR2(255),
  RISK_VALUE_MARK VARCHAR2(1),
  RISK_TYPE_MARK  VARCHAR2(1),
  RISK_CALC_DATE  DATE,
  RISK_AUTO_DATE  DATE,
  MARK_1          VARCHAR2(1)
)
;
alter table ALLSYS.BCK_COP_HEAD
  add constraint PK_BCK_COP_HEAD primary key (TRADE_CODE);
create index ALLSYS.IX_BCK_COP_HEAD_INDEX1 on ALLSYS.BCK_COP_HEAD (TRADE_CODE, CUSTOMS_CODE);

prompt
prompt Creating table BCK_COP_LIST
prompt ===========================
prompt
create table ALLSYS.BCK_COP_LIST
(
  TRADE_CODE   VARCHAR2(12) not null,
  RISK_NO      NUMBER(19) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  RISK_VALUE   NUMBER(4)
)
;
alter table ALLSYS.BCK_COP_LIST
  add constraint PK_BCK_COP_LIST primary key (TRADE_CODE, RISK_NO, CUSTOMS_CODE);

prompt
prompt Creating table BCK_COP_LIST_TEMP
prompt ================================
prompt
create table ALLSYS.BCK_COP_LIST_TEMP
(
  TRADE_CO     VARCHAR2(12) not null,
  RISK_NO      NUMBER(19) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  RISK_VALUE   NUMBER(4),
  VALUE        NUMBER(19,5)
)
;
alter table ALLSYS.BCK_COP_LIST_TEMP
  add constraint PK_BCK_COP_LIST_TEMP primary key (TRADE_CO, RISK_NO, CUSTOMS_CODE);

prompt
prompt Creating table BCK_COP_PARA_HEAD
prompt ================================
prompt
create table ALLSYS.BCK_COP_PARA_HEAD
(
  RISK_NO      NUMBER(19) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  RISK_NAME    VARCHAR2(255),
  RISK_DESC    VARCHAR2(255),
  WEIGHT_VALUE NUMBER(4),
  WEIGHT_TYPE  VARCHAR2(1),
  DEGREE       VARCHAR2(1),
  SOURCE       VARCHAR2(1),
  SWITCH       VARCHAR2(1),
  NOTE         VARCHAR2(255)
)
;
alter table ALLSYS.BCK_COP_PARA_HEAD
  add constraint PK_BCK_COP_PARA_HEAD primary key (RISK_NO, CUSTOMS_CODE);

prompt
prompt Creating table BCK_COP_PARA_LIST
prompt ================================
prompt
create table ALLSYS.BCK_COP_PARA_LIST
(
  RISK_NO        NUMBER(19) not null,
  RISK_VALUE     NUMBER(4) not null,
  CUSTOMS_CODE   VARCHAR2(4) not null,
  RISK_LIST_DESC VARCHAR2(255) not null
)
;
alter table ALLSYS.BCK_COP_PARA_LIST
  add constraint PK_BCK_COP_PARA_LIST primary key (RISK_NO, RISK_VALUE, CUSTOMS_CODE);

prompt
prompt Creating table BCK_EXECUTOR
prompt ===========================
prompt
create table ALLSYS.BCK_EXECUTOR
(
  BCK_NO   VARCHAR2(12) not null,
  EXECUTOR VARCHAR2(8) not null
)
;
alter table ALLSYS.BCK_EXECUTOR
  add constraint PK_BCK_EXECUTOR primary key (BCK_NO, EXECUTOR);

prompt
prompt Creating table BCK_HANDOVER
prompt ===========================
prompt
create table ALLSYS.BCK_HANDOVER
(
  HANDOVER_NO    VARCHAR2(12) not null,
  CREATE_DATE    DATE,
  HANDOVER_TYPE  VARCHAR2(1),
  HANDOVER_DEP   VARCHAR2(127),
  ACCEPT_DEP     VARCHAR2(127),
  SUSPECT_CO     VARCHAR2(127),
  SUSPECT_ER     VARCHAR2(127),
  SUSPECT_NOTE   VARCHAR2(255),
  ACCEPT_STATUS  VARCHAR2(1),
  SUSPECT_STATUS VARCHAR2(1),
  SUSPECT_AMT    NUMBER(19,5),
  FEEDBACK       VARCHAR2(2560),
  ADDENDA_LIST   VARCHAR2(50),
  OTHER_DOC      VARCHAR2(255),
  ACTOR_NOTION   VARCHAR2(255),
  MASTER_NOTION  VARCHAR2(255),
  DEP_NOTION     VARCHAR2(255)
)
;
alter table ALLSYS.BCK_HANDOVER
  add constraint PK_BCK_HANDOVER primary key (HANDOVER_NO);
create index ALLSYS.IX_BCK_HANDOVER_INDEX1 on ALLSYS.BCK_HANDOVER (HANDOVER_NO, CREATE_DATE, HANDOVER_TYPE);

prompt
prompt Creating table BCK_HANDOVER_TYPE
prompt ================================
prompt
create table ALLSYS.BCK_HANDOVER_TYPE
(
  HANDOVER_TYPE VARCHAR2(1) not null,
  ID            NUMBER(3) not null,
  DESCRIPTION   VARCHAR2(100)
)
;
alter table ALLSYS.BCK_HANDOVER_TYPE
  add constraint PK_BCK_HANDOVER_TYPE primary key (HANDOVER_TYPE, ID);

prompt
prompt Creating table BCK_HEAD
prompt =======================
prompt
create table ALLSYS.BCK_HEAD
(
  BCK_NO                VARCHAR2(12) not null,
  PRE_BCK_NO            VARCHAR2(12),
  TRADE_CODE            VARCHAR2(10),
  REG_CO                VARCHAR2(255),
  CO_CLASS              VARCHAR2(1),
  ADDR_CO               VARCHAR2(255),
  CONTAC_CO             VARCHAR2(32),
  TEL_CO                VARCHAR2(32),
  RISK_VALUE            NUMBER(19,5),
  EMS_NO                VARCHAR2(12),
  CODE_TS_LIST          VARCHAR2(255),
  CHECK_PROP            VARCHAR2(1),
  CHECK_TYPE            VARCHAR2(1),
  CHECK_MODE            VARCHAR2(1),
  URGENT_DEGREE         VARCHAR2(1),
  CHECK_LIST            VARCHAR2(255),
  ASS_INFO              VARCHAR2(255),
  APPLY_INPUTER         VARCHAR2(8),
  APPLY_CUSTOMS_CODE    VARCHAR2(4),
  APPLY_POS             VARCHAR2(4),
  APPLY_COMMIT_DATE     DATE,
  APPLY_CHECKER         VARCHAR2(8),
  APPLY_CHECK_DATE      DATE,
  APPLY_FLAG            VARCHAR2(1),
  EVALUATE_NOTE         VARCHAR2(1023),
  EVALUATER             VARCHAR2(8),
  EVALUATE_DATE         DATE,
  EVALUATE_FLAG         VARCHAR2(1),
  ALC_ER                VARCHAR2(8),
  ALC_DATE              DATE,
  EXECUTOR              VARCHAR2(255),
  CHECK_DETAIL          VARCHAR2(2560),
  CHECK_DATE            DATE,
  CHECK_RESULT          VARCHAR2(1),
  CHECK_INPUTER         VARCHAR2(8),
  EXEC_CHECKER          VARCHAR2(8),
  EXEC_CHECK_DATE       DATE,
  EXEC_CHECK_FLAG       VARCHAR2(1),
  END_RESULT            VARCHAR2(1),
  END_CHECKER           VARCHAR2(8),
  END_CHECK_DATE        DATE,
  RELATIVE_NO           VARCHAR2(12),
  HANDOVER_NO           VARCHAR2(12),
  CASE_NO               VARCHAR2(32),
  DUTY                  NUMBER(19,5),
  TAX                   NUMBER(19,5),
  PAY_TAX               NUMBER(19,5),
  EXE_MARK              VARCHAR2(2),
  EXE_MARK_DATE         DATE,
  NOTE                  VARCHAR2(255),
  CHECK_LIMIT_DATE      DATE,
  REQUIRE_SENDER        VARCHAR2(8),
  REQUIRE_SEND_DATE     DATE,
  REQUIRE_CUSTOMS_CODE  VARCHAR2(4),
  REQUIRE_REJ_DATE      DATE,
  CHECK_FEEDBACK_DATE   DATE,
  IMPROVE_RESULT        VARCHAR2(512),
  IMPROVE_FEEDBACK_DATE DATE
)
;
alter table ALLSYS.BCK_HEAD
  add constraint PK_BCK_HEAD primary key (BCK_NO);
create index ALLSYS.IX_BCK_HEAD_INDEX1 on ALLSYS.BCK_HEAD (APPLY_CUSTOMS_CODE, EXE_MARK, EXE_MARK_DATE, APPLY_POS, BCK_NO);

prompt
prompt Creating table BCK_SEQ
prompt ======================
prompt
create table ALLSYS.BCK_SEQ
(
  BCK_KEY VARCHAR2(10) not null,
  BCK_SEQ NUMBER(16)
)
;
alter table ALLSYS.BCK_SEQ
  add constraint PK_BCK_SEQ primary key (BCK_KEY);

prompt
prompt Creating table BCK_STOCK_HEAD
prompt =============================
prompt
create table ALLSYS.BCK_STOCK_HEAD
(
  SEQ_NO         VARCHAR2(18) not null,
  TRADE_CODE     VARCHAR2(10),
  COP_INNER_NO   VARCHAR2(20),
  TRADE_NAME     VARCHAR2(255),
  DECL_DATE      DATE,
  DECL_TYPE      VARCHAR2(1),
  CHECK_TIMES    NUMBER(19),
  CHECK_DATE     DATE,
  EMS_TYPE       VARCHAR2(1),
  EMS_NO         VARCHAR2(12),
  REG_NAME       VARCHAR2(255),
  REG_ADDR       VARCHAR2(255),
  LAW_MAN        VARCHAR2(32),
  TELE_ENT       VARCHAR2(32),
  CONTACT_PERSON VARCHAR2(32),
  TEL_CO         VARCHAR2(32),
  INVESTOR       VARCHAR2(255),
  INV_COUNTRY    VARCHAR2(3),
  RG_FUND        NUMBER(19,5),
  ECO_CY         VARCHAR2(1),
  COP_RANGE      VARCHAR2(1024),
  EMPLOYER       NUMBER(10),
  WORKSHOP_SRC   VARCHAR2(255),
  EQUIP_SRC      VARCHAR2(255),
  NOTE           VARCHAR2(255)
)
;
alter table ALLSYS.BCK_STOCK_HEAD
  add constraint PK_BCK_STOCK_HEAD primary key (SEQ_NO);
create index ALLSYS.IX_BCK_STOCK_HEAD_INDEX1 on ALLSYS.BCK_STOCK_HEAD (TRADE_CODE);

prompt
prompt Creating table BCK_STOCK_LIST
prompt =============================
prompt
create table ALLSYS.BCK_STOCK_LIST
(
  SEQ_NO         VARCHAR2(18) not null,
  LIST_NO        NUMBER(19) not null,
  TRADE_CODE     VARCHAR2(10),
  COP_INNER_NO   VARCHAR2(20),
  ITEM_NO        NUMBER(19),
  CODE_T_S       VARCHAR2(10),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  UNIT           VARCHAR2(3),
  IMG_STOCK_QTY  NUMBER(19,5),
  IMG_ONLINE_QTY NUMBER(19,5),
  IMG_IN_QTY     NUMBER(19,5),
  EXG_CONV_QTY   NUMBER(19,5),
  OUT_IMG_QTY    NUMBER(19,5),
  ABAN_QTY       NUMBER(19,5),
  ON_WAY_QTY     NUMBER(19,5),
  T_STOCK_QTY    NUMBER(19,5)
)
;
alter table ALLSYS.BCK_STOCK_LIST
  add constraint PK_BCK_STOCK_LIST primary key (SEQ_NO, LIST_NO);

prompt
prompt Creating table BCK_WORKFLOW
prompt ===========================
prompt
create table ALLSYS.BCK_WORKFLOW
(
  BCK_NO      VARCHAR2(12) not null,
  CREATE_DATE DATE not null,
  STEP_ID     VARCHAR2(2) not null,
  OPER_ID     VARCHAR2(2) not null,
  NOTE        VARCHAR2(255),
  OPER_ER     VARCHAR2(8),
  REALTIVE_NO VARCHAR2(12)
)
;
alter table ALLSYS.BCK_WORKFLOW
  add constraint PK_BCK_WORKFLOW primary key (BCK_NO, STEP_ID, OPER_ID, CREATE_DATE);
create index ALLSYS.IX_BCK_WORKFLOW_INDEX1 on ALLSYS.BCK_WORKFLOW (BCK_NO, OPER_ER);

prompt
prompt Creating table BTI_DATA_CONTA_LIST
prompt ==================================
prompt
create table ALLSYS.BTI_DATA_CONTA_LIST
(
  UCR_CODE     VARCHAR2(35) not null,
  CONTAINER_ID VARCHAR2(32) not null,
  SEAL_NO      VARCHAR2(12)
)
;
alter table ALLSYS.BTI_DATA_CONTA_LIST
  add constraint PK_BTI_DATA_CONTA_LIST primary key (UCR_CODE, CONTAINER_ID);

prompt
prompt Creating table BTI_DATA_HEAD
prompt ============================
prompt
create table ALLSYS.BTI_DATA_HEAD
(
  UCR_CODE         VARCHAR2(35) not null,
  ENTRY_ID         VARCHAR2(18),
  CREATE_DATE      DATE not null,
  OP_MODE          VARCHAR2(3),
  STATUS_CODE      VARCHAR2(32),
  I_E_FLAG         VARCHAR2(1),
  I_E_PORT         VARCHAR2(11),
  TRADE_CO         VARCHAR2(17),
  TRADE_NAME       VARCHAR2(255),
  TRAF_NAME        VARCHAR2(255),
  VOYAGE_NO        VARCHAR2(32),
  BILL_NO          VARCHAR2(35),
  OUT_PORT_DATE    DATE,
  TRADE_PORT       VARCHAR2(11),
  PACK_NO          NUMBER(19),
  REL_DATE         DATE,
  HASH_SIGN        VARCHAR2(380),
  CUSTOMS_REMARK   VARCHAR2(11),
  CONSIGNOR_NAME   VARCHAR2(70),
  DESTINATION_PORT VARCHAR2(11),
  SEND_DATE        DATE
)
;
alter table ALLSYS.BTI_DATA_HEAD
  add constraint PK_BTI_DATA_HEAD primary key (UCR_CODE, CREATE_DATE);
create index ALLSYS.IDX_BTIDATAHEAD_CREATEDATE on ALLSYS.BTI_DATA_HEAD (CREATE_DATE);

prompt
prompt Creating table BTI_DATA_TS_LIST
prompt ===============================
prompt
create table ALLSYS.BTI_DATA_TS_LIST
(
  UCR_CODE VARCHAR2(35) not null,
  G_NO     NUMBER(19) not null,
  CODE_TS  VARCHAR2(16),
  G_NAME   VARCHAR2(255),
  PACK_NO  NUMBER(19)
)
;
alter table ALLSYS.BTI_DATA_TS_LIST
  add constraint PK_BTI_DATA_TS_LIST primary key (UCR_CODE, G_NO);

prompt
prompt Creating table BWS_AUDIT_HEAD
prompt =============================
prompt
create table ALLSYS.BWS_AUDIT_HEAD
(
  AUDIT_NO         VARCHAR2(18) not null,
  EPORT_NO         VARCHAR2(18),
  AUDIT_TYPE       VARCHAR2(1),
  I_E_FLAG         VARCHAR2(1),
  MASTER_CUSTOMS   VARCHAR2(4),
  I_E_DATE         DATE,
  DECL_DATE        DATE,
  TRADE_CODE       VARCHAR2(10),
  TRADE_NAME       VARCHAR2(128),
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(128),
  DECLARE_CODE     VARCHAR2(10),
  DECLARE_NAME     VARCHAR2(128),
  BWS_NO           VARCHAR2(12),
  AUDIT_NO_RELATED VARCHAR2(18),
  BWS_NO_RELATED   VARCHAR2(12),
  CHK_MARK         VARCHAR2(1),
  PACK_NO          NUMBER(19,5),
  GROSS_WT         NUMBER(19,5)
)
;
alter table ALLSYS.BWS_AUDIT_HEAD
  add constraint PK_BWS_AUDIT_HEAD primary key (AUDIT_NO);

prompt
prompt Creating table BWS_AUDIT_LIST
prompt =============================
prompt
create table ALLSYS.BWS_AUDIT_LIST
(
  AUDIT_NO VARCHAR2(18) not null,
  G_NO     NUMBER(19) not null,
  G_TYPE   VARCHAR2(1) not null,
  CODE_TS  VARCHAR2(16),
  G_NAME   VARCHAR2(128),
  G_MODEL  VARCHAR2(128),
  BWS_G_NO NUMBER(19),
  QTY      NUMBER(19,5),
  UNIT     VARCHAR2(3),
  AMOUNT   NUMBER(19,5),
  CURR     VARCHAR2(3)
)
;
alter table ALLSYS.BWS_AUDIT_LIST
  add constraint PK_BWS_AUDIT_LIST primary key (AUDIT_NO, G_NO);

prompt
prompt Creating table BWS_DCR_BILL_LIST
prompt ================================
prompt
create table ALLSYS.BWS_DCR_BILL_LIST
(
  BWS_NO       VARCHAR2(12) not null,
  DCR_TIMES    NUMBER(19) not null,
  G_TYPE       VARCHAR2(2) not null,
  G_NO         VARCHAR2(18) not null,
  CUSTOMS_CODE VARCHAR2(4),
  TRANS_MODE   VARCHAR2(1),
  DECLARE_DATE DATE,
  TRANS_DATE   DATE,
  DU_CODE      VARCHAR2(2),
  NOTE         VARCHAR2(1)
)
;
alter table ALLSYS.BWS_DCR_BILL_LIST
  add constraint PK_BWS_DCR_BILL_LIST primary key (BWS_NO, DCR_TIMES, G_TYPE, G_NO);

prompt
prompt Creating table BWS_DCR_HEAD
prompt ===========================
prompt
create table ALLSYS.BWS_DCR_HEAD
(
  BWS_NO       VARCHAR2(12) not null,
  DCR_TIMES    NUMBER(19) not null,
  DCR_TYPE     VARCHAR2(1) not null,
  BWS_TYPE     VARCHAR2(1),
  EPORT_NO     VARCHAR2(18),
  TRADE_CODE   VARCHAR2(10),
  TRADE_NAME   VARCHAR2(128),
  BEGIN_DATE   DATE,
  END_DATE     DATE,
  IM_NUM       NUMBER(19),
  EX_NUM       NUMBER(19),
  CUSTOMS_CODE VARCHAR2(4),
  INPUT_DATE   DATE,
  INPUT_ER     VARCHAR2(8),
  DCR_DATE     DATE,
  NOTE         VARCHAR2(128),
  CHK_MARK     VARCHAR2(1),
  CHK_DATE     DATE,
  MESSAGE_TYPE VARCHAR2(8)
)
;
alter table ALLSYS.BWS_DCR_HEAD
  add constraint PK_BWS_DCR_HEAD primary key (BWS_NO, DCR_TIMES, DCR_TYPE);

prompt
prompt Creating table BWS_DCR_LIST
prompt ===========================
prompt
create table ALLSYS.BWS_DCR_LIST
(
  BWS_NO             VARCHAR2(12) not null,
  DCR_TIMES          NUMBER(19) not null,
  G_NO               NUMBER(19) not null,
  COP_G_NO           VARCHAR2(30),
  CODE_TS            VARCHAR2(10),
  G_NAME             VARCHAR2(128),
  G_MODEL            VARCHAR2(128),
  REMAIN_QTY         NUMBER(19,5),
  FACT_REMAIN_QTY    NUMBER(19,5),
  UNIT               VARCHAR2(3),
  REMAIN_AMOUNT      NUMBER(19,5),
  FACT_REMAIN_AMOUNT NUMBER(19,5),
  CURR               VARCHAR2(4),
  NOTE               VARCHAR2(1),
  QTY                NUMBER(19,5),
  AMOUNT             NUMBER(19,5),
  H_REMAIN_QTY       NUMBER(19,5),
  H_REMAIN_AMOUNT    NUMBER(19,5)
)
;
alter table ALLSYS.BWS_DCR_LIST
  add constraint PK_BWS_DCR_LIST primary key (BWS_NO, DCR_TIMES, G_NO);

prompt
prompt Creating table BWS_DEDUCT
prompt =========================
prompt
create table ALLSYS.BWS_DEDUCT
(
  BWS_ID       VARCHAR2(18) not null,
  ENTRY_G_NO   NUMBER(19) not null,
  BWS_NO       VARCHAR2(12),
  BWS_G_NO     NUMBER(19),
  BWS_G_TYPE   VARCHAR2(2),
  DU_CODE      VARCHAR2(2),
  IN_QTY       NUMBER(19,5),
  I_ACCOUNT    NUMBER(19,5),
  I_E_FLAG     VARCHAR2(1),
  I_CURR       VARCHAR2(4),
  I_E_PORT     VARCHAR2(128),
  TRADE_MODE   VARCHAR2(4),
  TRAF_MODE    VARCHAR2(1),
  VERIFY_MODE  VARCHAR2(2),
  VERIFY_DATE  DATE,
  VERIFY_ER    VARCHAR2(8),
  I_E_DATE     DATE,
  USD_ACCOUNT  NUMBER(19,5),
  JOU_MARK     VARCHAR2(1),
  DECLARE_DATE DATE,
  TRANS_MODE   VARCHAR2(1),
  CUSTOMS_CODE VARCHAR2(4),
  DCR_TIMES    NUMBER(19)
)
;
alter table ALLSYS.BWS_DEDUCT
  add constraint PK_BWS_DEDUCT primary key (BWS_ID, ENTRY_G_NO);
create index ALLSYS.IX_BWSDEDUCT_BWSGNO on ALLSYS.BWS_DEDUCT (BWS_NO, BWS_G_NO);
create index ALLSYS.IX_BWSDEDUCT_BWSNO on ALLSYS.BWS_DEDUCT (BWS_NO);
create index ALLSYS.IX_BWSDEDUCT_NO_TYPE on ALLSYS.BWS_DEDUCT (BWS_NO, BWS_G_TYPE);

prompt
prompt Creating table BWS_DEDUCT_LOG
prompt =============================
prompt
create table ALLSYS.BWS_DEDUCT_LOG
(
  BWS_ID      VARCHAR2(18) not null,
  BWS_NO      VARCHAR2(12) not null,
  CREATE_DATE DATE not null,
  JOU_MARK    VARCHAR2(1) not null,
  NOTE        VARCHAR2(1),
  VERIFY_ER   VARCHAR2(8)
)
;
alter table ALLSYS.BWS_DEDUCT_LOG
  add constraint PK_BWS_DEDUCT_LOG primary key (BWS_ID, BWS_NO, CREATE_DATE, JOU_MARK);

prompt
prompt Creating table BWS_EXAM_CERT_LIST
prompt =================================
prompt
create table ALLSYS.BWS_EXAM_CERT_LIST
(
  BWS_EXAM_NO VARCHAR2(16) not null,
  G_NO        NUMBER(19) not null,
  CERT_NO     VARCHAR2(18),
  PACK_NO     NUMBER(19,5),
  GROSS_WT    NUMBER(19,5),
  BILL_NO     VARCHAR2(32)
)
;
alter table ALLSYS.BWS_EXAM_CERT_LIST
  add constraint PK_BWS_EXAM_CERT_LIST primary key (BWS_EXAM_NO, G_NO);
create index ALLSYS.IX_BWSEXAMCERTLST_CERTNOTP on ALLSYS.BWS_EXAM_CERT_LIST (CERT_NO);

prompt
prompt Creating table BWS_EXAM_GOOD_LIST
prompt =================================
prompt
create table ALLSYS.BWS_EXAM_GOOD_LIST
(
  BWS_EXAM_NO VARCHAR2(16) not null,
  G_NO        NUMBER(19) not null,
  CERT_NO     VARCHAR2(18),
  CERT_G_NO   NUMBER(19),
  G_NAME      VARCHAR2(128),
  QTY         NUMBER(19,5),
  UNIT        VARCHAR2(3)
)
;
alter table ALLSYS.BWS_EXAM_GOOD_LIST
  add constraint PK_BWS_EXAM_GOOD_LIST primary key (BWS_EXAM_NO, G_NO);
create index ALLSYS.IX_BWSEXAMGDLST_CERTNO on ALLSYS.BWS_EXAM_GOOD_LIST (CERT_NO);

prompt
prompt Creating table BWS_EXAM_HEAD
prompt ============================
prompt
create table ALLSYS.BWS_EXAM_HEAD
(
  BWS_EXAM_NO    VARCHAR2(16) not null,
  EPORT_NO       VARCHAR2(18),
  EXAM_TYPE      VARCHAR2(1),
  CERT_TYPE      VARCHAR2(2),
  I_E_FLAG       VARCHAR2(1),
  BWS_NO         VARCHAR2(12),
  MASTER_CUSTOMS VARCHAR2(4),
  TRADE_CODE     VARCHAR2(10),
  TRADE_NAME     VARCHAR2(128),
  TRANSIT_CODE   VARCHAR2(10),
  TRANSIT_NAME   VARCHAR2(128),
  ENTRUST_CODE   VARCHAR2(10),
  ENTRUST_NAME   VARCHAR2(128),
  VEHICLE_NT     NUMBER(19,5),
  TOTAL_PACK_NO  NUMBER(19,5),
  TOTAL_WEIGHT   NUMBER(19,5),
  IC_CARD        VARCHAR2(18),
  SHIP_ID        VARCHAR2(18),
  CONTA_ID1      VARCHAR2(32),
  SEAL_NO1       VARCHAR2(101),
  CONTA_ID2      VARCHAR2(32),
  SEAL_NO2       VARCHAR2(101),
  INPUT_DATE     DATE,
  INPUT_ER       VARCHAR2(8),
  DECLARE_DATE   DATE,
  NOTE           VARCHAR2(255),
  CHK_MARK       VARCHAR2(1),
  PASS_MODE      VARCHAR2(10),
  PASS_TIME      DATE,
  KK_CODE        VARCHAR2(18),
  KK_PASS_WEIGHT NUMBER(19,5),
  PASS_REASON    VARCHAR2(255)
)
;
alter table ALLSYS.BWS_EXAM_HEAD
  add constraint PK_BWS_EXAM_HEAD primary key (BWS_EXAM_NO);

prompt
prompt Creating table BWS_EXAM_PASSCERT
prompt ================================
prompt
create table ALLSYS.BWS_EXAM_PASSCERT
(
  CERT_NO     VARCHAR2(18) not null,
  CERT_TYPE   VARCHAR2(2),
  FLAG        VARCHAR2(1),
  FLAG1       VARCHAR2(1),
  CREATE_DATE DATE,
  NOTE        VARCHAR2(32)
)
;
alter table ALLSYS.BWS_EXAM_PASSCERT
  add constraint PK_BWS_EXAM_PASSCERT primary key (CERT_NO);

prompt
prompt Creating table BWS_EXAM_TEMP
prompt ============================
prompt
create global temporary table ALLSYS.BWS_EXAM_TEMP
(
  BWS_EXAM_NO VARCHAR2(16) not null
)
on commit delete rows;
alter table ALLSYS.BWS_EXAM_TEMP
  add primary key (BWS_EXAM_NO);

prompt
prompt Creating table BWS_FORM_HEAD
prompt ============================
prompt
create table ALLSYS.BWS_FORM_HEAD
(
  FORM_ID        VARCHAR2(18) not null,
  EPORT_NO       VARCHAR2(18),
  BWS_NO         VARCHAR2(12),
  I_E_FLAG       VARCHAR2(1),
  RELATIVE_ID    VARCHAR2(12),
  MASTER_CUSTOMS VARCHAR2(4),
  TRADE_CODE     VARCHAR2(10),
  TRADE_NAME     VARCHAR2(128),
  OWNER_CODE     VARCHAR2(10),
  OWNER_NAME     VARCHAR2(128),
  DECLARE_CODE   VARCHAR2(10),
  DECLARE_NAME   VARCHAR2(128),
  BILL_NO        VARCHAR2(32),
  PACK_NO        NUMBER(19,5),
  WRAP_TYPE      VARCHAR2(32),
  GROSS_NT       NUMBER(19,5),
  GROSS_WT       NUMBER(19,5),
  NOTE           VARCHAR2(10),
  DECLARE_DATE   DATE,
  CHK_MARK       VARCHAR2(1)
)
;
alter table ALLSYS.BWS_FORM_HEAD
  add constraint PK_BWS_FORM_HEAD primary key (FORM_ID);

prompt
prompt Creating table BWS_FORM_LIST
prompt ============================
prompt
create table ALLSYS.BWS_FORM_LIST
(
  FORM_ID        VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  CONTR_ITEM     NUMBER(19),
  TRADE_CURR     VARCHAR2(3),
  EXCHANGE_RATE  NUMBER(19,7),
  DECL_PRICE     NUMBER(19,5),
  DECL_TOTAL     NUMBER(19,5),
  USE_TO         VARCHAR2(2),
  DUTY_MODE      VARCHAR2(1),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  QTY_1          NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  QTY_2          NUMBER(19,5),
  UNIT_2         VARCHAR2(3),
  TRADE_TOTAL    NUMBER(19,5),
  RMB_PRICE      NUMBER(19),
  USD_PRICE      NUMBER(19),
  DUTY_VALUE     NUMBER(19),
  G_PROCESS_MARK VARCHAR2(2),
  WORK_USD       NUMBER(19,5),
  CLASS_MARK     VARCHAR2(1),
  G_CERT_FLAG    VARCHAR2(32),
  PRDT_NO        VARCHAR2(32),
  GOODS_ID       VARCHAR2(32),
  DECL_CODE_TS   VARCHAR2(16),
  AGREEMENT_ID   VARCHAR2(2)
)
;
alter table ALLSYS.BWS_FORM_LIST
  add constraint PK_BWS_FORM_LIST primary key (FORM_ID, G_NO);

prompt
prompt Creating table BWS_GB_LIST
prompt ==========================
prompt
create table ALLSYS.BWS_GB_LIST
(
  BWS_NO       VARCHAR2(12) not null,
  G_NO         NUMBER(19) not null,
  BWS_G_NO     NUMBER(19),
  COP_G_NO     VARCHAR2(30),
  CODE_TS      VARCHAR2(10),
  CLASS_MARK   VARCHAR2(1),
  G_NAME       VARCHAR2(128),
  G_MODEL      VARCHAR2(128),
  UNIT         VARCHAR2(3),
  UNIT_1       VARCHAR2(3),
  UNIT_2       VARCHAR2(3),
  DEC_PRICE    NUMBER(19,5),
  CURR         VARCHAR2(4),
  COUNTRY_CODE VARCHAR2(4),
  DUTY_MODE    VARCHAR2(1),
  USE_TYPE     VARCHAR2(10),
  MODIFY_MARK  VARCHAR2(1),
  NOTE         VARCHAR2(10)
)
;
alter table ALLSYS.BWS_GB_LIST
  add constraint PK_BWS_GB_LIST primary key (BWS_NO, G_NO);

prompt
prompt Creating table BWS_HEAD
prompt =======================
prompt
create table ALLSYS.BWS_HEAD
(
  BWS_NO          VARCHAR2(12) not null,
  BWS_TYPE        VARCHAR2(1),
  EPORT_NO        VARCHAR2(18),
  MASTER_CUSTOMS  VARCHAR2(4),
  REGION_NO       VARCHAR2(9),
  DECLARE_TYPE    VARCHAR2(1),
  TRADE_CODE      VARCHAR2(10),
  TRADE_NAME      VARCHAR2(128),
  OWNER_CODE      VARCHAR2(10),
  OWNER_NAME      VARCHAR2(128),
  DECLARE_CODE    VARCHAR2(10),
  DECLARE_NAME    VARCHAR2(128),
  ADDRESS         VARCHAR2(128),
  PHONE           VARCHAR2(20),
  STORE_TYPE      VARCHAR2(1),
  STORE_VOL       NUMBER(19,5),
  STORE_AREA      NUMBER(19,5),
  STORE_ADDRESS   VARCHAR2(128),
  INPUT_DATE      DATE,
  DECLARE_DATE    DATE,
  CHK_MARK        VARCHAR2(1),
  EXE_MARK        VARCHAR2(1),
  NEW_APPR_DATE   DATE,
  CNG_APPR_DATE   DATE,
  CLEAR_DATE      DATE,
  NEXT_CLEAR_DATE DATE,
  NOTE            VARCHAR2(255),
  FIRST_QTY       NUMBER(19,5),
  FIRST_AMOUNT    NUMBER(19,5)
)
;
alter table ALLSYS.BWS_HEAD
  add constraint PK_BWS_HEAD primary key (BWS_NO);
create index ALLSYS.IX_BWSHEAD_CTCODE on ALLSYS.BWS_HEAD (MASTER_CUSTOMS, TRADE_CODE);

prompt
prompt Creating table BWS_LIST
prompt =======================
prompt
create table ALLSYS.BWS_LIST
(
  BWS_NO       VARCHAR2(12) not null,
  G_NO         NUMBER(19) not null,
  CODE_TS      VARCHAR2(10),
  CLASS_MARK   VARCHAR2(1),
  G_NAME       VARCHAR2(128),
  G_MODEL      VARCHAR2(128),
  UNIT         VARCHAR2(3),
  UNIT_1       VARCHAR2(3),
  UNIT_2       VARCHAR2(3),
  CURR         VARCHAR2(4),
  COUNTRY_CODE VARCHAR2(4),
  DUTY_MODE    VARCHAR2(1),
  USE_TYPE     VARCHAR2(10),
  DEC_PRICE    NUMBER(19,5),
  QTY          NUMBER(19,5),
  MAX_QTY      NUMBER(19,5),
  FIRST_QTY    NUMBER(19,5),
  FIRST_AMOUNT NUMBER(19,5),
  INC_AMOUNT   NUMBER(19,5),
  INC_QTY      NUMBER(19,5),
  CUT_AMOUNT   NUMBER(19,5),
  CUT_QTY      NUMBER(19,5),
  MODIFY_MARK  VARCHAR2(1),
  NOTE         VARCHAR2(10)
)
;
alter table ALLSYS.BWS_LIST
  add constraint PK_BWS_LIST primary key (BWS_NO, G_NO);

prompt
prompt Creating table BWS_MANIFEST_HEAD
prompt ================================
prompt
create table ALLSYS.BWS_MANIFEST_HEAD
(
  BWS_MANIFEST_NO   VARCHAR2(18) not null,
  EPORT_NO          VARCHAR2(18),
  BWS_NO            VARCHAR2(12),
  MASTER_CUSTOMS    VARCHAR2(4),
  DECLARE_CODE      VARCHAR2(10),
  DECLARE_NAME      VARCHAR2(128),
  DECLARE_DATE      DATE,
  I_E_DATE          DATE,
  I_E_PORT          VARCHAR2(4),
  TRAF_MODE         VARCHAR2(1),
  MANIFEST_NO       VARCHAR2(18),
  SHIP_ID           VARCHAR2(32),
  VOYAGE_NO         VARCHAR2(32),
  SHIP_NAME_CN      VARCHAR2(255),
  SHIP_NAME_EN      VARCHAR2(255),
  BILL_NUM          NUMBER(19),
  PACK_NO           NUMBER(19,5),
  GROSS_WT          NUMBER(19,5),
  CONTA_NUM         NUMBER(19),
  CHK_MARK          VARCHAR2(1),
  DESTINATION_PLACE VARCHAR2(8)
)
;
alter table ALLSYS.BWS_MANIFEST_HEAD
  add constraint PK_BWS_MANIFEST_HEAD primary key (BWS_MANIFEST_NO);

prompt
prompt Creating table BWS_MANIFEST_LIST
prompt ================================
prompt
create table ALLSYS.BWS_MANIFEST_LIST
(
  BWS_MANIFEST_NO VARCHAR2(18) not null,
  G_NO            NUMBER(19) not null,
  BILL_NO         VARCHAR2(32),
  MAIN_G_NAME     VARCHAR2(255),
  PACK_NO         NUMBER(19,5),
  BILL_GROSS_WT   NUMBER(19,5),
  CONTA_ID        VARCHAR2(32),
  SEAL_NO         VARCHAR2(32)
)
;
alter table ALLSYS.BWS_MANIFEST_LIST
  add constraint PK_BWS_MANIFEST_LIST primary key (BWS_MANIFEST_NO, G_NO);

prompt
prompt Creating table BWS_SEQ
prompt ======================
prompt
create table ALLSYS.BWS_SEQ
(
  BWS_KEY VARCHAR2(10) not null,
  BWS_SEQ NUMBER(16)
)
;
alter table ALLSYS.BWS_SEQ
  add constraint PK_BWS_SEQ primary key (BWS_KEY);

prompt
prompt Creating table BWS_VAR
prompt ======================
prompt
create table ALLSYS.BWS_VAR
(
  VAR_TYPE     VARCHAR2(16) not null,
  VAR_ID       VARCHAR2(32) not null,
  VAR_SUB_ID   VARCHAR2(32) default '0' not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  VAR_VALUE    VARCHAR2(128),
  VAR_VALUE1   VARCHAR2(128),
  VAR_VALUE2   VARCHAR2(128),
  VAR_VALUE3   VARCHAR2(128),
  VAR_DESC     VARCHAR2(128),
  MODIFY_TIME  DATE,
  VAR_ENABLED  VARCHAR2(1) default '1'
)
;
alter table ALLSYS.BWS_VAR
  add constraint PK_BWS_VAR primary key (VAR_TYPE, VAR_ID, VAR_SUB_ID, CUSTOMS_CODE);

prompt
prompt Creating table BWS_WORKFLOW
prompt ===========================
prompt
create table ALLSYS.BWS_WORKFLOW
(
  BWS_ID      VARCHAR2(18) not null,
  STEP_ID     VARCHAR2(8) not null,
  CREATE_DATE DATE not null,
  PROC_ER     VARCHAR2(20),
  PROC_ID     VARCHAR2(8),
  PROC_POS    VARCHAR2(4),
  PROC_RESULT VARCHAR2(128)
)
;
alter table ALLSYS.BWS_WORKFLOW
  add constraint PK_BWS_WORKFLOW primary key (BWS_ID, STEP_ID, CREATE_DATE);

prompt
prompt Creating table CCTS_ERROR_LOG
prompt =============================
prompt
create table ALLSYS.CCTS_ERROR_LOG
(
  SEQUENCE_NO     VARCHAR2(18) not null,
  FORM_TYPE       VARCHAR2(1),
  ENTRY_ID        VARCHAR2(18),
  G_NO            NUMBER(19),
  POSITION_ID     INTEGER,
  SUB_POSITION_ID INTEGER,
  COMMENTS        VARCHAR2(512),
  CREATE_DATE     DATE
)
;
alter table ALLSYS.CCTS_ERROR_LOG
  add constraint PK_CCTS_ERROR_LOG primary key (SEQUENCE_NO);
create index ALLSYS.IDX_CTS_ERR_CREATE_DATE on ALLSYS.CCTS_ERROR_LOG (CREATE_DATE);
create index ALLSYS.IDX_CTS_ERR_ENTRY_ID on ALLSYS.CCTS_ERROR_LOG (ENTRY_ID);

prompt
prompt Creating table CCTS_ONLINE_RESULT
prompt =================================
prompt
create table ALLSYS.CCTS_ONLINE_RESULT
(
  SEQUENCE_NO VARCHAR2(18) not null,
  FORM_TYPE   VARCHAR2(1),
  ENTRY_ID    VARCHAR2(18),
  CCTS_CODE   VARCHAR2(16),
  CREATE_DATE DATE,
  COMMENTS    VARCHAR2(255),
  G_NO        NUMBER(19),
  CODE_TS     VARCHAR2(16),
  G_NAME      VARCHAR2(255),
  G_MODEL     VARCHAR2(255),
  PROC_TYPE   VARCHAR2(4),
  DERIVE_CODE VARCHAR2(16),
  RSK_NO      VARCHAR2(15),
  PROC_IDEA   VARCHAR2(255),
  NOTE        VARCHAR2(255),
  P_DEPT      VARCHAR2(255)
)
;
alter table ALLSYS.CCTS_ONLINE_RESULT
  add constraint PK_CCTS_ONLINE_RESULT primary key (SEQUENCE_NO);
create index ALLSYS.IDX_COR_ENTRY_ID on ALLSYS.CCTS_ONLINE_RESULT (ENTRY_ID);

prompt
prompt Creating table CCTS_ONLINE_RESULT_BAK
prompt =====================================
prompt
create table ALLSYS.CCTS_ONLINE_RESULT_BAK
(
  SEQUENCE_NO VARCHAR2(18) not null,
  FORM_TYPE   VARCHAR2(1),
  ENTRY_ID    VARCHAR2(18),
  CCTS_CODE   VARCHAR2(16),
  CREATE_DATE DATE,
  COMMENTS    VARCHAR2(255),
  G_NO        NUMBER(19),
  CODE_TS     VARCHAR2(16),
  G_NAME      VARCHAR2(255),
  G_MODEL     VARCHAR2(255),
  PROC_TYPE   VARCHAR2(4),
  DERIVE_CODE VARCHAR2(16),
  RSK_NO      VARCHAR2(15),
  PROC_IDEA   VARCHAR2(255),
  NOTE        VARCHAR2(255),
  P_DEPT      VARCHAR2(255)
)
;
alter table ALLSYS.CCTS_ONLINE_RESULT_BAK
  add constraint PK_CCTS_ONLINE_RESULT_BAK primary key (SEQUENCE_NO);
create index ALLSYS.IDX_COR_BAK_ENTRY_ID on ALLSYS.CCTS_ONLINE_RESULT_BAK (ENTRY_ID);
create index ALLSYS.IDX_CTS_ORB_CREATEDATE on ALLSYS.CCTS_ONLINE_RESULT_BAK (CREATE_DATE);

prompt
prompt Creating table CCTS_PERFORMANCE
prompt ===============================
prompt
create table ALLSYS.CCTS_PERFORMANCE
(
  SEQUENCE_NO  VARCHAR2(18) not null,
  FORM_TYPE    VARCHAR2(1),
  ENTRY_ID     VARCHAR2(18),
  CUSTOMS_CODE VARCHAR2(4),
  CREATE_DATE  DATE,
  DEL_DIGIT    INTEGER default 0,
  MODI_DIGIT   INTEGER default 0,
  REJECT_DIGIT INTEGER default 0,
  VAL_DIGIT    INTEGER default 0,
  CHK_DIGIT    INTEGER default 0,
  FIT_DIGIT    INTEGER default 0,
  SPARE_DIGIT  INTEGER default 0,
  VAL_TOTAL    NUMBER(19,4) default 0,
  NOTE         VARCHAR2(255)
)
;
alter table ALLSYS.CCTS_PERFORMANCE
  add constraint PK_CCTS_PERFORMANCE primary key (SEQUENCE_NO);
create index ALLSYS.IDX_CTS_ENTRY_ID on ALLSYS.CCTS_PERFORMANCE (ENTRY_ID);

prompt
prompt Creating table CCTS_RSK_RESULT
prompt ==============================
prompt
create table ALLSYS.CCTS_RSK_RESULT
(
  CCTS_CODE    VARCHAR2(16) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  RSK_TYPE     VARCHAR2(1),
  RSK_LEVEL    VARCHAR2(1),
  RSK_COMMENT  VARCHAR2(255),
  INPUT_ID     VARCHAR2(8),
  OP_TIME      DATE
)
;
alter table ALLSYS.CCTS_RSK_RESULT
  add constraint PK_CCTS_RSK_RESULT primary key (CCTS_CODE, CUSTOMS_CODE);

prompt
prompt Creating table CCTS_RSK_RESULT_BAK
prompt ==================================
prompt
create table ALLSYS.CCTS_RSK_RESULT_BAK
(
  CCTS_CODE      VARCHAR2(16) not null,
  CUSTOMS_CODE   VARCHAR2(4) not null,
  RSK_TYPE       VARCHAR2(1),
  RSK_LEVEL      VARCHAR2(1),
  RSK_COMMENT    VARCHAR2(255),
  INPUT_ID       VARCHAR2(8),
  OP_TIME        DATE,
  OP_BAK_TYPE    VARCHAR2(8),
  OP_BAK_CUSTOMS VARCHAR2(4),
  OP_BAK_MAN     VARCHAR2(8),
  OP_BAK_TIME    DATE not null
)
;
alter table ALLSYS.CCTS_RSK_RESULT_BAK
  add constraint PK_CCTS_RSK_RESULT_BAK primary key (CCTS_CODE, CUSTOMS_CODE, OP_BAK_TIME);

prompt
prompt Creating table CDL_CERTIFICATE
prompt ==============================
prompt
create table ALLSYS.CDL_CERTIFICATE
(
  LIST_NO   VARCHAR2(18) not null,
  DOCU_CODE VARCHAR2(1) not null,
  CERT_CODE VARCHAR2(32) not null
)
;
alter table ALLSYS.CDL_CERTIFICATE
  add constraint PK_CDL_CERTIFICATE primary key (LIST_NO, DOCU_CODE, CERT_CODE);

prompt
prompt Creating table CDL_CHK
prompt ======================
prompt
create table ALLSYS.CDL_CHK
(
  LIST_NO     VARCHAR2(18) not null,
  PRE_LIST_NO VARCHAR2(18),
  SHIP_ID     VARCHAR2(255),
  VOYAGE_NO   VARCHAR2(32),
  BILL_NO     VARCHAR2(32),
  TRAF_MODE   VARCHAR2(32),
  I_E_FLAG    VARCHAR2(32),
  DECL_PORT   VARCHAR2(4),
  I_E_PORT    VARCHAR2(4),
  I_E_DATE    DATE,
  TRADE_NAME  VARCHAR2(255),
  AGENT_NAME  VARCHAR2(255),
  OWNER_NAME  VARCHAR2(255),
  TRADE_MODE  VARCHAR2(4),
  MANUAL_NO   VARCHAR2(12),
  PACK_NO     NUMBER(19,5),
  GROSS_WT    NUMBER(19,4),
  GEN_DATE    DATE,
  GEN_ER      VARCHAR2(8),
  CHK_MARK    VARCHAR2(1),
  CHK_DATE    DATE,
  CHK_ER      VARCHAR2(8)
)
;
alter table ALLSYS.CDL_CHK
  add constraint PK_CDL_CHK primary key (LIST_NO);
create index ALLSYS.IX_CDLCHK_BILL_NO on ALLSYS.CDL_CHK (BILL_NO, VOYAGE_NO, SHIP_ID, I_E_PORT);

prompt
prompt Creating table CDL_COMMODITY
prompt ============================
prompt
create table ALLSYS.CDL_COMMODITY
(
  RECORDS_NO     VARCHAR2(12) not null,
  PRE_RECORDS_NO VARCHAR2(18),
  TRADE_CO       VARCHAR2(10),
  G_NO           NUMBER(19) not null,
  FIT_FLAG       VARCHAR2(1),
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  G_UNIT         VARCHAR2(3),
  DECL_PRICE     NUMBER(19,5),
  TRADE_CURR     VARCHAR2(3),
  I_E_FLAG       VARCHAR2(1),
  ORIGIN_COUNTRY VARCHAR2(3),
  DISTRICT_CODE  VARCHAR2(5),
  LICENSE_NO     VARCHAR2(20),
  LICENSE_COUNT  NUMBER(19),
  LICENSE_DATE   DATE,
  MOD_TYPE       VARCHAR2(1),
  CUSTOMS_CODE   VARCHAR2(4)
)
;
alter table ALLSYS.CDL_COMMODITY
  add constraint PK_CDL_COMMODITY primary key (RECORDS_NO, G_NO);
create index ALLSYS.IX_CDLCOMMODITY_TRADECO on ALLSYS.CDL_COMMODITY (TRADE_CO, CUSTOMS_CODE);
create index ALLSYS.IX_PRE_RECORDS_NO on ALLSYS.CDL_COMMODITY (PRE_RECORDS_NO);

prompt
prompt Creating table CDL_COMPANY
prompt ==========================
prompt
create table ALLSYS.CDL_COMPANY
(
  TRADE_CO          VARCHAR2(10) not null,
  TRADE_NAME        VARCHAR2(255),
  CUSTOMS_CODE      VARCHAR2(4) not null,
  APP_MOD_FLAG      VARCHAR2(1),
  TRADE_BONDED_FLAG VARCHAR2(2) not null,
  GRT_TYPE          VARCHAR2(1),
  GRT_PRICE         NUMBER(19,4),
  GRT_DATE          DATE,
  APPROVE_DATE      DATE,
  IE_COUNT          NUMBER(19),
  PRE_COP_NO        VARCHAR2(18)
)
;
alter table ALLSYS.CDL_COMPANY
  add constraint PK_CDL_COMPANY primary key (TRADE_CO, CUSTOMS_CODE, TRADE_BONDED_FLAG);

prompt
prompt Creating table CDL_COMP_COMM_MODIFY_LOG
prompt =======================================
prompt
create table ALLSYS.CDL_COMP_COMM_MODIFY_LOG
(
  TRADE_CO     VARCHAR2(10) not null,
  RECORDS_NO   VARCHAR2(12),
  OP_TIME      DATE not null,
  MODI_TYPE    NUMBER(19) not null,
  ITEM_NAME    VARCHAR2(255) not null,
  ITEM_SOURCE  VARCHAR2(255),
  ITEM_CURRENT VARCHAR2(255),
  NOTES        VARCHAR2(255),
  CUSTOMS_CODE VARCHAR2(4)
)
;
alter table ALLSYS.CDL_COMP_COMM_MODIFY_LOG
  add constraint PK_CDL_COMP_COMM_MODIFY_LOG primary key (TRADE_CO, OP_TIME, MODI_TYPE, ITEM_NAME);

prompt
prompt Creating table CDL_COMP_COMM_OP_LOG
prompt ===================================
prompt
create table ALLSYS.CDL_COMP_COMM_OP_LOG
(
  TRADE_CO       VARCHAR2(10) not null,
  RECORDS_NO     VARCHAR2(12),
  PRE_RECORDS_NO VARCHAR2(18),
  CUSTOMS_CODE   VARCHAR2(4),
  RECORDS_DATE   DATE,
  PROC_TYPE      VARCHAR2(2) not null,
  PROC_ER        VARCHAR2(8),
  PROC_DATE      DATE not null,
  R_NOTES        VARCHAR2(255)
)
;
alter table ALLSYS.CDL_COMP_COMM_OP_LOG
  add constraint PK_CDL_COMP_COMM_OP_LOG primary key (TRADE_CO, PROC_DATE, PROC_TYPE);

prompt
prompt Creating table CDL_CONTAINER
prompt ============================
prompt
create table ALLSYS.CDL_CONTAINER
(
  LIST_NO      VARCHAR2(18) not null,
  CONTAINER_ID VARCHAR2(32) not null,
  CONTAINER_WT NUMBER(19,5)
)
;
alter table ALLSYS.CDL_CONTAINER
  add constraint PK_CDL_CONTAINER primary key (LIST_NO, CONTAINER_ID);

prompt
prompt Creating table CDL_DEL_CERTIFICATE_LOG
prompt ======================================
prompt
create table ALLSYS.CDL_DEL_CERTIFICATE_LOG
(
  LIST_NO   VARCHAR2(18) not null,
  DOCU_CODE VARCHAR2(1) not null,
  CERT_CODE VARCHAR2(32) not null
)
;
alter table ALLSYS.CDL_DEL_CERTIFICATE_LOG
  add constraint PK_CDL_CERT_LOG primary key (LIST_NO, DOCU_CODE, CERT_CODE);

prompt
prompt Creating table CDL_DEL_CONTAINER_LOG
prompt ====================================
prompt
create table ALLSYS.CDL_DEL_CONTAINER_LOG
(
  LIST_NO      VARCHAR2(18) not null,
  CONTAINER_ID VARCHAR2(32) not null,
  CONTAINER_WT NUMBER(19,5) not null
)
;
alter table ALLSYS.CDL_DEL_CONTAINER_LOG
  add constraint PK_CDL_CONTA_LOG primary key (LIST_NO, CONTAINER_ID, CONTAINER_WT);

prompt
prompt Creating table CDL_DEL_HEAD_LOG
prompt ===============================
prompt
create table ALLSYS.CDL_DEL_HEAD_LOG
(
  LIST_NO          VARCHAR2(18) not null,
  PRE_LIST_NO      VARCHAR2(18),
  I_E_FLAG         VARCHAR2(1),
  I_E_PORT         VARCHAR2(4),
  I_E_DATE         DATE,
  D_DATE           DATE,
  MANUAL_NO        VARCHAR2(12),
  TRADE_CO         VARCHAR2(10),
  TRADE_NAME       VARCHAR2(255),
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  TRAF_MODE        VARCHAR2(1),
  TRAF_NAME        VARCHAR2(255),
  VOYAGE_NO        VARCHAR2(32),
  BILL_NO          VARCHAR2(32),
  TRADE_MODE       VARCHAR2(4),
  LICENSE_NO       VARCHAR2(20),
  TRADE_COUNTRY    VARCHAR2(3),
  DESTINATION_PORT VARCHAR2(4),
  PACK_NO          NUMBER(19),
  WRAP_TYPE        VARCHAR2(32),
  GROSS_WT         NUMBER(19,5),
  NET_WT           NUMBER(19,5),
  NOTE_S           VARCHAR2(255),
  INPUT_NO         VARCHAR2(32),
  INPUT_CO         VARCHAR2(10),
  INPUT_NAME       VARCHAR2(255),
  AGENT_CODE       VARCHAR2(10),
  AGENT_NAME       VARCHAR2(255),
  DECL_PORT        VARCHAR2(4),
  INPUT_DATE       DATE,
  CTR_NOTES        VARCHAR2(255),
  STATUS_RESULT    VARCHAR2(120),
  IS_DECL          VARCHAR2(1),
  MODI_NO          NUMBER(19),
  EDI_REMARK       VARCHAR2(32),
  HASH_SIGN        VARCHAR2(380),
  EXCHANGE_RATE    NUMBER(19,7),
  RTX_DATE         DATE
)
;
alter table ALLSYS.CDL_DEL_HEAD_LOG
  add constraint PK_CDL_DEL_HEAD_LOG primary key (LIST_NO);

prompt
prompt Creating table CDL_DEL_LIST_LOG
prompt ===============================
prompt
create table ALLSYS.CDL_DEL_LIST_LOG
(
  LIST_NO        VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  RECORDS_NO     VARCHAR2(12),
  D_DATE         DATE,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  ORIGIN_COUNTRY VARCHAR2(3),
  DECL_PRICE     NUMBER(19,5),
  DECL_TOTAL     NUMBER(19,4),
  TRADE_CURR     VARCHAR2(3),
  DUTY_MODE      VARCHAR2(1),
  D_RATE         NUMBER(19,5),
  DUTY_RATE      NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  TAX_RATE       NUMBER(19,5),
  R_RATE         NUMBER(19,5),
  REG_RATE       NUMBER(19,5),
  TARIFF_MARK    VARCHAR2(32),
  EXCH_RATE      NUMBER(19,8),
  RMB_RATE       NUMBER(19,8),
  USD_RATE       NUMBER(19,8),
  G_CERT_FLAG    VARCHAR2(32),
  LIST_CONDITION VARCHAR2(255)
)
;
alter table ALLSYS.CDL_DEL_LIST_LOG
  add constraint PK_CDL_DEL_LIST_LOG primary key (LIST_NO, G_NO);

prompt
prompt Creating table CDL_EDI_MESS
prompt ===========================
prompt
create table ALLSYS.CDL_EDI_MESS
(
  MESS_CODE  VARCHAR2(4) not null,
  MESS_LEVEL VARCHAR2(1),
  MESS       VARCHAR2(255)
)
;
alter table ALLSYS.CDL_EDI_MESS
  add constraint PK_CDL_EDI_MESS primary key (MESS_CODE);

prompt
prompt Creating table CDL_EMS_DEDUCT
prompt =============================
prompt
create table ALLSYS.CDL_EMS_DEDUCT
(
  ENTRY_ID    VARCHAR2(18) not null,
  EMS_NO      VARCHAR2(12) not null,
  G_TYPE      VARCHAR2(1) not null,
  EMS_G_NO    NUMBER(19),
  ENTRY_G_NO  NUMBER(19) not null,
  EXG_VERSION VARCHAR2(32),
  IN_QTY      NUMBER(19,5),
  I_ACCOUNT   NUMBER(19,5),
  I_WT        NUMBER(19,5),
  I_E_FLAG    VARCHAR2(1),
  I_CURR      VARCHAR2(4),
  I_E_PORT    VARCHAR2(255),
  TRADE_MODE  VARCHAR2(4),
  TRAF_MODE   VARCHAR2(1),
  VERIFY_MODE VARCHAR2(2),
  VERIFY_DATE DATE,
  VERIFY_ER   VARCHAR2(8),
  JOU_MARK    VARCHAR2(1),
  I_E_DATE    DATE,
  USD_ACCOUNT NUMBER(19,5)
)
;
alter table ALLSYS.CDL_EMS_DEDUCT
  add constraint PK_CDL_EMS_DEDUCT primary key (ENTRY_ID, EMS_NO, G_TYPE, ENTRY_G_NO);

prompt
prompt Creating table CDL_EMS_DEDUCT_LOG
prompt =================================
prompt
create table ALLSYS.CDL_EMS_DEDUCT_LOG
(
  ENTRY_ID    VARCHAR2(18) not null,
  EMS_NO      VARCHAR2(12) not null,
  CREATE_DATE DATE not null,
  JOU_MARK    VARCHAR2(1) not null,
  NOTE        VARCHAR2(1),
  VERIFY_ER   VARCHAR2(8)
)
;
alter table ALLSYS.CDL_EMS_DEDUCT_LOG
  add constraint PK_CDL_EMS_DEDUCT_LOG primary key (ENTRY_ID, EMS_NO, CREATE_DATE, JOU_MARK);

prompt
prompt Creating table CDL_ENTRY_HEAD
prompt =============================
prompt
create table ALLSYS.CDL_ENTRY_HEAD
(
  PRE_ENTRY_ID     VARCHAR2(18) not null,
  ENTRY_ID         VARCHAR2(18),
  LIST_DATE        DATE,
  I_E_PORT         VARCHAR2(4),
  TRADE_CO         VARCHAR2(10),
  OWNER_CODE       VARCHAR2(10),
  TRADE_MODE       VARCHAR2(4),
  TRADE_COUNTRY    VARCHAR2(3),
  DESTINATION_PORT VARCHAR2(4),
  TRAF_MODE        VARCHAR2(1),
  DECL_PORT        VARCHAR2(4),
  MANUAL_NO        VARCHAR2(12)
)
;
alter table ALLSYS.CDL_ENTRY_HEAD
  add constraint PK_CDL_ENTRY_HEAD primary key (PRE_ENTRY_ID);
create index ALLSYS.IX_CDLENTRYHEAD_LISTDATE on ALLSYS.CDL_ENTRY_HEAD (LIST_DATE);

prompt
prompt Creating table CDL_ENTRY_LIST
prompt =============================
prompt
create table ALLSYS.CDL_ENTRY_LIST
(
  PRE_ENTRY_ID   VARCHAR2(18) not null,
  ENTRY_ID       VARCHAR2(18),
  ENTRY_G_NO     NUMBER(19) not null,
  LIST_NO        VARCHAR2(18) not null,
  LIST_G_NO      NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  G_UNIT         VARCHAR2(3),
  ORIGIN_COUNTRY VARCHAR2(3),
  DECL_PRICE     NUMBER(19,5),
  TRADE_CURR     VARCHAR2(3),
  LIST_CONDITION VARCHAR2(255)
)
;
alter table ALLSYS.CDL_ENTRY_LIST
  add constraint PK_CDL_ENTRY_LIST primary key (PRE_ENTRY_ID, ENTRY_G_NO, LIST_NO, LIST_G_NO);

prompt
prompt Creating table CDL_HEAD
prompt =======================
prompt
create table ALLSYS.CDL_HEAD
(
  LIST_NO          VARCHAR2(18) not null,
  PRE_LIST_NO      VARCHAR2(18),
  I_E_FLAG         VARCHAR2(1),
  I_E_PORT         VARCHAR2(4),
  I_E_DATE         DATE,
  D_DATE           DATE,
  MANUAL_NO        VARCHAR2(12),
  TRADE_CO         VARCHAR2(10),
  TRADE_NAME       VARCHAR2(255),
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  TRAF_MODE        VARCHAR2(1),
  TRAF_NAME        VARCHAR2(255),
  VOYAGE_NO        VARCHAR2(32),
  BILL_NO          VARCHAR2(32),
  TRADE_MODE       VARCHAR2(4),
  LICENSE_NO       VARCHAR2(20),
  TRADE_COUNTRY    VARCHAR2(3),
  DESTINATION_PORT VARCHAR2(4),
  PACK_NO          NUMBER(19),
  WRAP_TYPE        VARCHAR2(32),
  GROSS_WT         NUMBER(19,5),
  NET_WT           NUMBER(19,5),
  NOTE_S           VARCHAR2(255),
  INPUT_NO         VARCHAR2(32),
  INPUT_CO         VARCHAR2(10),
  INPUT_NAME       VARCHAR2(255),
  AGENT_CODE       VARCHAR2(10),
  AGENT_NAME       VARCHAR2(255),
  DECL_PORT        VARCHAR2(4),
  INPUT_DATE       DATE,
  CTR_NOTES        VARCHAR2(255),
  STATUS_RESULT    VARCHAR2(120),
  IS_DECL          VARCHAR2(1),
  MODI_NO          NUMBER(19),
  EDI_REMARK       VARCHAR2(32),
  HASH_SIGN        VARCHAR2(380),
  EXCHANGE_RATE    NUMBER(19,7),
  RTX_DATE         DATE
)
;
alter table ALLSYS.CDL_HEAD
  add constraint PK_CDL_HEAD primary key (LIST_NO);
create index ALLSYS.IX_CDLHEAD_DDATE on ALLSYS.CDL_HEAD (D_DATE);

prompt
prompt Creating table CDL_LICENSE_DEDUCT
prompt =================================
prompt
create table ALLSYS.CDL_LICENSE_DEDUCT
(
  LIST_NO     VARCHAR2(18) not null,
  G_NO        NUMBER(19) not null,
  TRADE_CO    VARCHAR2(10) not null,
  QTY_ORI     NUMBER(19,5),
  QTY         NUMBER(19,5),
  DEDUCT_MODE VARCHAR2(1),
  OP_TIME     DATE not null,
  OP_ER       VARCHAR2(8)
)
;
alter table ALLSYS.CDL_LICENSE_DEDUCT
  add constraint PK_CDL_LICENSE_DEDUCT primary key (LIST_NO, G_NO, TRADE_CO, OP_TIME);

prompt
prompt Creating table CDL_LIST
prompt =======================
prompt
create table ALLSYS.CDL_LIST
(
  LIST_NO        VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  RECORDS_NO     VARCHAR2(12),
  D_DATE         DATE,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  ORIGIN_COUNTRY VARCHAR2(3),
  DECL_PRICE     NUMBER(19,5),
  DECL_TOTAL     NUMBER(19,4),
  TRADE_CURR     VARCHAR2(3),
  DUTY_MODE      VARCHAR2(1),
  D_RATE         NUMBER(19,5),
  DUTY_RATE      NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  TAX_RATE       NUMBER(19,5),
  R_RATE         NUMBER(19,5),
  REG_RATE       NUMBER(19,5),
  TARIFF_MARK    VARCHAR2(32),
  EXCH_RATE      NUMBER(19,8),
  RMB_RATE       NUMBER(19,8),
  USD_RATE       NUMBER(19,8),
  G_CERT_FLAG    VARCHAR2(32),
  LIST_CONDITION VARCHAR2(255)
)
;
alter table ALLSYS.CDL_LIST
  add constraint PK_CDL_LIST primary key (LIST_NO, G_NO);

prompt
prompt Creating table CDL_LOCK_COMMODITY
prompt =================================
prompt
create table ALLSYS.CDL_LOCK_COMMODITY
(
  CODE_TS         VARCHAR2(16) not null,
  CONTROL_COUNTRY VARCHAR2(3) not null,
  CUSTOMS_CODE    VARCHAR2(4) not null,
  I_E_FLAG        VARCHAR2(1) not null,
  TRADE_MODE      VARCHAR2(4) not null,
  FIT_FLAG        VARCHAR2(1),
  LOCK_OP_ID      VARCHAR2(8),
  LOCK_DATE       DATE,
  UNLOCK_OP_ID    VARCHAR2(8),
  UNLOCK_DATE     DATE
)
;
alter table ALLSYS.CDL_LOCK_COMMODITY
  add constraint PK_CDL_LOCK_COMMODITY primary key (CODE_TS, CONTROL_COUNTRY, CUSTOMS_CODE, I_E_FLAG, TRADE_MODE);

prompt
prompt Creating table CDL_MODI_LOG
prompt ===========================
prompt
create table ALLSYS.CDL_MODI_LOG
(
  LIST_NO      VARCHAR2(18) not null,
  OP_TIME      DATE not null,
  MODI_TYPE    NUMBER(19) not null,
  ITEM_NAME    VARCHAR2(255) not null,
  ITEM_SOURCE  VARCHAR2(255),
  ITEM_CURRENT VARCHAR2(255),
  NOTES        VARCHAR2(255)
)
;
alter table ALLSYS.CDL_MODI_LOG
  add constraint PK_CDL_MODI_LOG primary key (LIST_NO, OP_TIME, MODI_TYPE, ITEM_NAME);

prompt
prompt Creating table CDL_OP_LOG
prompt =========================
prompt
create table ALLSYS.CDL_OP_LOG
(
  LIST_NO  VARCHAR2(18) not null,
  OP_TIME  DATE not null,
  OP_TYPE  VARCHAR2(3),
  OP_ER    VARCHAR2(8),
  SRV_PORT VARCHAR2(255)
)
;
alter table ALLSYS.CDL_OP_LOG
  add constraint PK_CDL_OP_LOG primary key (LIST_NO, OP_TIME);
create index ALLSYS.IX_CDLOPLOG_OP on ALLSYS.CDL_OP_LOG (OP_TYPE, OP_TIME);

prompt
prompt Creating table CDL_OVERDUE_LIST
prompt ===============================
prompt
create table ALLSYS.CDL_OVERDUE_LIST
(
  TRADE_CO          VARCHAR2(10) not null,
  TRADE_NAME        VARCHAR2(255),
  ENTRY_ID          VARCHAR2(18) not null,
  TRADE_BONDED_FLAG VARCHAR2(2),
  OVERDUE_DATE      DATE,
  OVERDUE_DAYS      NUMBER(19),
  OVERDUE_NOTES     VARCHAR2(255),
  CUSTOMS_CODE      VARCHAR2(4)
)
;
alter table ALLSYS.CDL_OVERDUE_LIST
  add constraint PK_CDL_OVERDUE_LIST primary key (TRADE_CO, ENTRY_ID);

prompt
prompt Creating table CDL_STATUS_DETAIL
prompt ================================
prompt
create table ALLSYS.CDL_STATUS_DETAIL
(
  LIST_NO       VARCHAR2(18) not null,
  DETAIL_COUNT  NUMBER(9) not null,
  STATUS_NUMBER NUMBER(9),
  STATUS_RESULT VARCHAR2(1),
  STATUS_DETAIL VARCHAR2(255)
)
;
alter table ALLSYS.CDL_STATUS_DETAIL
  add constraint PK_CDL_STATUS_DETAIL primary key (LIST_NO, DETAIL_COUNT);

prompt
prompt Creating table CDL_WORKFLOW
prompt ===========================
prompt
create table ALLSYS.CDL_WORKFLOW
(
  LIST_NO     VARCHAR2(18) not null,
  STEP_ID     VARCHAR2(8) not null,
  CREATE_DATE DATE not null,
  PROC_POS    VARCHAR2(4),
  STATUS_CODE VARCHAR2(32),
  PROC_ER     VARCHAR2(8),
  PROC_RESULT VARCHAR2(8),
  PREV_POS    VARCHAR2(4),
  PREV_ER     VARCHAR2(8),
  RECHK_MARK  VARCHAR2(1),
  RECHK_COMM  VARCHAR2(255)
)
;
alter table ALLSYS.CDL_WORKFLOW
  add constraint PK_CDL_WORKFLOW primary key (LIST_NO, STEP_ID, CREATE_DATE);
create index ALLSYS.IX_CDLWORKFLOW_CREATEDATE on ALLSYS.CDL_WORKFLOW (CREATE_DATE, STEP_ID);

prompt
prompt Creating table CHKHS_MNLPROC
prompt ============================
prompt
create table ALLSYS.CHKHS_MNLPROC
(
  MANUAL_NO     VARCHAR2(12),
  PRE_MANUAL_NO VARCHAR2(12),
  ORDER_NO      VARCHAR2(13) not null,
  MANUAL_SCH    VARCHAR2(50) not null,
  M_FLAG        VARCHAR2(12),
  TRADE_NAME    VARCHAR2(255),
  OPER_ER       VARCHAR2(8),
  OPER_DATE     DATE,
  NOTE          VARCHAR2(255)
)
;
alter table ALLSYS.CHKHS_MNLPROC
  add constraint PK_CHKHS_MNLPROC primary key (ORDER_NO, MANUAL_SCH);

prompt
prompt Creating table CHK_COP_RATIO
prompt ============================
prompt
create table ALLSYS.CHK_COP_RATIO
(
  CORP_CODE    VARCHAR2(10) not null,
  CORP_NAME    VARCHAR2(255),
  CUSTOMS_CODE VARCHAR2(4),
  RATIO_NUM    NUMBER(9)
)
;
alter table ALLSYS.CHK_COP_RATIO
  add constraint PK_CHK_COP_RATIO primary key (CORP_CODE);

prompt
prompt Creating table CHK_COUNTER
prompt ==========================
prompt
create table ALLSYS.CHK_COUNTER
(
  CUSTOMS_CODE VARCHAR2(4) not null,
  I_E_FLAG     VARCHAR2(1) not null,
  COUNTER_TYPE VARCHAR2(1) not null,
  COUNT_DATE   DATE not null,
  COUNTER      NUMBER(19)
)
;
alter table ALLSYS.CHK_COUNTER
  add constraint PK_CHK_COUNTER primary key (CUSTOMS_CODE, I_E_FLAG, COUNTER_TYPE, COUNT_DATE);

prompt
prompt Creating table CHK_RATE_LIMIT
prompt =============================
prompt
create table ALLSYS.CHK_RATE_LIMIT
(
  CUSTOMS_CODE    VARCHAR2(4) not null,
  I_E_FLAG        VARCHAR2(1) not null,
  MAX_CHK_RATE    NUMBER(19,4),
  MAX_OPEN_RATE   NUMBER(19,4),
  RANDOM_CHK_RATE NUMBER(19,4)
)
;
alter table ALLSYS.CHK_RATE_LIMIT
  add constraint PK_CHK_RATE_LIMIT primary key (CUSTOMS_CODE, I_E_FLAG);

prompt
prompt Creating table CIC_CODE
prompt =======================
prompt
create table ALLSYS.CIC_CODE
(
  FIRST_NO   VARCHAR2(10) not null,
  LAST_NO    VARCHAR2(10),
  CUS_CODE   VARCHAR2(4),
  LOCAL_FLAG VARCHAR2(1),
  INPUT_ER   VARCHAR2(8),
  INPUT_DATE DATE,
  PRINT_DATE DATE
)
;
alter table ALLSYS.CIC_CODE
  add constraint PK_CIC_CODE primary key (FIRST_NO);

prompt
prompt Creating table CIC_HEAD
prompt =======================
prompt
create table ALLSYS.CIC_HEAD
(
  CPT_NO           VARCHAR2(12) not null,
  CIC_NO           VARCHAR2(10),
  ENTRY_NO         VARCHAR2(18),
  ITEMS_NO         NUMBER(9),
  TRAF_NAME        VARCHAR2(255),
  DESTINATION_PORT VARCHAR2(4),
  PORT_CUS         VARCHAR2(4),
  MAST_CUS         VARCHAR2(4),
  TRADE_CO         VARCHAR2(10),
  TRADE_NAME       VARCHAR2(255),
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  AGENT_NAME       VARCHAR2(255),
  CIC_FLAG         VARCHAR2(1),
  LOCAL_FLAG       VARCHAR2(1),
  YYMM             DATE,
  I_DATE           DATE,
  D_DATE           DATE,
  R_DATE           DATE,
  SEND_DATE        DATE,
  INPUT_ER         VARCHAR2(8),
  INPUT_DATE       DATE,
  PRINT_ER         VARCHAR2(8),
  PRINT_DATE       DATE,
  CHECK_ER         VARCHAR2(8),
  CHECK_DATE       DATE,
  REP_CPT_NO       VARCHAR2(12),
  CANCEL_ER        VARCHAR2(8),
  CANCEL_REASON    VARCHAR2(255),
  CANCEL_DATE      DATE,
  REPORT_ER        VARCHAR2(8),
  REPORT_DATE      DATE,
  TOTAL_PRICE      NUMBER(19,4),
  CURR             VARCHAR2(3),
  SPARE_FLAG       VARCHAR2(10),
  NOTE             VARCHAR2(255),
  CAR_NO           VARCHAR2(15),
  CAR_NO_DATE      DATE,
  AVISO_FLAG       VARCHAR2(1),
  AVISO_DATE       DATE
)
;
alter table ALLSYS.CIC_HEAD
  add constraint PK_CIC_HEAD primary key (CPT_NO);
create index ALLSYS.IDX_CIC_HEAD_ENTRY_NO on ALLSYS.CIC_HEAD (ENTRY_NO);

prompt
prompt Creating table CIC_LIST
prompt =======================
prompt
create table ALLSYS.CIC_LIST
(
  CPT_NO         VARCHAR2(12) not null,
  ITEM_NO        NUMBER(9) not null,
  CODE_TS        VARCHAR2(16),
  ORIGIN_COUNTRY VARCHAR2(3),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  COLOR          VARCHAR2(20),
  ENGINE_NO      VARCHAR2(30),
  CAR_COVER_NO   VARCHAR2(30),
  QTY_EXHAUST    NUMBER(9),
  QTY            NUMBER(19,5),
  PRICE          NUMBER(19,5),
  CURR           VARCHAR2(3),
  PACK_NO        NUMBER(9),
  MARK_NO        VARCHAR2(30),
  SPARE_FLAG     VARCHAR2(10),
  NOTE           VARCHAR2(255),
  FCT_DATE       VARCHAR2(20)
)
;
alter table ALLSYS.CIC_LIST
  add constraint PK_CIC_LIST primary key (CPT_NO, ITEM_NO);
create index ALLSYS.IDX_CIC_LIST_CAR_COVER_NO on ALLSYS.CIC_LIST (CAR_COVER_NO);

prompt
prompt Creating table CIC_MAXID
prompt ========================
prompt
create table ALLSYS.CIC_MAXID
(
  CUS_ID   VARCHAR2(4) not null,
  MAX_ID   NUMBER(9),
  IPT_TIME DATE,
  IPT_ER   VARCHAR2(8)
)
;
alter table ALLSYS.CIC_MAXID
  add constraint PK_CIC_MAXID primary key (CUS_ID);

prompt
prompt Creating table CIC_SEND_REL
prompt ===========================
prompt
create table ALLSYS.CIC_SEND_REL
(
  CPT_NO     VARCHAR2(12) not null,
  CIC_NO     VARCHAR2(10),
  SEND_TIMES NUMBER(9) not null,
  SEND_ER    VARCHAR2(8),
  SEND_TYPE  VARCHAR2(1),
  SEND_DATE  DATE,
  RECV_DATE  DATE,
  RECV_FLAG  VARCHAR2(1),
  NOTE       VARCHAR2(30)
)
;
alter table ALLSYS.CIC_SEND_REL
  add constraint PK_CIC_SEND_REL primary key (CPT_NO, SEND_TIMES);
create index ALLSYS.IDX_CIC_SEND_REL_CIC_NO on ALLSYS.CIC_SEND_REL (CIC_NO);

prompt
prompt Creating table CLAIM
prompt ====================
prompt
create table ALLSYS.CLAIM
(
  GUARANTEE_NO         VARCHAR2(12) not null,
  CLAIM_NO             VARCHAR2(12),
  MANUAL_NO            VARCHAR2(12),
  OWNER_NO             VARCHAR2(32),
  GUARANTEE_AMT        NUMBER(18),
  GUARANTEE_LIMIT_DATE DATE,
  BANK_ID              VARCHAR2(32),
  CLAIM_AMT            NUMBER(18,5),
  CLAIM_RATE           NUMBER(18,5),
  YEAR_RATE            NUMBER(18,5),
  CHK_ER               VARCHAR2(8),
  CHK_DATE             DATE,
  RECHK_ER             VARCHAR2(8),
  RECHK_DATE           DATE,
  CLAIM_DATE           DATE,
  CLAIM_ER             VARCHAR2(8),
  BANK_DATE            DATE,
  TYPE_ER              VARCHAR2(8),
  TYPE_DATE            DATE,
  OTHER_CERT_NO        VARCHAR2(32),
  PROC_MARK            VARCHAR2(32),
  LAST_ER              VARCHAR2(8),
  LAST_DATE            DATE,
  PAY_PRINT_DATE       DATE
)
;
alter table ALLSYS.CLAIM
  add constraint PK_CLAIM primary key (GUARANTEE_NO);

prompt
prompt Creating table CLC_CHKRATE_LIMIT
prompt ================================
prompt
create table ALLSYS.CLC_CHKRATE_LIMIT
(
  CUSTOMS_CODE           VARCHAR2(4) not null,
  I_E_FLAG               VARCHAR2(1) not null,
  MAX_CHK_RATE           NUMBER(19,4),
  RANDOM_QUICK_CHK_RATE  NUMBER(19,4),
  RANDOM_LHRSK_CHK_RATE  NUMBER(19,4),
  RANDOM_FOCUS_CHK_RATE  NUMBER(19,4),
  RANDOM_COP_CHK_RATE_AA NUMBER(19,4),
  RANDOM_COP_CHK_RATE_1  NUMBER(19,4),
  RANDOM_COP_CHK_RATE_A  NUMBER(19,4),
  RANDOM_COP_CHK_RATE_B  NUMBER(19,4),
  RANDOM_COP_CHK_RATE_C  NUMBER(19,4),
  RANDOM_COP_CHK_RATE_D  NUMBER(19,4),
  RANDOM_RECHK_RATE      NUMBER(19,4),
  RANDOM_UNKNOWN_RATE    NUMBER(19,4)
)
;
alter table ALLSYS.CLC_CHKRATE_LIMIT
  add constraint PK_CLC_CHKRATE_LIMIT primary key (CUSTOMS_CODE, I_E_FLAG);

prompt
prompt Creating table CLC_GPR_RATIO
prompt ============================
prompt
create table ALLSYS.CLC_GPR_RATIO
(
  CUSTOMS_CODE VARCHAR2(4) not null,
  I_E_FLAG     VARCHAR2(1) not null,
  RATIO_NUM    NUMBER(19,4)
)
;
alter table ALLSYS.CLC_GPR_RATIO
  add constraint PK_CLC_GPR_RATIO primary key (CUSTOMS_CODE, I_E_FLAG);

prompt
prompt Creating table CLC_GPR_RATIO_BAK
prompt ================================
prompt
create table ALLSYS.CLC_GPR_RATIO_BAK
(
  CUSTOMS_CODE VARCHAR2(4) not null,
  I_E_FLAG     VARCHAR2(1) not null,
  RATIO_NUM    NUMBER(19,4),
  OP_TIME      DATE not null,
  OP_ER        VARCHAR2(8),
  OP_CUSTOMS   VARCHAR2(4)
)
;
alter table ALLSYS.CLC_GPR_RATIO_BAK
  add constraint PK_CLC_GPR_RATIO_BAK primary key (CUSTOMS_CODE, I_E_FLAG, OP_TIME);

prompt
prompt Creating table CNSMATCH
prompt =======================
prompt
create global temporary table ALLSYS.CNSMATCH
(
  EX_CODE_TS VARCHAR2(10) not null,
  IM_CODE_TS VARCHAR2(10) not null
)
on commit preserve rows;
alter table ALLSYS.CNSMATCH
  add primary key (EX_CODE_TS, IM_CODE_TS);

prompt
prompt Creating table CNS_COUNTER_TABLE
prompt ================================
prompt
create table ALLSYS.CNS_COUNTER_TABLE
(
  CUSTOMS_CODE VARCHAR2(4) not null,
  COUNTER      NUMBER(16)
)
;
alter table ALLSYS.CNS_COUNTER_TABLE
  add constraint PK_CNS_COUNTER_TABLE primary key (CUSTOMS_CODE);

prompt
prompt Creating table COMPANY_REL
prompt ==========================
prompt
create table ALLSYS.COMPANY_REL
(
  TRADE_CO        VARCHAR2(10) not null,
  REG_CO          VARCHAR2(255),
  FULL_NAME       VARCHAR2(255),
  CUSTOMS_CODE    VARCHAR2(4),
  CO_CLASS        VARCHAR2(1) default 'B',
  CREDIT_MAR      VARCHAR2(8) default '00001000',
  EXAM_SCORE      NUMBER(19),
  VALID_DATE      DATE default SYSDATE,
  ACCO_BANK       VARCHAR2(255),
  ACCO_NO         VARCHAR2(32),
  MAIL_CO         VARCHAR2(6),
  BROKER_TYPE     VARCHAR2(1),
  RG_DATE         DATE default SYSDATE,
  LICENSE_ID      VARCHAR2(32),
  EN_FULL_CO      VARCHAR2(255),
  EN_ADDR_CO      VARCHAR2(255),
  ADDR_CO         VARCHAR2(255),
  BUSI_TYPE       VARCHAR2(32),
  CONTAC_CO       VARCHAR2(32),
  TEL_CO          VARCHAR2(32),
  APPR_DEP        VARCHAR2(32),
  APPR_ID         VARCHAR2(32),
  LAW_MAN         VARCHAR2(32),
  LAW_MAN_TEL     VARCHAR2(32),
  INV_FUND_T      NUMBER(19,4),
  ID_NUMBER       VARCHAR2(32),
  RG_FUND         NUMBER(19,4),
  CURR_CODE       VARCHAR2(3),
  TAXY_RG_NO      VARCHAR2(32),
  CHK_DATE        DATE default SYSDATE,
  CO_TYPE         VARCHAR2(32),
  BREAK_LAW_TIME1 NUMBER(19),
  BREAK_LAW_TIME2 NUMBER(19),
  IN_RATIO        NUMBER(19),
  INSPECT_TIME    NUMBER(19),
  SPE_CO          VARCHAR2(8),
  TRADE_AREA      VARCHAR2(32),
  MAIN_PRO        VARCHAR2(255),
  ACT_FUND        NUMBER(19),
  DUTY_FREE_AMT   NUMBER(19),
  COP_FLAG        VARCHAR2(8),
  COP_NOTE        VARCHAR2(255),
  PRE_TRADE_CO    VARCHAR2(18),
  CHK_OPER_CODE   VARCHAR2(8),
  CHK_OPER_FLAG   VARCHAR2(1),
  CHK_OPER_DATE   DATE,
  CHK_DPT_CODE    VARCHAR2(8),
  CHK_DPT_FLAG    VARCHAR2(1),
  CHK_DPT_DATE    DATE,
  CHK_MASTER_CODE VARCHAR2(8),
  CHK_MASTER_FLAG VARCHAR2(1),
  CHK_MASTER_DATE DATE,
  CHK_EARNEST_MON NUMBER(19,4),
  CHK_CODE        VARCHAR2(8),
  COP_GB_CODE     VARCHAR2(32),
  COP_IO_CODE     VARCHAR2(32),
  COP_END_DATE    DATE default SYSDATE,
  COP_MODIFY_DATE DATE default SYSDATE,
  COP_RANGE       VARCHAR2(4000)
)
;
alter table ALLSYS.COMPANY_REL
  add constraint PK_COMPANY_REL primary key (TRADE_CO);
create index ALLSYS.IDX_COMPANY_REL_COP_IO_CODE on ALLSYS.COMPANY_REL (COP_IO_CODE);
create index ALLSYS.IDX_CUSTOMS_CODE on ALLSYS.COMPANY_REL (CUSTOMS_CODE);
create index ALLSYS.IDX_FULL_NAME on ALLSYS.COMPANY_REL (FULL_NAME);
create index ALLSYS.IDX_GB_CODE on ALLSYS.COMPANY_REL (COP_GB_CODE);
create index ALLSYS.IDX_REG_CO on ALLSYS.COMPANY_REL (REG_CO);

prompt
prompt Creating table CONSUME
prompt ======================
prompt
create table ALLSYS.CONSUME
(
  MANUAL_NO    VARCHAR2(12) not null,
  CONTR_ITEM   NUMBER(19) not null,
  EX_NO        NUMBER(19) not null,
  APPR_CONSUME NUMBER(19,10),
  APPR_DAMAGE  NUMBER(19,10),
  DECL_CONSUME NUMBER(19,10),
  DECL_DAMAGE  NUMBER(19,10)
)
;
alter table ALLSYS.CONSUME
  add constraint PK_CONSUME primary key (MANUAL_NO, CONTR_ITEM, EX_NO);

prompt
prompt Creating table CONSUME_DB
prompt =========================
prompt
create table ALLSYS.CONSUME_DB
(
  EX_CODE_TS    VARCHAR2(16) not null,
  EX_NO         NUMBER(19) not null,
  IM_CODE_TS    VARCHAR2(16) not null,
  IM_NO         NUMBER(19) not null,
  CONSUME_RATIO NUMBER(19,10),
  DAMAGE_RATIO  NUMBER(19,10),
  CONSUME_RANGE NUMBER(19,4),
  CONSUME_NOTE  VARCHAR2(255),
  G_CLASS       VARCHAR2(1),
  INPUT_DATE    DATE,
  LIMIT_DATE    DATE
)
;
alter table ALLSYS.CONSUME_DB
  add constraint PK_CONSUME_DB primary key (EX_CODE_TS, EX_NO, IM_CODE_TS, IM_NO);

prompt
prompt Creating table CONSUME_GOODS
prompt ============================
prompt
create table ALLSYS.CONSUME_GOODS
(
  CODE_TS       VARCHAR2(16) not null,
  G_NO          NUMBER(19) not null,
  G_FLAG        VARCHAR2(1) not null,
  G_NAME        VARCHAR2(50),
  G_MODEL       VARCHAR2(50),
  UNIT_1        VARCHAR2(3),
  TRADE_COUNTRY VARCHAR2(3),
  INFO_SOURCE   VARCHAR2(4),
  INPUT_DATE    DATE,
  NOTE_S        VARCHAR2(255)
)
;
alter table ALLSYS.CONSUME_GOODS
  add constraint PK_CONSUME_GOODS primary key (CODE_TS, G_NO, G_FLAG);

prompt
prompt Creating table CONTA
prompt ====================
prompt
create table ALLSYS.CONTA
(
  FORM_ID             VARCHAR2(20) not null,
  CONTA_ID            VARCHAR2(32) not null,
  FORM_TYPE           VARCHAR2(2),
  I_E_FLAG            VARCHAR2(1),
  CONTA_MODEL         VARCHAR2(2),
  D_WEIGHT            NUMBER(19,5),
  SEAL_NO             VARCHAR2(12),
  SEAL_NUM            NUMBER(9),
  D_SHIP_ID           VARCHAR2(10),
  BUSINESS_SEAL_NO    VARCHAR2(12),
  CONTAINER_WT        NUMBER(19,4),
  CONTA_AMOUNT        NUMBER(19,4),
  WHOLE_FLAG          VARCHAR2(1),
  OUT_CHECKPOINT_TIME DATE,
  OUT_AREA_ID         VARCHAR2(5),
  OUT_CHECKPOINT_NO   VARCHAR2(10),
  OUT_DRIVER_ID       VARCHAR2(10),
  OUT_REAL_WT         NUMBER(19,5),
  OUT_SHIP_ID         VARCHAR2(10),
  IN_CHECKPOINT_TIME  DATE,
  IN_AREA_ID          VARCHAR2(5),
  IN_CHECKPOINT_NO    VARCHAR2(10),
  IN_DRIVER_ID        VARCHAR2(10),
  IN_REAL_WT          NUMBER(19,5),
  IN_SHIP_ID          VARCHAR2(10),
  CHK_MARK            VARCHAR2(20),
  DIST_CHK_MARK       VARCHAR2(20),
  MANUAL_FLAG         VARCHAR2(1),
  CANCEL_FLAG         VARCHAR2(1),
  CANCEL_PERSON       VARCHAR2(5),
  CANCEL_DATETIME     DATE,
  RISK_FLAG           VARCHAR2(1),
  OPERATION_FLAG      VARCHAR2(1),
  OBLIGATE_FIELD_1    VARCHAR2(50),
  OBLIGATE_FIELD_2    VARCHAR2(50),
  NOTES               VARCHAR2(60)
)
;
alter table ALLSYS.CONTA
  add constraint PK_CONTA primary key (FORM_ID, CONTA_ID);

prompt
prompt Creating table CONTA_MONITOR
prompt ============================
prompt
create table ALLSYS.CONTA_MONITOR
(
  I_E_FLAG         VARCHAR2(1) not null,
  CONTA_ID         VARCHAR2(32) not null,
  DISTRIBUTIVE_NO  VARCHAR2(18) not null,
  IN_OUT_FLAG      VARCHAR2(1) not null,
  TRANSIT_DATE     DATE default SYSDATE,
  ORIGIN_CUS_CODE  VARCHAR2(4),
  DEST_CUS_CODE    VARCHAR2(4),
  FORM_FLAG        VARCHAR2(1),
  ORIGIN_CUS_PLACE VARCHAR2(8),
  DEST_CUS_PLACE   VARCHAR2(8),
  DRIVER_NO        VARCHAR2(32),
  TRAF_MODE        VARCHAR2(1),
  SEAL_NO          VARCHAR2(32),
  TRANSIT_NAME     VARCHAR2(255),
  CAR_NUMBER       VARCHAR2(32),
  TRANSIT_WAY      VARCHAR2(2000)
)
;
alter table ALLSYS.CONTA_MONITOR
  add constraint PK_CONTA_MONITOR primary key (I_E_FLAG, CONTA_ID, DISTRIBUTIVE_NO, IN_OUT_FLAG);

prompt
prompt Creating table CONTRACT_HEAD
prompt ============================
prompt
create table ALLSYS.CONTRACT_HEAD
(
  MANUAL_NO        VARCHAR2(12) not null,
  PRE_MANUAL_NO    VARCHAR2(12),
  TRADE_CO         VARCHAR2(10),
  TRADE_NAME       VARCHAR2(255),
  DISTRICT_CODE    VARCHAR2(5),
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  FOREIGN_CO_NAME  VARCHAR2(32),
  FOREIGN_MGR      VARCHAR2(32),
  TRADE_MODE       VARCHAR2(4),
  CUT_MODE         VARCHAR2(3),
  TRADE_COUNTRY    VARCHAR2(3),
  PORT_1           VARCHAR2(4),
  PORT_2           VARCHAR2(4),
  PORT_3           VARCHAR2(4),
  PORT_4           VARCHAR2(4),
  PORT_5           VARCHAR2(4),
  AGREE_NO         VARCHAR2(32),
  LICENSE_NO       VARCHAR2(32),
  APPR_NO          VARCHAR2(32),
  CONTR_IN         VARCHAR2(32),
  CONTR_OUT        VARCHAR2(32),
  EQUIP_MODE       VARCHAR2(1),
  TRANS_MODE       VARCHAR2(1),
  INVEST_MODE      VARCHAR2(1),
  PAY_MODE         VARCHAR2(1),
  EX_SOURCE        NUMBER(19),
  PRODUCE_TYPE     VARCHAR2(2),
  RATIO_RANGE      NUMBER(19,4),
  IN_RATIO         NUMBER(19,4),
  INVEST_AMT       NUMBER(19,5),
  INVEST_CURR      VARCHAR2(3),
  APPR_DEV_AMT     NUMBER(19,5),
  FACT_DEV_AMT     NUMBER(19,5),
  IN_AMT           NUMBER(19,5),
  IN_CURR          VARCHAR2(3),
  FACT_IN_AMT      NUMBER(19,5),
  EX_AMT           NUMBER(19,5),
  EX_CURR          VARCHAR2(3),
  FACT_EX_AMT      NUMBER(19,5),
  DECL_FLAG        VARCHAR2(1),
  EXE_MARK         VARCHAR2(1),
  SUPV_MARK        VARCHAR2(10),
  IN_PNT           NUMBER(19),
  EX_PNT           NUMBER(19),
  CONTR_SEQNO      NUMBER(19),
  IM_COUNT         NUMBER(19),
  EX_COUNT         NUMBER(19),
  I_DATE           DATE,
  E_DATE           DATE,
  LIMIT_DATE       DATE,
  TYPE_ER          VARCHAR2(8),
  TYPE_DATE        DATE,
  CHK_ER           VARCHAR2(8),
  APPR_DATE        DATE,
  RECHK_ER         VARCHAR2(8),
  CLEAR_ER         VARCHAR2(8),
  CLEAR_APPL_DATE  DATE,
  CLEAR_DATE       DATE,
  CLOSE_ER         VARCHAR2(8),
  CLOSE_DATE       DATE,
  EXAM_MARK        VARCHAR2(10),
  CLEAR_MARK       VARCHAR2(10),
  CLOSE_MARK       VARCHAR2(1),
  TAX_TYPE         VARCHAR2(1),
  RECOVER_DUTY     NUMBER(19,5),
  RECOVER_TAX      NUMBER(19,5),
  RECOVER_REG      NUMBER(19,5),
  DEFER_DUTY       NUMBER(19,5),
  DEFER_TAX        NUMBER(19,5),
  DEFER_REG        NUMBER(19,5),
  FINE_AMT         NUMBER(19,5),
  REAL_DUTY        NUMBER(19,5),
  REAL_TAX         NUMBER(19,5),
  REAL_REG         NUMBER(19,5),
  SEQ_NO           VARCHAR2(12),
  VER_NO           VARCHAR2(12),
  VER_ER           VARCHAR2(8),
  VER_DATE         DATE,
  CUSTOMS_CODE     VARCHAR2(4),
  SERVICE_FEE_RATE NUMBER(19,5),
  PRE_SERVICE_FEE  NUMBER(19,5),
  FACT_SERVICE_FEE NUMBER(19,5),
  NOTE_S           VARCHAR2(255),
  TR_PNT           NUMBER(19),
  IN_RMB_RATE      NUMBER(19,8),
  IN_USD_RATE      NUMBER(19,8),
  EX_RMB_RATE      NUMBER(19,8),
  EX_USD_RATE      NUMBER(19,8),
  DEDUC_DATE       DATE,
  CHECK_DATE       DATE,
  HASH_SIGN        VARCHAR2(380),
  CASE_MARK        VARCHAR2(1)
)
;
alter table ALLSYS.CONTRACT_HEAD
  add constraint PK_CONTRACT_HEAD primary key (MANUAL_NO);
create index ALLSYS.IX_CONTRACTHEAD_APPRDATE on ALLSYS.CONTRACT_HEAD (APPR_DATE, CUSTOMS_CODE);
create index ALLSYS.IX_CONTRACTHEAD_CLEARAPPLDATE on ALLSYS.CONTRACT_HEAD (CLEAR_APPL_DATE, CUSTOMS_CODE);
create index ALLSYS.IX_CONTRACTHEAD_CLEARDATE on ALLSYS.CONTRACT_HEAD (CLEAR_DATE, CUSTOMS_CODE);
create index ALLSYS.IX_CONTRACTHEAD_CLOSEDATE on ALLSYS.CONTRACT_HEAD (CLOSE_DATE, CUSTOMS_CODE);
create index ALLSYS.IX_CONTRACTHEAD_CUSTOMSCODE on ALLSYS.CONTRACT_HEAD (CUSTOMS_CODE);
create index ALLSYS.IX_CONTRACTHEAD_EDATE on ALLSYS.CONTRACT_HEAD (E_DATE, CUSTOMS_CODE);
create index ALLSYS.IX_CONTRACTHEAD_OWNERCODE on ALLSYS.CONTRACT_HEAD (OWNER_CODE);
create index ALLSYS.IX_CONTRACTHEAD_PRENO on ALLSYS.CONTRACT_HEAD (PRE_MANUAL_NO);
create index ALLSYS.IX_CONTRACTHEAD_TRADECO on ALLSYS.CONTRACT_HEAD (TRADE_CO);

prompt
prompt Creating table CONTRACT_WORKFLOW
prompt ================================
prompt
create table ALLSYS.CONTRACT_WORKFLOW
(
  MANUAL_NO    VARCHAR2(12) not null,
  STEP_ID      VARCHAR2(8) not null,
  PROC_DATE    DATE not null,
  PROC_ER      VARCHAR2(20),
  PROC_ID      VARCHAR2(8),
  PROC_POS     VARCHAR2(4),
  STATUS_STATE VARCHAR2(255)
)
;
alter table ALLSYS.CONTRACT_WORKFLOW
  add constraint PK_CONTRACT_WORKFLOW primary key (MANUAL_NO, STEP_ID, PROC_DATE);

prompt
prompt Creating table CONVEYANCE
prompt =========================
prompt
create table ALLSYS.CONVEYANCE
(
  SHIP_ID       VARCHAR2(32) not null,
  TRAF_MODE     VARCHAR2(1) not null,
  SHIP_NAME_EN  VARCHAR2(255),
  SHIP_NAME_CN  VARCHAR2(255),
  SHIP_NAME_ORI VARCHAR2(255),
  COUNTRY_CODE  VARCHAR2(3),
  SHIP_TYPE     VARCHAR2(3),
  SHIP_ATTR     VARCHAR2(3),
  SHIP_USE_CODE VARCHAR2(3),
  TONNAGE       NUMBER(19,2),
  CREATE_DATE   DATE,
  CREATE_ER     VARCHAR2(8),
  CUSTOMS_CODE  VARCHAR2(4)
)
;
alter table ALLSYS.CONVEYANCE
  add constraint PK_CONVEYANCE primary key (SHIP_ID, TRAF_MODE);

prompt
prompt Creating table CONVEYANCE_SEGMENT
prompt =================================
prompt
create table ALLSYS.CONVEYANCE_SEGMENT
(
  SHIP_ID          VARCHAR2(32) not null,
  TRAF_MODE        VARCHAR2(1) not null,
  VOYAGE_NO        VARCHAR2(32) not null,
  I_E_FLAG         VARCHAR2(1) not null,
  LOAD_PORT        VARCHAR2(6) not null,
  DESTINATION_PORT VARCHAR2(6) not null,
  CUSTOMS_CODE     VARCHAR2(4) not null,
  I_E_DATE         DATE not null
)
;
alter table ALLSYS.CONVEYANCE_SEGMENT
  add constraint PK_CONVEYANCE_SEGMENT primary key (SHIP_ID, TRAF_MODE, VOYAGE_NO, I_E_FLAG, LOAD_PORT, DESTINATION_PORT, CUSTOMS_CODE, I_E_DATE);

prompt
prompt Creating table COPLOG_DELETE_REL
prompt ================================
prompt
create table ALLSYS.COPLOG_DELETE_REL
(
  LOG_ID            NUMBER(18) not null,
  LOG_DATE          DATE default SYSDATE,
  LOG_OPER_ID       VARCHAR2(32),
  LOG_CUSTOMS_CODE  VARCHAR2(4),
  LOG_COMPUTER_NAME VARCHAR2(32),
  LOG_MODE          VARCHAR2(4),
  TRADE_CO          VARCHAR2(10),
  REG_CO            VARCHAR2(255),
  FULL_NAME         VARCHAR2(255),
  CUSTOMS_CODE      VARCHAR2(4),
  CO_CLASS          VARCHAR2(1),
  CREDIT_MAR        VARCHAR2(8),
  EXAM_SCORE        NUMBER(19),
  VALID_DATE        DATE,
  ACCO_BANK         VARCHAR2(255),
  ACCO_NO           VARCHAR2(32),
  MAIL_CO           VARCHAR2(6),
  BROKER_TYPE       VARCHAR2(1),
  RG_DATE           DATE default SYSDATE,
  LICENSE_ID        VARCHAR2(32),
  EN_FULL_CO        VARCHAR2(255),
  EN_ADDR_CO        VARCHAR2(255),
  ADDR_CO           VARCHAR2(255),
  BUSI_TYPE         VARCHAR2(32),
  CONTAC_CO         VARCHAR2(32),
  TEL_CO            VARCHAR2(32),
  APPR_DEP          VARCHAR2(32),
  APPR_ID           VARCHAR2(32),
  LAW_MAN           VARCHAR2(32),
  LAW_MAN_TEL       VARCHAR2(32),
  INV_FUND_T        NUMBER(19,4),
  ID_NUMBER         VARCHAR2(32),
  RG_FUND           NUMBER(19,4),
  CURR_CODE         VARCHAR2(3),
  TAXY_RG_NO        VARCHAR2(32),
  CHK_DATE          DATE,
  CO_TYPE           VARCHAR2(32),
  BREAK_LAW_TIME1   NUMBER(19),
  BREAK_LAW_TIME2   NUMBER(19),
  IN_RATIO          NUMBER(19),
  INSPECT_TIME      NUMBER(19),
  SPE_CO            VARCHAR2(8),
  TRADE_AREA        VARCHAR2(32),
  MAIN_PRO          VARCHAR2(255),
  ACT_FUND          NUMBER(19),
  DUTY_FREE_AMT     NUMBER(19),
  COP_FLAG          VARCHAR2(8),
  COP_NOTE          VARCHAR2(255),
  PRE_TRADE_CO      VARCHAR2(18),
  CHK_OPER_CODE     VARCHAR2(8),
  CHK_OPER_FLAG     VARCHAR2(1),
  CHK_OPER_DATE     DATE,
  CHK_DPT_CODE      VARCHAR2(8),
  CHK_DPT_FLAG      VARCHAR2(1),
  CHK_DPT_DATE      DATE,
  CHK_MASTER_CODE   VARCHAR2(8),
  CHK_MASTER_FLAG   VARCHAR2(1),
  CHK_MASTER_DATE   DATE,
  CHK_EARNEST_MON   NUMBER(19,4),
  CHK_CODE          VARCHAR2(8),
  COP_GB_CODE       VARCHAR2(32),
  COP_IO_CODE       VARCHAR2(32),
  COP_PASS_CODE     VARCHAR2(32),
  COP_END_DATE      DATE default SYSDATE,
  COP_MODIFY_DATE   DATE default SYSDATE,
  COP_RANGE         VARCHAR2(4000)
)
;
alter table ALLSYS.COPLOG_DELETE_REL
  add constraint PK_COPLOG_DELETE_REL primary key (LOG_ID);

prompt
prompt Creating table COPLOG_MODIFY_REL
prompt ================================
prompt
create table ALLSYS.COPLOG_MODIFY_REL
(
  LOG_ID                NUMBER(18) not null,
  LOG_SYSTEM            VARCHAR2(32),
  LOG_NO                VARCHAR2(32),
  LOG_FIELD_NAME        VARCHAR2(255),
  LOG_SOURCE            VARCHAR2(4000),
  LOG_DEST              VARCHAR2(4000),
  LOG_TEXT              VARCHAR2(255),
  LOG_TYPE              VARCHAR2(32),
  LOG_OPER_ID           VARCHAR2(32),
  LOG_OPER_CUSTOMS_CODE VARCHAR2(4),
  LOG_CUSTOMS_CODE      VARCHAR2(4),
  LOG_DATE              DATE,
  LOG_COMPUTER_NAME     VARCHAR2(32)
)
;
alter table ALLSYS.COPLOG_MODIFY_REL
  add constraint PK_COPLOG_MODIFY_REL primary key (LOG_ID);

prompt
prompt Creating table COP_CONSUME
prompt ==========================
prompt
create table ALLSYS.COP_CONSUME
(
  REC_NUM        VARCHAR2(12) not null,
  EX_CODE_TS     VARCHAR2(10),
  IM_CODE_TS     VARCHAR2(10),
  CUS_CODE       VARCHAR2(4),
  EX_G_NAME      VARCHAR2(255),
  EX_G_MODEL     VARCHAR2(255),
  EX_UNIT_1      VARCHAR2(3),
  EX_UNIT_2      VARCHAR2(3),
  EX_G_UNIT      VARCHAR2(3),
  EX_FACTOR      NUMBER(19,9),
  EX_COUNTRY     VARCHAR2(3),
  IM_G_NAME      VARCHAR2(255),
  IM_G_MODEL     VARCHAR2(255),
  IM_UNIT_1      VARCHAR2(3),
  IM_UNIT_2      VARCHAR2(3),
  IM_G_UNIT      VARCHAR2(3),
  IM_FACTOR      NUMBER(19,9),
  IM_COUNTRY     VARCHAR2(3),
  INFO_SOURCE    VARCHAR2(1),
  MAX_CONSUME    NUMBER(19,9),
  MIN_CONSUME    NUMBER(19,9),
  MAX_DAMAGE     NUMBER(19,9),
  MIN_DAMAGE     NUMBER(19,9),
  INPUT_DATE     DATE,
  LIMIT_DATE     DATE,
  INPUT_ER       VARCHAR2(8),
  MODI_ER        VARCHAR2(8),
  DEL_ER         VARCHAR2(8),
  EXEC_FLAG      VARCHAR2(8),
  COP_CODE       VARCHAR2(10),
  MANUAL_NO      VARCHAR2(12),
  EX_G_NAME_KEY  VARCHAR2(32),
  EX_G_MODEL_KEY VARCHAR2(32),
  IM_G_NAME_KEY  VARCHAR2(32),
  IM_G_MODEL_KEY VARCHAR2(32),
  CONSUME_VER    VARCHAR2(30),
  NOTE_S         VARCHAR2(255)
)
;
alter table ALLSYS.COP_CONSUME
  add constraint PK_COP_CONSUME primary key (REC_NUM);
create index ALLSYS.IX_CODE_TS_COP on ALLSYS.COP_CONSUME (EX_CODE_TS, IM_CODE_TS, CUS_CODE);

prompt
prompt Creating table COP_SPEC_REL
prompt ===========================
prompt
create table ALLSYS.COP_SPEC_REL
(
  ENTRY_ID      VARCHAR2(18) not null,
  STEP_STATUS   VARCHAR2(1),
  PASS_CODE     VARCHAR2(32),
  AUTH_ID       NUMBER(19) not null,
  AUTH_DATETIME DATE,
  AUTH_PORT     VARCHAR2(4),
  AUTH_NOTE     VARCHAR2(255),
  PASS_ID       NUMBER(19),
  PASS_DATETIME DATE,
  PASS_PORT     VARCHAR2(4)
)
;
alter table ALLSYS.COP_SPEC_REL
  add constraint PK_COP_SPEC_REL primary key (ENTRY_ID, AUTH_ID);

prompt
prompt Creating table CORP_HEAD
prompt ========================
prompt
create table ALLSYS.CORP_HEAD
(
  FORM_ID    NUMBER(19) not null,
  TABLE_ID   NUMBER(19),
  CORP_ID    VARCHAR2(10),
  INPUT_TIME DATE,
  ER         VARCHAR2(8),
  CUSTOMS    VARCHAR2(4)
)
;
alter table ALLSYS.CORP_HEAD
  add constraint PK_CORP_HEAD primary key (FORM_ID);

prompt
prompt Creating table CORP_LIST
prompt ========================
prompt
create table ALLSYS.CORP_LIST
(
  FORM_ID  NUMBER(19) not null,
  FIELD_ID NUMBER(19) not null,
  TX       VARCHAR2(80)
)
;
alter table ALLSYS.CORP_LIST
  add constraint PK_CORP_LIST primary key (FORM_ID, FIELD_ID);

prompt
prompt Creating table CORP_TABLE
prompt =========================
prompt
create table ALLSYS.CORP_TABLE
(
  FIELD_ID   NUMBER(19) not null,
  TABLE_ID   NUMBER(19) not null,
  TABLE_NAME VARCHAR2(40),
  FIELD_NAME VARCHAR2(40)
)
;
alter table ALLSYS.CORP_TABLE
  add constraint PK_CORP_TABLE primary key (FIELD_ID, TABLE_ID);

prompt
prompt Creating table CORP_TYPE
prompt ========================
prompt
create table ALLSYS.CORP_TYPE
(
  CORP_TYPE  VARCHAR2(1) not null,
  MANUAL_TAG VARCHAR2(1)
)
;
alter table ALLSYS.CORP_TYPE
  add constraint PK_CORP_TYPE primary key (CORP_TYPE);

prompt
prompt Creating table COUNTER_TABLE
prompt ============================
prompt
create table ALLSYS.COUNTER_TABLE
(
  COUNTER_TYPE VARCHAR2(1) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  I_E_FLAG     VARCHAR2(1) not null,
  C_DATE       DATE not null,
  COUNTER      NUMBER(19)
)
;
alter table ALLSYS.COUNTER_TABLE
  add constraint PK_COUNTER_TABLE primary key (COUNTER_TYPE, CUSTOMS_CODE, I_E_FLAG, C_DATE);

prompt
prompt Creating table CO_CLASS_REL
prompt ===========================
prompt
create table ALLSYS.CO_CLASS_REL
(
  TRADE_CO        VARCHAR2(10) not null,
  CLASS_NO        NUMBER(19) not null,
  CLASS_SOURCE    VARCHAR2(1),
  CLASS_DEST      VARCHAR2(1),
  CLASS_OPER_CODE VARCHAR2(8),
  CLASS_OPER_DATE DATE,
  CLASS_DPT_CODE  VARCHAR2(8),
  CLASS_DPT_DATE  DATE,
  CLASS_NOTE      VARCHAR2(255)
)
;
alter table ALLSYS.CO_CLASS_REL
  add constraint PK_CO_CLASS_REL primary key (TRADE_CO, CLASS_NO);

prompt
prompt Creating table CREDIT_INFO
prompt ==========================
prompt
create table ALLSYS.CREDIT_INFO
(
  RPTNO       VARCHAR2(32) not null,
  RPTUSER     VARCHAR2(128),
  TRADE_CO    VARCHAR2(10),
  RCVNAME     VARCHAR2(128),
  ACTUCCY     VARCHAR2(3),
  ACTUAMT     NUMBER(21,2),
  CSTSETCODE  VARCHAR2(2),
  COUNTRYCODE VARCHAR2(3),
  CSTCNTRCTNO VARCHAR2(32),
  INVOICENO   VARCHAR2(64),
  LCBGNO      VARCHAR2(32),
  RECV_DATE   DATE
)
;
alter table ALLSYS.CREDIT_INFO
  add constraint PK_CREDIT_INFO primary key (RPTNO);

prompt
prompt Creating table CTS_CHKRATE_LIMIT
prompt ================================
prompt
create table ALLSYS.CTS_CHKRATE_LIMIT
(
  ID                    VARCHAR2(18) not null,
  CUSTOMS_CODE          VARCHAR2(4),
  I_E_FLAG              VARCHAR2(1),
  MAX_CHK_RATE          NUMBER(19,4),
  MAX_OPEN_RATE         NUMBER(19,4),
  QUICK_CHK_RATE        NUMBER(19,4),
  QUICKUNI_CHK_RATE     NUMBER(19,4),
  UNI_CHK_RATE          NUMBER(19,4),
  UNI_NOCHK_RATE        NUMBER(19,4),
  RANDOM_RECHK_RATE     NUMBER(19,4),
  RANDOM_FOCUS_CHK_RATE NUMBER(19,4)
)
;
alter table ALLSYS.CTS_CHKRATE_LIMIT
  add constraint PK_CTS_CHKRATE_LIMIT primary key (ID);
create index ALLSYS.IDX_CHKRATE_LIMIT_CUSTOMS_CODE on ALLSYS.CTS_CHKRATE_LIMIT (CUSTOMS_CODE);

prompt
prompt Creating table CTS_CHKRATE_LIMIT_BAK
prompt ====================================
prompt
create table ALLSYS.CTS_CHKRATE_LIMIT_BAK
(
  ID                    VARCHAR2(18) not null,
  CUSTOMS_CODE          VARCHAR2(4),
  I_E_FLAG              VARCHAR2(1),
  MAX_CHK_RATE          NUMBER(19,4),
  MAX_OPEN_RATE         NUMBER(19,4),
  QUICK_CHK_RATE        NUMBER(19,4),
  QUICKUNI_CHK_RATE     NUMBER(19,4),
  UNI_CHK_RATE          NUMBER(19,4),
  UNI_NOCHK_RATE        NUMBER(19,4),
  RANDOM_RECHK_RATE     NUMBER(19,4),
  OP_BAK_TYPE           VARCHAR2(8),
  OP_BAK_CUSTOMS        VARCHAR2(4),
  OP_BAK_MAN            VARCHAR2(8),
  OP_BAK_TIME           DATE not null,
  RANDOM_FOCUS_CHK_RATE NUMBER(19,4)
)
;
alter table ALLSYS.CTS_CHKRATE_LIMIT_BAK
  add constraint PK_CTS_CHKRATE_LIMIT_BAK primary key (ID, OP_BAK_TIME);

prompt
prompt Creating table CTS_PERIOD
prompt =========================
prompt
create table ALLSYS.CTS_PERIOD
(
  CUSTOMS_CODE VARCHAR2(4) not null,
  EXAM_PERIOD  NUMBER(9),
  CHK_PERIOD   NUMBER(9),
  PROC_PERIOD  NUMBER(9),
  OP_ER        VARCHAR2(8),
  OP_TIME      DATE
)
;
alter table ALLSYS.CTS_PERIOD
  add constraint PK_CTS_PERIOD primary key (CUSTOMS_CODE);

prompt
prompt Creating table CUSTOMS_DEFAULT
prompt ==============================
prompt
create table ALLSYS.CUSTOMS_DEFAULT
(
  MASTER_CUSTOMS VARCHAR2(4) not null,
  ADDRESS        VARCHAR2(255),
  POST_CODE      VARCHAR2(6),
  BANK_ACCOUNT   VARCHAR2(255),
  DEPARTMENT     VARCHAR2(255),
  PHONE_NO       VARCHAR2(32),
  RED_SWITCH     VARCHAR2(32),
  MODIFY_DATE    DATE,
  NOTE           VARCHAR2(255)
)
;
alter table ALLSYS.CUSTOMS_DEFAULT
  add constraint PK_CUSTOMS_DEFAULT primary key (MASTER_CUSTOMS);

prompt
prompt Creating table CUSTOMS_ESEAL_CONFIG
prompt ===================================
prompt
create table ALLSYS.CUSTOMS_ESEAL_CONFIG
(
  CUSTOMS_CODE VARCHAR2(4) not null,
  FLAG_TYPE    VARCHAR2(1) not null,
  I_E_FLAG     VARCHAR2(1) not null,
  ESEAL_FLAG   VARCHAR2(1),
  ESEAL_MODE   VARCHAR2(1),
  OP_ID        VARCHAR2(8) not null,
  OP_DATE      DATE not null
)
;
alter table ALLSYS.CUSTOMS_ESEAL_CONFIG
  add constraint PK_CUSTOMS_ESEAL_CONFIG primary key (CUSTOMS_CODE, FLAG_TYPE, I_E_FLAG);

prompt
prompt Creating table CUS_GOOD_CONSUME
prompt ===============================
prompt
create table ALLSYS.CUS_GOOD_CONSUME
(
  REC_NUM        VARCHAR2(12) not null,
  EX_CODE_TS     VARCHAR2(10),
  IM_CODE_TS     VARCHAR2(10),
  CUS_CODE       VARCHAR2(4),
  G_FLAG         VARCHAR2(1),
  EX_G_NAME      VARCHAR2(255),
  EX_G_MODEL     VARCHAR2(255),
  EX_UNIT_1      VARCHAR2(3),
  EX_UNIT_2      VARCHAR2(3),
  EX_G_UNIT      VARCHAR2(3),
  EX_FACTOR      NUMBER(19,9),
  EX_COUNTRY     VARCHAR2(3),
  IM_G_NAME      VARCHAR2(255),
  IM_G_MODEL     VARCHAR2(255),
  IM_UNIT_1      VARCHAR2(3),
  IM_UNIT_2      VARCHAR2(3),
  IM_G_UNIT      VARCHAR2(3),
  IM_FACTOR      NUMBER(19,9),
  IM_COUNTRY     VARCHAR2(3),
  INFO_SOURCE    VARCHAR2(3),
  MAX_CONSUME    NUMBER(19,9),
  MIN_CONSUME    NUMBER(19,9),
  MAX_DAMAGE     NUMBER(19,9),
  MIN_DAMAGE     NUMBER(19,9),
  LIMIT_DATE     DATE,
  INPUT_DATE     DATE,
  CHK_DATE       DATE,
  MODI_DATE      DATE,
  DEL_DATE       DATE,
  INPUT_ER       VARCHAR2(8),
  CHK_ER         VARCHAR2(8),
  MODI_ER        VARCHAR2(8),
  DEL_ER         VARCHAR2(8),
  CONSUME_NOTE   VARCHAR2(255),
  EXEC_FLAG      VARCHAR2(2),
  FORMULA        VARCHAR2(255),
  CONSUME_VER    VARCHAR2(30),
  NOTE_S         VARCHAR2(255),
  IM_FACTOR_1    NUMBER(19,9),
  EX_FACTOR_1    NUMBER(19,9),
  EX_G_NAME_KEY  VARCHAR2(32),
  EX_G_MODEL_KEY VARCHAR2(32),
  IM_G_NAME_KEY  VARCHAR2(32),
  IM_G_MODEL_KEY VARCHAR2(32)
)
;
alter table ALLSYS.CUS_GOOD_CONSUME
  add constraint PK_CUS_GOOD_CONSUME primary key (REC_NUM);
create index ALLSYS.IX_CODE_TS on ALLSYS.CUS_GOOD_CONSUME (EX_CODE_TS, IM_CODE_TS, CUS_CODE);

prompt
prompt Creating table DCG_BAK_LIST
prompt ===========================
prompt
create table ALLSYS.DCG_BAK_LIST
(
  DCG_NO      VARCHAR2(17) not null,
  CREATE_DATE DATE
)
;
alter table ALLSYS.DCG_BAK_LIST
  add constraint PK_DCG_BAK_LIST primary key (DCG_NO);

prompt
prompt Creating table DCG_BILL_HEAD
prompt ============================
prompt
create table ALLSYS.DCG_BILL_HEAD
(
  BILL_NO         VARCHAR2(17) not null,
  BILL_FLAG       VARCHAR2(1),
  EPORT_NO        VARCHAR2(18),
  DCG_NO          VARCHAR2(12),
  EX_COP_BILL_NO  VARCHAR2(20),
  EX_TRADE_CODE   VARCHAR2(10),
  EX_DECLARE_ER   VARCHAR2(20),
  EX_DECLARE_DATE DATE,
  IM_COP_BILL_NO  VARCHAR2(20),
  IM_TRADE_CODE   VARCHAR2(10),
  IM_DECLARE_ER   VARCHAR2(20),
  IM_DECLARE_DATE DATE,
  IM_DATE         DATE,
  CONTR_NO        VARCHAR2(20),
  VE_TYPE         VARCHAR2(1),
  SHIP_ID         VARCHAR2(32),
  EX_DATE         DATE,
  STATUS          VARCHAR2(1),
  PRE_FLAG        VARCHAR2(3),
  EXE_MARK        VARCHAR2(1),
  CUSTOMS_CODE    VARCHAR2(4),
  BAR_CODE        VARCHAR2(32),
  NOTE            VARCHAR2(255)
)
;
alter table ALLSYS.DCG_BILL_HEAD
  add constraint PK_DCG_BILL_HEAD primary key (BILL_NO);
create index ALLSYS.IX_DCGBILLH_DCGNO on ALLSYS.DCG_BILL_HEAD (DCG_NO);

prompt
prompt Creating table DCG_BILL_LIST
prompt ============================
prompt
create table ALLSYS.DCG_BILL_LIST
(
  BILL_NO    VARCHAR2(17) not null,
  G_TYPE     VARCHAR2(1) not null,
  G_NO       NUMBER(19) not null,
  DCG_G_NO   NUMBER(19),
  QTY        NUMBER(19,5),
  CHECK_DATE DATE,
  COP_QTY    NUMBER(19,5),
  COP_UNIT   VARCHAR2(3),
  G_MARK     VARCHAR2(8)
)
;
alter table ALLSYS.DCG_BILL_LIST
  add constraint PK_DCG_BILL_LIST primary key (BILL_NO, G_TYPE, G_NO);

prompt
prompt Creating table DCG_COPR_INFO
prompt ============================
prompt
create table ALLSYS.DCG_COPR_INFO
(
  CORP_NO      VARCHAR2(10) not null,
  EXE_MARK     VARCHAR2(1),
  BEGIN_DATE   DATE,
  END_DATE     DATE,
  PROC_ER      VARCHAR2(8),
  PROC_DATE    DATE,
  CUSTOMS_CODE VARCHAR2(4),
  NOTE         VARCHAR2(4),
  REMARK       VARCHAR2(255)
)
;
alter table ALLSYS.DCG_COPR_INFO
  add constraint PK_DCG_COPR_INFO primary key (CORP_NO);

prompt
prompt Creating table DCG_DEDUCT
prompt =========================
prompt
create table ALLSYS.DCG_DEDUCT
(
  ENTRY_ID    VARCHAR2(18) not null,
  DCG_NO      VARCHAR2(12) not null,
  G_TYPE      VARCHAR2(1) not null,
  ENTRY_G_NO  NUMBER(19) not null,
  DCG_G_NO    NUMBER(19),
  EMS_NO      VARCHAR2(12),
  EMS_G_NO    NUMBER(19),
  QTY         NUMBER(19,5),
  VERIFY_DATE DATE,
  VERIFY_ER   VARCHAR2(8)
)
;
alter table ALLSYS.DCG_DEDUCT
  add constraint PK_DCG_DEDUCT primary key (ENTRY_ID, DCG_NO, G_TYPE, ENTRY_G_NO);
create index ALLSYS.IX_DCGDEDUCT_EMSNO on ALLSYS.DCG_DEDUCT (EMS_NO, EMS_G_NO);
create index ALLSYS.IX_DCGDEDUCT_NOTYPE on ALLSYS.DCG_DEDUCT (DCG_NO, G_TYPE);

prompt
prompt Creating table DCG_DEDUCT_LOG
prompt =============================
prompt
create table ALLSYS.DCG_DEDUCT_LOG
(
  ENTRY_ID    VARCHAR2(18) not null,
  DCG_NO      VARCHAR2(12) not null,
  CREATE_DATE DATE not null,
  JOU_MARK    VARCHAR2(1) not null,
  NOTE        VARCHAR2(1),
  VERIFY_ER   VARCHAR2(8)
)
;
alter table ALLSYS.DCG_DEDUCT_LOG
  add constraint PK_DCG_DEDUCT_LOG primary key (ENTRY_ID, DCG_NO, CREATE_DATE, JOU_MARK);
create index ALLSYS.IX_DCGDEDUCTLOG_DCGNO on ALLSYS.DCG_DEDUCT_LOG (DCG_NO);

prompt
prompt Creating table DCG_HEAD
prompt =======================
prompt
create table ALLSYS.DCG_HEAD
(
  DCG_NO           VARCHAR2(12) not null,
  DCG_TYPE         VARCHAR2(1),
  EPORT_NO         VARCHAR2(18),
  EX_EMS_NO        VARCHAR2(12),
  EX_COP_EMS_NO    VARCHAR2(20),
  EX_CUSTOMS_CODE  VARCHAR2(4),
  EX_TRADE_CODE    VARCHAR2(10),
  EX_TRADE_NAME    VARCHAR2(255),
  EX_DECLARE_CODE  VARCHAR2(10),
  EX_DECLARE_NAME  VARCHAR2(255),
  EX_CORP_ER       VARCHAR2(64),
  EX_DECLARE_ER    VARCHAR2(20),
  EX_DISTRICT_CODE VARCHAR2(5),
  EX_CONTR_NO      VARCHAR2(20),
  EX_APPR_NO       VARCHAR2(20),
  EX_NOTE          VARCHAR2(64),
  EX_DECLARE_DATE  DATE,
  EX_CHK_ER        VARCHAR2(8),
  EX_CHK_DATE      DATE,
  EX_CHK_NOTE      VARCHAR2(255),
  IM_COP_EMS_NO    VARCHAR2(20),
  IM_CUSTOMS_CODE  VARCHAR2(4),
  IM_TRADE_CODE    VARCHAR2(10),
  IM_TRADE_NAME    VARCHAR2(255),
  IM_DECLARE_CODE  VARCHAR2(10),
  IM_DECLARE_NAME  VARCHAR2(255),
  IM_CORP_ER       VARCHAR2(64),
  IM_DECLARE_ER    VARCHAR2(20),
  IM_DISTRICT_CODE VARCHAR2(5),
  IM_CONTR_NO      VARCHAR2(20),
  IM_APPR_NO       VARCHAR2(20),
  IM_NOTE          VARCHAR2(64),
  IM_DECLARE_DATE  DATE,
  IM_CHK_ER        VARCHAR2(8),
  IM_CHK_DATE      DATE,
  IM_CHK_NOTE      VARCHAR2(255),
  INTEND_COST_TIME NUMBER(19,5),
  DISTANCE         NUMBER(19,5),
  CHK_MARK         VARCHAR2(2),
  EXE_MARK         VARCHAR2(1),
  PAUSE_MARK       VARCHAR2(3),
  END_DATE         DATE,
  FIRST_DATE       DATE,
  LATE_DATE        DATE,
  NOTE_1           VARCHAR2(8),
  NOTE_2           VARCHAR2(8),
  DECLARE_TYPE     VARCHAR2(1),
  LW_MARK          VARCHAR2(1)
)
;
alter table ALLSYS.DCG_HEAD
  add constraint PK_DCG_HEAD primary key (DCG_NO);
create index ALLSYS.IX_DCGHEADENDD on ALLSYS.DCG_HEAD (END_DATE);
create index ALLSYS.IX_DCGHEAD_EXCUMCODE on ALLSYS.DCG_HEAD (EX_CUSTOMS_CODE);
create index ALLSYS.IX_DCGHEAD_EXEMSNO on ALLSYS.DCG_HEAD (EX_EMS_NO);
create index ALLSYS.IX_DCGHEAD_IMCUMCODE on ALLSYS.DCG_HEAD (IM_CUSTOMS_CODE);

prompt
prompt Creating table DCG_LIST
prompt =======================
prompt
create table ALLSYS.DCG_LIST
(
  DCG_NO      VARCHAR2(12) not null,
  G_TYPE      VARCHAR2(1) not null,
  G_NO        NUMBER(19) not null,
  EX_G_NO     NUMBER(19),
  EMS_NO      VARCHAR2(12),
  EMS_G_NO    NUMBER(19),
  CODE_TS     VARCHAR2(10),
  G_NAME      VARCHAR2(255),
  G_MODEL     VARCHAR2(255),
  UNIT        VARCHAR2(3),
  QTY         NUMBER(19,5),
  UNIT_1      VARCHAR2(3),
  QTY_1       NUMBER(19,5),
  FACT_QTY    NUMBER(19,5),
  FACT_COUNT  NUMBER(19),
  BACK_COUNT  NUMBER(19),
  DEDUCT_QTY  NUMBER(19,5),
  DEDUCT_DATE DATE,
  G_MARK      VARCHAR2(8),
  PAUSE_MARK  VARCHAR2(3),
  BAK_CODE_TS VARCHAR2(10),
  MODIFY_MARK VARCHAR2(1)
)
;
alter table ALLSYS.DCG_LIST
  add constraint PK_DCG_LIST primary key (DCG_NO, G_TYPE, G_NO);
create index ALLSYS.IX_DCGHEAD_EMSNO on ALLSYS.DCG_LIST (EMS_NO, EMS_G_NO);
create index ALLSYS.IX_DCGHEAD_EXGNO on ALLSYS.DCG_LIST (DCG_NO, EX_G_NO);

prompt
prompt Creating table DCG_SEQ
prompt ======================
prompt
create table ALLSYS.DCG_SEQ
(
  DCG_KEY VARCHAR2(16) not null,
  DCG_SEQ NUMBER(16)
)
;
alter table ALLSYS.DCG_SEQ
  add constraint PK_DCG_SEQ primary key (DCG_KEY);

prompt
prompt Creating table DCG_WORKFLOW
prompt ===========================
prompt
create table ALLSYS.DCG_WORKFLOW
(
  DCG_NO      VARCHAR2(17) not null,
  STEP_ID     VARCHAR2(8) not null,
  CREATE_DATE DATE not null,
  PROC_ER     VARCHAR2(20),
  PROC_ID     VARCHAR2(8),
  PROC_POS    VARCHAR2(4),
  PROC_RESULT VARCHAR2(255)
)
;
alter table ALLSYS.DCG_WORKFLOW
  add constraint PK_DCG_WORKFLOW primary key (DCG_NO, STEP_ID, CREATE_DATE);

prompt
prompt Creating table DECLARER_REL
prompt ===========================
prompt
create table ALLSYS.DECLARER_REL
(
  TRADE_CO             VARCHAR2(10),
  DECL_CO              VARCHAR2(32) not null,
  PRE_DECL_CO          VARCHAR2(21),
  TRADE_NAME           VARCHAR2(255),
  BROKER_TYPE          VARCHAR2(1),
  CUSTOMS_CODE         VARCHAR2(4),
  DECL_ZG_CODE         VARCHAR2(9),
  DECL_NAME            VARCHAR2(32),
  DECL_SEX             VARCHAR2(2),
  DECL_DEGREE          VARCHAR2(32),
  DECL_ID_CODE         VARCHAR2(21),
  DECL_BIRTHDAY        DATE,
  DECL_TEL_CODE        VARCHAR2(32),
  DECL_MOBILE_CODE     VARCHAR2(32),
  DECL_FAX_CODE        VARCHAR2(32),
  DECL_EMAIL_ADDR      VARCHAR2(50),
  DECL_CLASS           VARCHAR2(1),
  DECL_YD_FLAG         VARCHAR2(1) default '0',
  INP_DATE             DATE default SYSDATE,
  IC_CODE              VARCHAR2(16),
  CTRL_MARK            VARCHAR2(8) default '00000000',
  CTRL_DATE            DATE,
  RG_DATE              DATE default SYSDATE,
  APPL_CODE            VARCHAR2(8),
  CHK_DATE             DATE,
  CHK_CODE             VARCHAR2(8),
  VALID_DATE           DATE,
  SCORE                NUMBER(19) default 0,
  SCORE_DATE           DATE,
  CLEAR_DATE           DATE,
  YSCORE               NUMBER(19) default 0,
  FAULT_TIME           NUMBER(19) default 0,
  ENTRY_DECL_NUM       NUMBER(19) default 0,
  ENTRY_END_NUM        NUMBER(19) default 0,
  FAULT_ENTRY_NUM      NUMBER(19) default 0,
  LAST_YSCORE          NUMBER(19) default 0,
  LAST_FAULT_TIME      NUMBER(19) default 0,
  LAST_ENTRY_DECL_NUM  NUMBER(19) default 0,
  LAST_ENTRY_END_NUM   NUMBER(19) default 0,
  LAST_FAULT_ENTRY_NUM NUMBER(19) default 0,
  CHANGE_TIME          NUMBER(19) default 0,
  NOTE                 VARCHAR2(255)
)
;
alter table ALLSYS.DECLARER_REL
  add constraint PK_DECLARER_REL primary key (DECL_CO);
create index ALLSYS.DECL_CTRL_IDX on ALLSYS.DECLARER_REL (CUSTOMS_CODE, CTRL_MARK);
create index ALLSYS.DECL_ID_CODE_IDX on ALLSYS.DECLARER_REL (DECL_ID_CODE);
create index ALLSYS.DECL_SCORE_IDX on ALLSYS.DECLARER_REL (CUSTOMS_CODE, SCORE);
create index ALLSYS.DECL_TRADE_IDX on ALLSYS.DECLARER_REL (TRADE_CO);
create index ALLSYS.DECL_ZG_CODE_IDX on ALLSYS.DECLARER_REL (CUSTOMS_CODE, DECL_ZG_CODE);

prompt
prompt Creating table DECLARER_REL_1220BAK
prompt ===================================
prompt
create table ALLSYS.DECLARER_REL_1220BAK
(
  TRADE_CO             VARCHAR2(10),
  DECL_CO              VARCHAR2(32) not null,
  PRE_DECL_CO          VARCHAR2(21),
  TRADE_NAME           VARCHAR2(255),
  BROKER_TYPE          VARCHAR2(1),
  CUSTOMS_CODE         VARCHAR2(4),
  DECL_ZG_CODE         VARCHAR2(9),
  DECL_NAME            VARCHAR2(32),
  DECL_SEX             VARCHAR2(2),
  DECL_DEGREE          VARCHAR2(32),
  DECL_ID_CODE         VARCHAR2(21),
  DECL_BIRTHDAY        DATE,
  DECL_TEL_CODE        VARCHAR2(32),
  DECL_MOBILE_CODE     VARCHAR2(32),
  DECL_FAX_CODE        VARCHAR2(32),
  DECL_EMAIL_ADDR      VARCHAR2(50),
  DECL_CLASS           VARCHAR2(1),
  DECL_YD_FLAG         VARCHAR2(1),
  INP_DATE             DATE,
  IC_CODE              VARCHAR2(16),
  CTRL_MARK            VARCHAR2(8),
  CTRL_DATE            DATE,
  RG_DATE              DATE,
  APPL_CODE            VARCHAR2(8),
  CHK_DATE             DATE,
  CHK_CODE             VARCHAR2(8),
  VALID_DATE           DATE,
  SCORE                NUMBER(19),
  SCORE_DATE           DATE,
  CLEAR_DATE           DATE,
  YSCORE               NUMBER(19),
  FAULT_TIME           NUMBER(19),
  ENTRY_DECL_NUM       NUMBER(19),
  ENTRY_END_NUM        NUMBER(19),
  FAULT_ENTRY_NUM      NUMBER(19),
  LAST_YSCORE          NUMBER(19),
  LAST_FAULT_TIME      NUMBER(19),
  LAST_ENTRY_DECL_NUM  NUMBER(19),
  LAST_ENTRY_END_NUM   NUMBER(19),
  LAST_FAULT_ENTRY_NUM NUMBER(19),
  CHANGE_TIME          NUMBER(19),
  NOTE                 VARCHAR2(255)
)
;

prompt
prompt Creating table DECLAR_COUNTER_REL
prompt =================================
prompt
create table ALLSYS.DECLAR_COUNTER_REL
(
  DECL_KEY VARCHAR2(8) not null,
  COUNTER  NUMBER(19)
)
;
alter table ALLSYS.DECLAR_COUNTER_REL
  add constraint PK_DECLAR_COUNTER_REL primary key (DECL_KEY);

prompt
prompt Creating table DECLAR_REL
prompt =========================
prompt
create table ALLSYS.DECLAR_REL
(
  TRADE_CO         VARCHAR2(10),
  DECL_CO          VARCHAR2(32) not null,
  CUSTOMS_CODE     VARCHAR2(4) not null,
  DECL_NAME        VARCHAR2(32),
  DECL_TYPE        VARCHAR2(1),
  DECL_CARD_VER    NUMBER(19),
  DECL_CARD_DATE   DATE,
  DECL_CARD_OP     VARCHAR2(8),
  DECL_TOTAL_ERROR NUMBER(19),
  DECL_SUB_ERROR   NUMBER(19),
  DECL_SEX         VARCHAR2(2),
  DECL_DEGREE      VARCHAR2(32),
  DECL_ID_CODE     VARCHAR2(18),
  DECL_TEL_BP_CODE VARCHAR2(32),
  DECL_LICE_DATE   DATE default SYSDATE,
  DECL_FAULT_TIME  NUMBER(19),
  DECL_LOCK_FLAG   VARCHAR2(1) default '0',
  DECL_CANCEL_DATE DATE,
  DECL_CHK_DATE    DATE default SYSDATE,
  DECL_CHK_CODE    VARCHAR2(8),
  DECL_CLASS       VARCHAR2(1),
  DECL_NOTE        VARCHAR2(255),
  DECL_CHANGE      NUMBER(19),
  DECL_VALID_DATE  DATE default SYSDATE,
  DECL_ZG_CODE     VARCHAR2(9),
  DECL_TRAIN_CO    VARCHAR2(21)
)
;
alter table ALLSYS.DECLAR_REL
  add constraint PK_DECLAR_REL primary key (DECL_CO, CUSTOMS_CODE);
create index ALLSYS.DECL_ID_CODE_INDEX on ALLSYS.DECLAR_REL (DECL_ID_CODE);
create index ALLSYS.DECL_TRADE_INDEX on ALLSYS.DECLAR_REL (TRADE_CO);
create index ALLSYS.DECL_TYPE_INDEX on ALLSYS.DECLAR_REL (CUSTOMS_CODE, DECL_TYPE);
create index ALLSYS.DECL_ZG_CODE_INDEX on ALLSYS.DECLAR_REL (DECL_ZG_CODE);

prompt
prompt Creating table DECLOG_FULL_REL
prompt ==============================
prompt
create table ALLSYS.DECLOG_FULL_REL
(
  LOG_ID           NUMBER(19) not null,
  LOG_MODE         VARCHAR2(8),
  LOG_DATE         DATE default SYSDATE,
  LOG_OPER_ID      VARCHAR2(8),
  LOG_CUSTOMS_CODE VARCHAR2(4),
  LOG_COMPUTER     VARCHAR2(32),
  TRADE_CO         VARCHAR2(10),
  DECL_CO          VARCHAR2(32),
  CUSTOMS_CODE     VARCHAR2(4),
  DECL_TYPE        VARCHAR2(1),
  DECL_CARD_VER    NUMBER(19),
  DECL_CARD_DATE   DATE,
  DECL_CARD_OP     VARCHAR2(8),
  DECL_TOTAL_ERROR NUMBER(19),
  DECL_SUB_ERROR   NUMBER(19),
  DECL_NAME        VARCHAR2(32),
  DECL_SEX         VARCHAR2(2),
  DECL_DEGREE      VARCHAR2(32),
  DECL_ID_CODE     VARCHAR2(18),
  DECL_TEL_BP_CODE VARCHAR2(32),
  DECL_LICE_DATE   DATE default SYSDATE,
  DECL_FAULT_TIME  NUMBER(19),
  DECL_LOCK_FLAG   VARCHAR2(1) default '0',
  DECL_CANCEL_DATE DATE,
  DECL_CHK_DATE    DATE default SYSDATE,
  DECL_CHK_CODE    VARCHAR2(8),
  DECL_CLASS       VARCHAR2(1),
  DECL_NOTE        VARCHAR2(255),
  DECL_CHANGE      NUMBER(19),
  DECL_VALID_DATE  DATE default SYSDATE,
  DECL_ZG_CODE     VARCHAR2(9),
  DECL_TRAIN_CO    VARCHAR2(21)
)
;
alter table ALLSYS.DECLOG_FULL_REL
  add constraint PK_DECLOG_FULL_REL primary key (LOG_ID);
create index ALLSYS.DECLOG_DECLCO_F_INDEX on ALLSYS.DECLOG_FULL_REL (DECL_CO, CUSTOMS_CODE);

prompt
prompt Creating table DECLOG_MODIFY_REL
prompt ================================
prompt
create table ALLSYS.DECLOG_MODIFY_REL
(
  LOG_ID           NUMBER(18) not null,
  LOG_DECL_CO      VARCHAR2(5),
  LOG_DECL_CUST    VARCHAR2(4),
  LOG_MODE         VARCHAR2(8),
  LOG_ITEM         VARCHAR2(32),
  LOG_OLD          VARCHAR2(255),
  LOG_NEW          VARCHAR2(255),
  LOG_OPER_ID      VARCHAR2(8),
  LOG_CUSTOMS_CODE VARCHAR2(4),
  LOG_DATE         DATE default SYSDATE,
  LOG_COMPUTER     VARCHAR2(32)
)
;
alter table ALLSYS.DECLOG_MODIFY_REL
  add constraint PK_DECLOG_MODIFY_REL primary key (LOG_ID);
create index ALLSYS.DECLOG_DECLCO_M_INDEX on ALLSYS.DECLOG_MODIFY_REL (LOG_DECL_CO, LOG_DECL_CUST);

prompt
prompt Creating table DECLOG_MOD_REL
prompt =============================
prompt
create table ALLSYS.DECLOG_MOD_REL
(
  TRADE_CO             VARCHAR2(10),
  DECL_CO              VARCHAR2(32) not null,
  PRE_DECL_CO          VARCHAR2(21),
  TRADE_NAME           VARCHAR2(255),
  BROKER_TYPE          VARCHAR2(1),
  CUSTOMS_CODE         VARCHAR2(4),
  DECL_ZG_CODE         VARCHAR2(9),
  DECL_NAME            VARCHAR2(32),
  DECL_SEX             VARCHAR2(2),
  DECL_DEGREE          VARCHAR2(32),
  DECL_ID_CODE         VARCHAR2(21),
  DECL_BIRTHDAY        DATE,
  DECL_TEL_CODE        VARCHAR2(32),
  DECL_MOBILE_CODE     VARCHAR2(32),
  DECL_FAX_CODE        VARCHAR2(32),
  DECL_EMAIL_ADDR      VARCHAR2(50),
  DECL_CLASS           VARCHAR2(1),
  DECL_YD_FLAG         VARCHAR2(1),
  INP_DATE             DATE,
  IC_CODE              VARCHAR2(16),
  CTRL_MARK            VARCHAR2(8),
  CTRL_DATE            DATE,
  RG_DATE              DATE,
  APPL_CODE            VARCHAR2(8),
  CHK_DATE             DATE,
  CHK_CODE             VARCHAR2(8),
  VALID_DATE           DATE,
  SCORE                NUMBER(19),
  SCORE_DATE           DATE,
  CLEAR_DATE           DATE,
  YSCORE               NUMBER(19),
  FAULT_TIME           NUMBER(19),
  ENTRY_DECL_NUM       NUMBER(19),
  ENTRY_END_NUM        NUMBER(19),
  FAULT_ENTRY_NUM      NUMBER(19),
  LAST_YSCORE          NUMBER(19),
  LAST_FAULT_TIME      NUMBER(19),
  LAST_ENTRY_DECL_NUM  NUMBER(19),
  LAST_ENTRY_END_NUM   NUMBER(19),
  LAST_FAULT_ENTRY_NUM NUMBER(19),
  CHANGE_TIME          NUMBER(19),
  NOTE                 VARCHAR2(255),
  MOD_TIMES            NUMBER(18) default 0 not null,
  LOG_OPER_ID          VARCHAR2(8),
  LOG_CUSTOMS_CODE     VARCHAR2(4),
  LOG_DATE             DATE default SYSDATE,
  LOG_MODE             VARCHAR2(8)
)
;
alter table ALLSYS.DECLOG_MOD_REL
  add constraint PK_DECLOG_MOD_REL primary key (DECL_CO, MOD_TIMES);
create index ALLSYS.DCLMLOG_CUSTMOD_IDX on ALLSYS.DECLOG_MOD_REL (CUSTOMS_CODE, LOG_MODE);

prompt
prompt Creating table DECLOG_SCORE_HEAD
prompt ================================
prompt
create table ALLSYS.DECLOG_SCORE_HEAD
(
  DECL_CO        VARCHAR2(32) not null,
  FORM_ID        VARCHAR2(32) not null,
  AGENT_CODE     VARCHAR2(10),
  SCORE_STEP     VARCHAR2(2),
  ERROR_SCORE    NUMBER(19),
  SCORE_TIME     DATE default SYSDATE not null,
  SCORE_PROC_ER  VARCHAR2(8),
  CUSTOMS_CODE   VARCHAR2(4),
  RETURN_REASON  VARCHAR2(255),
  RETURN_PROC_ER VARCHAR2(8),
  RETURN_DATE    DATE
)
;
alter table ALLSYS.DECLOG_SCORE_HEAD
  add constraint PK_DECLOG_SCORE_HEAD primary key (DECL_CO, FORM_ID, SCORE_TIME);
create index ALLSYS.DCLSLOG_CUSTOMS_IDX on ALLSYS.DECLOG_SCORE_HEAD (CUSTOMS_CODE);

prompt
prompt Creating table DECLOG_SCORE_LIST
prompt ================================
prompt
create table ALLSYS.DECLOG_SCORE_LIST
(
  DECL_CO    VARCHAR2(32) not null,
  FORM_ID    VARCHAR2(32) not null,
  SCORE_TIME DATE default SYSDATE not null,
  ITEM_NO    NUMBER(19) not null,
  ERROR_TYPE VARCHAR2(2),
  SEQ_NO     VARCHAR2(3),
  SCORE_DESC VARCHAR2(255)
)
;
alter table ALLSYS.DECLOG_SCORE_LIST
  add constraint PK_DECLOG_SCORE_LIST primary key (DECL_CO, FORM_ID, SCORE_TIME, ITEM_NO);
create index ALLSYS.DCLSLOG_ERRTYPE_IDX on ALLSYS.DECLOG_SCORE_LIST (ERROR_TYPE);
create index ALLSYS.DCLSLOG_SEQNO_IDX on ALLSYS.DECLOG_SCORE_LIST (SEQ_NO);

prompt
prompt Creating table DECL_CO_ENTRY_COUNT
prompt ==================================
prompt
create table ALLSYS.DECL_CO_ENTRY_COUNT
(
  DECL_CO      VARCHAR2(32) not null,
  GEN_DATE     DATE default SYSDATE not null,
  RANDOM       NUMBER(19) not null,
  ENTRY_DECL   NUMBER(19) default 0,
  ENTRY_END    NUMBER(19) default 0,
  FAULT_ENTRY  NUMBER(19) default 0,
  SCORE_DEDUCT NUMBER(19) default 0
)
;
alter table ALLSYS.DECL_CO_ENTRY_COUNT
  add constraint PK_DECL_CO_ENTRY_COUNT primary key (DECL_CO, RANDOM);

prompt
prompt Creating table DECL_CO_ENTRY_COUNT_TEMP
prompt =======================================
prompt
create table ALLSYS.DECL_CO_ENTRY_COUNT_TEMP
(
  DECL_CO  VARCHAR2(32) not null,
  GEN_DATE DATE not null,
  RANDOM   NUMBER(19) not null
)
;
alter table ALLSYS.DECL_CO_ENTRY_COUNT_TEMP
  add constraint PK_DECL_CO_ENTRY_COUNT_TEMP primary key (GEN_DATE, DECL_CO, RANDOM);

prompt
prompt Creating table DEL_EGS_ARC_AGENT_LIST
prompt =====================================
prompt
create table ALLSYS.DEL_EGS_ARC_AGENT_LIST
(
  EGS_NO     VARCHAR2(12) not null,
  AGENT_NO   NUMBER(9) not null,
  AGENT_CODE VARCHAR2(32),
  AGENT_NAME VARCHAR2(255)
)
;
alter table ALLSYS.DEL_EGS_ARC_AGENT_LIST
  add constraint PK_DEL_EGS_ARC_AGENT_LIST primary key (EGS_NO, AGENT_NO);

prompt
prompt Creating table DEL_EGS_ARC_HEAD
prompt ===============================
prompt
create table ALLSYS.DEL_EGS_ARC_HEAD
(
  PRE_EGS_NO          VARCHAR2(18),
  EGS_NO              VARCHAR2(12) not null,
  EGS_NAME            VARCHAR2(80),
  APPR_OFFICE         VARCHAR2(255),
  APPR_NO             VARCHAR2(32),
  MASTER_CUSTOMS      VARCHAR2(4),
  REG_CUSTOMS         VARCHAR2(4),
  I_E_FLAG            VARCHAR2(1),
  SPONSOR_NAME        VARCHAR2(255),
  UNDERTAKE_NAME      VARCHAR2(255),
  SPONSOR_ER          VARCHAR2(20),
  SPONSOR_ER_PHONE    VARCHAR2(32),
  CHECK_ER            VARCHAR2(255),
  BEGIN_DATE          DATE,
  END_DATE            DATE,
  EGS_SITE_MAME       VARCHAR2(255),
  EGS_AREA            NUMBER(19,5),
  EGS_INTE_AREA       NUMBER(19,5),
  DECLARE_NO          VARCHAR2(32),
  DECLARE_PHONE       VARCHAR2(32),
  COUNTRY_QTY         NUMBER(9),
  EX_MERCHANT_QTY     NUMBER(9),
  TW_APPR_NO          VARCHAR2(20),
  INPUT_DATE          DATE,
  MODI_REASON         VARCHAR2(255),
  AUDIT_OFFICER       VARCHAR2(8),
  DEPOSIT_MARK        VARCHAR2(1),
  AUDIT_DATE          DATE,
  AUDIT_ER            VARCHAR2(8),
  AUDIT_NOTE          VARCHAR2(255),
  POSTPONE_AUDIT_ER   VARCHAR2(8),
  POSTPONE_AUDIT_DATE DATE,
  POSTPONE_APPR_NO    VARCHAR2(255),
  POSTPONE_TIMES      NUMBER(9),
  CLOSE_DATE          DATE,
  CLOSE_ER            VARCHAR2(8),
  NOTES               VARCHAR2(255),
  DECLARE_TYPE        VARCHAR2(1),
  MODIFY_TIMES        NUMBER(9),
  DECLARE_SOURCE      VARCHAR2(5),
  CHK_MARK            VARCHAR2(1),
  EXE_MARK            VARCHAR2(1),
  AGENT_CODE          VARCHAR2(32),
  AGENT_NAME          VARCHAR2(255)
)
;
alter table ALLSYS.DEL_EGS_ARC_HEAD
  add constraint PK_DEL_EGS_ARC_HEAD primary key (EGS_NO);

prompt
prompt Creating table DEL_EGS_ARC_LIST
prompt ===============================
prompt
create table ALLSYS.DEL_EGS_ARC_LIST
(
  EGS_NO  VARCHAR2(12) not null,
  G_NO    NUMBER(9) not null,
  CODE_TS VARCHAR2(16),
  G_NAME  VARCHAR2(255)
)
;
alter table ALLSYS.DEL_EGS_ARC_LIST
  add constraint PK_DEL_EGS_ARC_LIST primary key (EGS_NO, G_NO);

prompt
prompt Creating table DEL_EGS_ARC_MERCHANT_LIST
prompt ========================================
prompt
create table ALLSYS.DEL_EGS_ARC_MERCHANT_LIST
(
  EGS_NO             VARCHAR2(12) not null,
  MERCHANT_NO        NUMBER(9) not null,
  MERCHANT_NAME      VARCHAR2(255),
  MERCHANT_COUNTRY   VARCHAR2(3),
  EXHIBITION_NO      VARCHAR2(50),
  EXHIBITION_SITE_NO VARCHAR2(32),
  AGENT_CODE         VARCHAR2(32) not null
)
;
alter table ALLSYS.DEL_EGS_ARC_MERCHANT_LIST
  add constraint PK_DEL_EGS_ARC_MERCHANT_LIST primary key (EGS_NO, AGENT_CODE, MERCHANT_NO);

prompt
prompt Creating table DEL_EGS_CLEAR_CERT
prompt =================================
prompt
create table ALLSYS.DEL_EGS_CLEAR_CERT
(
  CLR_NO    VARCHAR2(18) not null,
  CERT_CODE VARCHAR2(5) not null,
  CERT_NO   VARCHAR2(18) not null
)
;
alter table ALLSYS.DEL_EGS_CLEAR_CERT
  add constraint PK_DEL_EGS_CLEAR_CERT primary key (CLR_NO, CERT_CODE, CERT_NO);

prompt
prompt Creating table DEL_EGS_CLEAR_HEAD
prompt =================================
prompt
create table ALLSYS.DEL_EGS_CLEAR_HEAD
(
  CLR_NO          VARCHAR2(18) not null,
  PRE_CLR_NO      VARCHAR2(18),
  EGS_NO          VARCHAR2(12),
  EGS_NAME        VARCHAR2(80),
  MASTER_CUSTOMS  VARCHAR2(4),
  CLEAR_TYPE      VARCHAR2(10),
  I_E_PORT        VARCHAR2(4),
  I_E_DATE        DATE,
  I_E_FLAG        VARCHAR2(1),
  DECL_DATE       DATE,
  AGENT_CODE      VARCHAR2(32),
  AGENT_NAME      VARCHAR2(255),
  DECLARE_NO      VARCHAR2(32),
  DECLARE_PHONE   VARCHAR2(32),
  TRAF_MODE       VARCHAR2(10),
  BILL_NO         VARCHAR2(32),
  BILL_SUB_NO     VARCHAR2(32),
  GROSS_WT        NUMBER(19,5),
  NET_WT          NUMBER(19,5),
  WRAP_TYPE       VARCHAR2(32),
  PACK_NO         NUMBER(19),
  NOTES           VARCHAR2(255),
  VERIFY_DATE     DATE,
  VERIFY_ER       VARCHAR2(8),
  CLEAR_DATE      DATE,
  CLEAR_ER        VARCHAR2(8),
  AUDIT_ER        VARCHAR2(8),
  AUDIT_DATE      DATE,
  AUDIT_NOTE      VARCHAR2(255),
  TURN_NO         VARCHAR2(16),
  ENTRY_ID        VARCHAR2(18),
  CLEAR_NO        VARCHAR2(18),
  DECLARE_SOURCE  VARCHAR2(5),
  IM_CUSTOMS_CODE VARCHAR2(4),
  IM_AGENT_CODE   VARCHAR2(32),
  IM_AGENT_NAME   VARCHAR2(255),
  IM_DECL_NO      VARCHAR2(18),
  IM_EGS_NO       VARCHAR2(12),
  IM_EGS_NAME     VARCHAR2(80),
  CHK_MARK        VARCHAR2(1),
  EXE_MARK        VARCHAR2(1),
  LICENSE_NO      VARCHAR2(20)
)
;
alter table ALLSYS.DEL_EGS_CLEAR_HEAD
  add constraint PK_DEL_EGS_CLEAR_HEAD primary key (CLR_NO);

prompt
prompt Creating table DEL_EGS_CLEAR_LIST
prompt =================================
prompt
create table ALLSYS.DEL_EGS_CLEAR_LIST
(
  CLR_NO           VARCHAR2(18) not null,
  MERCHANT_NO      NUMBER(9),
  MERCHANT_NAME    VARCHAR2(255),
  MERCHANT_COUNTRY VARCHAR2(3),
  G_NO             NUMBER(9) not null,
  CODE_TS          VARCHAR2(16),
  G_CERT_FLAG      VARCHAR2(32),
  G_NAME           VARCHAR2(255),
  G_MODEL          VARCHAR2(255),
  QTY1             NUMBER(19,5),
  QTY2             NUMBER(19,5),
  DECL_QTY         NUMBER(19,5),
  UNIT1            VARCHAR2(3),
  UNIT2            VARCHAR2(3),
  DECL_UNIT        VARCHAR2(3),
  DECL_PRICE       NUMBER(19,4),
  DECL_TOTAL       NUMBER(19,4),
  TRADE_CURR       VARCHAR2(3),
  ORIGIN_COUNTRY   VARCHAR2(3),
  DECL_NO          VARCHAR2(18),
  DECL_G_NO        NUMBER(9)
)
;
alter table ALLSYS.DEL_EGS_CLEAR_LIST
  add constraint PK_DEL_EGS_CLEAR_LIST primary key (CLR_NO, G_NO);

prompt
prompt Creating table DEL_EGS_DECLARE_CERT
prompt ===================================
prompt
create table ALLSYS.DEL_EGS_DECLARE_CERT
(
  DECL_NO   VARCHAR2(18) not null,
  CERT_CODE VARCHAR2(5) not null,
  CERT_NO   VARCHAR2(18) not null
)
;
alter table ALLSYS.DEL_EGS_DECLARE_CERT
  add constraint PK_DEL_EGS_DECLARE_CERT primary key (DECL_NO, CERT_CODE, CERT_NO);

prompt
prompt Creating table DEL_EGS_DECLARE_HEAD
prompt ===================================
prompt
create table ALLSYS.DEL_EGS_DECLARE_HEAD
(
  EGS_NO          VARCHAR2(12),
  EGS_NAME        VARCHAR2(80),
  ADM_NO          VARCHAR2(18),
  DECL_NO         VARCHAR2(18) not null,
  PRE_DECL_NO     VARCHAR2(18),
  DECL_TYPE       VARCHAR2(1),
  MASTER_CUSTOMS  VARCHAR2(4),
  I_E_PORT        VARCHAR2(4),
  I_E_DATE        DATE,
  I_E_FLAG        VARCHAR2(1),
  DECLARE_DATE    DATE,
  AGENT_CODE      VARCHAR2(32),
  AGENT_NAME      VARCHAR2(255),
  DECLARE_NO      VARCHAR2(32),
  DECLARE_PHONE   VARCHAR2(32),
  LICENSE_NO      VARCHAR2(20),
  TRAF_MODE       VARCHAR2(1),
  BILL_NO         VARCHAR2(32),
  BILL_SUB_NO     VARCHAR2(32),
  TRADE_COUNTRY   VARCHAR2(3),
  GROSS_WT        NUMBER(19,5),
  NET_WT          NUMBER(19,5),
  WRAP_TYPE       VARCHAR2(32),
  PACK_NO         NUMBER(19),
  TRANS_MODE      VARCHAR2(1),
  NOTES           VARCHAR2(255),
  DEPOSIT_MARK    VARCHAR2(1),
  REL_DATE        DATE,
  TRANS_DATE      DATE,
  POSTPONE_TIMES  NUMBER(9),
  ZS_APPR_NO      VARCHAR2(40),
  TURN_NO         VARCHAR2(16),
  ENTRY_ID        VARCHAR2(18),
  ENTRY_TYPE      VARCHAR2(1),
  DECLARE_SOURCE  VARCHAR2(5),
  CHK_MARK        VARCHAR2(1),
  EX_CUSTOMS_CODE VARCHAR2(4),
  EX_EGS_NO       VARCHAR2(12),
  EX_EGS_NAME     VARCHAR2(80),
  EX_AGENT_CODE   VARCHAR2(32),
  EX_AGENT_NAME   VARCHAR2(255),
  AUDIT_ER        VARCHAR2(8),
  AUDIT_DATE      DATE,
  AUDIT_NOTE      VARCHAR2(255),
  VERIFY_DATE     DATE,
  VERIFY_ER       VARCHAR2(8),
  CLEAR_DATE      DATE,
  CLEAR_ER        VARCHAR2(8),
  EXE_MARK        VARCHAR2(1)
)
;
alter table ALLSYS.DEL_EGS_DECLARE_HEAD
  add constraint PK_DEL_EGS_DECLARE_HEAD primary key (DECL_NO);

prompt
prompt Creating table DEL_EGS_DECLARE_LIST
prompt ===================================
prompt
create table ALLSYS.DEL_EGS_DECLARE_LIST
(
  DECL_NO            VARCHAR2(18) not null,
  MERCHANT_NO        NUMBER(9),
  MERCHANT_NAME      VARCHAR2(255),
  MERCHANT_COUNTRY   VARCHAR2(3),
  G_NO               NUMBER(9) not null,
  CONTR_ITEM         NUMBER(9),
  CODE_TS            VARCHAR2(16),
  G_CERT_FLAG        VARCHAR2(32),
  G_NAME             VARCHAR2(255),
  G_MODEL            VARCHAR2(255),
  QTY1               NUMBER(19,5),
  QTY2               NUMBER(19,5),
  DECL_QTY           NUMBER(19,5),
  UNIT1              VARCHAR2(3),
  UNIT2              VARCHAR2(3),
  DECL_UNIT          VARCHAR2(3),
  DECL_PRICE         NUMBER(19,4),
  DECL_TOTAL         NUMBER(19,4),
  TRADE_CURR         VARCHAR2(3),
  ORIGIN_COUNTRY     VARCHAR2(3),
  EXHIBITION_NO      VARCHAR2(50),
  CLR_QTY            NUMBER(19,5),
  UNCLR_QTY          NUMBER(19,5),
  LEND_QTY           NUMBER(19,5),
  TAX_QTY            NUMBER(19,5),
  CONSUME_QTY        NUMBER(19,5),
  CLEAR_QTY          NUMBER(19,5),
  LOST_QTY           NUMBER(19,5),
  OTHER_QTY          NUMBER(19,5),
  EX_QTY             NUMBER(19,5),
  BUY_QTY            NUMBER(19,5),
  REEXPORT_QTY       NUMBER(19,5),
  LAST_DECL_NO       VARCHAR2(18),
  LAST_G_NO          NUMBER(9),
  FIRST_DECL_NO      VARCHAR2(18),
  FIRST_G_NO         NUMBER(9),
  EXHIBITION_SITE_NO VARCHAR2(32),
  TRADE_TOTAL        NUMBER(19,4),
  RMB_PRICE          NUMBER(19),
  USD_PRICE          NUMBER(19),
  DUTY_VALUE         NUMBER(19)
)
;
alter table ALLSYS.DEL_EGS_DECLARE_LIST
  add constraint PK_DEL_EGS_DECLARE_LIST primary key (DECL_NO, G_NO);

prompt
prompt Creating table DEL_MOD_APPLY
prompt ============================
prompt
create table ALLSYS.DEL_MOD_APPLY
(
  ENTRY_ID   VARCHAR2(18) not null,
  APPLY_TIME DATE not null,
  APPLY_FLAG VARCHAR2(1),
  APPLY_ER   VARCHAR2(8),
  APPLY_MARK VARCHAR2(1),
  APPLY_COMM VARCHAR2(255),
  RSK_CLASS  NUMBER(19),
  OP_FLAG    VARCHAR2(1),
  OP_TIME    DATE,
  OP_ER      VARCHAR2(8),
  OP_MARK    VARCHAR2(1),
  OP_COMM    VARCHAR2(255)
)
;
alter table ALLSYS.DEL_MOD_APPLY
  add constraint PK_DEL_MOD_APPLY primary key (ENTRY_ID, APPLY_TIME);
create index ALLSYS.IX_DELMODAPPLY_APPLYTIME on ALLSYS.DEL_MOD_APPLY (APPLY_TIME);

prompt
prompt Creating table DISTRIBUTIVE_BILL_DECLARE
prompt ========================================
prompt
create table ALLSYS.DISTRIBUTIVE_BILL_DECLARE
(
  DISTRIBUTIVE_NO   VARCHAR2(18) not null,
  I_E_FLAG          VARCHAR2(1) not null,
  CUSTOMS_CODE      VARCHAR2(4) not null,
  TRAF_MODE         VARCHAR2(1) not null,
  VOYAGE_NO         VARCHAR2(32) not null,
  BILL_NO           VARCHAR2(32) not null,
  SHIP_ID           VARCHAR2(32) not null,
  I_E_DATE          DATE not null,
  DISTRIBUTIVE_MARK VARCHAR2(1),
  PACK_NO           NUMBER(19,5),
  GROSS_WT          NUMBER(19,5),
  VOLUME            NUMBER(19)
)
;
alter table ALLSYS.DISTRIBUTIVE_BILL_DECLARE
  add constraint PK_DISTRIBUTIVE_BILL_DECLARE primary key (DISTRIBUTIVE_NO, I_E_FLAG, CUSTOMS_CODE, TRAF_MODE, VOYAGE_NO, BILL_NO, SHIP_ID, I_E_DATE);

prompt
prompt Creating table DISTRIBUTIVE_DECLARE
prompt ===================================
prompt
create table ALLSYS.DISTRIBUTIVE_DECLARE
(
  DISTRIBUTIVE_NO    VARCHAR2(18) not null,
  FORM_FLAG          VARCHAR2(1),
  DECL_PORT          VARCHAR2(4),
  ORIGIN_CUS_CODE    VARCHAR2(4),
  ORIGIN_CUS_PLACE   VARCHAR2(8),
  DEST_CUS_CODE      VARCHAR2(4),
  DEST_CUS_PLACE     VARCHAR2(8),
  AGENT_CODE         VARCHAR2(10),
  AGENT_NAME         VARCHAR2(255),
  TRANSIT_CODE       VARCHAR2(10),
  TRANSIT_NAME       VARCHAR2(255),
  TRANSIT_WAY        VARCHAR2(2000),
  NOTE               VARCHAR2(255),
  DISTRIBUTIVE_MARK  VARCHAR2(1),
  I_E_FLAG           VARCHAR2(1),
  DISTRIBUTIVE_SURER VARCHAR2(8),
  SURE_DATE          DATE,
  OUT_SURER          VARCHAR2(8),
  IN_SURER           VARCHAR2(8),
  FORE_ARRIVE_DATE   DATE,
  DIS_FLAG           VARCHAR2(1),
  SEAL_FLAG          VARCHAR2(1),
  LIMIT_HOUR         NUMBER(19,1),
  DECL_DATE          DATE,
  IN_DATE            DATE,
  PRINT_NUM          NUMBER(9),
  SEQ_NO             VARCHAR2(18)
)
;
alter table ALLSYS.DISTRIBUTIVE_DECLARE
  add constraint PK_DISTRIBUTIVE_DECLARE primary key (DISTRIBUTIVE_NO);

prompt
prompt Creating table DISTRIBUTIVE_TRANSIT_WAY
prompt =======================================
prompt
create table ALLSYS.DISTRIBUTIVE_TRANSIT_WAY
(
  DISTRIBUTIVE_NO VARCHAR2(18) not null,
  CONTA_ID        VARCHAR2(32) not null,
  TRAF_MODE       VARCHAR2(1),
  SEAL_NO         VARCHAR2(32),
  CAR_NUMBER      VARCHAR2(32),
  DRIVER_NO       VARCHAR2(32)
)
;
alter table ALLSYS.DISTRIBUTIVE_TRANSIT_WAY
  add constraint PK_DISTRIBUTIVE_TRANSIT_WAY primary key (DISTRIBUTIVE_NO, CONTA_ID);

prompt
prompt Creating table DST_COUNTER_TABLE
prompt ================================
prompt
create table ALLSYS.DST_COUNTER_TABLE
(
  EMS_NO      VARCHAR2(12) not null,
  COUNTER     VARCHAR2(1) not null,
  SUB_COUNTER NUMBER(9) not null
)
;
alter table ALLSYS.DST_COUNTER_TABLE
  add constraint PK_DST_COUNTER_TABLE primary key (EMS_NO, COUNTER, SUB_COUNTER);

prompt
prompt Creating table DST_DEDUCT
prompt =========================
prompt
create table ALLSYS.DST_DEDUCT
(
  PRE_NO         VARCHAR2(17) not null,
  REL_NO         VARCHAR2(17) not null,
  G_NO           NUMBER(19) not null,
  ENTRY_ID       VARCHAR2(18) not null,
  ENTRY_G_NO     NUMBER(19) not null,
  I_E_FLAG       VARCHAR2(1) not null,
  G_QTY          NUMBER(19,5),
  VERIFY_DATE    DATE not null,
  VERIFY_ER      VARCHAR2(8) not null,
  ORIGIN_COUNTRY VARCHAR2(3) not null
)
;
alter table ALLSYS.DST_DEDUCT
  add constraint PK_DST_DEDUCT primary key (PRE_NO, G_NO, ORIGIN_COUNTRY, ENTRY_ID, ENTRY_G_NO);
create index ALLSYS.IX_DEDUCT_ENTRYID on ALLSYS.DST_DEDUCT (ENTRY_ID);
create index ALLSYS.IX_DEDUCT_VERIFYDATE on ALLSYS.DST_DEDUCT (VERIFY_DATE);

prompt
prompt Creating table DST_EXG
prompt ======================
prompt
create table ALLSYS.DST_EXG
(
  DST_SEQ_NO     NUMBER(18) not null,
  PRE_NO         VARCHAR2(17) not null,
  REL_NO         VARCHAR2(17) not null,
  G_NO           NUMBER(19) not null,
  CODE_TS        VARCHAR2(10) not null,
  G_NAME         VARCHAR2(255) not null,
  G_MODEL        VARCHAR2(255),
  G_QTY          NUMBER(19,5) not null,
  G_UNIT         VARCHAR2(3) not null,
  UNIT_1         VARCHAR2(3) not null,
  QTY_1          NUMBER(19,5),
  DECL_PRICE     NUMBER(19,5) not null,
  PRICE_1        NUMBER(19,5) not null,
  TRADE_TOTAL    NUMBER(19,5) not null,
  TRADE_CURR     VARCHAR2(3) not null,
  ORIGIN_COUNTRY VARCHAR2(3) not null,
  VERSION        NUMBER(9) not null,
  MODIFY_MARK    VARCHAR2(1) not null,
  DECL_DUTY      NUMBER(19,5),
  DECL_TAX       NUMBER(19,5),
  DECL_OTHER     NUMBER(19,5),
  DECL_TOTAL     NUMBER(19,5),
  CHK_DUTY       NUMBER(19,5),
  CHK_TAX        NUMBER(19,5),
  CHK_INTEREST   NUMBER(19,5),
  CHK_OTHER      NUMBER(19,5),
  CHK_TOTAL      NUMBER(19,5),
  IMG_PRICE      NUMBER(19,5),
  CONTRACT_PRICE NUMBER(19,5),
  NORMAL_PRICE   NUMBER(19,5),
  PARAM_PRICE    NUMBER(19,5),
  NOTE           VARCHAR2(255),
  FACT_QTY       NUMBER(19,5)
)
;
alter table ALLSYS.DST_EXG
  add constraint PK_DST_EXG primary key (PRE_NO, G_NO, ORIGIN_COUNTRY);
create index ALLSYS.IX_EXG_CODETS on ALLSYS.DST_EXG (CODE_TS);
create index ALLSYS.IX_EXG_RELNO on ALLSYS.DST_EXG (REL_NO);
create index ALLSYS.IX_EXG_SEQNO on ALLSYS.DST_EXG (DST_SEQ_NO);

prompt
prompt Creating table DST_EXG_ORI_ENTRY
prompt ================================
prompt
create table ALLSYS.DST_EXG_ORI_ENTRY
(
  DST_SEQ_NO     NUMBER(18) not null,
  PRE_NO         VARCHAR2(17) not null,
  REL_NO         VARCHAR2(17) not null,
  G_NO           NUMBER(19) not null,
  ORIGIN_COUNTRY VARCHAR2(3) not null,
  ENTRY_ID       VARCHAR2(18) not null,
  ENTRY_G_NO     NUMBER(19) not null,
  TRADE_PRICE    NUMBER(19,5),
  TRADE_CURR     VARCHAR2(3),
  MODIFY_MARK    VARCHAR2(1),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3)
)
;
alter table ALLSYS.DST_EXG_ORI_ENTRY
  add constraint PK_DST_EXG_ORI_ENTRY primary key (PRE_NO, G_NO, ORIGIN_COUNTRY, ENTRY_ID, ENTRY_G_NO);
create index ALLSYS.IX_EXGENTRY_RELNO on ALLSYS.DST_EXG_ORI_ENTRY (REL_NO);
create index ALLSYS.IX_EXGENTRY_SEQNO on ALLSYS.DST_EXG_ORI_ENTRY (DST_SEQ_NO);

prompt
prompt Creating table DST_HEAD
prompt =======================
prompt
create table ALLSYS.DST_HEAD
(
  DST_SEQ_NO     NUMBER(18) not null,
  PRE_NO         VARCHAR2(17) not null,
  EMS_NO         VARCHAR2(12) not null,
  EMS_TYPE       VARCHAR2(1) not null,
  TRADE_CODE     VARCHAR2(10) not null,
  TRADE_NAME     VARCHAR2(255) not null,
  OWNER_CODE     VARCHAR2(10) not null,
  OWNER_NAME     VARCHAR2(255) not null,
  DS_TYPE        VARCHAR2(1) not null,
  DS_NO          VARCHAR2(255),
  DECLARE_DATE   DATE not null,
  MASTER_CUSTOMS VARCHAR2(4) not null,
  RATE_MARK      VARCHAR2(1) default 0,
  REL_NO         VARCHAR2(17) not null,
  RTX_MARK       VARCHAR2(1) default 0 not null,
  NOTE           VARCHAR2(255),
  OP_NAME        VARCHAR2(32) not null,
  OP_ID          VARCHAR2(18) not null,
  OP_TIME        DATE,
  ACCURAL_DATE   DATE,
  VALID_DATE     DATE
)
;
alter table ALLSYS.DST_HEAD
  add constraint PK_DST_HEAD primary key (PRE_NO);
create index ALLSYS.IX_DSTHEAD_CUSCODE on ALLSYS.DST_HEAD (MASTER_CUSTOMS);
create index ALLSYS.IX_DSTHEAD_EMSNO on ALLSYS.DST_HEAD (EMS_NO);
create index ALLSYS.IX_DSTHEAD_OPTIME on ALLSYS.DST_HEAD (OP_TIME);

prompt
prompt Creating table DST_IMG
prompt ======================
prompt
create table ALLSYS.DST_IMG
(
  DST_SEQ_NO     NUMBER(18) not null,
  PRE_NO         VARCHAR2(17) not null,
  REL_NO         VARCHAR2(17) not null,
  G_NO           NUMBER(19) not null,
  CODE_TS        VARCHAR2(10) not null,
  G_NAME         VARCHAR2(255) not null,
  G_MODEL        VARCHAR2(255),
  G_QTY          NUMBER(19,5) not null,
  G_UNIT         VARCHAR2(3) not null,
  UNIT_1         VARCHAR2(3) not null,
  QTY_1          NUMBER(19,5),
  DECL_PRICE     NUMBER(19,5) not null,
  PRICE_1        NUMBER(19,5) not null,
  TRADE_TOTAL    NUMBER(19,5) not null,
  TRADE_CURR     VARCHAR2(3) not null,
  ORIGIN_COUNTRY VARCHAR2(3) not null,
  MODIFY_MARK    VARCHAR2(1) not null,
  DECL_DUTY      NUMBER(19,5),
  DECL_TAX       NUMBER(19,5),
  DECL_OTHER     NUMBER(19,5),
  DECL_TOTAL     NUMBER(19,5),
  CHK_DUTY       NUMBER(19,5),
  CHK_TAX        NUMBER(19,5),
  CHK_INTEREST   NUMBER(19,5),
  CHK_OTHER      NUMBER(19,5),
  CHK_TOTAL      NUMBER(19,5),
  IMG_PRICE      NUMBER(19,5),
  CONTRACT_PRICE NUMBER(19,5),
  NORMAL_PRICE   NUMBER(19,5),
  PARAM_PRICE    NUMBER(19,5),
  NOTE           VARCHAR2(255),
  FACT_QTY       NUMBER(19,5)
)
;
alter table ALLSYS.DST_IMG
  add constraint PK_DST_IMG primary key (PRE_NO, G_NO, ORIGIN_COUNTRY);
create index ALLSYS.IX_IMG_CODETS on ALLSYS.DST_IMG (CODE_TS);
create index ALLSYS.IX_IMG_RELNO on ALLSYS.DST_IMG (REL_NO);
create index ALLSYS.IX_IMG_SEQNO on ALLSYS.DST_IMG (DST_SEQ_NO);

prompt
prompt Creating table DST_IMG_ORI_ENTRY
prompt ================================
prompt
create table ALLSYS.DST_IMG_ORI_ENTRY
(
  DST_SEQ_NO     NUMBER(18) not null,
  PRE_NO         VARCHAR2(17) not null,
  REL_NO         VARCHAR2(17) not null,
  G_NO           NUMBER(19) not null,
  ORIGIN_COUNTRY VARCHAR2(3) not null,
  ENTRY_ID       VARCHAR2(18) not null,
  ENTRY_G_NO     NUMBER(19) not null,
  TRADE_PRICE    NUMBER(19,5),
  TRADE_CURR     VARCHAR2(3),
  MODIFY_MARK    VARCHAR2(1),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3)
)
;
alter table ALLSYS.DST_IMG_ORI_ENTRY
  add constraint PK_DST_IMG_ORI_ENTRY primary key (PRE_NO, G_NO, ORIGIN_COUNTRY, ENTRY_ID, ENTRY_G_NO);
create index ALLSYS.IX_IMGENTRY_RELNO on ALLSYS.DST_IMG_ORI_ENTRY (REL_NO);
create index ALLSYS.IX_IMGENTRY_SEQNO on ALLSYS.DST_IMG_ORI_ENTRY (DST_SEQ_NO);

prompt
prompt Creating table DTT_COP_PARAM
prompt ============================
prompt
create table ALLSYS.DTT_COP_PARAM
(
  CORP_CODE    VARCHAR2(10) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  CORP_NAME    VARCHAR2(255),
  PROC_ER      VARCHAR2(8),
  PROC_DATE    DATE
)
;
alter table ALLSYS.DTT_COP_PARAM
  add constraint PK_DTT_COP_PARAM primary key (CORP_CODE, CUSTOMS_CODE);

prompt
prompt Creating table DUTYFORM_HEAD
prompt ============================
prompt
create table ALLSYS.DUTYFORM_HEAD
(
  ENTRY_ID      VARCHAR2(18) not null,
  ID_CHK        VARCHAR2(1),
  DUTYFORM_FLAG VARCHAR2(1),
  I_E_PORT      VARCHAR2(4),
  DECL_PORT     VARCHAR2(4),
  PAYER_CODE    VARCHAR2(10),
  PAYER_NAME    VARCHAR2(255),
  OWNER_CODE    VARCHAR2(10),
  OWNER_NAME    VARCHAR2(255),
  TRADE_CODE    VARCHAR2(10),
  TRADE_NAME    VARCHAR2(255),
  AGENT_CODE    VARCHAR2(10),
  AGENT_NAME    VARCHAR2(255),
  CONTR_NO      VARCHAR2(32),
  D_DATE        DATE,
  DUTY_ER       VARCHAR2(8),
  G_NAME        VARCHAR2(255),
  D_ITEMS_NO    NUMBER(19),
  A_ITEMS_NO    NUMBER(19),
  R_ITEMS_NO    NUMBER(19),
  TRADE_MODE    VARCHAR2(4),
  CUT_MODE      VARCHAR2(3),
  TAXY_RG_NO    VARCHAR2(32),
  MANUAL_NO     VARCHAR2(12),
  INTEREST_DAYS NUMBER(19),
  INTEREST_RATE NUMBER(19,5),
  SERVICE_RATE  NUMBER(19,5)
)
;
alter table ALLSYS.DUTYFORM_HEAD
  add constraint PK_DUTYFORM_HEAD primary key (ENTRY_ID);

prompt
prompt Creating table DUTYFORM_LIST
prompt ============================
prompt
create table ALLSYS.DUTYFORM_LIST
(
  ENTRY_ID           VARCHAR2(18) not null,
  TAX_ID             VARCHAR2(2) not null,
  DELAY_MARK         VARCHAR2(1),
  DUTY_FLAG          VARCHAR2(1),
  DUTY_FLAG_NOTE     VARCHAR2(1),
  TAX_TYPE           VARCHAR2(1),
  PAY_MODE           VARCHAR2(1),
  EPORT_ID           VARCHAR2(32),
  ID_CHK             VARCHAR2(1),
  INCOME_SYS         VARCHAR2(32),
  INCOME_NAME        VARCHAR2(32),
  BANK_NAME          VARCHAR2(255),
  BANK_ACCOUNT       VARCHAR2(32),
  SUBJECT_CODE       VARCHAR2(30),
  SUBJECT_NAME       VARCHAR2(32),
  SUBJECT_LEVEL      VARCHAR2(16),
  EXQ_NAME           VARCHAR2(32),
  DUTY_VALUE         NUMBER(19,2),
  REAL_TAX           NUMBER(19,2),
  DELAY_DAYS         NUMBER(19),
  TAX_CUT            NUMBER(19,2),
  CUT_NOTE           VARCHAR2(1),
  P_DATE             DATE,
  P_LIMIT            DATE,
  PAY_DATE           DATE,
  C_DATE             DATE,
  CANCEL_ER          VARCHAR2(8),
  RECHK_ER           VARCHAR2(8),
  EXQ_DATE           DATE,
  SYS_DATE           DATE,
  BOOK_NO            VARCHAR2(32),
  ORIGINAL_TAXID     VARCHAR2(2),
  DUTYFOR_NO         VARCHAR2(32),
  NOTE_1             VARCHAR2(255),
  NOTE_2             VARCHAR2(255),
  NOTE_3             VARCHAR2(255),
  NOTE_4             VARCHAR2(255),
  OP_C_DATE          DATE,
  GEN_DATE           DATE,
  BANK_CODE          VARCHAR2(20),
  BANK_ACCOUNT_NAME  VARCHAR2(128),
  PAYER_ACCOUNT_NO   VARCHAR2(32),
  PAYER_ACCOUNT_NAME VARCHAR2(255),
  PAYER_BANK_NAME    VARCHAR2(255),
  PAYER_BANK_CODE    VARCHAR2(20),
  TREASURY_CODE      VARCHAR2(10)
)
;
alter table ALLSYS.DUTYFORM_LIST
  add constraint PK_DUTYFORM_LIST primary key (ENTRY_ID, TAX_ID);
create index ALLSYS.IX_DUTYFORMLIST_BOOK_NO on ALLSYS.DUTYFORM_LIST (BOOK_NO);
create index ALLSYS.IX_DUTYFORMLIST_DUTYFORNO on ALLSYS.DUTYFORM_LIST (DUTYFOR_NO);
create index ALLSYS.IX_DUTYFORMLIST_OPCDATE on ALLSYS.DUTYFORM_LIST (OP_C_DATE);
create index ALLSYS.IX_DUTYFORMLIST_PDATE on ALLSYS.DUTYFORM_LIST (P_DATE);

prompt
prompt Creating table DUTY_CHECK_LOG
prompt =============================
prompt
create table ALLSYS.DUTY_CHECK_LOG
(
  ENTRY_ID    VARCHAR2(18) not null,
  TAX_ID      VARCHAR2(2) not null,
  GUA_ID      VARCHAR2(18),
  DELAY_MARK  VARCHAR2(1),
  DUTY_FLAG   VARCHAR2(1),
  TAX_TYPE    VARCHAR2(1),
  REAL_TAX    NUMBER(19,2),
  P_LIMIT     DATE,
  PROC_TIME   DATE not null,
  PROC_FLAG   VARCHAR2(1),
  PROC_ER     VARCHAR2(8),
  EPORT_ID    VARCHAR2(32),
  VERIFY_TIME DATE,
  VERIFY_MARK VARCHAR2(1),
  REASON_CODE VARCHAR2(3),
  REASON_MESS VARCHAR2(40),
  DATA_TYPE   VARCHAR2(1),
  PAYER_NAME  VARCHAR2(255)
)
;
alter table ALLSYS.DUTY_CHECK_LOG
  add constraint PK_DUTY_CHECK_LOG primary key (ENTRY_ID, TAX_ID, PROC_TIME);
create index ALLSYS.IX_DUTYCHECKLOG_EPORTID on ALLSYS.DUTY_CHECK_LOG (EPORT_ID);
create index ALLSYS.IX_DUTYCHECKLOG_GUAID on ALLSYS.DUTY_CHECK_LOG (GUA_ID);

prompt
prompt Creating table ECO_HEAD
prompt =======================
prompt
create table ALLSYS.ECO_HEAD
(
  CERTIFICATE_NO   VARCHAR2(64) not null,
  TRADE_CO         VARCHAR2(32),
  TRANS_NUM        NUMBER(19),
  INVOICE_NO       VARCHAR2(64),
  INVOICE_DATE     DATE,
  INVOICE_CURRTYPE VARCHAR2(16),
  INVOICE_AMOUNT   NUMBER(19,4),
  I_E_PORT         VARCHAR2(32),
  EXPORTER         VARCHAR2(255),
  MANUFACTURER     VARCHAR2(255),
  CONSIGNEE        VARCHAR2(255),
  DEPARTURE_DATE   DATE,
  TRAF_MODE        VARCHAR2(16),
  TRAF_NAME        VARCHAR2(255),
  DEPART_PORT      VARCHAR2(16),
  DEST_PORT        VARCHAR2(16),
  TRANS_ROUTE      VARCHAR2(255),
  DEST_COUNTRY     VARCHAR2(16),
  TRADE_COUNTRY    VARCHAR2(16),
  DECL_PLACE       VARCHAR2(32),
  DECL_DATE        DATE,
  DECL_SIGNER      VARCHAR2(32),
  ISSUE_PLACE      VARCHAR2(32),
  ISSUE_DATE       DATE,
  ISSUE_SIGNER     VARCHAR2(32),
  VALID_DATE       DATE,
  NOTE             VARCHAR2(255),
  ISSUE_NOTE       VARCHAR2(255),
  ISSUE_DEPARTMENT VARCHAR2(64),
  AGREEMENT_ID     VARCHAR2(4),
  ENTRY_ID         VARCHAR2(32),
  IN_DATE          DATE
)
;
alter table ALLSYS.ECO_HEAD
  add constraint PK_ECO_HEAD primary key (CERTIFICATE_NO);
create index ALLSYS.IX_ECO_HEAD_IN_DATE on ALLSYS.ECO_HEAD (IN_DATE);

prompt
prompt Creating table ECO_LIST
prompt =======================
prompt
create table ALLSYS.ECO_LIST
(
  CERTIFICATE_NO     VARCHAR2(64) not null,
  G_NO               NUMBER(19) not null,
  MARK               VARCHAR2(1024),
  PACK_AND_DESC      VARCHAR2(1024),
  CODE_TS            VARCHAR2(16),
  ORIGINAL_CRITERION VARCHAR2(32),
  G_QTY              NUMBER(19,5),
  G_UNIT             VARCHAR2(64),
  GROSS_WEIGHT       VARCHAR2(64),
  NET_WEIGHT         VARCHAR2(64),
  QTY_1              NUMBER(19,5),
  UNIT_1             VARCHAR2(64),
  QTY_2              NUMBER(19,5),
  UNIT_2             VARCHAR2(64),
  FOB_CURR           VARCHAR2(16),
  FOB_AMOUNT         NUMBER(19,4)
)
;
alter table ALLSYS.ECO_LIST
  add constraint PK_ECO_LIST primary key (CERTIFICATE_NO, G_NO);

prompt
prompt Creating table ECO_PARTS
prompt ========================
prompt
create table ALLSYS.ECO_PARTS
(
  CERTIFICATE_NO VARCHAR2(64) not null,
  G_NO           NUMBER(19) not null,
  PART_SEQ       NUMBER(19) not null,
  PART_HSCODE    VARCHAR2(16),
  PART_NAME      VARCHAR2(128),
  UNIT_PRICE     NUMBER(19,5),
  ORIGIN_COUNTRY VARCHAR2(16),
  AMT_PERCENT    NUMBER(19,5)
)
;
alter table ALLSYS.ECO_PARTS
  add constraint PK_ECO_PARTS primary key (CERTIFICATE_NO, G_NO, PART_SEQ);

prompt
prompt Creating table ECO_WORKFLOW
prompt ===========================
prompt
create table ALLSYS.ECO_WORKFLOW
(
  CERTIFICATE_NO VARCHAR2(64) not null,
  TRANSFER_NUM   NUMBER(19) not null,
  PROCESS_STATUS VARCHAR2(2) not null,
  PROCESS_DATE   DATE not null,
  ENTRY_ID       VARCHAR2(32),
  NOTE           VARCHAR2(255)
)
;
alter table ALLSYS.ECO_WORKFLOW
  add constraint PK_ECO_WORKFLOW primary key (CERTIFICATE_NO, TRANSFER_NUM, PROCESS_STATUS, PROCESS_DATE);

prompt
prompt Creating table EGS_ADMIT_HEAD
prompt =============================
prompt
create table ALLSYS.EGS_ADMIT_HEAD
(
  PRE_ADM_NO     VARCHAR2(18),
  ADM_NO         VARCHAR2(18) not null,
  MODIFY_TIMES   NUMBER(9),
  ADM_TYPE       VARCHAR2(1),
  EGS_NO         VARCHAR2(12),
  EGS_NAME       VARCHAR2(80),
  APPLY_NO       VARCHAR2(18),
  REG_CUSTOMS    VARCHAR2(4),
  MASTER_CUSTOMS VARCHAR2(4),
  I_E_FLAG       VARCHAR2(1),
  DECL_DATE      DATE,
  AGENT_CODE     VARCHAR2(32),
  AGENT_NAME     VARCHAR2(255),
  DECLARE_NO     VARCHAR2(32),
  DECLARE_PHONE  VARCHAR2(32),
  SPONSOR_NAME   VARCHAR2(255),
  PERIOD         NUMBER(9),
  AUDITOR        VARCHAR2(8),
  AUDIT_DATE     DATE,
  AUDIT_NOTE     VARCHAR2(255),
  PRINT_DATE     DATE,
  AUDIT_RESULT   VARCHAR2(1),
  AUDIT_FILENO   VARCHAR2(50),
  DECLARE_SOURCE VARCHAR2(5),
  CHK_MARK       VARCHAR2(1),
  NOTES          VARCHAR2(255)
)
;
alter table ALLSYS.EGS_ADMIT_HEAD
  add constraint PK_EGS_ADMIT_HEAD primary key (ADM_NO);
create index ALLSYS.IX_EGSADMITHEAD_PREADMNO on ALLSYS.EGS_ADMIT_HEAD (PRE_ADM_NO);

prompt
prompt Creating table EGS_ADMIT_HS
prompt ===========================
prompt
create table ALLSYS.EGS_ADMIT_HS
(
  ADM_NO  VARCHAR2(18) not null,
  CODE_TS VARCHAR2(16) not null
)
;
alter table ALLSYS.EGS_ADMIT_HS
  add constraint PK_EGS_ADMIT_HS primary key (ADM_NO, CODE_TS);

prompt
prompt Creating table EGS_ADMIT_LIST
prompt =============================
prompt
create table ALLSYS.EGS_ADMIT_LIST
(
  ADM_NO  VARCHAR2(18) not null,
  G_NO    NUMBER(9) not null,
  CODE_TS VARCHAR2(16),
  G_NAME  VARCHAR2(255)
)
;
alter table ALLSYS.EGS_ADMIT_LIST
  add constraint PK_EGS_ADMIT_LIST primary key (ADM_NO, G_NO);

prompt
prompt Creating table EGS_ARC_AGENT_LIST
prompt =================================
prompt
create table ALLSYS.EGS_ARC_AGENT_LIST
(
  EGS_NO     VARCHAR2(12) not null,
  AGENT_NO   NUMBER(9) not null,
  AGENT_CODE VARCHAR2(32),
  AGENT_NAME VARCHAR2(255)
)
;
alter table ALLSYS.EGS_ARC_AGENT_LIST
  add constraint PK_EGS_ARC_AGENT_LIST primary key (EGS_NO, AGENT_NO);

prompt
prompt Creating table EGS_ARC_HEAD
prompt ===========================
prompt
create table ALLSYS.EGS_ARC_HEAD
(
  PRE_EGS_NO          VARCHAR2(18),
  EGS_NO              VARCHAR2(12) not null,
  EGS_NAME            VARCHAR2(80),
  APPR_OFFICE         VARCHAR2(255),
  APPR_NO             VARCHAR2(32),
  MASTER_CUSTOMS      VARCHAR2(4),
  REG_CUSTOMS         VARCHAR2(4),
  I_E_FLAG            VARCHAR2(1),
  SPONSOR_NAME        VARCHAR2(255),
  UNDERTAKE_NAME      VARCHAR2(255),
  SPONSOR_ER          VARCHAR2(20),
  SPONSOR_ER_PHONE    VARCHAR2(32),
  CHECK_ER            VARCHAR2(255),
  BEGIN_DATE          DATE,
  END_DATE            DATE,
  EGS_SITE_MAME       VARCHAR2(255),
  EGS_AREA            NUMBER(19,5),
  EGS_INTE_AREA       NUMBER(19,5),
  DECLARE_NO          VARCHAR2(32),
  DECLARE_PHONE       VARCHAR2(32),
  COUNTRY_QTY         NUMBER(9),
  EX_MERCHANT_QTY     NUMBER(9),
  TW_APPR_NO          VARCHAR2(20),
  INPUT_DATE          DATE,
  MODI_REASON         VARCHAR2(255),
  AUDIT_OFFICER       VARCHAR2(8),
  DEPOSIT_MARK        VARCHAR2(1),
  AUDIT_DATE          DATE,
  AUDIT_ER            VARCHAR2(8),
  AUDIT_NOTE          VARCHAR2(255),
  POSTPONE_AUDIT_ER   VARCHAR2(8),
  POSTPONE_AUDIT_DATE DATE,
  POSTPONE_APPR_NO    VARCHAR2(255),
  POSTPONE_TIMES      NUMBER(9),
  CLOSE_DATE          DATE,
  CLOSE_ER            VARCHAR2(8),
  NOTES               VARCHAR2(255),
  DECLARE_TYPE        VARCHAR2(1),
  MODIFY_TIMES        NUMBER(9),
  DECLARE_SOURCE      VARCHAR2(5),
  CHK_MARK            VARCHAR2(1),
  EXE_MARK            VARCHAR2(1),
  AGENT_CODE          VARCHAR2(32),
  AGENT_NAME          VARCHAR2(255)
)
;
alter table ALLSYS.EGS_ARC_HEAD
  add constraint PK_EGS_ARC_HEAD primary key (EGS_NO);
create index ALLSYS.IX_EGSARCHEAD_INPUTDATE on ALLSYS.EGS_ARC_HEAD (INPUT_DATE);
create index ALLSYS.IX_EGSARCHEAD_MASTERCUSTOMS on ALLSYS.EGS_ARC_HEAD (MASTER_CUSTOMS);
create index ALLSYS.IX_EGSARCHEAD_PREEGSNO on ALLSYS.EGS_ARC_HEAD (PRE_EGS_NO);
create index ALLSYS.IX_EGSARCHEAD_REGCUSTOMS on ALLSYS.EGS_ARC_HEAD (REG_CUSTOMS);

prompt
prompt Creating table EGS_ARC_LIST
prompt ===========================
prompt
create table ALLSYS.EGS_ARC_LIST
(
  EGS_NO  VARCHAR2(12) not null,
  G_NO    NUMBER(9) not null,
  CODE_TS VARCHAR2(16),
  G_NAME  VARCHAR2(255)
)
;
alter table ALLSYS.EGS_ARC_LIST
  add constraint PK_EGS_ARC_LIST primary key (EGS_NO, G_NO);

prompt
prompt Creating table EGS_ARC_MERCHANT_LIST
prompt ====================================
prompt
create table ALLSYS.EGS_ARC_MERCHANT_LIST
(
  EGS_NO             VARCHAR2(12) not null,
  MERCHANT_NO        NUMBER(9) not null,
  MERCHANT_NAME      VARCHAR2(255),
  MERCHANT_COUNTRY   VARCHAR2(3),
  EXHIBITION_NO      VARCHAR2(50),
  EXHIBITION_SITE_NO VARCHAR2(32),
  AGENT_CODE         VARCHAR2(32) not null
)
;
alter table ALLSYS.EGS_ARC_MERCHANT_LIST
  add constraint PK_EGS_ARC_MERCHANT_LIST primary key (EGS_NO, AGENT_CODE, MERCHANT_NO);

prompt
prompt Creating table EGS_CHECK_LOG
prompt ============================
prompt
create table ALLSYS.EGS_CHECK_LOG
(
  EGS_NO     VARCHAR2(18) not null,
  EPORT_NO   VARCHAR2(18),
  CHK_TIMES  NUMBER(9) not null,
  FORM_TYPE  VARCHAR2(32) not null,
  G_NO       NUMBER(9) not null,
  EGS_TYPE   VARCHAR2(1),
  CHK_MARK   VARCHAR2(2),
  CHK_ER     VARCHAR2(8),
  CHK_DATE   DATE,
  CHK_RESULT VARCHAR2(8),
  MESSAGE    VARCHAR2(255),
  NOTE       VARCHAR2(255)
)
;
alter table ALLSYS.EGS_CHECK_LOG
  add constraint PK_EGS_CHECK_LOG primary key (EGS_NO, CHK_TIMES, FORM_TYPE, G_NO);

prompt
prompt Creating table EGS_CLEAR_CERT
prompt =============================
prompt
create table ALLSYS.EGS_CLEAR_CERT
(
  CLR_NO    VARCHAR2(18) not null,
  CERT_CODE VARCHAR2(5) not null,
  CERT_NO   VARCHAR2(18) not null
)
;
alter table ALLSYS.EGS_CLEAR_CERT
  add constraint PK_EGS_CLEAR_CERT primary key (CLR_NO, CERT_CODE, CERT_NO);

prompt
prompt Creating table EGS_CLEAR_HEAD
prompt =============================
prompt
create table ALLSYS.EGS_CLEAR_HEAD
(
  CLR_NO          VARCHAR2(18) not null,
  PRE_CLR_NO      VARCHAR2(18),
  EGS_NO          VARCHAR2(12),
  EGS_NAME        VARCHAR2(80),
  MASTER_CUSTOMS  VARCHAR2(4),
  CLEAR_TYPE      VARCHAR2(10),
  I_E_PORT        VARCHAR2(4),
  I_E_DATE        DATE,
  I_E_FLAG        VARCHAR2(1),
  DECL_DATE       DATE,
  AGENT_CODE      VARCHAR2(32),
  AGENT_NAME      VARCHAR2(255),
  DECLARE_NO      VARCHAR2(32),
  DECLARE_PHONE   VARCHAR2(32),
  TRAF_MODE       VARCHAR2(10),
  BILL_NO         VARCHAR2(32),
  BILL_SUB_NO     VARCHAR2(32),
  GROSS_WT        NUMBER(19,5),
  NET_WT          NUMBER(19,5),
  WRAP_TYPE       VARCHAR2(32),
  PACK_NO         NUMBER(19),
  NOTES           VARCHAR2(255),
  VERIFY_DATE     DATE,
  VERIFY_ER       VARCHAR2(8),
  CLEAR_DATE      DATE,
  CLEAR_ER        VARCHAR2(8),
  AUDIT_ER        VARCHAR2(8),
  AUDIT_DATE      DATE,
  AUDIT_NOTE      VARCHAR2(255),
  TURN_NO         VARCHAR2(16),
  ENTRY_ID        VARCHAR2(18),
  CLEAR_NO        VARCHAR2(18),
  DECLARE_SOURCE  VARCHAR2(5),
  IM_CUSTOMS_CODE VARCHAR2(4),
  IM_AGENT_CODE   VARCHAR2(32),
  IM_AGENT_NAME   VARCHAR2(255),
  IM_DECL_NO      VARCHAR2(18),
  IM_EGS_NO       VARCHAR2(12),
  IM_EGS_NAME     VARCHAR2(80),
  CHK_MARK        VARCHAR2(1),
  EXE_MARK        VARCHAR2(1),
  LICENSE_NO      VARCHAR2(20)
)
;
alter table ALLSYS.EGS_CLEAR_HEAD
  add constraint PK_EGS_CLEAR_HEAD primary key (CLR_NO);

prompt
prompt Creating table EGS_CLEAR_LIST
prompt =============================
prompt
create table ALLSYS.EGS_CLEAR_LIST
(
  CLR_NO           VARCHAR2(18) not null,
  MERCHANT_NO      NUMBER(9),
  MERCHANT_NAME    VARCHAR2(255),
  MERCHANT_COUNTRY VARCHAR2(3),
  G_NO             NUMBER(9) not null,
  CODE_TS          VARCHAR2(16),
  G_CERT_FLAG      VARCHAR2(32),
  G_NAME           VARCHAR2(255),
  G_MODEL          VARCHAR2(255),
  QTY1             NUMBER(19,5),
  QTY2             NUMBER(19,5),
  DECL_QTY         NUMBER(19,5),
  UNIT1            VARCHAR2(3),
  UNIT2            VARCHAR2(3),
  DECL_UNIT        VARCHAR2(3),
  DECL_PRICE       NUMBER(19,4),
  DECL_TOTAL       NUMBER(19,4),
  TRADE_CURR       VARCHAR2(3),
  ORIGIN_COUNTRY   VARCHAR2(3),
  DECL_NO          VARCHAR2(18),
  DECL_G_NO        NUMBER(9)
)
;
alter table ALLSYS.EGS_CLEAR_LIST
  add constraint PK_EGS_CLEAR_LIST primary key (CLR_NO, G_NO);

prompt
prompt Creating table EGS_DECLARE_CERT
prompt ===============================
prompt
create table ALLSYS.EGS_DECLARE_CERT
(
  DECL_NO   VARCHAR2(18) not null,
  CERT_CODE VARCHAR2(5) not null,
  CERT_NO   VARCHAR2(18) not null
)
;
alter table ALLSYS.EGS_DECLARE_CERT
  add constraint PK_EGS_DECLARE_CERT primary key (DECL_NO, CERT_CODE, CERT_NO);

prompt
prompt Creating table EGS_DECLARE_HEAD
prompt ===============================
prompt
create table ALLSYS.EGS_DECLARE_HEAD
(
  EGS_NO          VARCHAR2(12),
  EGS_NAME        VARCHAR2(80),
  ADM_NO          VARCHAR2(18),
  DECL_NO         VARCHAR2(18) not null,
  PRE_DECL_NO     VARCHAR2(18),
  DECL_TYPE       VARCHAR2(1),
  MASTER_CUSTOMS  VARCHAR2(4),
  I_E_PORT        VARCHAR2(4),
  I_E_DATE        DATE,
  I_E_FLAG        VARCHAR2(1),
  DECLARE_DATE    DATE,
  AGENT_CODE      VARCHAR2(32),
  AGENT_NAME      VARCHAR2(255),
  DECLARE_NO      VARCHAR2(32),
  DECLARE_PHONE   VARCHAR2(32),
  LICENSE_NO      VARCHAR2(20),
  TRAF_MODE       VARCHAR2(1),
  BILL_NO         VARCHAR2(32),
  BILL_SUB_NO     VARCHAR2(32),
  TRADE_COUNTRY   VARCHAR2(3),
  GROSS_WT        NUMBER(19,5),
  NET_WT          NUMBER(19,5),
  WRAP_TYPE       VARCHAR2(32),
  PACK_NO         NUMBER(19),
  TRANS_MODE      VARCHAR2(1),
  NOTES           VARCHAR2(255),
  DEPOSIT_MARK    VARCHAR2(1),
  REL_DATE        DATE,
  TRANS_DATE      DATE,
  POSTPONE_TIMES  NUMBER(9),
  ZS_APPR_NO      VARCHAR2(40),
  TURN_NO         VARCHAR2(16),
  ENTRY_ID        VARCHAR2(18),
  ENTRY_TYPE      VARCHAR2(1),
  DECLARE_SOURCE  VARCHAR2(5),
  CHK_MARK        VARCHAR2(1),
  EX_CUSTOMS_CODE VARCHAR2(4),
  EX_EGS_NO       VARCHAR2(12),
  EX_EGS_NAME     VARCHAR2(80),
  EX_AGENT_CODE   VARCHAR2(32),
  EX_AGENT_NAME   VARCHAR2(255),
  AUDIT_ER        VARCHAR2(8),
  AUDIT_DATE      DATE,
  AUDIT_NOTE      VARCHAR2(255),
  VERIFY_DATE     DATE,
  VERIFY_ER       VARCHAR2(8),
  CLEAR_DATE      DATE,
  CLEAR_ER        VARCHAR2(8),
  EXE_MARK        VARCHAR2(1)
)
;
alter table ALLSYS.EGS_DECLARE_HEAD
  add constraint PK_EGS_DECLARE_HEAD primary key (DECL_NO);
create index ALLSYS.IX_EGSDECLAREHEAD_DECLAREDATE on ALLSYS.EGS_DECLARE_HEAD (DECLARE_DATE);
create index ALLSYS.IX_EGSDECLAREHEAD_EGSNO on ALLSYS.EGS_DECLARE_HEAD (EGS_NO);
create index ALLSYS.IX_EGSDECLAREHEAD_MASTERCUSTOM on ALLSYS.EGS_DECLARE_HEAD (MASTER_CUSTOMS, EXE_MARK);
create index ALLSYS.IX_EGSDECLAREHEAD_PREDECLNO on ALLSYS.EGS_DECLARE_HEAD (PRE_DECL_NO);

prompt
prompt Creating table EGS_DECLARE_LIST
prompt ===============================
prompt
create table ALLSYS.EGS_DECLARE_LIST
(
  DECL_NO            VARCHAR2(18) not null,
  MERCHANT_NO        NUMBER(9),
  MERCHANT_NAME      VARCHAR2(255),
  MERCHANT_COUNTRY   VARCHAR2(3),
  G_NO               NUMBER(9) not null,
  CONTR_ITEM         NUMBER(9),
  CODE_TS            VARCHAR2(16),
  G_CERT_FLAG        VARCHAR2(32),
  G_NAME             VARCHAR2(255),
  G_MODEL            VARCHAR2(255),
  QTY1               NUMBER(19,5),
  QTY2               NUMBER(19,5),
  DECL_QTY           NUMBER(19,5),
  UNIT1              VARCHAR2(3),
  UNIT2              VARCHAR2(3),
  DECL_UNIT          VARCHAR2(3),
  DECL_PRICE         NUMBER(19,4),
  DECL_TOTAL         NUMBER(19,4),
  TRADE_CURR         VARCHAR2(3),
  ORIGIN_COUNTRY     VARCHAR2(3),
  EXHIBITION_NO      VARCHAR2(50),
  CLR_QTY            NUMBER(19,5),
  UNCLR_QTY          NUMBER(19,5),
  LEND_QTY           NUMBER(19,5),
  TAX_QTY            NUMBER(19,5),
  CONSUME_QTY        NUMBER(19,5),
  CLEAR_QTY          NUMBER(19,5),
  LOST_QTY           NUMBER(19,5),
  OTHER_QTY          NUMBER(19,5),
  EX_QTY             NUMBER(19,5),
  BUY_QTY            NUMBER(19,5),
  REEXPORT_QTY       NUMBER(19,5),
  LAST_DECL_NO       VARCHAR2(18),
  LAST_G_NO          NUMBER(9),
  FIRST_DECL_NO      VARCHAR2(18),
  FIRST_G_NO         NUMBER(9),
  EXHIBITION_SITE_NO VARCHAR2(32),
  TRADE_TOTAL        NUMBER(19,4),
  RMB_PRICE          NUMBER(19),
  USD_PRICE          NUMBER(19),
  DUTY_VALUE         NUMBER(19)
)
;
alter table ALLSYS.EGS_DECLARE_LIST
  add constraint PK_EGS_DECLARE_LIST primary key (DECL_NO, G_NO);
create index ALLSYS.IX_EGSDECLARELIST_FIRSTDECL on ALLSYS.EGS_DECLARE_LIST (FIRST_DECL_NO, FIRST_G_NO);

prompt
prompt Creating table EGS_DEDUCT
prompt =========================
prompt
create table ALLSYS.EGS_DEDUCT
(
  DECL_NO   VARCHAR2(18) not null,
  DECL_G_NO NUMBER(9) not null,
  CLR_NO    VARCHAR2(18) not null,
  CLR_G_NO  NUMBER(9) not null,
  CLR_QTY   NUMBER(19,5),
  CLR_MODE  VARCHAR2(1),
  CLR_DATE  DATE,
  CLR_ER    VARCHAR2(8),
  NOTES     VARCHAR2(255)
)
;
alter table ALLSYS.EGS_DEDUCT
  add constraint PK_EGS_DEDUCT primary key (DECL_NO, DECL_G_NO, CLR_NO, CLR_G_NO);
create index ALLSYS.IX_EGSDEDUCT_CLR on ALLSYS.EGS_DEDUCT (CLR_NO, CLR_G_NO);

prompt
prompt Creating table EGS_LEND_HEAD
prompt ============================
prompt
create table ALLSYS.EGS_LEND_HEAD
(
  EGS_NO         VARCHAR2(12),
  EGS_NAME       VARCHAR2(80),
  PRE_LEND_NO    VARCHAR2(18),
  LEND_NO        VARCHAR2(18) not null,
  MASTER_CUSTOMS VARCHAR2(4),
  LEND_DATE      DATE,
  LEND_LIMIT     DATE,
  DECLARE_NO     VARCHAR2(32),
  DECLARE_PHONE  VARCHAR2(30),
  DEPOSIT_MARK   VARCHAR2(1),
  GUARANTEE_AMT  NUMBER(19,4),
  LEND_COMPANY   VARCHAR2(255),
  LEND_CONTACTOR VARCHAR2(32),
  LEND_TELEPHONE VARCHAR2(32),
  AGENT_CODE     VARCHAR2(32),
  AGENT_NAME     VARCHAR2(255),
  NOTES          VARCHAR2(255),
  OUT_AUDIT_DATE DATE,
  OUT_AUDIT_ER   VARCHAR2(8),
  OUT_AUDIT_NOTE VARCHAR2(255),
  OUT_DATE       DATE,
  OUT_ER         VARCHAR2(8),
  IN_AUDIT_DATE  DATE,
  IN_AUDIT_ER    VARCHAR2(8),
  IN_DATE        DATE,
  IN_ER          VARCHAR2(8),
  DECLARE_SOURCE VARCHAR2(5),
  CHK_MARK       VARCHAR2(1),
  EXE_MARK       VARCHAR2(1)
)
;
alter table ALLSYS.EGS_LEND_HEAD
  add constraint PK_EGS_LEND_HEAD primary key (LEND_NO);
create index ALLSYS.IX_EGSLENDHEAD_EGSNO on ALLSYS.EGS_LEND_HEAD (EGS_NO);
create index ALLSYS.IX_EGSLENDHEAD_LENDDATE on ALLSYS.EGS_LEND_HEAD (LEND_DATE);
create index ALLSYS.IX_EGSLENDHEAD_MASTERCUSTOMS on ALLSYS.EGS_LEND_HEAD (MASTER_CUSTOMS, EXE_MARK);
create index ALLSYS.IX_EGSLENDHEAD_PRELENDNO on ALLSYS.EGS_LEND_HEAD (PRE_LEND_NO);

prompt
prompt Creating table EGS_LEND_LIST
prompt ============================
prompt
create table ALLSYS.EGS_LEND_LIST
(
  LEND_NO          VARCHAR2(18) not null,
  MERCHANT_NO      NUMBER(9),
  MERCHANT_NAME    VARCHAR2(255),
  MERCHANT_COUNTRY VARCHAR2(3),
  G_NO             NUMBER(9) not null,
  CODE_TS          VARCHAR2(16),
  G_CERT_FLAG      VARCHAR2(32),
  G_NAME           VARCHAR2(255),
  G_MODEL          VARCHAR2(255),
  QTY1             NUMBER(19,5),
  QTY2             NUMBER(19,5),
  DECL_QTY         NUMBER(19,5),
  UNIT1            VARCHAR2(3),
  UNIT2            VARCHAR2(3),
  DECL_UNIT        VARCHAR2(3),
  DECL_PRICE       NUMBER(19,4),
  DECL_TOTAL       NUMBER(19,4),
  TRADE_CURR       VARCHAR2(3),
  ORIGIN_COUNTRY   VARCHAR2(3),
  DECL_NO          VARCHAR2(18),
  DECL_G_NO        NUMBER(9)
)
;
alter table ALLSYS.EGS_LEND_LIST
  add constraint PK_EGS_LEND_LIST primary key (LEND_NO, G_NO);

prompt
prompt Creating table EGS_PATROL_HEAD
prompt ==============================
prompt
create table ALLSYS.EGS_PATROL_HEAD
(
  PAT_NO         VARCHAR2(18) not null,
  PAT_VALUE      VARCHAR2(255),
  MASTER_CUSTOMS VARCHAR2(4),
  DECL_DATE      DATE,
  END_DATE       DATE,
  EGS_NO         VARCHAR2(12),
  EGS_NAME       VARCHAR2(80),
  PATROLER       VARCHAR2(32),
  NOTES          VARCHAR2(255),
  EXE_MARK       VARCHAR2(1)
)
;
alter table ALLSYS.EGS_PATROL_HEAD
  add constraint PK_EGS_PATROL_HEAD primary key (PAT_NO);

prompt
prompt Creating table EGS_PATROL_LIST
prompt ==============================
prompt
create table ALLSYS.EGS_PATROL_LIST
(
  PAT_NO           VARCHAR2(18) not null,
  MERCHANT_NO      NUMBER(9),
  MERCHANT_NAME    VARCHAR2(255),
  MERCHANT_COUNTRY VARCHAR2(3),
  G_NO             NUMBER(9) not null,
  CODE_TS          VARCHAR2(16),
  G_CERT_FLAG      VARCHAR2(32),
  G_NAME           VARCHAR2(255),
  G_MODEL          VARCHAR2(255),
  QTY1             NUMBER(19,5),
  QTY2             NUMBER(19,5),
  DECL_QTY         NUMBER(19,5),
  UNIT1            VARCHAR2(3),
  UNIT2            VARCHAR2(3),
  DECL_UNIT        VARCHAR2(3),
  DECL_PRICE       NUMBER(19,4),
  DECL_TOTAL       NUMBER(19,4),
  TRADE_CURR       VARCHAR2(3),
  ORIGIN_COUNTRY   VARCHAR2(3),
  DECL_NO          VARCHAR2(18),
  DECL_G_NO        NUMBER(9)
)
;
alter table ALLSYS.EGS_PATROL_LIST
  add constraint PK_EGS_PATROL_LIST primary key (PAT_NO, G_NO);

prompt
prompt Creating table EGS_SEQ
prompt ======================
prompt
create table ALLSYS.EGS_SEQ
(
  EGS_KEY VARCHAR2(32) not null,
  EGS_SEQ NUMBER(19)
)
;
alter table ALLSYS.EGS_SEQ
  add constraint PK_EGS_SEQ primary key (EGS_KEY);

prompt
prompt Creating table EGS_WORKFLOW
prompt ===========================
prompt
create table ALLSYS.EGS_WORKFLOW
(
  EGS_NO         VARCHAR2(18) not null,
  EGS_TYPE       VARCHAR2(1),
  STEP_ID        VARCHAR2(8) not null,
  CREATE_DATE    DATE not null,
  PROC_ER        VARCHAR2(20),
  MASTER_CUSTOMS VARCHAR2(4),
  PROC_RESULT    VARCHAR2(8),
  NOTE           VARCHAR2(255)
)
;
alter table ALLSYS.EGS_WORKFLOW
  add constraint PK_EGS_WORKFLOW primary key (EGS_NO, STEP_ID, CREATE_DATE);

prompt
prompt Creating table EMS_ACCOUNT
prompt ==========================
prompt
create table ALLSYS.EMS_ACCOUNT
(
  EMS_NO            VARCHAR2(12) not null,
  ID_STAT           VARCHAR2(2) not null,
  CONTR_NO          VARCHAR2(32),
  OWNER_NAME        VARCHAR2(255),
  LIMIT_DATE        DATE,
  ACCOUNT_AMT_RMB   NUMBER(19,5),
  ACCOUNT_AMT       NUMBER(19,5),
  ACCOUNT_AMT_ORG   NUMBER(19,5),
  ACCOUNT_CURR      VARCHAR2(3),
  IM_AMT            NUMBER(19,5),
  TAX_AMT           NUMBER(19,5),
  DEFER_TAX_AMT     NUMBER(19,5),
  DEAL_MARK         VARCHAR2(1),
  TYPE_ER           VARCHAR2(8),
  TYPE_DATE         DATE,
  BANK_NOTE_NO      VARCHAR2(32),
  BANK_OPEN_DATE    DATE,
  BANK_NOTE_DATE    DATE,
  APPR_DATE         DATE,
  BANK_ID           VARCHAR2(64),
  NEXT_FLAG         VARCHAR2(2),
  NOTE_S            VARCHAR2(255),
  GUA_ID            VARCHAR2(32),
  GUA_APPL_DATE     DATE,
  GUA_OPEN_DATE     DATE,
  GUA_APPR_DATE     DATE,
  GUA_REGISTER_ER   VARCHAR2(8),
  GUA_REGISTER_DATE DATE,
  GUA_COPY          NUMBER(19),
  GUA_TYPE          VARCHAR2(1),
  GUA_OWNER_NAME    VARCHAR2(32),
  GUA_LIMIT_DATE    DATE,
  GUARANTEE_ADD     NUMBER(19,5),
  GUARANTEE_AMT     NUMBER(19,5),
  GUARANTEE_CURR    VARCHAR2(3),
  GUARANTEE_RMB     NUMBER(19,5),
  GUARANTEE_ORG     VARCHAR2(70),
  GUA_MARK          VARCHAR2(1),
  PROCESS_MARK      VARCHAR2(5),
  PROCESS_ER        VARCHAR2(8),
  PROCESS_DATE      DATE,
  OTHER_AMT         NUMBER(19,5),
  OTHER_NO          VARCHAR2(20),
  SEQ_NO            VARCHAR2(12),
  DOCUMENT_NO       VARCHAR2(12),
  DOCUMENT_DATE     DATE,
  DOCUMENT_MARK     VARCHAR2(1),
  DOCUMENT_ER       VARCHAR2(8),
  NOTE_MARK         VARCHAR2(10),
  PORT_CODE         VARCHAR2(4),
  ZQ_PRINT_FLAG     VARCHAR2(1),
  SECRECT_KEY       VARCHAR2(16),
  ACCOUNT_SEND_DATE DATE,
  ACC_EXE_MARK      VARCHAR2(1),
  HASH_SIGN_CLT     VARCHAR2(512),
  HASH_SIGN         VARCHAR2(255),
  SIGNER_INFO       VARCHAR2(64),
  INVEST_MODE       VARCHAR2(1)
)
;
alter table ALLSYS.EMS_ACCOUNT
  add constraint PK_EMS_ACCOUNT primary key (EMS_NO, ID_STAT);

prompt
prompt Creating table EMS_APPR_HEAD
prompt ============================
prompt
create table ALLSYS.EMS_APPR_HEAD
(
  APPR_NO           VARCHAR2(40) not null,
  RECEIVE_TIMES     NUMBER(19) not null,
  MODIFY_NO         VARCHAR2(40),
  EPORT_NO          VARCHAR2(20),
  CORP_CODE         VARCHAR2(13),
  CORP_NAME         VARCHAR2(70),
  CORP_TYPE_NAME    VARCHAR2(20),
  CORP_CUSTOMS_CODE VARCHAR2(10),
  ENTP_CODE         VARCHAR2(13),
  ENTP_NAME         VARCHAR2(70),
  ENTP_TYPE_NAME    VARCHAR2(20),
  ENTP_CUSTOMS_CODE VARCHAR2(10),
  EMS_TYPE          VARCHAR2(1),
  DECLARE_TYPE      VARCHAR2(1),
  PRODUCT_RATIO     NUMBER(19,5),
  BEGIN_DATE        DATE,
  END_DATE          DATE,
  CONTR_IN          VARCHAR2(32),
  CONTR_OUT         VARCHAR2(32),
  CONTR_OTHER       VARCHAR2(32),
  AGREE_NO          VARCHAR2(32),
  FOREIGN_CO_NAME   VARCHAR2(255),
  IMG_CURR          VARCHAR2(3),
  IMG_AMOUNT        NUMBER(19,5),
  EXG_AMOUNT        NUMBER(19,5),
  WORK_AMOUNT       NUMBER(19,5),
  HOME_AMOUNT       NUMBER(19,5),
  I_E_PORT          VARCHAR2(255),
  NOTE              VARCHAR2(255),
  ALLOW_TRANS       VARCHAR2(1),
  HAS_EXG_1         VARCHAR2(1),
  HAS_EXG_2         VARCHAR2(1),
  MASTER_CUSTOMS    VARCHAR2(4),
  APPR_FEC          VARCHAR2(6),
  APPR_FEC_NAME     VARCHAR2(40),
  APPR_DATE         DATE,
  MODIFY_APPR_DATE  DATE,
  EXG_CURR          VARCHAR2(3),
  LICENSE_NO        VARCHAR2(255),
  RECEIVE_TIME      DATE
)
;
alter table ALLSYS.EMS_APPR_HEAD
  add constraint PK_EMS_APPR_HEAD primary key (APPR_NO, RECEIVE_TIMES);

prompt
prompt Creating table EMS_APPR_LIST
prompt ============================
prompt
create table ALLSYS.EMS_APPR_LIST
(
  APPR_NO        VARCHAR2(40) not null,
  G_TYPE         VARCHAR2(1) not null,
  G_NO           NUMBER(19) not null,
  RECEIVE_TIMES  NUMBER(19) not null,
  CODE_TS        VARCHAR2(10),
  G_NAME         VARCHAR2(50),
  G_MODEL        VARCHAR2(50),
  UNIT           VARCHAR2(3),
  UNIT_PRICE     NUMBER(19,5),
  QTY            NUMBER(19,5),
  AMT            NUMBER(19,5),
  ORIGIN_COUNTRY VARCHAR2(3),
  UNIT_1         VARCHAR2(3),
  FACTOR_1       NUMBER(18,9),
  NOTE           VARCHAR2(10),
  CURR           VARCHAR2(3),
  MODIFY_MARK    VARCHAR2(1)
)
;
alter table ALLSYS.EMS_APPR_LIST
  add constraint PK_EMS_APPR_LIST primary key (APPR_NO, G_TYPE, G_NO, RECEIVE_TIMES);

prompt
prompt Creating table EMS_CLAIM
prompt ========================
prompt
create table ALLSYS.EMS_CLAIM
(
  GUARANTEE_NO         VARCHAR2(32) not null,
  CLAIM_NO             VARCHAR2(12),
  EMS_NO               VARCHAR2(12),
  OWNER_NO             VARCHAR2(32),
  GUARANTEE_AMT        NUMBER(18),
  GUARANTEE_LIMIT_DATE DATE,
  BANK_ID              VARCHAR2(32),
  CLAIM_AMT            NUMBER(18,5),
  CLAIM_RATE           NUMBER(18,5),
  YEAR_RATE            NUMBER(18,5),
  CHK_ER               VARCHAR2(8),
  CHK_DATE             DATE,
  RECHK_ER             VARCHAR2(8),
  RECHK_DATE           DATE,
  CLAIM_DATE           DATE,
  CLAIM_ER             VARCHAR2(8),
  BANK_DATE            DATE,
  TYPE_ER              VARCHAR2(8),
  TYPE_DATE            DATE,
  OTHER_CERT_NO        VARCHAR2(32),
  PROC_MARK            VARCHAR2(32),
  LAST_ER              VARCHAR2(8),
  LAST_DATE            DATE,
  PAY_PRINT_DATE       DATE
)
;
alter table ALLSYS.EMS_CLAIM
  add constraint PK_EMS_CLAIM primary key (GUARANTEE_NO);

prompt
prompt Creating table EMS_CLR_LIST
prompt ===========================
prompt
create table ALLSYS.EMS_CLR_LIST
(
  EMS_NO         VARCHAR2(12) not null,
  DCR_TIMES      NUMBER(19) not null,
  G_TYPE         VARCHAR2(1) not null,
  G_NO           NUMBER(19) not null,
  DU_CODE        VARCHAR2(4) not null,
  ITEMS_NO       NUMBER(19),
  QTY            NUMBER(19,5),
  AMOUNT         NUMBER(19,5),
  WEIGHT         NUMBER(19,5),
  DU_MARK        VARCHAR2(1),
  NOTE_1         VARCHAR2(1),
  NOTE           VARCHAR2(255),
  I_E_FLAG       VARCHAR2(1),
  TRADE_MODE     VARCHAR2(4),
  PARENT_DU_CODE VARCHAR2(4),
  DISPSUB        VARCHAR2(1)
)
;
alter table ALLSYS.EMS_CLR_LIST
  add constraint PK_EMS_CLR_LIST primary key (EMS_NO, DCR_TIMES, G_TYPE, G_NO, DU_CODE);

prompt
prompt Creating table EMS_CLR_TMP
prompt ==========================
prompt
create table ALLSYS.EMS_CLR_TMP
(
  EMS_NO      VARCHAR2(12) not null,
  G_TYPE      VARCHAR2(1) not null,
  G_NO        NUMBER(19) not null,
  CM_QTY      NUMBER(19,5),
  CM_AMOUNT   NUMBER(19,5),
  CLR_INC_QTY NUMBER(19,5),
  CLR_CUT_QTY NUMBER(19,5),
  USD_PRICE   NUMBER(19,5),
  OTHER_PRICE NUMBER(19,5),
  NOTE        VARCHAR2(255)
)
;
alter table ALLSYS.EMS_CLR_TMP
  add constraint PK_EMS_CLR_TMP primary key (EMS_NO, G_TYPE, G_NO);

prompt
prompt Creating table EMS_COMPLEX
prompt ==========================
prompt
create table ALLSYS.EMS_COMPLEX
(
  GOODS_TYPE VARCHAR2(1) not null,
  G_TYPE     VARCHAR2(1) not null,
  CODE_TS    VARCHAR2(10) not null,
  G_NAME     VARCHAR2(255),
  CLASSIFY   VARCHAR2(255) not null,
  INPUT_DATE DATE,
  LIMIT_TYPE VARCHAR2(1),
  LIMIT_DESC VARCHAR2(255),
  NOTE       VARCHAR2(255)
)
;
alter table ALLSYS.EMS_COMPLEX
  add constraint PK_EMS_COMPLEX primary key (GOODS_TYPE, G_TYPE, CODE_TS, CLASSIFY);

prompt
prompt Creating table EMS_COMPLEX2
prompt ===========================
prompt
create table ALLSYS.EMS_COMPLEX2
(
  ICODE_TS   VARCHAR2(10) not null,
  IG_NAME    VARCHAR2(255),
  IG_MODEL   VARCHAR2(255),
  ICLASSIFY  VARCHAR2(255),
  ECODE_TS   VARCHAR2(10) not null,
  EG_NAME    VARCHAR2(255),
  EG_MODEL   VARCHAR2(255),
  ECLASSIFY  VARCHAR2(255),
  INPUT_DATE DATE,
  LIMIT_TYPE VARCHAR2(1),
  LIMIT_DESC VARCHAR2(255),
  NOTE       VARCHAR2(255)
)
;
alter table ALLSYS.EMS_COMPLEX2
  add constraint PK_EMS_COMPLEX2 primary key (ICODE_TS, ECODE_TS);

prompt
prompt Creating table EMS_CONSUME
prompt ==========================
prompt
create table ALLSYS.EMS_CONSUME
(
  EMS_NO       VARCHAR2(12) not null,
  EXG_NO       NUMBER(19) not null,
  EXG_VERSION  VARCHAR2(32) not null,
  IMG_NO       NUMBER(19) not null,
  MODIFY_TIMES NUMBER(19) not null,
  DEC_CM       NUMBER(19,9),
  DEC_DM       NUMBER(19,9),
  OTHER_CM     NUMBER(19,9),
  OTHER_DM     NUMBER(19,9),
  CM_MARK      VARCHAR2(1),
  PRODUCT_MARK VARCHAR2(10),
  PRODUCT_TYPE VARCHAR2(1),
  MODIFY_MARK  VARCHAR2(1),
  CONTROL_MARK VARCHAR2(1),
  NOTE         VARCHAR2(10),
  ETL_MARK     VARCHAR2(1)
)
;
alter table ALLSYS.EMS_CONSUME
  add constraint PK_EMS_CONSUME primary key (EMS_NO, EXG_NO, EXG_VERSION, IMG_NO);
create index ALLSYS.IDX_EMS_CONSUME_EMSNO on ALLSYS.EMS_CONSUME (EMS_NO);
create index ALLSYS.IX_EMSCONSUME_MODIFY_MARK on ALLSYS.EMS_CONSUME (EMS_NO, MODIFY_MARK);

prompt
prompt Creating table EMS_CONSUME_CLR
prompt ==============================
prompt
create table ALLSYS.EMS_CONSUME_CLR
(
  EMS_NO      VARCHAR2(12) not null,
  IMG_NO      NUMBER(19) not null,
  G_NAME      VARCHAR2(255),
  QTY         NUMBER(19,5),
  EX_QTY      NUMBER(19,5),
  REM_QTY     NUMBER(19,5),
  UNIT        VARCHAR2(3),
  REM_RATIO   NUMBER(19,5),
  MODIFY_MARK VARCHAR2(1),
  ETL_MARK    VARCHAR2(1)
)
;
alter table ALLSYS.EMS_CONSUME_CLR
  add constraint PK_EMS_CONSUME_CLR primary key (EMS_NO, IMG_NO);

prompt
prompt Creating table EMS_CONSUME_CLR_D
prompt ================================
prompt
create table ALLSYS.EMS_CONSUME_CLR_D
(
  EMS_NO      VARCHAR2(12) not null,
  IMG_NO      NUMBER(19) not null,
  EXG_NO      NUMBER(19) not null,
  EXG_VERSION VARCHAR2(32) not null,
  QTY         NUMBER(19,5),
  DEC_CM_QTY  NUMBER(23,9),
  MODIFY_MARK VARCHAR2(1),
  ETL_MARK    VARCHAR2(1)
)
;
alter table ALLSYS.EMS_CONSUME_CLR_D
  add constraint PK_EMS_CONSUME_CLR_D primary key (EMS_NO, IMG_NO, EXG_NO, EXG_VERSION);

prompt
prompt Creating table EMS_DCR_CONSUME
prompt ==============================
prompt
create table ALLSYS.EMS_DCR_CONSUME
(
  EMS_NO       VARCHAR2(12) not null,
  EXG_NO       NUMBER(19) not null,
  EXG_VERSION  VARCHAR2(32) not null,
  IMG_NO       NUMBER(19) not null,
  MODIFY_TIMES NUMBER(19) not null,
  DEC_CM       NUMBER(19,9),
  DEC_DM       NUMBER(19,9),
  OTHER_CM     NUMBER(19,9),
  OTHER_DM     NUMBER(19,9),
  CM_MARK      VARCHAR2(1),
  PRODUCT_MARK VARCHAR2(10),
  PRODUCT_TYPE VARCHAR2(1),
  MODIFY_MARK  VARCHAR2(1),
  CONTROL_MARK VARCHAR2(1),
  NOTE         VARCHAR2(10),
  ETL_MARK     VARCHAR2(1)
)
;
alter table ALLSYS.EMS_DCR_CONSUME
  add constraint PK_EMS_DCR_CONSUME primary key (EMS_NO, EXG_NO, EXG_VERSION, IMG_NO, MODIFY_TIMES);

prompt
prompt Creating table EMS_DCR_ENT
prompt ==========================
prompt
create table ALLSYS.EMS_DCR_ENT
(
  EMS_NO         VARCHAR2(12) not null,
  DCR_TIMES      NUMBER(19) not null,
  ENTRY_ID       VARCHAR2(18) not null,
  MASTER_CUSTOMS VARCHAR2(4),
  I_E_FLAG       VARCHAR2(1),
  ITEMS_NUM      NUMBER(19),
  DECLARE_DATE   DATE,
  I_E_DATE       DATE,
  DU_CODE        VARCHAR2(2),
  ENT_MARK       VARCHAR2(1),
  NOTE           VARCHAR2(255),
  MODIFY_MARK    VARCHAR2(1)
)
;
alter table ALLSYS.EMS_DCR_ENT
  add constraint PK_EMS_DCR_ENT primary key (EMS_NO, DCR_TIMES, ENTRY_ID);

prompt
prompt Creating table EMS_DCR_HEAD
prompt ===========================
prompt
create table ALLSYS.EMS_DCR_HEAD
(
  EMS_NO            VARCHAR2(12) not null,
  DCR_TIMES         NUMBER(19) not null,
  DCR_TYPE          VARCHAR2(1),
  BEGIN_DATE        DATE,
  END_DATE          DATE,
  ENTRY_I_NUM       NUMBER(19),
  ENTRY_E_NUM       NUMBER(19),
  IMG_NUM           NUMBER(19),
  EXG_NUM           NUMBER(19),
  IMR_NUM           NUMBER(19),
  EXR_NUM           NUMBER(19),
  ID_CARD           VARCHAR2(20),
  ID_CARD_PWD       VARCHAR2(20),
  INPUT_DATE        DATE,
  INPUT_ER          VARCHAR2(8),
  DCR_DATE          DATE,
  EMS_APPR_MARK     VARCHAR2(10),
  EMS_CERTIFY       VARCHAR2(10),
  NOTE_1            VARCHAR2(1),
  NOTE_AMOUNT       NUMBER(19,5),
  NOTE_QTY          NUMBER(19,5),
  NOTE              VARCHAR2(255),
  DCR_MARK          VARCHAR2(1),
  DECLARE_MARK      VARCHAR2(1),
  CHK_MARK          VARCHAR2(1),
  CHK_DATE          DATE,
  PRINT_DATE        DATE,
  PRINT_MARK        VARCHAR2(1),
  RETURN_DATE       DATE,
  RETURN_MARK       VARCHAR2(1),
  NOTE_MARK         VARCHAR2(1),
  PROCESS_MARK      VARCHAR2(10),
  MESSAGE_TYPE      VARCHAR2(8),
  DIGITAL_SIGN_MARK VARCHAR2(1),
  DIGITAL_SIGN_LEN  VARCHAR2(255),
  DIGITAL_SIGN      VARCHAR2(262),
  DECL_IN_AMT       NUMBER(19,5),
  DECL_EX_AMT       NUMBER(19,5)
)
;
alter table ALLSYS.EMS_DCR_HEAD
  add constraint PK_EMS_DCR_HEAD primary key (EMS_NO, DCR_TIMES);

prompt
prompt Creating table EMS_DCR_LIST
prompt ===========================
prompt
create table ALLSYS.EMS_DCR_LIST
(
  EMS_NO             VARCHAR2(12) not null,
  DCR_TIMES          NUMBER(19) not null,
  G_TYPE             VARCHAR2(1) not null,
  G_NO               NUMBER(19) not null,
  GR_QTY             NUMBER(19,5),
  GR_AMOUNT          NUMBER(19,5),
  GR_WEIGHT          NUMBER(19,5),
  REMAIN_QTY         NUMBER(19,5),
  REMAIN_AMOUNT      NUMBER(19,5),
  REMAIN_WEIGHT      NUMBER(19,5),
  CM_QTY             NUMBER(19,5),
  CM_AMOUNT          NUMBER(19,5),
  CM_WEIGHT          NUMBER(19,5),
  FACT_REMAIN_QTY    NUMBER(19,5),
  FACT_REMAIN_AMOUNT NUMBER(19,5),
  FACT_REMAIN_WEIGHT NUMBER(19,5),
  NOTE_1             VARCHAR2(1),
  NOTE_2             VARCHAR2(1),
  NOTE               VARCHAR2(255),
  MODIFY_MARK        VARCHAR2(1),
  FACT_QTY           NUMBER(19,5),
  T_QTY              NUMBER(19,5),
  IN_QTY             NUMBER(19,5),
  REX_QTY            NUMBER(19,5),
  DISCLAIM_QTY       NUMBER(19,5),
  REMAIN_T_QTY       NUMBER(19,5),
  EXCHANGE_EX_QTY    NUMBER(19,5),
  EXCHANGE_IM_QTY    NUMBER(19,5)
)
;
alter table ALLSYS.EMS_DCR_LIST
  add constraint PK_EMS_DCR_LIST primary key (EMS_NO, DCR_TIMES, G_TYPE, G_NO);

prompt
prompt Creating table EMS_DCR_RUB_LIST
prompt ===============================
prompt
create table ALLSYS.EMS_DCR_RUB_LIST
(
  EMS_NO        VARCHAR2(12) not null,
  DCR_TIMES     NUMBER(19) not null,
  G_TYPE        VARCHAR2(1) not null,
  G_NO          NUMBER(19) not null,
  COP_G_NO      VARCHAR2(30),
  CODE_TS       VARCHAR2(10),
  CLASS_MARK    VARCHAR2(1),
  G_NAME        VARCHAR2(50),
  G_MODEL       VARCHAR2(50),
  UNIT          VARCHAR2(3),
  DEC_PRICE     NUMBER(19,5),
  CURR          NUMBER(19),
  DEC_PRICE_RMB NUMBER(19,5),
  QTY           NUMBER(19,5),
  USE_TYPE      VARCHAR2(1),
  NOTE_1        VARCHAR2(1),
  NOTE          VARCHAR2(255),
  MODIFY_MARK   VARCHAR2(1)
)
;
alter table ALLSYS.EMS_DCR_RUB_LIST
  add constraint PK_EMS_DCR_RUB_LIST primary key (EMS_NO, DCR_TIMES, G_TYPE, G_NO);

prompt
prompt Creating table EMS_DEDUCT
prompt =========================
prompt
create table ALLSYS.EMS_DEDUCT
(
  ENTRY_ID    VARCHAR2(18) not null,
  EMS_NO      VARCHAR2(12) not null,
  G_TYPE      VARCHAR2(1) not null,
  EMS_G_NO    NUMBER(19),
  ENTRY_G_NO  NUMBER(19) not null,
  EXG_VERSION VARCHAR2(32),
  IN_QTY      NUMBER(19,5),
  I_ACCOUNT   NUMBER(19,5),
  I_WT        NUMBER(19,5),
  I_E_FLAG    VARCHAR2(1),
  I_CURR      VARCHAR2(4),
  I_E_PORT    VARCHAR2(255),
  TRADE_MODE  VARCHAR2(4),
  TRAF_MODE   VARCHAR2(1),
  VERIFY_MODE VARCHAR2(2),
  VERIFY_DATE DATE,
  VERIFY_ER   VARCHAR2(8),
  JOU_MARK    VARCHAR2(1),
  I_E_DATE    DATE,
  USD_ACCOUNT NUMBER(19,5)
)
;
alter table ALLSYS.EMS_DEDUCT
  add constraint PK_EMS_DEDUCT primary key (ENTRY_ID, EMS_NO, G_TYPE, ENTRY_G_NO);
create index ALLSYS.IX_EMSDEDUCT_EMSGNO on ALLSYS.EMS_DEDUCT (EMS_G_NO);
create index ALLSYS.IX_EMSDEDUCT_EMSNO on ALLSYS.EMS_DEDUCT (EMS_NO);

prompt
prompt Creating table EMS_DEDUCT_CLR
prompt =============================
prompt
create table ALLSYS.EMS_DEDUCT_CLR
(
  EMS_NO      VARCHAR2(12) not null,
  IMG_NO      NUMBER(19) not null,
  ENTRY_ID    VARCHAR2(18) not null,
  ENTRY_G_NO  NUMBER(19) not null,
  EXG_NO      NUMBER(19),
  EXG_VERSION VARCHAR2(32),
  IN_QTY      NUMBER(19,5),
  DEC_CM      NUMBER(19,9),
  DEC_DM      NUMBER(19,9),
  DEC_CM_QTY  NUMBER(19,9),
  DEC_DM_QTY  NUMBER(19,9),
  I_E_FLAG    VARCHAR2(1),
  TRADE_MODE  VARCHAR2(4),
  TRAF_MODE   VARCHAR2(1),
  VERIFY_MODE VARCHAR2(2),
  JOU_MARK    VARCHAR2(1)
)
;
alter table ALLSYS.EMS_DEDUCT_CLR
  add constraint PK_EMS_DEDUCT_CLR primary key (EMS_NO, IMG_NO, ENTRY_ID, ENTRY_G_NO);

prompt
prompt Creating table EMS_DEDUCT_LOG
prompt =============================
prompt
create table ALLSYS.EMS_DEDUCT_LOG
(
  ENTRY_ID    VARCHAR2(18) not null,
  EMS_NO      VARCHAR2(12) not null,
  CREATE_DATE DATE not null,
  JOU_MARK    VARCHAR2(1) not null,
  NOTE        VARCHAR2(1),
  VERIFY_ER   VARCHAR2(8)
)
;
alter table ALLSYS.EMS_DEDUCT_LOG
  add constraint PK_EMS_DEDUCT_LOG primary key (ENTRY_ID, EMS_NO, CREATE_DATE, JOU_MARK);
create index ALLSYS.IX_EMSDEDUCTLOG_EMSGNO on ALLSYS.EMS_DEDUCT_LOG (EMS_NO, NOTE);

prompt
prompt Creating table EMS_ENP
prompt ======================
prompt
create table ALLSYS.EMS_ENP
(
  ENP_ID         VARCHAR2(18) not null,
  ENP_SEQ        NUMBER(19),
  MASTER_CUSTOMS VARCHAR2(4),
  I_E_PORT       VARCHAR2(4),
  OWNER_CODE     VARCHAR2(10),
  OWNER_NAME     VARCHAR2(255),
  TRAF_MODE      VARCHAR2(8),
  I_E_MARK       VARCHAR2(1),
  ENP_MARK       VARCHAR2(1),
  ENP_TYPE       VARCHAR2(1),
  EXE_MARK       VARCHAR2(1),
  PROCESS_MARK   VARCHAR2(10),
  ENP_NUM        NUMBER(19),
  DEC_DATE       DATE,
  SIGN_DATE      DATE,
  REL_DATE       DATE,
  END_DATE       DATE,
  NOTE_1         VARCHAR2(10),
  NOTE           VARCHAR2(256)
)
;
alter table ALLSYS.EMS_ENP
  add constraint PK_EMS_ENP primary key (ENP_ID);

prompt
prompt Creating table EMS_ENP_JOU
prompt ==========================
prompt
create table ALLSYS.EMS_ENP_JOU
(
  ENP_ID         VARCHAR2(18) not null,
  ENP_SEQ        NUMBER(19) not null,
  ENP_NO         NUMBER(19) not null,
  PROCESS_DATE   DATE,
  PROCESS_MARK   VARCHAR2(1),
  PROCESS_STATUS VARCHAR2(1),
  NOTE_1         VARCHAR2(12)
)
;
alter table ALLSYS.EMS_ENP_JOU
  add constraint PK_EMS_ENP_JOU primary key (ENP_ID, ENP_SEQ, ENP_NO);

prompt
prompt Creating table EMS_HEAD
prompt =======================
prompt
create table ALLSYS.EMS_HEAD
(
  EMS_NO            VARCHAR2(12) not null,
  MODIFY_TIMES      NUMBER(19) not null,
  PRE_EMS_NO        VARCHAR2(12),
  COP_EMS_NO        VARCHAR2(20),
  TRADE_CODE        VARCHAR2(10),
  TRADE_NAME        VARCHAR2(255),
  HOUSE_NO          VARCHAR2(12),
  OWNER_CODE        VARCHAR2(10),
  OWNER_NAME        VARCHAR2(255),
  OWNER_TYPE        VARCHAR2(1),
  DECLARE_ER_TYPE   VARCHAR2(1),
  DECLARE_CODE      VARCHAR2(10),
  DECLARE_NAME      VARCHAR2(255),
  DISTRICT_CODE     VARCHAR2(5),
  ADDRESS           VARCHAR2(255),
  PHONE             VARCHAR2(20),
  EMS_TYPE          VARCHAR2(1),
  DECLARE_TYPE      VARCHAR2(1),
  APPEND_TYPE       VARCHAR2(1),
  INVEST_MODE       VARCHAR2(1),
  TRADE_MODE        VARCHAR2(4),
  BEGIN_DATE        DATE,
  END_DATE          DATE,
  IMG_AMOUNT        NUMBER(19,5),
  EXG_AMOUNT        NUMBER(19,5),
  IMG_WEIGHT        NUMBER(19,5),
  EXG_WEIGHT        NUMBER(19,5),
  STORE_VOL         NUMBER(19,5),
  STORE_AREA        NUMBER(19,5),
  IMG_ITEMS         NUMBER(19),
  EXG_ITEMS         NUMBER(19),
  EMS_APPR_NO       VARCHAR2(40),
  LICENSE_NO        VARCHAR2(20),
  LAST_EMS_NO       VARCHAR2(12),
  CORR_EMS_NO       VARCHAR2(12),
  CONTR_NO          VARCHAR2(20),
  ID_CARD           VARCHAR2(20),
  ID_CARD_PWD       VARCHAR2(20),
  NOTE_1            VARCHAR2(10),
  NOTE_2            VARCHAR2(10),
  INVEST_AMOUNT     NUMBER(19,5),
  NOTE_AMOUNT       NUMBER(19,5),
  NOTE_QTY          NUMBER(19,5),
  NOTE              VARCHAR2(256),
  INPUT_DATE        DATE,
  INPUT_ER          VARCHAR2(8),
  DECLARE_DATE      DATE,
  EMS_APPR_MARK     VARCHAR2(10),
  EMS_CERTIFY       VARCHAR2(10),
  PRODUCT_RATIO     NUMBER(19,5),
  MODIFY_MARK       VARCHAR2(1),
  DECLARE_MARK      VARCHAR2(1),
  CHK_MARK          VARCHAR2(1),
  EXE_MARK          VARCHAR2(1),
  NEW_APPR_DATE     DATE,
  CNG_APPR_DATE     DATE,
  CLEAR_DATE        DATE,
  SIGN_DATE         DATE,
  SIGN_COPY         NUMBER(19),
  PRINT_DATE        DATE,
  PRINT_MARK        VARCHAR2(1),
  RETURN_DATE       DATE,
  RETURN_MARK       VARCHAR2(1),
  EMS_ACE_MARK      VARCHAR2(32),
  H883_ACE_MARK     VARCHAR2(32),
  CONTROL_MARK      VARCHAR2(32),
  PROCESS_MARK      VARCHAR2(32),
  CLEAR_MODE        VARCHAR2(1),
  CLEAR_TERM        NUMBER(19),
  CLEAR_MARK        VARCHAR2(32),
  CLEAR_TIMES       NUMBER(19),
  SERVICE_FEE_MARK  VARCHAR2(1),
  SERVICE_FEE_RATE  NUMBER(19,5),
  SERVICE_FEE       NUMBER(19,5),
  FILE_NO           VARCHAR2(20),
  RECORDER_NO       VARCHAR2(20),
  DOCUMENT_NO       VARCHAR2(20),
  MASTER_CUSTOMS    VARCHAR2(4),
  I_E_PORT          VARCHAR2(255),
  FOREIGN_CO_NAME   VARCHAR2(255),
  AGREE_NO          VARCHAR2(32),
  CUT_MODE          VARCHAR2(4),
  PAY_MODE          VARCHAR2(1),
  PRODUCE_TYPE      VARCHAR2(2),
  CONTR_OUT         VARCHAR2(32),
  MESSAGE_TYPE      VARCHAR2(8),
  EPORT_ID          VARCHAR2(18),
  DIGITAL_SIGN_MARK VARCHAR2(1),
  DIGITAL_SIGN_LEN  VARCHAR2(255),
  DIGITAL_SIGN      VARCHAR2(262),
  ETL_MARK          VARCHAR2(1),
  I_DATE            DATE,
  IMGED_AMOUNT      NUMBER(19,5),
  CLEAR_APPR_MARK   VARCHAR2(1),
  CLEAR_APPL_DATE   DATE,
  CLOSE_MARK        VARCHAR2(1),
  CLOSE_DATE        DATE,
  CHECK_MARK        VARCHAR2(1),
  CHECK_RESULT      VARCHAR2(255),
  FOREIGN_MGR       VARCHAR2(32),
  TRANS_MODE        VARCHAR2(1),
  TRADE_COUNTRY     VARCHAR2(3),
  EQUIP_MODE        VARCHAR2(1),
  IN_RATIO          NUMBER(19,4),
  EX_CURR           VARCHAR2(3),
  IM_CURR           VARCHAR2(3),
  OPER_MARK         VARCHAR2(32),
  FACT_DEV_AMT      NUMBER(19,5),
  APPR_IMG_AMT      NUMBER(19,5),
  APPR_EXG_AMT      NUMBER(19,5),
  CLOSE_RESULT      VARCHAR2(32),
  DEDUCT_DATE       DATE,
  ACCOUNT_FLAG      VARCHAR2(2),
  HT_APPR_IMG_AMT   NUMBER(19,5),
  CASE_MARK         VARCHAR2(1)
)
;
alter table ALLSYS.EMS_HEAD
  add constraint PK_EMS_HEAD primary key (EMS_NO);
create index ALLSYS.IX_EMSHEAD_COPNO on ALLSYS.EMS_HEAD (COP_EMS_NO, TRADE_CODE);
create index ALLSYS.IX_EMSHEAD_CUSTOMSCODE on ALLSYS.EMS_HEAD (MASTER_CUSTOMS);
create index ALLSYS.IX_EMSHEAD_ETL_MARK on ALLSYS.EMS_HEAD (ETL_MARK);
create index ALLSYS.IX_EMSHEAD_LASTEMSNO on ALLSYS.EMS_HEAD (LAST_EMS_NO);
create index ALLSYS.IX_EMSHEAD_PRENO on ALLSYS.EMS_HEAD (PRE_EMS_NO);

prompt
prompt Creating table EMS_LIST
prompt =======================
prompt
create table ALLSYS.EMS_LIST
(
  EMS_NO        VARCHAR2(12) not null,
  G_TYPE        VARCHAR2(1) not null,
  G_NO          NUMBER(19) not null,
  MODIFY_TIMES  NUMBER(19) not null,
  COP_G_NO      VARCHAR2(30),
  CODE_TS       VARCHAR2(10),
  CLASS_MARK    VARCHAR2(1),
  G_NAME        VARCHAR2(255),
  G_MODEL       VARCHAR2(255),
  UNIT          VARCHAR2(3),
  UNIT_1        VARCHAR2(3),
  UNIT_2        VARCHAR2(3),
  COUNTRY_CODE  VARCHAR2(4),
  SOURCE_MARK   VARCHAR2(1),
  DEC_PRICE     NUMBER(19,5),
  CURR          VARCHAR2(4),
  DEC_PRICE_RMB NUMBER(19,4),
  FACTOR_1      NUMBER(19,4),
  FACTOR_2      NUMBER(19,4),
  FACTOR_WT     NUMBER(19,4),
  FACTOR_RATE   NUMBER(19,5),
  QTY           NUMBER(19,5),
  MAX_QTY       NUMBER(19,5),
  FIRST_QTY     NUMBER(19,5),
  I_E_TYPE      VARCHAR2(1),
  USE_TYPE      VARCHAR2(10),
  NOTE_1        VARCHAR2(1),
  NOTE_2        VARCHAR2(1),
  NOTE          VARCHAR2(10),
  MODIFY_MARK   VARCHAR2(1),
  G_MERGE       VARCHAR2(10),
  G_TRADE       VARCHAR2(10),
  QTY_MARK      VARCHAR2(1),
  INC_AMOUNT    NUMBER(19,5),
  INC_QTY       NUMBER(19,5),
  INC_WT        NUMBER(19,5),
  CUT_AMOUNT    NUMBER(19,5),
  CUT_QTY       NUMBER(19,5),
  CUT_WT        NUMBER(19,5),
  CM_AMOUNT     NUMBER(19,5),
  CM_QTY        NUMBER(19,5),
  CM_WT         NUMBER(19,5),
  CLR_INC_QTY   NUMBER(19,5),
  CLR_CUT_QTY   NUMBER(19,5),
  DUTY_MODE     VARCHAR2(1),
  DUTY_RATE     NUMBER(19,5),
  CHK_PRICE     NUMBER(19,5),
  PROCESS_MARK  VARCHAR2(10),
  ENTRY_ID      VARCHAR2(18),
  LIMIT_DATE    DATE,
  ETL_MARK      VARCHAR2(1),
  USD_PRICE     NUMBER(19,5),
  APPR_AMT      NUMBER(19,5)
)
;
alter table ALLSYS.EMS_LIST
  add constraint PK_EMS_LIST primary key (EMS_NO, G_TYPE, G_NO);
create index ALLSYS.IX_EMSLIST_ETL_MARK on ALLSYS.EMS_LIST (ETL_MARK);

prompt
prompt Creating table EMS_MESSAGE_LOG
prompt ==============================
prompt
create table ALLSYS.EMS_MESSAGE_LOG
(
  EMS_NO             VARCHAR2(12) not null,
  SEND_CUSTOMS       VARCHAR2(4) not null,
  CUSTOMS_CODE       VARCHAR2(4) not null,
  H2000_RECEIVE_DATE DATE not null,
  MESSAGE_ID         VARCHAR2(50),
  MESSAGE_FLAG       VARCHAR2(1),
  MESSAGE_TYPE       VARCHAR2(8),
  RECEIVE_DATE       DATE,
  TYPE               VARCHAR2(32),
  SEND_TIMES         NUMBER(9),
  APPL_NO            VARCHAR2(32),
  STATUS             VARCHAR2(255),
  FLAG               VARCHAR2(1),
  NOTE               VARCHAR2(255)
)
;
alter table ALLSYS.EMS_MESSAGE_LOG
  add constraint PK_EMS_MESSAGE_LOG primary key (EMS_NO, SEND_CUSTOMS, CUSTOMS_CODE, H2000_RECEIVE_DATE);

prompt
prompt Creating table EMS_PRESS
prompt ========================
prompt
create table ALLSYS.EMS_PRESS
(
  PARA_TYPE  VARCHAR2(10) not null,
  PARA_ID    VARCHAR2(10),
  PARA_NAME  VARCHAR2(30) not null,
  PARA_EXP   VARCHAR2(30),
  PARA_FLAG  VARCHAR2(20),
  PARA_VALUE VARCHAR2(255),
  PARA_MARK  VARCHAR2(30)
)
;
alter table ALLSYS.EMS_PRESS
  add constraint PK_EMS_PRESS primary key (PARA_TYPE, PARA_NAME);

prompt
prompt Creating table EMS_PRESS_CLEAR
prompt ==============================
prompt
create table ALLSYS.EMS_PRESS_CLEAR
(
  EMS_NO        VARCHAR2(12) not null,
  PR_NO         VARCHAR2(14) not null,
  PR_COUNT      NUMBER(9),
  PR_CUSTOMS    VARCHAR2(4),
  PR_DEPARTMENT VARCHAR2(20),
  PR_DATE       DATE
)
;
alter table ALLSYS.EMS_PRESS_CLEAR
  add constraint PK_EMS_PRESS_CLEAR primary key (EMS_NO, PR_NO);

prompt
prompt Creating table EMS_SEQ
prompt ======================
prompt
create table ALLSYS.EMS_SEQ
(
  EMS_KEY VARCHAR2(10) not null,
  EMS_SEQ NUMBER(16)
)
;
alter table ALLSYS.EMS_SEQ
  add constraint PK_EMS_SEQ primary key (EMS_KEY);

prompt
prompt Creating table EMS_TMP_CLR
prompt ==========================
prompt
create table ALLSYS.EMS_TMP_CLR
(
  EMS_NO         VARCHAR2(12) not null,
  G_TYPE         VARCHAR2(1) not null,
  G_NO           NUMBER(19) not null,
  CLR_INC_AMOUNT NUMBER(19,5),
  CLR_INC_QTY    NUMBER(19,5),
  CLR_CUT_AMOUNT NUMBER(19,5),
  CLR_CUT_QTY    NUMBER(19,5),
  CLR_DS_QTY     NUMBER(19,5),
  CLR_DS_AMOUNT  NUMBER(19,5),
  CLR_QTY        NUMBER(19,5),
  CLR_AMOUNT     NUMBER(19,5),
  AVR_PRICE      NUMBER(19,5),
  CLR_RUB_QTY    NUMBER(19,5),
  CLR_RUB_AMOUNT NUMBER(19,5),
  CLR_CM_QTY     NUMBER(19,5),
  CLR_CM_AMOUNT  NUMBER(19,5)
)
;
alter table ALLSYS.EMS_TMP_CLR
  add constraint PK_EMS_TMP_CLR primary key (EMS_NO, G_TYPE, G_NO);

prompt
prompt Creating table EMS_VAR
prompt ======================
prompt
create table ALLSYS.EMS_VAR
(
  VAR_TYPE     VARCHAR2(16) not null,
  VAR_ID       VARCHAR2(32) not null,
  VAR_SUB_ID   VARCHAR2(32) default '0' not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  VAR_VALUE    VARCHAR2(255),
  VAR_VALUE1   VARCHAR2(255),
  VAR_VALUE2   VARCHAR2(255),
  VAR_VALUE3   VARCHAR2(255),
  VAR_DESC     VARCHAR2(255),
  MODIFY_TIME  DATE,
  VAR_ENABLED  VARCHAR2(1) default '1'
)
;
alter table ALLSYS.EMS_VAR
  add constraint PK_EMS_VAR primary key (VAR_TYPE, VAR_ID, VAR_SUB_ID, CUSTOMS_CODE);

prompt
prompt Creating table EMS_VERIFY
prompt =========================
prompt
create table ALLSYS.EMS_VERIFY
(
  EMS_NO         VARCHAR2(12) not null,
  G_TYPE         VARCHAR2(1) not null,
  G_NO           NUMBER(19) not null,
  CODE_TS        VARCHAR2(10),
  G_NAME         VARCHAR2(255),
  UNIT           VARCHAR2(3),
  QTY            NUMBER(19,5),
  MAX_QTY        NUMBER(19,5),
  FIRST_QTY      NUMBER(19,5),
  INC_QTY        NUMBER(19,5),
  INC_QTY_DEDUCT NUMBER(19,5),
  INC_QTY_ENTRY  NUMBER(19,5),
  CUT_QTY        NUMBER(19,5),
  CUT_QTY_DEDUCT NUMBER(19,5),
  CUT_QTY_ENTRY  NUMBER(19,5),
  CLR_INC_QTY    NUMBER(19,5),
  CLR_CUT_QTY    NUMBER(19,5),
  RESULT         VARCHAR2(10),
  RESULT2        VARCHAR2(10)
)
;
alter table ALLSYS.EMS_VERIFY
  add constraint PK_EMS_VERIFY primary key (EMS_NO, G_TYPE, G_NO);

prompt
prompt Creating table EMS_VERIFY_DETAIL
prompt ================================
prompt
create table ALLSYS.EMS_VERIFY_DETAIL
(
  EMS_NO VARCHAR2(12) not null,
  G_TYPE VARCHAR2(1) not null,
  G_NO   NUMBER(19) not null,
  D_TYPE VARCHAR2(1) not null,
  E_TYPE VARCHAR2(1) not null,
  QTY    NUMBER(19,5)
)
;
alter table ALLSYS.EMS_VERIFY_DETAIL
  add constraint PK_EMS_VERIFY_DETAIL primary key (EMS_NO, G_TYPE, G_NO, D_TYPE, E_TYPE);

prompt
prompt Creating table EMS_WORKFLOW
prompt ===========================
prompt
create table ALLSYS.EMS_WORKFLOW
(
  EMS_NO      VARCHAR2(12) not null,
  STEP_ID     VARCHAR2(8) not null,
  CREATE_DATE DATE not null,
  PROC_ER     VARCHAR2(20),
  PROC_ID     VARCHAR2(8),
  PROC_POS    VARCHAR2(4),
  PROC_RESULT VARCHAR2(255)
)
;
alter table ALLSYS.EMS_WORKFLOW
  add constraint PK_EMS_WORKFLOW primary key (EMS_NO, STEP_ID, CREATE_DATE);

prompt
prompt Creating table ENTRY_AUTOREL_ERR_LIST
prompt =====================================
prompt
create table ALLSYS.ENTRY_AUTOREL_ERR_LIST
(
  ENTRY_ID    VARCHAR2(18) not null,
  I_E_FLAG    VARCHAR2(1),
  DECL_PORT   VARCHAR2(4),
  TRADE_CO    VARCHAR2(10),
  TRADE_NAME  VARCHAR2(255),
  AGENT_CODE  VARCHAR2(10),
  AGENT_NAME  VARCHAR2(255),
  CREATE_DATE DATE,
  DESCRIPTION VARCHAR2(255)
)
;
alter table ALLSYS.ENTRY_AUTOREL_ERR_LIST
  add constraint PK_ENTRY_AUTOREL_ERR_LIST primary key (ENTRY_ID);

prompt
prompt Creating table ENTRY_AUTOREL_ERR_LOG
prompt ====================================
prompt
create table ALLSYS.ENTRY_AUTOREL_ERR_LOG
(
  ENTRY_ID    VARCHAR2(18) not null,
  DEL_TIME    DATE not null,
  DEL_OP_ID   VARCHAR2(8),
  I_E_FLAG    VARCHAR2(1),
  DECL_PORT   VARCHAR2(4),
  TRADE_CO    VARCHAR2(10),
  TRADE_NAME  VARCHAR2(255),
  AGENT_CODE  VARCHAR2(10),
  AGENT_NAME  VARCHAR2(255),
  CREATE_DATE DATE,
  DESCRIPTION VARCHAR2(255)
)
;
alter table ALLSYS.ENTRY_AUTOREL_ERR_LOG
  add constraint PK_ENTRY_AUTOREL_ERR_LOG primary key (ENTRY_ID, DEL_TIME);

prompt
prompt Creating table ENTRY_CENTRY_SELECT
prompt ==================================
prompt
create table ALLSYS.ENTRY_CENTRY_SELECT
(
  ENTRY_ID        VARCHAR2(18) not null,
  CREATE_DATE     DATE,
  DECL_PORT       VARCHAR2(4),
  I_E_FLAG        VARCHAR2(1),
  TRADE_CO        VARCHAR2(10),
  AGENT_CODE      VARCHAR2(10),
  TRADE_NAME      VARCHAR2(255),
  AGENT_NAME      VARCHAR2(255),
  OP_ID           VARCHAR2(8),
  SEL_RESULT      VARCHAR2(2),
  RSK_TYPE        VARCHAR2(2),
  RSK_CREATE_DATE DATE,
  RSK_TYPE_DESC   VARCHAR2(32),
  MANUAL_ARV      VARCHAR2(2)
)
;
alter table ALLSYS.ENTRY_CENTRY_SELECT
  add constraint PK_ENTRY_CENTRY_SELECT primary key (ENTRY_ID);

prompt
prompt Creating table ENTRY_CENTRY_SELECT_DEL
prompt ======================================
prompt
create table ALLSYS.ENTRY_CENTRY_SELECT_DEL
(
  ENTRY_ID        VARCHAR2(18) not null,
  OP_TIME         DATE not null,
  CREATE_DATE     DATE,
  DECL_PORT       VARCHAR2(4),
  I_E_FLAG        VARCHAR2(1),
  TRADE_CO        VARCHAR2(10),
  AGENT_CODE      VARCHAR2(10),
  TRADE_NAME      VARCHAR2(255),
  AGENT_NAME      VARCHAR2(255),
  OP_ID           VARCHAR2(8),
  SEL_RESULT      VARCHAR2(2),
  RSK_TYPE        VARCHAR2(2),
  RSK_CREATE_DATE DATE,
  RSK_TYPE_DESC   VARCHAR2(32),
  MANUAL_ARV      VARCHAR2(2),
  OP_ER           VARCHAR2(8)
)
;
alter table ALLSYS.ENTRY_CENTRY_SELECT_DEL
  add constraint PK_ENTRY_CENTRY_SELECT_DEL primary key (ENTRY_ID, OP_TIME);

prompt
prompt Creating table ENTRY_CERTIFICATE
prompt ================================
prompt
create table ALLSYS.ENTRY_CERTIFICATE
(
  ENTRY_ID  VARCHAR2(18) not null,
  DOCU_CODE VARCHAR2(1) not null,
  CERT_CODE VARCHAR2(32) not null
)
;
alter table ALLSYS.ENTRY_CERTIFICATE
  add constraint PK_ENTRY_CERTIFICATE primary key (ENTRY_ID, DOCU_CODE, CERT_CODE);

prompt
prompt Creating table ENTRY_CERTIFICATE_LOG
prompt ====================================
prompt
create table ALLSYS.ENTRY_CERTIFICATE_LOG
(
  ENTRY_ID  VARCHAR2(18) not null,
  DOCU_CODE VARCHAR2(1) not null,
  CERT_CODE VARCHAR2(32) not null,
  OP_TIME   DATE not null
)
;
alter table ALLSYS.ENTRY_CERTIFICATE_LOG
  add constraint PK_ENTRY_CERTIFICATE_LOG primary key (ENTRY_ID, DOCU_CODE, CERT_CODE, OP_TIME);

prompt
prompt Creating table ENTRY_CONTAINER
prompt ==============================
prompt
create table ALLSYS.ENTRY_CONTAINER
(
  ENTRY_ID     VARCHAR2(18) not null,
  CONTAINER_ID VARCHAR2(32) not null,
  CONTAINER_WT NUMBER(19,5)
)
;
alter table ALLSYS.ENTRY_CONTAINER
  add constraint PK_ENTRY_CONTAINER primary key (ENTRY_ID, CONTAINER_ID);

prompt
prompt Creating table ENTRY_CONTAINER_LOG
prompt ==================================
prompt
create table ALLSYS.ENTRY_CONTAINER_LOG
(
  ENTRY_ID     VARCHAR2(18) not null,
  CONTAINER_ID VARCHAR2(32) not null,
  CONTAINER_WT NUMBER(19,5),
  OP_TIME      DATE not null
)
;
alter table ALLSYS.ENTRY_CONTAINER_LOG
  add constraint PK_ENTRY_CONTAINER_LOG primary key (ENTRY_ID, CONTAINER_ID, OP_TIME);

prompt
prompt Creating table ENTRY_DEL_HEAD_LOG
prompt =================================
prompt
create table ALLSYS.ENTRY_DEL_HEAD_LOG
(
  ENTRY_ID           VARCHAR2(18) not null,
  PRE_ENTRY_ID       VARCHAR2(18),
  ID_CHK             VARCHAR2(1),
  I_E_FLAG           VARCHAR2(1),
  I_E_PORT           VARCHAR2(4),
  I_E_DATE           DATE,
  D_DATE             DATE,
  DESTINATION_PORT   VARCHAR2(4),
  TRAF_NAME          VARCHAR2(255),
  VOYAGE_NO          VARCHAR2(32),
  TRAF_MODE          VARCHAR2(1),
  TRADE_CO           VARCHAR2(10),
  TRADE_NAME         VARCHAR2(255),
  DISTRICT_CODE      VARCHAR2(5),
  OWNER_CODE         VARCHAR2(10),
  OWNER_NAME         VARCHAR2(255),
  AGENT_CODE         VARCHAR2(10),
  AGENT_NAME         VARCHAR2(255),
  CONTR_NO           VARCHAR2(32),
  IN_RATIO           NUMBER(19,5),
  BILL_NO            VARCHAR2(32),
  TRADE_COUNTRY      VARCHAR2(3),
  TRADE_MODE         VARCHAR2(4),
  CUT_MODE           VARCHAR2(3),
  TRANS_MODE         VARCHAR2(1),
  CONTAINER_NO       NUMBER(19,4),
  PAY_WAY            VARCHAR2(1),
  FEE_MARK           VARCHAR2(1),
  FEE_CURR           VARCHAR2(3),
  FEE_RATE           NUMBER(19,5),
  INSUR_MARK         VARCHAR2(1),
  INSUR_CURR         VARCHAR2(3),
  INSUR_RATE         NUMBER(19,5),
  OTHER_MARK         VARCHAR2(1),
  OTHER_CURR         VARCHAR2(3),
  OTHER_RATE         NUMBER(19,5),
  PACK_NO            NUMBER(19),
  GROSS_WT           NUMBER(19,5),
  NET_WT             NUMBER(19,5),
  WRAP_TYPE          VARCHAR2(32),
  MANUAL_NO          VARCHAR2(12),
  LICENSE_NO         VARCHAR2(20),
  APPR_NO            VARCHAR2(32),
  NOTE_S             VARCHAR2(255),
  DECL_PORT          VARCHAR2(4),
  CO_OWNER           VARCHAR2(1),
  TAXY_RG_NO         VARCHAR2(32),
  MNL_JGF_FLAG       VARCHAR2(1),
  SERVICE_FEE        NUMBER(19,4),
  SERVICE_RATE       NUMBER(19,5),
  RELATIVE_ID        VARCHAR2(18),
  BONDED_NO          VARCHAR2(32),
  BP_NO              VARCHAR2(255),
  TYPIST_NO          VARCHAR2(32),
  INPUT_NO           VARCHAR2(32),
  P_DATE             DATE,
  CTA_CHK_RESULT     VARCHAR2(255),
  MODI_NO            NUMBER(19),
  EDI_ID             VARCHAR2(1),
  STATUS_RESULT      VARCHAR2(120),
  DECLARE_NO         VARCHAR2(32),
  JOU_EVENT          VARCHAR2(15),
  JOU_FLAG           VARCHAR2(15),
  EDI_REMARK         VARCHAR2(32),
  PARTNER_ID         VARCHAR2(20),
  CUSTOMS_FIELD      VARCHAR2(8),
  ENTRY_TYPE         VARCHAR2(4),
  RELATIVE_MANUAL_NO VARCHAR2(12),
  PRICE_RANGE        NUMBER(19,4),
  SPECIAL_FLAG       VARCHAR2(1),
  DELAY_DAYS         NUMBER(19),
  DELAY_ACCOUNT      NUMBER(19,2),
  HASH_SIGN          VARCHAR2(380),
  OP_TIME            DATE not null
)
;
alter table ALLSYS.ENTRY_DEL_HEAD_LOG
  add constraint PK_ENTRY_DEL_HEAD_LOG primary key (ENTRY_ID, OP_TIME);

prompt
prompt Creating table ENTRY_DEL_LIST_LOG
prompt =================================
prompt
create table ALLSYS.ENTRY_DEL_LIST_LOG
(
  ENTRY_ID       VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  CONTR_ITEM     NUMBER(19),
  TRADE_CURR     VARCHAR2(3),
  EXCHANGE_RATE  NUMBER(19,7),
  DECL_PRICE     NUMBER(19,5),
  DECL_TOTAL     NUMBER(19,4),
  USE_TO         VARCHAR2(2),
  DUTY_MODE      VARCHAR2(1),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  QTY_1          NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  QTY_2          NUMBER(19,5),
  UNIT_2         VARCHAR2(3),
  TRADE_TOTAL    NUMBER(19,4),
  RMB_PRICE      NUMBER(19),
  USD_PRICE      NUMBER(19),
  DUTY_VALUE     NUMBER(19),
  G_PROCESS_MARK VARCHAR2(2),
  WORK_USD       NUMBER(19,4),
  CLASS_MARK     VARCHAR2(1),
  G_CERT_FLAG    VARCHAR2(32),
  TARIFF_MARK    VARCHAR2(32),
  DUTY_TYPE      VARCHAR2(1),
  REAL_DUTY      NUMBER(19,4),
  DUTY_CUT       NUMBER(19,4),
  DUTY_RATE      NUMBER(19,5),
  D_RATE         NUMBER(19,5),
  QTY_DUTY_RATE  NUMBER(19,5),
  QTY_D_RATE     NUMBER(19,5),
  TAX_TYPE       VARCHAR2(1),
  REAL_TAX       NUMBER(19,4),
  TAX_CUT        NUMBER(19,4),
  TAX_RATE       NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  QTY_TAX_RATE   NUMBER(19,5),
  QTY_T_RATE     NUMBER(19,5),
  REG_TYPE       VARCHAR2(1),
  REAL_REG       NUMBER(19,4),
  REG_CUT        NUMBER(19,4),
  REG_RATE       NUMBER(19,5),
  R_RATE         NUMBER(19,5),
  QTY_REG_RATE   NUMBER(19,5),
  QTY_R_RATE     NUMBER(19,5),
  OIL_TYPE       VARCHAR2(1),
  REAL_OIL       NUMBER(19,4),
  OIL_CUT        NUMBER(19,4),
  OIL_RATE       NUMBER(19,5),
  O_RATE         NUMBER(19,5),
  QTY_OIL_RATE   NUMBER(19,5),
  QTY_O_RATE     NUMBER(19,5),
  ANTI_TYPE      VARCHAR2(1),
  REAL_ANTI      NUMBER(19,4),
  ANTI_CUT       NUMBER(19,4),
  ANTI_RATE      NUMBER(19,5),
  A_RATE         NUMBER(19,5),
  QTY_ANTI_RATE  NUMBER(19,5),
  QTY_A_RATE     NUMBER(19,5),
  PRDT_NO        VARCHAR2(32),
  GOODS_ID       VARCHAR2(32),
  DECL_CODE_TS   VARCHAR2(16),
  OP_TIME        DATE not null,
  OP_FLAG        VARCHAR2(1),
  AGREEMENT_ID   VARCHAR2(2),
  RSV1_TYPE      VARCHAR2(1),
  REAL_RSV1      NUMBER(19,4),
  RSV1_CUT       NUMBER(19,4),
  RSV1_RATE      NUMBER(19,5),
  R1_RATE        NUMBER(19,5),
  QTY_RSV1_RATE  NUMBER(19,5),
  QTY_R1_RATE    NUMBER(19,5),
  RSV2_TYPE      VARCHAR2(1),
  REAL_RSV2      NUMBER(19,4),
  RSV2_CUT       NUMBER(19,4),
  RSV2_RATE      NUMBER(19,5),
  R2_RATE        NUMBER(19,5),
  QTY_RSV2_RATE  NUMBER(19,5),
  QTY_R2_RATE    NUMBER(19,5)
)
;
alter table ALLSYS.ENTRY_DEL_LIST_LOG
  add constraint PK_ENTRY_DEL_LIST_LOG primary key (ENTRY_ID, G_NO, OP_TIME);

prompt
prompt Creating table ENTRY_EVALUATION
prompt ===============================
prompt
create table ALLSYS.ENTRY_EVALUATION
(
  ENTRY_ID       VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  I_E_FLAG       VARCHAR2(1),
  DECL_PORT      VARCHAR2(4),
  VAL_METHOD     VARCHAR2(6),
  VAL_REASON     VARCHAR2(255),
  APPEAL_DEPT    VARCHAR2(4),
  APPEAL_RESULT  VARCHAR2(2),
  OPER_DATE      DATE,
  OPER_ER        VARCHAR2(8),
  PRINT_DATE     DATE,
  PRINT_ER       VARCHAR2(8),
  VAL_DUTY       NUMBER(19,4),
  VAL_TAX        NUMBER(19,4),
  VAL_OTHER      NUMBER(19,4),
  VAL_TOTAL      NUMBER(19,4),
  PRICE_RANGE    NUMBER(19,4),
  PROCESS_MARK   VARCHAR2(32),
  ASS_ID         VARCHAR2(17),
  REAL_DUTY      NUMBER(19,4),
  REAL_TAX       NUMBER(19,4),
  REAL_OTHERS    NUMBER(19,4),
  TRADE_CURR     VARCHAR2(3),
  DECL_PRICE     NUMBER(19,5),
  VAL_PRICE      NUMBER(19,5),
  VAL_CURR       VARCHAR2(3),
  D_DATE         DATE,
  I_E_PORT       VARCHAR2(4),
  G_NAME         VARCHAR2(255),
  CODE_TS        VARCHAR2(16),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  TRADE_MODE     VARCHAR2(4),
  TRANS_MODE     VARCHAR2(1),
  TRAF_MODE      VARCHAR2(1),
  I_E_DATE       DATE,
  CONTR_NO       VARCHAR2(32),
  TRADE_CO       VARCHAR2(10),
  TRADE_NAME     VARCHAR2(255),
  OWNER_CODE     VARCHAR2(10),
  OWNER_NAME     VARCHAR2(255),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  QTY_CONV       NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  TRADE_COUNTRY  VARCHAR2(3),
  USD_PRICE      NUMBER(19),
  P_DATE         DATE,
  EXCHANGE_RATE  NUMBER(19,7),
  VAL_EXCH       NUMBER(19,7)
)
;
alter table ALLSYS.ENTRY_EVALUATION
  add constraint PK_ENTRY_EVALUATION primary key (ENTRY_ID, G_NO);
create index ALLSYS.IX_ENTRY_EVALUATION_ASSID on ALLSYS.ENTRY_EVALUATION (ASS_ID);

prompt
prompt Creating table ENTRY_EVALUATION_BAK
prompt ===================================
prompt
create table ALLSYS.ENTRY_EVALUATION_BAK
(
  ENTRY_ID       VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  I_E_FLAG       VARCHAR2(1),
  DECL_PORT      VARCHAR2(4),
  VAL_METHOD     VARCHAR2(6),
  VAL_REASON     VARCHAR2(255),
  APPEAL_DEPT    VARCHAR2(4),
  APPEAL_RESULT  VARCHAR2(2),
  OPER_DATE      DATE,
  OPER_ER        VARCHAR2(8),
  PRINT_DATE     DATE,
  PRINT_ER       VARCHAR2(8),
  VAL_DUTY       NUMBER(19,4),
  VAL_TAX        NUMBER(19,4),
  VAL_OTHER      NUMBER(19,4),
  VAL_TOTAL      NUMBER(19,4),
  PRICE_RANGE    NUMBER(19,4),
  PROCESS_MARK   VARCHAR2(32),
  ASS_ID         VARCHAR2(17),
  REAL_DUTY      NUMBER(19,4),
  REAL_TAX       NUMBER(19,4),
  REAL_OTHERS    NUMBER(19,4),
  TRADE_CURR     VARCHAR2(3),
  DECL_PRICE     NUMBER(19,5),
  VAL_PRICE      NUMBER(19,5),
  VAL_CURR       VARCHAR2(3),
  D_DATE         DATE,
  I_E_PORT       VARCHAR2(4),
  G_NAME         VARCHAR2(255),
  CODE_TS        VARCHAR2(16),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  TRADE_MODE     VARCHAR2(4),
  TRANS_MODE     VARCHAR2(1),
  TRAF_MODE      VARCHAR2(1),
  I_E_DATE       DATE,
  CONTR_NO       VARCHAR2(32),
  TRADE_CO       VARCHAR2(10),
  TRADE_NAME     VARCHAR2(255),
  OWNER_CODE     VARCHAR2(10),
  OWNER_NAME     VARCHAR2(255),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  QTY_CONV       NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  TRADE_COUNTRY  VARCHAR2(3),
  USD_PRICE      NUMBER(19),
  P_DATE         DATE,
  EXCHANGE_RATE  NUMBER(19,7),
  VAL_EXCH       NUMBER(19,7)
)
;

prompt
prompt Creating table ENTRY_GPM_RTX
prompt ============================
prompt
create table ALLSYS.ENTRY_GPM_RTX
(
  SIGN_TYPE VARCHAR2(3) not null,
  ENTRY_ID  VARCHAR2(18) not null,
  PROC_MODE VARCHAR2(1) not null,
  PROC_DATE DATE
)
;
alter table ALLSYS.ENTRY_GPM_RTX
  add constraint PK_ENTRY_GPM_RTX primary key (SIGN_TYPE, ENTRY_ID, PROC_MODE);

prompt
prompt Creating table ENTRY_GPM_RTX_PRINTLOG
prompt =====================================
prompt
create table ALLSYS.ENTRY_GPM_RTX_PRINTLOG
(
  ENTRY_ID   VARCHAR2(18) not null,
  PRINT_TYPE VARCHAR2(3) not null,
  PRINT_DATE DATE not null,
  PRINT_ER   VARCHAR2(8)
)
;
alter table ALLSYS.ENTRY_GPM_RTX_PRINTLOG
  add constraint PK_ENTRY_GPM_RTX_PRINTLOG primary key (ENTRY_ID, PRINT_TYPE, PRINT_DATE);

prompt
prompt Creating table ENTRY_GPM_RTX_SENDLOG
prompt ====================================
prompt
create table ALLSYS.ENTRY_GPM_RTX_SENDLOG
(
  ENTRY_ID       VARCHAR2(18) not null,
  SIGN_TYPE      VARCHAR2(3) not null,
  PROC_MODE      VARCHAR2(1) not null,
  SEND_DATE      DATE not null,
  SEND_FILE_NAME VARCHAR2(50),
  SEND_ER        VARCHAR2(8)
)
;
alter table ALLSYS.ENTRY_GPM_RTX_SENDLOG
  add constraint PK_ENTRY_GPM_RTX_SENDLOG primary key (ENTRY_ID, SIGN_TYPE, PROC_MODE, SEND_DATE);

prompt
prompt Creating table ENTRY_HEAD
prompt =========================
prompt
create table ALLSYS.ENTRY_HEAD
(
  ENTRY_ID           VARCHAR2(18) not null,
  PRE_ENTRY_ID       VARCHAR2(18),
  ID_CHK             VARCHAR2(1),
  I_E_FLAG           VARCHAR2(1),
  I_E_PORT           VARCHAR2(4),
  I_E_DATE           DATE,
  D_DATE             DATE,
  DESTINATION_PORT   VARCHAR2(4),
  TRAF_NAME          VARCHAR2(255),
  VOYAGE_NO          VARCHAR2(32),
  TRAF_MODE          VARCHAR2(1),
  TRADE_CO           VARCHAR2(10),
  TRADE_NAME         VARCHAR2(255),
  DISTRICT_CODE      VARCHAR2(5),
  OWNER_CODE         VARCHAR2(10),
  OWNER_NAME         VARCHAR2(255),
  AGENT_CODE         VARCHAR2(10),
  AGENT_NAME         VARCHAR2(255),
  CONTR_NO           VARCHAR2(32),
  IN_RATIO           NUMBER(19,5),
  BILL_NO            VARCHAR2(32),
  TRADE_COUNTRY      VARCHAR2(3),
  TRADE_MODE         VARCHAR2(4),
  CUT_MODE           VARCHAR2(3),
  TRANS_MODE         VARCHAR2(1),
  CONTAINER_NO       NUMBER(19,4),
  PAY_WAY            VARCHAR2(1),
  FEE_MARK           VARCHAR2(1),
  FEE_CURR           VARCHAR2(3),
  FEE_RATE           NUMBER(19,5),
  INSUR_MARK         VARCHAR2(1),
  INSUR_CURR         VARCHAR2(3),
  INSUR_RATE         NUMBER(19,5),
  OTHER_MARK         VARCHAR2(1),
  OTHER_CURR         VARCHAR2(3),
  OTHER_RATE         NUMBER(19,5),
  PACK_NO            NUMBER(19),
  GROSS_WT           NUMBER(19,5),
  NET_WT             NUMBER(19,5),
  WRAP_TYPE          VARCHAR2(32),
  MANUAL_NO          VARCHAR2(12),
  LICENSE_NO         VARCHAR2(20),
  APPR_NO            VARCHAR2(32),
  NOTE_S             VARCHAR2(255),
  DECL_PORT          VARCHAR2(4) not null,
  CO_OWNER           VARCHAR2(1),
  TAXY_RG_NO         VARCHAR2(32),
  MNL_JGF_FLAG       VARCHAR2(1),
  SERVICE_FEE        NUMBER(19,4),
  SERVICE_RATE       NUMBER(19,5),
  RELATIVE_ID        VARCHAR2(18),
  BONDED_NO          VARCHAR2(32),
  BP_NO              VARCHAR2(255),
  TYPIST_NO          VARCHAR2(32),
  INPUT_NO           VARCHAR2(32),
  P_DATE             DATE,
  CTA_CHK_RESULT     VARCHAR2(255),
  MODI_NO            NUMBER(19),
  EDI_ID             VARCHAR2(1),
  STATUS_RESULT      VARCHAR2(120),
  DECLARE_NO         VARCHAR2(32),
  JOU_EVENT          VARCHAR2(15),
  JOU_FLAG           VARCHAR2(15),
  EDI_REMARK         VARCHAR2(32),
  PARTNER_ID         VARCHAR2(20),
  CUSTOMS_FIELD      VARCHAR2(8),
  ENTRY_TYPE         VARCHAR2(4),
  RELATIVE_MANUAL_NO VARCHAR2(12),
  PRICE_RANGE        NUMBER(19,4),
  SPECIAL_FLAG       VARCHAR2(1),
  DELAY_DAYS         NUMBER(19),
  DELAY_ACCOUNT      NUMBER(19,2),
  HASH_SIGN          VARCHAR2(380)
)
partition by range (DECL_PORT)
(
  partition P_EH_00_21 values less than ('2200')
    tablespace EHEAD_DAT_00_21,
  partition P_EH_22_22 values less than ('2300')
    tablespace EHEAD_DAT_22_22,
  partition P_EH_23_32 values less than ('3300')
    tablespace EHEAD_DAT_23_32,
  partition P_EH_33_49 values less than ('5000')
    tablespace EHEAD_DAT_33_49,
  partition P_EH_50_52 values less than ('5300')
    tablespace EHEAD_DAT_50_52,
  partition P_EH_53_99 values less than (MAXVALUE)
    tablespace EHEAD_DAT_53_99
);
alter table ALLSYS.ENTRY_HEAD
  add constraint PK_ENTRY_HEAD primary key (ENTRY_ID, DECL_PORT);
create index ALLSYS.IX_ENTRYHEAD_CONTRNO on ALLSYS.ENTRY_HEAD (CONTR_NO);
create index ALLSYS.IX_ENTRYHEAD_DDATE on ALLSYS.ENTRY_HEAD (D_DATE);
create index ALLSYS.IX_ENTRYHEAD_DECLPORT on ALLSYS.ENTRY_HEAD (DECL_PORT);
create index ALLSYS.IX_ENTRYHEAD_IEPORT on ALLSYS.ENTRY_HEAD (I_E_PORT);
create index ALLSYS.IX_ENTRYHEAD_MANUALNO on ALLSYS.ENTRY_HEAD (MANUAL_NO);
create index ALLSYS.IX_ENTRYHEAD_RELATIVEID on ALLSYS.ENTRY_HEAD (RELATIVE_ID);
create index ALLSYS.IX_ENTRYHEAD_TRADECO on ALLSYS.ENTRY_HEAD (TRADE_CO);

prompt
prompt Creating table ENTRY_LIST
prompt =========================
prompt
create table ALLSYS.ENTRY_LIST
(
  ENTRY_ID       VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  CONTR_ITEM     NUMBER(19),
  TRADE_CURR     VARCHAR2(3),
  EXCHANGE_RATE  NUMBER(19,7),
  DECL_PRICE     NUMBER(19,5),
  DECL_TOTAL     NUMBER(19,4),
  USE_TO         VARCHAR2(2),
  DUTY_MODE      VARCHAR2(1),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  QTY_1          NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  QTY_2          NUMBER(19,5),
  UNIT_2         VARCHAR2(3),
  TRADE_TOTAL    NUMBER(19,4),
  RMB_PRICE      NUMBER(19),
  USD_PRICE      NUMBER(19),
  DUTY_VALUE     NUMBER(19),
  G_PROCESS_MARK VARCHAR2(2),
  WORK_USD       NUMBER(19,4),
  CLASS_MARK     VARCHAR2(1),
  G_CERT_FLAG    VARCHAR2(32),
  TARIFF_MARK    VARCHAR2(32),
  DUTY_TYPE      VARCHAR2(1),
  REAL_DUTY      NUMBER(19,4),
  DUTY_CUT       NUMBER(19,4),
  DUTY_RATE      NUMBER(19,5),
  D_RATE         NUMBER(19,5),
  QTY_DUTY_RATE  NUMBER(19,5),
  QTY_D_RATE     NUMBER(19,5),
  TAX_TYPE       VARCHAR2(1),
  REAL_TAX       NUMBER(19,4),
  TAX_CUT        NUMBER(19,4),
  TAX_RATE       NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  QTY_TAX_RATE   NUMBER(19,5),
  QTY_T_RATE     NUMBER(19,5),
  REG_TYPE       VARCHAR2(1),
  REAL_REG       NUMBER(19,4),
  REG_CUT        NUMBER(19,4),
  REG_RATE       NUMBER(19,5),
  R_RATE         NUMBER(19,5),
  QTY_REG_RATE   NUMBER(19,5),
  QTY_R_RATE     NUMBER(19,5),
  OIL_TYPE       VARCHAR2(1),
  REAL_OIL       NUMBER(19,4),
  OIL_CUT        NUMBER(19,4),
  OIL_RATE       NUMBER(19,5),
  O_RATE         NUMBER(19,5),
  QTY_OIL_RATE   NUMBER(19,5),
  QTY_O_RATE     NUMBER(19,5),
  ANTI_TYPE      VARCHAR2(1),
  REAL_ANTI      NUMBER(19,4),
  ANTI_CUT       NUMBER(19,4),
  ANTI_RATE      NUMBER(19,5),
  A_RATE         NUMBER(19,5),
  QTY_ANTI_RATE  NUMBER(19,5),
  QTY_A_RATE     NUMBER(19,5),
  PRDT_NO        VARCHAR2(32),
  GOODS_ID       VARCHAR2(32),
  DECL_CODE_TS   VARCHAR2(16),
  AGREEMENT_ID   VARCHAR2(2),
  RSV1_TYPE      VARCHAR2(1),
  REAL_RSV1      NUMBER(19,4),
  RSV1_CUT       NUMBER(19,4),
  RSV1_RATE      NUMBER(19,5),
  R1_RATE        NUMBER(19,5),
  QTY_RSV1_RATE  NUMBER(19,5),
  QTY_R1_RATE    NUMBER(19,5),
  RSV2_TYPE      VARCHAR2(1),
  REAL_RSV2      NUMBER(19,4),
  RSV2_CUT       NUMBER(19,4),
  RSV2_RATE      NUMBER(19,5),
  R2_RATE        NUMBER(19,5),
  QTY_RSV2_RATE  NUMBER(19,5),
  QTY_R2_RATE    NUMBER(19,5)
)
;
alter table ALLSYS.ENTRY_LIST
  add constraint PK_ENTRY_LIST primary key (ENTRY_ID, G_NO);

prompt
prompt Creating table ENTRY_MODI_LOG
prompt =============================
prompt
create table ALLSYS.ENTRY_MODI_LOG
(
  ENTRY_ID     VARCHAR2(18) not null,
  OP_TIME      DATE not null,
  MODI_TYPE    NUMBER(19) not null,
  ITEM_NAME    VARCHAR2(255) not null,
  ITEM_SOURCE  VARCHAR2(255),
  NOTES        VARCHAR2(255),
  ITEM_CURRENT VARCHAR2(255)
)
;
alter table ALLSYS.ENTRY_MODI_LOG
  add constraint PK_ENTRY_MODI_LOG primary key (ENTRY_ID, OP_TIME, MODI_TYPE, ITEM_NAME);
create index SYS.IX_ENTRY_MODI_LOG_OP_TIME on ALLSYS.ENTRY_MODI_LOG (OP_TIME);

prompt
prompt Creating table ENTRY_OP_LOG
prompt ===========================
prompt
create table ALLSYS.ENTRY_OP_LOG
(
  ENTRY_ID VARCHAR2(18) not null,
  OP_TIME  DATE not null,
  OP_TYPE  VARCHAR2(3),
  OP_ER    VARCHAR2(8),
  SRV_PORT VARCHAR2(255)
)
;
alter table ALLSYS.ENTRY_OP_LOG
  add constraint PK_ENTRY_OP_LOG primary key (ENTRY_ID, OP_TIME);

prompt
prompt Creating table ENTRY_PROC
prompt =========================
prompt
create table ALLSYS.ENTRY_PROC
(
  ENTRY_ID        VARCHAR2(18) not null,
  I_E_FLAG        VARCHAR2(1),
  D_DATE          DATE,
  DECL_PORT       VARCHAR2(4) not null,
  SPECIAL_DECLARE VARCHAR2(1),
  ACE_TIME        DATE,
  ACE_RESULT      VARCHAR2(8),
  QUICK_PASS_MODE VARCHAR2(1),
  CTR_TIME        DATE,
  CTR_RESULT      VARCHAR2(8),
  CHANNEL         VARCHAR2(2),
  CHANNEL_TIME    DATE,
  CHANNEL_ER      VARCHAR2(8),
  REC_TIME        DATE,
  REC_ER          VARCHAR2(8),
  CHK_TIME        DATE,
  CHK_RESULT      VARCHAR2(8),
  CHK_ER          VARCHAR2(8),
  TAX_PRINT_TIME  DATE,
  REL_TIME        DATE,
  REL_RESULT      VARCHAR2(8),
  REL_ER          VARCHAR2(8),
  GOODS_REL_TIME  DATE,
  GOODS_REL_ER    VARCHAR2(8),
  RTX_TIME        DATE,
  RTX_ER          VARCHAR2(8),
  PREL_TIME       DATE,
  PREL_RESULT     VARCHAR2(8),
  PREL_ER         VARCHAR2(8),
  RECTR_TIME      DATE,
  RECTR_ER        VARCHAR2(8),
  LAST_STEP       VARCHAR2(8),
  LAST_STEP_TIME  DATE,
  RSV_1           VARCHAR2(8),
  RSV_2           VARCHAR2(8),
  RSV_3           VARCHAR2(32),
  RSV_4           VARCHAR2(32),
  RSV_TIME_1      DATE,
  RSV_TIME_2      DATE
)
partition by range (DECL_PORT)
(
  partition P_EP_00_21 values less than ('2200')
    tablespace EPROC_DAT_00_21,
  partition P_EP_22_22 values less than ('2300')
    tablespace EPROC_DAT_22_22,
  partition P_EP_23_32 values less than ('3300')
    tablespace EPROC_DAT_23_32,
  partition P_EP_33_49 values less than ('5000')
    tablespace EPROC_DAT_33_49,
  partition P_EP_50_52 values less than ('5300')
    tablespace EPROC_DAT_50_52,
  partition P_EP_53_99 values less than (MAXVALUE)
    tablespace EPROC_DAT_53_99
);
alter table ALLSYS.ENTRY_PROC
  add constraint PK_ENTRY_PROC primary key (ENTRY_ID, DECL_PORT);
create index ALLSYS.IX_ENTRYPROC_DDATE on ALLSYS.ENTRY_PROC (D_DATE);
create index ALLSYS.IX_ENTRYPROC_DECLPORT on ALLSYS.ENTRY_PROC (DECL_PORT);
create index ALLSYS.IX_ENTRYPROC_LASTSTEPTIME on ALLSYS.ENTRY_PROC (LAST_STEP_TIME);
create index ALLSYS.IX_ENTRYPROC_RTXTIME on ALLSYS.ENTRY_PROC (RTX_TIME);

prompt
prompt Creating table ENTRY_PROC_CHECK
prompt ===============================
prompt
create table ALLSYS.ENTRY_PROC_CHECK
(
  ENTRY_ID VARCHAR2(18) not null,
  NOTE     VARCHAR2(8)
)
;

prompt
prompt Creating table ENTRY_PROC_LOG
prompt =============================
prompt
create table ALLSYS.ENTRY_PROC_LOG
(
  ENTRY_ID       VARCHAR2(18) not null,
  OP_TIME        DATE not null,
  OP_STEP        VARCHAR2(2) not null,
  OP_TYPE        VARCHAR2(8),
  OP_SOURCE      VARCHAR2(256),
  OP_DESCRIPTION VARCHAR2(1024)
)
;
alter table ALLSYS.ENTRY_PROC_LOG
  add constraint PK_ENTRY_PROC_LOG primary key (ENTRY_ID, OP_TIME, OP_STEP);

prompt
prompt Creating table ENTRY_QUERY
prompt ==========================
prompt
create table ALLSYS.ENTRY_QUERY
(
  ENTRY_ID         VARCHAR2(18) not null,
  G_NO             NUMBER(19) not null,
  I_E_FLAG         VARCHAR2(1),
  I_E_PORT         VARCHAR2(4),
  I_E_DATE         DATE,
  D_DATE           DATE,
  DESTINATION_PORT VARCHAR2(4),
  TRAF_NAME        VARCHAR2(255),
  VOYAGE_NO        VARCHAR2(32),
  TRAF_MODE        VARCHAR2(1),
  TRADE_CO         VARCHAR2(10),
  TRADE_NAME       VARCHAR2(255),
  DISTRICT_CODE    VARCHAR2(5),
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  AGENT_CODE       VARCHAR2(10),
  AGENT_NAME       VARCHAR2(255),
  BILL_NO          VARCHAR2(32),
  TRADE_COUNTRY    VARCHAR2(3),
  TRADE_MODE       VARCHAR2(4),
  CUT_MODE         VARCHAR2(3),
  TRANS_MODE       VARCHAR2(1),
  FEE_MARK         VARCHAR2(1),
  FEE_CURR         VARCHAR2(3),
  FEE_RATE         NUMBER(19,5),
  INSUR_MARK       VARCHAR2(1),
  INSUR_CURR       VARCHAR2(3),
  INSUR_RATE       NUMBER(19,5),
  OTHER_MARK       VARCHAR2(1),
  OTHER_CURR       VARCHAR2(3),
  OTHER_RATE       NUMBER(19,5),
  PACK_NO          NUMBER(19),
  GROSS_WT         NUMBER(19,5),
  NET_WT           NUMBER(19,5),
  WRAP_TYPE        VARCHAR2(32),
  MANUAL_NO        VARCHAR2(12),
  LICENSE_NO       VARCHAR2(20),
  APPR_NO          VARCHAR2(32),
  NOTE_S           VARCHAR2(255),
  DECL_PORT        VARCHAR2(4),
  SPECIAL_FLAG     VARCHAR2(1),
  CODE_TS          VARCHAR2(16),
  G_NAME           VARCHAR2(255),
  G_MODEL          VARCHAR2(255),
  ORIGIN_COUNTRY   VARCHAR2(3),
  TRADE_CURR       VARCHAR2(3),
  EXCHANGE_RATE    NUMBER(19,7),
  DECL_PRICE       NUMBER(19,5),
  DECL_TOTAL       NUMBER(19,4),
  DUTY_MODE        VARCHAR2(1),
  G_QTY            NUMBER(19,5),
  G_UNIT           VARCHAR2(3),
  QTY_1            NUMBER(19,5),
  UNIT_1           VARCHAR2(3),
  QTY_2            NUMBER(19,5),
  UNIT_2           VARCHAR2(3),
  TRADE_TOTAL      NUMBER(19,4),
  RMB_PRICE        NUMBER(19),
  USD_PRICE        NUMBER(19),
  DUTY_VALUE       NUMBER(19),
  DUTY_TYPE        VARCHAR2(1),
  REAL_DUTY        NUMBER(19,4),
  DUTY_CUT         NUMBER(19,4)
)
;
alter table ALLSYS.ENTRY_QUERY
  add constraint PK_ENTRY_QUERY primary key (ENTRY_ID, G_NO);

prompt
prompt Creating table ENTRY_WORKFLOW
prompt =============================
prompt
create table ALLSYS.ENTRY_WORKFLOW
(
  ENTRY_ID    VARCHAR2(18) not null,
  STEP_ID     VARCHAR2(8) not null,
  CREATE_DATE DATE not null,
  PROC_POS    VARCHAR2(4),
  STATUS_CODE VARCHAR2(32),
  PROC_ER     VARCHAR2(8),
  PROC_RESULT VARCHAR2(8),
  PREV_POS    VARCHAR2(4),
  PREV_ER     VARCHAR2(8),
  RECHK_MARK  VARCHAR2(1),
  RECHK_COMM  VARCHAR2(255)
)
;
alter table ALLSYS.ENTRY_WORKFLOW
  add constraint PK_ENTRY_WORKFLOW primary key (ENTRY_ID, STEP_ID, CREATE_DATE);
create index ALLSYS.IX_ENTRY_WORKFLOW on ALLSYS.ENTRY_WORKFLOW (CREATE_DATE, STEP_ID);

prompt
prompt Creating table EPA_CHEM_CERT
prompt ============================
prompt
create table ALLSYS.EPA_CHEM_CERT
(
  CERTIFICATE_NO     VARCHAR2(20) not null,
  TRANSFER_NUM       NUMBER(2),
  ISSUE_ORGANIZATION VARCHAR2(200),
  ISSUE_DATE         DATE,
  BEGIN_DATE         DATE,
  END_DATE           DATE,
  TRADE_REG_NO       VARCHAR2(9),
  TRADE_CO           VARCHAR2(10),
  TRADE_NAME         VARCHAR2(200),
  OWNER_REG_NO       VARCHAR2(9),
  OWNER_CODE         VARCHAR2(10),
  OWNER_NAME         VARCHAR2(200),
  CODE_TS            VARCHAR2(10),
  G_NAME_CN          VARCHAR2(255),
  G_NAME_EN          VARCHAR2(255),
  G_NAME             VARCHAR2(255),
  G_NAME_OTHER       VARCHAR2(255),
  G_QTY              NUMBER(14,5),
  G_UNIT             VARCHAR2(3),
  DECL_PORT          VARCHAR2(4),
  PACK_TYPE          VARCHAR2(12),
  TRAF_MODE          VARCHAR2(1),
  TRADE_MODE         VARCHAR2(4),
  PLACE_OF_TRADE     VARCHAR2(3),
  PLACE_OF_FROM      VARCHAR2(3),
  ORIGIN_COUNTRY     VARCHAR2(3),
  PLACE_OF_TRANSFER  VARCHAR2(3),
  NOTE               VARCHAR2(255),
  OP_MODE            VARCHAR2(1),
  RECV_DATE          DATE
)
;
alter table ALLSYS.EPA_CHEM_CERT
  add constraint PK_EPA_CHEM_CERT primary key (CERTIFICATE_NO);

prompt
prompt Creating table EPA_CHK
prompt ======================
prompt
create table ALLSYS.EPA_CHK
(
  ENTRY_ID       VARCHAR2(18) not null,
  CERTIFICATE_NO VARCHAR2(20) not null,
  CERT_TYPE      VARCHAR2(1) not null,
  CHK_ER         VARCHAR2(8),
  CHK_DATE       DATE,
  REL_ER         VARCHAR2(8),
  REL_DATE       DATE,
  REL_QTY        NUMBER(14,5),
  NOTE           VARCHAR2(100)
)
;
alter table ALLSYS.EPA_CHK
  add constraint PK_EPA_CHK primary key (ENTRY_ID, CERTIFICATE_NO, CERT_TYPE);
create index ALLSYS.IX_EPA_CHK_CERT_NO on ALLSYS.EPA_CHK (CERTIFICATE_NO, CERT_TYPE);

prompt
prompt Creating table EPA_SCARP_CERT
prompt =============================
prompt
create table ALLSYS.EPA_SCARP_CERT
(
  CERTIFICATE_NO     VARCHAR2(20) not null,
  TRANSFER_NUM       NUMBER(2),
  ISSUE_ORGANIZATION VARCHAR2(200),
  ISSUE_DATE         DATE,
  BEGIN_DATE         DATE,
  END_DATE           DATE,
  OWNER_REG_NO       VARCHAR2(9),
  OWNER_CODE         VARCHAR2(10),
  OWNER_NAME         VARCHAR2(200),
  TRADE_REG_NO       VARCHAR2(9),
  TRADE_CO           VARCHAR2(10),
  TRADE_NAME         VARCHAR2(200),
  CODE_TS            VARCHAR2(100),
  G_NAME             VARCHAR2(255),
  G_QTY              NUMBER(14,5),
  G_UNIT             VARCHAR2(3),
  ORIGIN_COUNTRY     VARCHAR2(3),
  TRADE_MODE         VARCHAR2(4),
  I_E_PORT1          VARCHAR2(4),
  I_E_PORT2          VARCHAR2(4),
  I_E_PORT3          VARCHAR2(4),
  NOTE               VARCHAR2(255),
  OP_MODE            VARCHAR2(1),
  RECV_DATE          DATE
)
;
alter table ALLSYS.EPA_SCARP_CERT
  add constraint PK_EPA_SCARP_CERT primary key (CERTIFICATE_NO);

prompt
prompt Creating table ERR_LOG
prompt ======================
prompt
create table ALLSYS.ERR_LOG
(
  ENTRY_ID    VARCHAR2(18) not null,
  CREATE_DATE DATE not null,
  SOURCE      VARCHAR2(1024),
  DESCRIPTION VARCHAR2(1024)
)
;
alter table ALLSYS.ERR_LOG
  add constraint PK_ERR_LOG primary key (ENTRY_ID, CREATE_DATE);

prompt
prompt Creating table EVALUATION
prompt =========================
prompt
create table ALLSYS.EVALUATION
(
  ENTRY_ID       VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  I_E_FLAG       VARCHAR2(1),
  DECL_PORT      VARCHAR2(4),
  VAL_METHOD     VARCHAR2(6),
  VAL_REASON     VARCHAR2(255),
  APPEAL_DEPT    VARCHAR2(4),
  APPEAL_RESULT  VARCHAR2(2),
  OPER_DATE      DATE,
  OPER_ER        VARCHAR2(8),
  PRINT_DATE     DATE,
  PRINT_ER       VARCHAR2(8),
  VAL_DUTY       NUMBER(19,4),
  VAL_TAX        NUMBER(19,4),
  VAL_OTHER      NUMBER(19,4),
  VAL_TOTAL      NUMBER(19,4),
  PRICE_RANGE    NUMBER(19,4),
  PROCESS_MARK   VARCHAR2(32),
  ASS_ID         VARCHAR2(17),
  REAL_DUTY      NUMBER(19,4),
  REAL_TAX       NUMBER(19,4),
  REAL_OTHERS    NUMBER(19,4),
  TRADE_CURR     VARCHAR2(3),
  DECL_PRICE     NUMBER(19,5),
  VAL_PRICE      NUMBER(19,5),
  VAL_CURR       VARCHAR2(3),
  D_DATE         DATE,
  I_E_PORT       VARCHAR2(4),
  G_NAME         VARCHAR2(255),
  CODE_TS        VARCHAR2(16),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  TRADE_MODE     VARCHAR2(4),
  TRANS_MODE     VARCHAR2(1),
  TRAF_MODE      VARCHAR2(1),
  I_E_DATE       DATE,
  CONTR_NO       VARCHAR2(32),
  TRADE_CO       VARCHAR2(10),
  TRADE_NAME     VARCHAR2(255),
  OWNER_CODE     VARCHAR2(10),
  OWNER_NAME     VARCHAR2(255),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  QTY_CONV       NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  TRADE_COUNTRY  VARCHAR2(3),
  USD_PRICE      NUMBER(19),
  P_DATE         DATE,
  EXCHANGE_RATE  NUMBER(19,7),
  VAL_EXCH       NUMBER(19,7)
)
;

prompt
prompt Creating table EXAM_CONTA_END_LOG
prompt =================================
prompt
create table ALLSYS.EXAM_CONTA_END_LOG
(
  EXAM_REC_ID VARCHAR2(18) not null,
  RSK_NO      VARCHAR2(15),
  END_ER      VARCHAR2(8),
  END_TIME    DATE not null,
  END_REASON  VARCHAR2(1)
)
;
alter table ALLSYS.EXAM_CONTA_END_LOG
  add constraint PK_EXAM_CONTA_END_LOG primary key (EXAM_REC_ID, END_TIME);

prompt
prompt Creating table EXAM_CONTA_HEAD
prompt ==============================
prompt
create table ALLSYS.EXAM_CONTA_HEAD
(
  EXAM_REC_ID VARCHAR2(18) not null,
  ENTRY_ID    VARCHAR2(18) not null,
  RSK_NO      VARCHAR2(15),
  CREATE_ER   VARCHAR2(8),
  CREATE_TIME DATE,
  EXAM_B_TIME DATE,
  EXAM_E_TIME DATE,
  EXAM_ER1    VARCHAR2(8),
  EXAM_ER2    VARCHAR2(8),
  RESULT_ER   VARCHAR2(8),
  RESULT_TIME DATE,
  PRINT_ER    VARCHAR2(8),
  PRINT_TIME  DATE,
  END_TYPE    VARCHAR2(1),
  END_ER      VARCHAR2(8),
  END_TIME    DATE,
  END_REASON  VARCHAR2(1),
  NOTE_S      VARCHAR2(255)
)
;
alter table ALLSYS.EXAM_CONTA_HEAD
  add constraint PK_EXAM_CONTA_HEAD primary key (EXAM_REC_ID);
create index ALLSYS.IDX_EXAM_CONTA_HEAD_ENTRY_ID on ALLSYS.EXAM_CONTA_HEAD (ENTRY_ID);

prompt
prompt Creating table EXAM_CONTA_LIST
prompt ==============================
prompt
create table ALLSYS.EXAM_CONTA_LIST
(
  EXAM_REC_ID  VARCHAR2(18) not null,
  CONTA_ID     VARCHAR2(32) not null,
  HOLLOW_AREA1 VARCHAR2(2),
  HOLLOW_AREA2 VARCHAR2(2),
  CHK_SEAL     VARCHAR2(1),
  CHK_TRUNK    VARCHAR2(1),
  CHK_CONTA_ID VARCHAR2(1),
  EXAM_RESULT  VARCHAR2(1)
)
;
alter table ALLSYS.EXAM_CONTA_LIST
  add constraint PK_EXAM_CONTA_LIST primary key (EXAM_REC_ID, CONTA_ID);

prompt
prompt Creating table EXA_APPL_CLOSE
prompt =============================
prompt
create table ALLSYS.EXA_APPL_CLOSE
(
  MANUAL_NO  VARCHAR2(12) not null,
  CONTR_ITEM NUMBER(19) not null,
  CODE_TS    VARCHAR2(16),
  G_NAME     VARCHAR2(50),
  G_MODEL    VARCHAR2(50),
  G_QTY      NUMBER(19,4),
  DECL_PRICE NUMBER(19,4),
  G_AMT      NUMBER(19,5),
  PROC_MODE  VARCHAR2(1),
  BOOK_NO    VARCHAR2(18)
)
;
alter table ALLSYS.EXA_APPL_CLOSE
  add constraint PK_EXA_APPL_CLOSE primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table EXC_ELE
prompt ======================
prompt
create table ALLSYS.EXC_ELE
(
  SEQ_NO       VARCHAR2(18),
  HXD_NO       VARCHAR2(32) not null,
  WGJ_CODE     VARCHAR2(6),
  ENT_CODE     VARCHAR2(9),
  TRADE_CO     VARCHAR2(10),
  WGJ_STATE    VARCHAR2(1),
  REASON_CODE  VARCHAR2(255),
  PROVIDE_DATE DATE,
  PROVIDE_NAME VARCHAR2(32),
  OPER_DATE    DATE,
  OPER_NAME    VARCHAR2(32),
  HG_STATE     VARCHAR2(1),
  HG_OPER_DATE DATE,
  HG_OPER_NAME VARCHAR2(32),
  LOSS_STATE   VARCHAR2(1),
  LOSS_DATE    DATE,
  LOSS_NAME    VARCHAR2(32),
  PORT_CODE    VARCHAR2(4),
  PORT_DATE    DATE,
  PORT_NAME    VARCHAR2(32),
  DEAL_STATE   VARCHAR2(1),
  DEAL_DATE    DATE,
  DEAL_NAME    VARCHAR2(32),
  PAPER_BILL   VARCHAR2(1),
  RECV_DATE    DATE,
  CANCEL_DATE  DATE,
  ENTRY_ID     VARCHAR2(18),
  CUS_CODE     VARCHAR2(4),
  DECL_DATE    DATE,
  CHK_MARK     VARCHAR2(1),
  DATA_SIGN    VARCHAR2(255)
)
;
alter table ALLSYS.EXC_ELE
  add constraint PK_EXC_ELE primary key (HXD_NO);
create index ALLSYS.IX_DECL_DATE on ALLSYS.EXC_ELE (DECL_DATE);
create index ALLSYS.IX_EXC_ELE on ALLSYS.EXC_ELE (PORT_CODE, RECV_DATE);
create index ALLSYS.IX_EXC_TRADECO on ALLSYS.EXC_ELE (TRADE_CO);

prompt
prompt Creating table EXC_EXAM
prompt =======================
prompt
create table ALLSYS.EXC_EXAM
(
  SEQ_NO     VARCHAR2(18),
  HXD_NO     VARCHAR2(9) not null,
  ENTRY_ID   VARCHAR2(18),
  CUS_CODE   VARCHAR2(4),
  DECL_DATE  DATE,
  IMPLE_DATE DATE,
  IMPLE_ER   VARCHAR2(32),
  RET_DATE   DATE,
  EXC_MARK   VARCHAR2(1),
  DELE_DATE  DATE,
  DELE_ER    VARCHAR2(32),
  DATA_SIGN  VARCHAR2(255)
)
;
alter table ALLSYS.EXC_EXAM
  add constraint PK_EXC_EXAM primary key (HXD_NO);
create index ALLSYS.IX_EXC_EXAM on ALLSYS.EXC_EXAM (ENTRY_ID);
create index ALLSYS.IX_EXC_EXAM_2 on ALLSYS.EXC_EXAM (IMPLE_DATE);

prompt
prompt Creating table EXC_EX_CHK
prompt =========================
prompt
create table ALLSYS.EXC_EX_CHK
(
  HXD_NO        VARCHAR2(32) not null,
  ENTRY_ID      VARCHAR2(18),
  TRADE_CO      VARCHAR2(10),
  AUTO_CHKFLAG  VARCHAR2(1),
  CHK_DATE      DATE,
  TRADE_TOTAL   NUMBER(19,4),
  RECV_AMT      NUMBER(19,4),
  MAT_AMT       NUMBER(19,4),
  HX_STATE      VARCHAR2(1),
  DIFF_RSNCODE1 VARCHAR2(2),
  DIFF_AMT1     NUMBER(19,4),
  DIFF_RSNCODE2 VARCHAR2(2),
  DIFF_AMT2     NUMBER(19,4),
  DIFF_RSNCODE3 VARCHAR2(2),
  DIFF_AMT3     NUMBER(19,4),
  DIFF_RSNCODE4 VARCHAR2(2),
  DIFF_AMT4     NUMBER(19,4),
  DIFF_RSNCODE5 VARCHAR2(2),
  DIFF_AMT5     NUMBER(19,4),
  DIFF_RSNCODE6 VARCHAR2(2),
  DIFF_AMT6     NUMBER(19,4),
  TRADE_CURR    VARCHAR2(3)
)
;
alter table ALLSYS.EXC_EX_CHK
  add constraint PK_EXC_EX_CHK primary key (HXD_NO);

prompt
prompt Creating table EXP_MFT_CHK_RESULT
prompt =================================
prompt
create table ALLSYS.EXP_MFT_CHK_RESULT
(
  VOYAGE_NO    VARCHAR2(32) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  CHK_MARK     VARCHAR2(1),
  CHK_DATE     DATE
)
;
alter table ALLSYS.EXP_MFT_CHK_RESULT
  add constraint PK_EXP_MFT_CHK_RESULT primary key (VOYAGE_NO, CUSTOMS_CODE);

prompt
prompt Creating table EXTERNAL_JOU
prompt ===========================
prompt
create table ALLSYS.EXTERNAL_JOU
(
  MANUAL_NO    VARCHAR2(12) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  APPL_NO      NUMBER(19) not null,
  FASCICLE_NO  VARCHAR2(12),
  E_DATE       DATE,
  APPL_ER      VARCHAR2(8),
  APPL_DATE    DATE,
  RETURN_DATE  DATE,
  RETURN_FLAG  VARCHAR2(1),
  PASSWORD     VARCHAR2(12),
  NOTE_S       VARCHAR2(255)
)
;
alter table ALLSYS.EXTERNAL_JOU
  add constraint PK_EXTERNAL_JOU primary key (MANUAL_NO, CUSTOMS_CODE, APPL_NO);

prompt
prompt Creating table EX_APPL_CLOSE
prompt ============================
prompt
create table ALLSYS.EX_APPL_CLOSE
(
  MANUAL_NO      VARCHAR2(12) not null,
  CONTR_ITEM     NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(30),
  G_MODEL        VARCHAR2(30),
  FACT_QTY       NUMBER(19,4),
  T_IN_QTY       NUMBER(19,4),
  T_EX_QTY       NUMBER(19,4),
  REMAIN_QTY     NUMBER(19,4),
  PROC_MODE      VARCHAR2(1),
  CORR_MANUAL_NO VARCHAR2(12)
)
;
alter table ALLSYS.EX_APPL_CLOSE
  add constraint PK_EX_APPL_CLOSE primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table EX_ARRIVAL_CONTA
prompt ===============================
prompt
create table ALLSYS.EX_ARRIVAL_CONTA
(
  CONTA_ID      VARCHAR2(32) not null,
  BILL_NO       VARCHAR2(32) not null,
  REC_NO        VARCHAR2(18) not null,
  RECV_DATE     DATE,
  CONTA_MODEL   VARCHAR2(4),
  CONTA_STATUS  VARCHAR2(1),
  SEAL_NO       VARCHAR2(32),
  TARE_WEIGHT   NUMBER(19,5),
  TOTAL_CARGO   NUMBER(19,5),
  TOTAL_MEASURE NUMBER(19,5),
  TOTAL_PACK_NO NUMBER(19,5),
  TOTAL_WEIGHT  NUMBER(19,5),
  IN_PORT_FLAG  VARCHAR2(1),
  IN_PORT_ADDR  VARCHAR2(32),
  IN_PORT_DATE  DATE,
  D_PORT_CODE   VARCHAR2(32),
  PLACE         VARCHAR2(6),
  ENTRY_ID      VARCHAR2(18),
  CHK_DATE      DATE,
  CHK_ER        VARCHAR2(8)
)
;
alter table ALLSYS.EX_ARRIVAL_CONTA
  add constraint PK_EX_ARRIVAL_CONTA primary key (CONTA_ID, BILL_NO, REC_NO);
create index ALLSYS.IDX_ARV_SHIP on ALLSYS.EX_ARRIVAL_CONTA (REC_NO);
create index ALLSYS.IDX_CONTA_RECV_DATE on ALLSYS.EX_ARRIVAL_CONTA (RECV_DATE);
create index ALLSYS.IDX_EX_ARRIVAL_CONTA_BILL_NO on ALLSYS.EX_ARRIVAL_CONTA (BILL_NO)
  compress;
create index ALLSYS.IDX_EX_ARRIVAL_CONTA_ENTRY_ID on ALLSYS.EX_ARRIVAL_CONTA (ENTRY_ID)
  compress;

prompt
prompt Creating table EX_ARRIVAL_ERR_CHK
prompt =================================
prompt
create table ALLSYS.EX_ARRIVAL_ERR_CHK
(
  ENTRY_ID VARCHAR2(18) not null,
  CHK_FLAG VARCHAR2(8),
  CHK_DATE DATE not null,
  CHK_ER   VARCHAR2(8)
)
;
alter table ALLSYS.EX_ARRIVAL_ERR_CHK
  add constraint PK_EX_ARRIVAL_ERR_CHK primary key (ENTRY_ID, CHK_DATE);

prompt
prompt Creating table EX_ARRIVAL_SHIP
prompt ==============================
prompt
create table ALLSYS.EX_ARRIVAL_SHIP
(
  VOYAGE_NO    VARCHAR2(32) not null,
  SHIP_NAME_EN VARCHAR2(255) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  SHIP_ID      VARCHAR2(32) not null,
  I_E_DATE     DATE,
  TRAF_MODE    VARCHAR2(1) not null,
  REC_NO       VARCHAR2(18) not null
)
;
alter table ALLSYS.EX_ARRIVAL_SHIP
  add constraint PK_EX_ARRIVAL_SHIP primary key (VOYAGE_NO, SHIP_NAME_EN, CUSTOMS_CODE, SHIP_ID);
create index ALLSYS.IDX_EX_ARRIVAL_SHIP_REC_NO on ALLSYS.EX_ARRIVAL_SHIP (REC_NO)
  compress;

prompt
prompt Creating table EX_CDL_MNL_DEDUCT
prompt ================================
prompt
create table ALLSYS.EX_CDL_MNL_DEDUCT
(
  MANUAL_NO   VARCHAR2(12) not null,
  CONTR_ITEM  NUMBER(19),
  ENTRY_ID    VARCHAR2(18) not null,
  ENTRY_ITEM  NUMBER(19),
  I_E_PORT    VARCHAR2(8),
  I_E_DATE    DATE,
  G_NO        NUMBER(19) not null,
  IN_QTY      NUMBER(19,4),
  I_ACCOUNT   NUMBER(19,5),
  I_CURR      VARCHAR2(3),
  DUTY_MODE   VARCHAR2(1),
  VERIFY_MODE VARCHAR2(1),
  VERIFY_DATE DATE,
  VERIFY_ER   VARCHAR2(8)
)
;
alter table ALLSYS.EX_CDL_MNL_DEDUCT
  add constraint PK_EX_CDL_MNL_DEDUCT primary key (MANUAL_NO, ENTRY_ID, G_NO);
create index ALLSYS.IX_EXCDLMNLDEDUCT_ENTRYID on ALLSYS.EX_CDL_MNL_DEDUCT (ENTRY_ID);

prompt
prompt Creating table EX_CONTA_ENTRY_CHK
prompt =================================
prompt
create table ALLSYS.EX_CONTA_ENTRY_CHK
(
  CONTA_ID VARCHAR2(32) not null,
  BILL_NO  VARCHAR2(32) not null,
  REC_NO   VARCHAR2(18) not null,
  ENTRY_ID VARCHAR2(18) not null,
  CHK_DATE DATE,
  CHK_ER   VARCHAR2(8)
)
;
alter table ALLSYS.EX_CONTA_ENTRY_CHK
  add constraint PK_EX_CONTA_ENTRY_CHK primary key (CONTA_ID, BILL_NO, REC_NO, ENTRY_ID);
create index ALLSYS.IDX_CONTA_ENTRY on ALLSYS.EX_CONTA_ENTRY_CHK (ENTRY_ID);

prompt
prompt Creating table EX_CONTRACT_CLEAR
prompt ================================
prompt
create table ALLSYS.EX_CONTRACT_CLEAR
(
  MANUAL_NO     VARCHAR2(12) not null,
  CONTR_ITEM    NUMBER(19) not null,
  APPR_AMT      NUMBER(19,5),
  FACT_AMT      NUMBER(19,5),
  APPR_QTY      NUMBER(19,4),
  FACT_QTY      NUMBER(19,4),
  PRODU_EX_AMT  NUMBER(19,5),
  PRODU_EX_QTY  NUMBER(19,4),
  PRODU_TAX_AMT NUMBER(19,5),
  PRODU_TAX_QTY NUMBER(19,4),
  REMAIN_AMT    NUMBER(19,5),
  REMAIN_QTY    NUMBER(19,4),
  ABANDON_AMT   NUMBER(19,5),
  ABANDON_QTY   NUMBER(19,4),
  ABANDON_DATE  DATE,
  ABANDON_ER    VARCHAR2(8),
  UNIT_1        VARCHAR2(3),
  CLEAR_ER      VARCHAR2(8),
  CLEAR_DATE    DATE,
  CLOSE_ER      VARCHAR2(8),
  CLOSE_DATE    DATE
)
;
alter table ALLSYS.EX_CONTRACT_CLEAR
  add constraint PK_EX_CONTRACT_CLEAR primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table EX_CONTRACT_DEDUC
prompt ================================
prompt
create table ALLSYS.EX_CONTRACT_DEDUC
(
  MANUAL_NO   VARCHAR2(12) not null,
  CONTR_ITEM  NUMBER(19),
  ENTRY_ID    VARCHAR2(18) not null,
  ENTRY_ITEM  NUMBER(19),
  I_E_PORT    VARCHAR2(8),
  I_E_DATE    DATE,
  G_NO        NUMBER(19) not null,
  IN_QTY      NUMBER(19,4),
  I_ACCOUNT   NUMBER(19,5),
  I_CURR      VARCHAR2(3),
  DUTY_MODE   VARCHAR2(1),
  VERIFY_MODE VARCHAR2(1),
  VERIFY_DATE DATE,
  VERIFY_ER   VARCHAR2(8)
)
;
alter table ALLSYS.EX_CONTRACT_DEDUC
  add constraint PK_EX_CONTRACT_DEDUC primary key (MANUAL_NO, ENTRY_ID, G_NO);
create index ALLSYS.IX_EXCONTRACTDEDUC_ENTRYID on ALLSYS.EX_CONTRACT_DEDUC (ENTRY_ID);
create index ALLSYS.IX_EXCONTRACTDEDUC_MANUALNO on ALLSYS.EX_CONTRACT_DEDUC (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table EX_CONTRACT_LIST
prompt ===============================
prompt
create table ALLSYS.EX_CONTRACT_LIST
(
  MANUAL_NO      VARCHAR2(12) not null,
  CONTR_ITEM     NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  CLASS_MARK     VARCHAR2(1),
  G_NAME         VARCHAR2(50),
  G_MODEL        VARCHAR2(50),
  ORIGIN_COUNTRY VARCHAR2(3),
  DUTY_MODE      VARCHAR2(1),
  DUTY_RATIO     NUMBER(19,5),
  LOCAL_CONTR    VARCHAR2(20),
  APPR_AMT       NUMBER(19,5),
  FACT_AMT       NUMBER(19,5),
  UNIT_PRICE     NUMBER(19,10),
  APPR_QTY       NUMBER(19,5),
  FACT_QTY       NUMBER(19,5),
  TRANSFER_QTY   NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  IN_COUNT       NUMBER(19),
  WORK_PAY       NUMBER(19),
  CURR_WORK      VARCHAR2(3),
  CONSUME_NOTE   VARCHAR2(255)
)
;
alter table ALLSYS.EX_CONTRACT_LIST
  add constraint PK_EX_CONTRACT_LIST primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table EX_COP_RATE
prompt ==========================
prompt
create table ALLSYS.EX_COP_RATE
(
  TRADE_CO    VARCHAR2(10) not null,
  CHKSTDATE   DATE not null,
  CHKENDDATE  DATE not null,
  CORCORPNAME VARCHAR2(128),
  CHKRATE     NUMBER(21,4),
  RECV_DATE   DATE
)
;
alter table ALLSYS.EX_COP_RATE
  add constraint PK_EX_COP_RATE primary key (TRADE_CO, CHKSTDATE, CHKENDDATE);

prompt
prompt Creating table EX_DECL_ALARM_HEAD
prompt =================================
prompt
create table ALLSYS.EX_DECL_ALARM_HEAD
(
  PRE_NO            VARCHAR2(16) not null,
  TURN_NO           VARCHAR2(16),
  BATCH_NO          VARCHAR2(16),
  ENTRY_NO          VARCHAR2(18),
  APPL_NAME         VARCHAR2(255),
  APPL_CODE         VARCHAR2(10),
  SEAL_NO_1         VARCHAR2(12),
  SEAL_NO_2         VARCHAR2(12),
  EXPORT_PLACE      VARCHAR2(4),
  DELIVER_CO        VARCHAR2(255),
  DELIVER_PLACE     VARCHAR2(5),
  CONTR_NO          VARCHAR2(40),
  LICENSE_NO        VARCHAR2(20),
  MANUAL_NO         VARCHAR2(12),
  RATION_CARD       VARCHAR2(12),
  CHK_PROOF_NO      VARCHAR2(20),
  TRADE_MODE        VARCHAR2(4),
  CONTRACTOR        VARCHAR2(255),
  CONTRACTOR_CODE   VARCHAR2(10),
  TRAF_WAY          VARCHAR2(1),
  CUSTOMS_NO        VARCHAR2(13),
  TRANS_NO          VARCHAR2(32),
  NATIVE_VOYAGE_NO  VARCHAR2(32),
  BILL_NO           VARCHAR2(32),
  BILL_COUNT        NUMBER(9),
  CONTA_NO          VARCHAR2(20),
  CONTA_TYPE        VARCHAR2(6),
  CONTA_AMOUNT      NUMBER(19,4),
  CONTA_INI_COUNT   NUMBER(19,4),
  CONTA_EMPTY_COUNT NUMBER(19,4),
  VALID_TIME        DATE,
  GOODS_NOTE        VARCHAR2(255),
  PRE_NAME          VARCHAR2(32),
  INPUT_OP_ID       VARCHAR2(8),
  INPUT_TIME        DATE,
  REC_MARK          VARCHAR2(1),
  EXAM_OP_ID        VARCHAR2(8),
  EXAM_TIME         DATE,
  CHECK_OP_ID       VARCHAR2(8),
  CHECK_TIME        DATE,
  CHECK_MARK        VARCHAR2(1),
  DEL_OP_ID         VARCHAR2(8),
  DEL_TIME          DATE,
  DEL_REASON        VARCHAR2(1),
  DELI_MARK         VARCHAR2(1),
  REL_OP_ID         VARCHAR2(8),
  REL_TIME          DATE,
  PRE_FIEL          VARCHAR2(32),
  MFT_VOYAGE_NO     VARCHAR2(32),
  MFT_TRAF_NAME     VARCHAR2(32),
  MFT_BILL_NO       VARCHAR2(32),
  MFT_TRAF_WAY      VARCHAR2(1),
  MFT_GOODS_PIECE   NUMBER(9),
  MFT_GROSS_WEIGHT  NUMBER(19,4),
  MFT_REC_MARK      VARCHAR2(1),
  SEND_PORT         VARCHAR2(4),
  RECV_PORT         VARCHAR2(4),
  GOODS_CHK_FLAG    VARCHAR2(1),
  OTHER_CHK_MARK    VARCHAR2(8),
  TRN_MODE          VARCHAR2(2),
  ADV_MARK          VARCHAR2(1),
  TRANS_PRE_NO      VARCHAR2(18),
  TRANS_PRE_MARK    VARCHAR2(1),
  STF_DATE          DATE,
  STF_NO            VARCHAR2(32),
  PRE_FIELD1        VARCHAR2(32),
  PRE_FIELD2        VARCHAR2(32),
  CA_KEY            VARCHAR2(380),
  HASH_SIGN         VARCHAR2(380)
)
;
alter table ALLSYS.EX_DECL_ALARM_HEAD
  add constraint PK_EX_DECL_ALARM_HEAD primary key (PRE_NO);
create index ALLSYS.IDX_EX_DECL_ALARM_HEAD_RECV on ALLSYS.EX_DECL_ALARM_HEAD (RECV_PORT, EXAM_TIME);
create index ALLSYS.IDX_EX_DECL_ALARM_HEAD_SEND on ALLSYS.EX_DECL_ALARM_HEAD (SEND_PORT, EXAM_TIME);
create index ALLSYS.IDX_EX_DECL_ALARM_HEAD_TURN_NO on ALLSYS.EX_DECL_ALARM_HEAD (TURN_NO);

prompt
prompt Creating table EX_DECL_ALARM_LIST
prompt =================================
prompt
create table ALLSYS.EX_DECL_ALARM_LIST
(
  PRE_NO         VARCHAR2(16) not null,
  TURN_NO        VARCHAR2(16),
  BATCH_NO       VARCHAR2(16),
  RECORD_NUMBER  VARCHAR2(3) default 1 not null,
  G_NO           NUMBER(9) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  PACK_TYPE      VARCHAR2(1),
  GOODS_PIECE    NUMBER(9),
  GOODS_AMOUNT   NUMBER(19,4),
  GOODS_UNIT     VARCHAR2(3),
  GOODS_WEIGHT   NUMBER(19,4),
  GOODS_PRICE    NUMBER(19,4),
  GOODS_CURR     VARCHAR2(3),
  GOODS_CHK_MARK VARCHAR2(4)
)
;
alter table ALLSYS.EX_DECL_ALARM_LIST
  add constraint PK_EX_DECL_ALARM_LIST primary key (PRE_NO, RECORD_NUMBER, G_NO);
create index ALLSYS.IDX_EX_DECL_ALARM_LIST_TURN_NO on ALLSYS.EX_DECL_ALARM_LIST (TURN_NO);

prompt
prompt Creating table EX_DECL_CUR_HEAD
prompt ===============================
prompt
create table ALLSYS.EX_DECL_CUR_HEAD
(
  PRE_NO            VARCHAR2(16) not null,
  TURN_NO           VARCHAR2(16),
  BATCH_NO          VARCHAR2(16),
  ENTRY_NO          VARCHAR2(18),
  APPL_NAME         VARCHAR2(255),
  APPL_CODE         VARCHAR2(10),
  SEAL_NO_1         VARCHAR2(12),
  SEAL_NO_2         VARCHAR2(12),
  EXPORT_PLACE      VARCHAR2(4),
  DELIVER_CO        VARCHAR2(255),
  DELIVER_PLACE     VARCHAR2(5),
  CONTR_NO          VARCHAR2(40),
  LICENSE_NO        VARCHAR2(20),
  MANUAL_NO         VARCHAR2(12),
  RATION_CARD       VARCHAR2(12),
  CHK_PROOF_NO      VARCHAR2(20),
  TRADE_MODE        VARCHAR2(4),
  CONTRACTOR        VARCHAR2(255),
  CONTRACTOR_CODE   VARCHAR2(10),
  TRAF_WAY          VARCHAR2(1),
  CUSTOMS_NO        VARCHAR2(13),
  TRANS_NO          VARCHAR2(32),
  NATIVE_VOYAGE_NO  VARCHAR2(32),
  BILL_NO           VARCHAR2(32),
  BILL_COUNT        NUMBER(9) default 0,
  CONTA_NO          VARCHAR2(20),
  CONTA_TYPE        VARCHAR2(6),
  CONTA_AMOUNT      NUMBER(19,4) default 0,
  CONTA_INI_COUNT   NUMBER(19,4) default 0,
  CONTA_EMPTY_COUNT NUMBER(19,4) default 0,
  VALID_TIME        DATE,
  GOODS_NOTE        VARCHAR2(255),
  PRE_NAME          VARCHAR2(32),
  INPUT_OP_ID       VARCHAR2(8),
  INPUT_TIME        DATE,
  REC_MARK          VARCHAR2(1),
  EXAM_OP_ID        VARCHAR2(8),
  EXAM_TIME         DATE,
  CHECK_OP_ID       VARCHAR2(8),
  CHECK_TIME        DATE,
  CHECK_MARK        VARCHAR2(1),
  DEL_OP_ID         VARCHAR2(8),
  DEL_TIME          DATE,
  DEL_REASON        VARCHAR2(1),
  DELI_MARK         VARCHAR2(1),
  REL_OP_ID         VARCHAR2(8),
  REL_TIME          DATE,
  PRE_FIEL          VARCHAR2(32),
  MFT_VOYAGE_NO     VARCHAR2(32),
  MFT_TRAF_NAME     VARCHAR2(32),
  MFT_BILL_NO       VARCHAR2(32),
  MFT_TRAF_WAY      VARCHAR2(1),
  MFT_GOODS_PIECE   NUMBER(9) default 0,
  MFT_GROSS_WEIGHT  NUMBER(19,4) default 0,
  MFT_REC_MARK      VARCHAR2(1),
  SEND_PORT         VARCHAR2(4),
  RECV_PORT         VARCHAR2(4),
  GOODS_CHK_FLAG    VARCHAR2(1),
  OTHER_CHK_MARK    VARCHAR2(8),
  TRN_MODE          VARCHAR2(2),
  ADV_MARK          VARCHAR2(1),
  TRANS_PRE_NO      VARCHAR2(18),
  TRANS_PRE_MARK    VARCHAR2(1),
  STF_DATE          DATE,
  STF_NO            VARCHAR2(32),
  PRE_FIELD1        VARCHAR2(32),
  PRE_FIELD2        VARCHAR2(32),
  CA_KEY            VARCHAR2(380),
  HASH_SIGN         VARCHAR2(380),
  ESEAL_KEY         VARCHAR2(30),
  ESEAL_FLAG        VARCHAR2(1),
  DEL_REASON_DETAIL VARCHAR2(255)
)
;
alter table ALLSYS.EX_DECL_CUR_HEAD
  add constraint PK_EX_DECL_CUR_HEAD primary key (PRE_NO);
create index ALLSYS.IDX_EX_DECL_CUR_HEAD_BAT_NO on ALLSYS.EX_DECL_CUR_HEAD (BATCH_NO);
create index ALLSYS.IDX_EX_DECL_CUR_HEAD_RECV on ALLSYS.EX_DECL_CUR_HEAD (RECV_PORT, EXAM_TIME);
create index ALLSYS.IDX_EX_DECL_CUR_HEAD_SEND on ALLSYS.EX_DECL_CUR_HEAD (SEND_PORT, EXAM_TIME);
create index ALLSYS.IDX_EX_DECL_CUR_HEAD_TURN_NO on ALLSYS.EX_DECL_CUR_HEAD (TURN_NO);

prompt
prompt Creating table EX_DECL_CUR_LIST
prompt ===============================
prompt
create table ALLSYS.EX_DECL_CUR_LIST
(
  PRE_NO         VARCHAR2(16) not null,
  TURN_NO        VARCHAR2(16),
  BATCH_NO       VARCHAR2(16),
  RECORD_NUMBER  VARCHAR2(3) default 1 not null,
  G_NO           NUMBER(9) default 1 not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  PACK_TYPE      VARCHAR2(1),
  GOODS_PIECE    NUMBER(9) default 0,
  GOODS_AMOUNT   NUMBER(19,4) default 0,
  GOODS_UNIT     VARCHAR2(3),
  GOODS_WEIGHT   NUMBER(19,4) default 0,
  GOODS_PRICE    NUMBER(19,4) default 0,
  GOODS_CURR     VARCHAR2(3),
  GOODS_CHK_MARK VARCHAR2(4),
  SEND_PORT      VARCHAR2(4),
  RECV_PORT      VARCHAR2(4)
)
;
alter table ALLSYS.EX_DECL_CUR_LIST
  add constraint PK_EX_DECL_CUR_LIST primary key (PRE_NO, RECORD_NUMBER, G_NO);
create index ALLSYS.IDX_EX_DECL_CUR_LIST_TURN_NO on ALLSYS.EX_DECL_CUR_LIST (TURN_NO);

prompt
prompt Creating table EX_DECL_HIS_HEAD
prompt ===============================
prompt
create table ALLSYS.EX_DECL_HIS_HEAD
(
  PRE_NO            VARCHAR2(16) not null,
  TURN_NO           VARCHAR2(16),
  BATCH_NO          VARCHAR2(16),
  ENTRY_NO          VARCHAR2(18),
  APPL_NAME         VARCHAR2(255),
  APPL_CODE         VARCHAR2(10),
  SEAL_NO_1         VARCHAR2(12),
  SEAL_NO_2         VARCHAR2(12),
  EXPORT_PLACE      VARCHAR2(4),
  DELIVER_CO        VARCHAR2(255),
  DELIVER_PLACE     VARCHAR2(5),
  CONTR_NO          VARCHAR2(40),
  LICENSE_NO        VARCHAR2(20),
  MANUAL_NO         VARCHAR2(12),
  RATION_CARD       VARCHAR2(12),
  CHK_PROOF_NO      VARCHAR2(20),
  TRADE_MODE        VARCHAR2(4),
  CONTRACTOR        VARCHAR2(255),
  CONTRACTOR_CODE   VARCHAR2(10),
  TRAF_WAY          VARCHAR2(1),
  CUSTOMS_NO        VARCHAR2(13),
  TRANS_NO          VARCHAR2(32),
  NATIVE_VOYAGE_NO  VARCHAR2(32),
  BILL_NO           VARCHAR2(32),
  BILL_COUNT        NUMBER(9),
  CONTA_NO          VARCHAR2(20),
  CONTA_TYPE        VARCHAR2(6),
  CONTA_AMOUNT      NUMBER(19,4),
  CONTA_INI_COUNT   NUMBER(19,4),
  CONTA_EMPTY_COUNT NUMBER(19,4),
  VALID_TIME        DATE,
  GOODS_NOTE        VARCHAR2(255),
  PRE_NAME          VARCHAR2(32),
  INPUT_OP_ID       VARCHAR2(8),
  INPUT_TIME        DATE,
  REC_MARK          VARCHAR2(1),
  EXAM_OP_ID        VARCHAR2(8),
  EXAM_TIME         DATE,
  CHECK_OP_ID       VARCHAR2(8),
  CHECK_TIME        DATE,
  CHECK_MARK        VARCHAR2(1),
  DEL_OP_ID         VARCHAR2(8),
  DEL_TIME          DATE,
  DEL_REASON        VARCHAR2(1),
  DELI_MARK         VARCHAR2(1),
  REL_OP_ID         VARCHAR2(8),
  REL_TIME          DATE,
  PRE_FIEL          VARCHAR2(32),
  MFT_VOYAGE_NO     VARCHAR2(32),
  MFT_TRAF_NAME     VARCHAR2(32),
  MFT_BILL_NO       VARCHAR2(32),
  MFT_TRAF_WAY      VARCHAR2(1),
  MFT_GOODS_PIECE   NUMBER(9),
  MFT_GROSS_WEIGHT  NUMBER(19,4),
  MFT_REC_MARK      VARCHAR2(1),
  SEND_PORT         VARCHAR2(4),
  RECV_PORT         VARCHAR2(4),
  GOODS_CHK_FLAG    VARCHAR2(1),
  OTHER_CHK_MARK    VARCHAR2(8),
  TRN_MODE          VARCHAR2(2),
  ADV_MARK          VARCHAR2(1),
  TRANS_PRE_NO      VARCHAR2(18),
  TRANS_PRE_MARK    VARCHAR2(1),
  STF_DATE          DATE,
  STF_NO            VARCHAR2(32),
  PRE_FIELD1        VARCHAR2(32),
  PRE_FIELD2        VARCHAR2(32),
  CA_KEY            VARCHAR2(380),
  HASH_SIGN         VARCHAR2(380)
)
;
alter table ALLSYS.EX_DECL_HIS_HEAD
  add constraint PK_EX_DECL_HIS_HEAD primary key (PRE_NO);
create index ALLSYS.IDX_EX_DECL_HIS_HEAD_RECV on ALLSYS.EX_DECL_HIS_HEAD (RECV_PORT, EXAM_TIME);
create index ALLSYS.IDX_EX_DECL_HIS_HEAD_SEND on ALLSYS.EX_DECL_HIS_HEAD (SEND_PORT, EXAM_TIME);
create index ALLSYS.IDX_EX_DECL_HIS_HEAD_TURN_NO on ALLSYS.EX_DECL_HIS_HEAD (TURN_NO);

prompt
prompt Creating table EX_DECL_HIS_LIST
prompt ===============================
prompt
create table ALLSYS.EX_DECL_HIS_LIST
(
  PRE_NO         VARCHAR2(16) not null,
  TURN_NO        VARCHAR2(16),
  BATCH_NO       VARCHAR2(16),
  RECORD_NUMBER  VARCHAR2(3) default 1 not null,
  G_NO           NUMBER(9) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  PACK_TYPE      VARCHAR2(1),
  GOODS_PIECE    NUMBER(9),
  GOODS_AMOUNT   NUMBER(19,4),
  GOODS_UNIT     VARCHAR2(3),
  GOODS_WEIGHT   NUMBER(19,4),
  GOODS_PRICE    NUMBER(19,4),
  GOODS_CURR     VARCHAR2(3),
  GOODS_CHK_MARK VARCHAR2(4)
)
;
alter table ALLSYS.EX_DECL_HIS_LIST
  add constraint PK_EX_DECL_HIS_LIST primary key (PRE_NO, RECORD_NUMBER, G_NO);
create index ALLSYS.IDX_EX_DECL_HIS_LIST_TURN_NO on ALLSYS.EX_DECL_HIS_LIST (TURN_NO);

prompt
prompt Creating table EX_ELE_HEAD
prompt ==========================
prompt
create table ALLSYS.EX_ELE_HEAD
(
  LICENSE_NO          VARCHAR2(20) not null,
  TRADE_CODE          VARCHAR2(13),
  TRADE_NAME          VARCHAR2(255),
  OWNER_NAME          VARCHAR2(255),
  LIC_ALLOW_DATE      DATE,
  LIC_SIGN_DATE       DATE,
  TRADE_COUNTRY       VARCHAR2(3),
  ORIGIN_COUNTRY      VARCHAR2(3),
  CONTR_NO            VARCHAR2(20),
  IE_PORT1            VARCHAR2(4),
  IE_PORT2            VARCHAR2(4),
  IE_PORT3            VARCHAR2(4),
  TRADE_MODE          VARCHAR2(4),
  TRADE_MODE_NAME     VARCHAR2(32),
  CODE_T_S            VARCHAR2(11),
  G_NAME              VARCHAR2(255),
  UNIT_NAME           VARCHAR2(32),
  LIC_QTY_TOTAL       NUMBER(19,4),
  LIC_USD_PRICE_TOTAL NUMBER(19),
  LIC_MARK            VARCHAR2(1),
  SEND_DATE           DATE,
  RECEIVE_DATE        DATE,
  DELETE_DATE         DATE,
  LIC_ITEMS_NO        NUMBER(9),
  CHECK_MARK          VARCHAR2(1),
  SECURITY_ID         VARCHAR2(16),
  REUSE1              NUMBER(9),
  REUSE2              VARCHAR2(10),
  NOTE_S              VARCHAR2(255)
)
;
alter table ALLSYS.EX_ELE_HEAD
  add constraint PK_EX_ELE_HEAD primary key (LICENSE_NO);

prompt
prompt Creating table EX_ELE_LIST
prompt ==========================
prompt
create table ALLSYS.EX_ELE_LIST
(
  LICENSE_NO    VARCHAR2(20) not null,
  L_G_NO        NUMBER(9) not null,
  G_MODEL       VARCHAR2(255),
  LIC_QTY       NUMBER(19,4),
  LIC_USD_PRICE NUMBER(19)
)
;
alter table ALLSYS.EX_ELE_LIST
  add constraint PK_EX_ELE_LIST primary key (LICENSE_NO, L_G_NO);

prompt
prompt Creating table EX_EXAM_JOU
prompt ==========================
prompt
create table ALLSYS.EX_EXAM_JOU
(
  ENTRY_ID        VARCHAR2(18) not null,
  G_NO            NUMBER(9) not null,
  LICENSE_NO      VARCHAR2(20),
  L_G_NO          NUMBER(9),
  EXE_MARK        VARCHAR2(1),
  ENTRY_MARK      VARCHAR2(1),
  TRADE_CO        VARCHAR2(10),
  TRADE_NAME      VARCHAR2(255),
  OWNER_NAME      VARCHAR2(255),
  TRADE_COUNTRY   VARCHAR2(3),
  ORIGIN_COUNTRY  VARCHAR2(3),
  CONTR_NO        VARCHAR2(32),
  TRAF_NAME       VARCHAR2(32),
  TRADE_MODE      VARCHAR2(4),
  TRADE_MODE_NAME VARCHAR2(32),
  I_E_DATE        DATE,
  PRE_IMP_DATE    DATE,
  PRE_IMP_TIME    DATE,
  PRE_IMP_ER      VARCHAR2(8),
  MOD_DEL_DATE    DATE,
  MOD_DEL_TIME    DATE,
  MOD_DEL_ER      VARCHAR2(8),
  I_E_PORT        VARCHAR2(4),
  IMPLETE_DATE    DATE,
  IMPLETE_TIME    DATE,
  IMPLETE_ER      VARCHAR2(8),
  CODE_TS         VARCHAR2(16),
  G_NAME          VARCHAR2(255),
  G_MODEL         VARCHAR2(255),
  SUB_QTY_1       NUMBER(19,4),
  SUB_UNIT_NAME   VARCHAR2(32),
  SUB_USD_PRICE   NUMBER(19),
  QTY1            NUMBER(19,4),
  UNIT_NAME       VARCHAR2(32),
  FEED_DATE       DATE,
  FEED_MARK       VARCHAR2(1),
  M_D_MARK        VARCHAR2(1),
  M_COUNT         NUMBER(9),
  RTX_MARK        VARCHAR2(1),
  NOTE_S          VARCHAR2(255),
  SECURITY_ID     VARCHAR2(16),
  REUSE1          NUMBER(9),
  REUSE2          VARCHAR2(10)
)
;
alter table ALLSYS.EX_EXAM_JOU
  add constraint PK_EX_EXAM_JOU primary key (ENTRY_ID, G_NO);
create index ALLSYS.IDX_EX_EXAM_JOU_IMPLETE_DATE on ALLSYS.EX_EXAM_JOU (IMPLETE_DATE);
create index ALLSYS.IDX_EX_EXAM_JOU_MOD_DEL_DATE on ALLSYS.EX_EXAM_JOU (MOD_DEL_DATE);
create index ALLSYS.IX_EXEXAMJOU_LICENSENO on ALLSYS.EX_EXAM_JOU (LICENSE_NO);

prompt
prompt Creating table EX_EXAM_MANA_HEAD
prompt ================================
prompt
create table ALLSYS.EX_EXAM_MANA_HEAD
(
  LICENSE_NO    VARCHAR2(20) not null,
  FACT_AQTY     NUMBER(19,4),
  FACT_AUSED    NUMBER(19),
  FACT_MARK     VARCHAR2(1),
  EXE_MARK      VARCHAR2(1),
  DELAY_MARK    VARCHAR2(1),
  CLOSE_MARK    VARCHAR2(1),
  CLOSE_DATE    DATE,
  CLOSE_TIME    DATE,
  CLOSE_ER      VARCHAR2(8),
  EXE_PORT      VARCHAR2(4),
  TRAN_PORT     VARCHAR2(4),
  TRAN_DATE     DATE,
  TRAN_TIME     DATE,
  CHECK_MARK    VARCHAR2(1),
  CHECK_DATE    DATE,
  CHECK_TIME    DATE,
  CHECK_ER      VARCHAR2(8),
  SEND_GEN_DATE DATE,
  SEND_FOR_DATE DATE,
  SOURCE_PORT   VARCHAR2(4),
  NOTE_S        VARCHAR2(255),
  OVER_ALLOW    VARCHAR2(3),
  SECURITY_ID   VARCHAR2(16),
  REUSE1        NUMBER(9),
  REUSE2        VARCHAR2(10)
)
;
alter table ALLSYS.EX_EXAM_MANA_HEAD
  add constraint PK_EX_EXAM_MANA_HEAD primary key (LICENSE_NO);

prompt
prompt Creating table EX_EXAM_MANA_LIST
prompt ================================
prompt
create table ALLSYS.EX_EXAM_MANA_LIST
(
  LICENSE_NO   VARCHAR2(20) not null,
  L_G_NO       NUMBER(9) not null,
  L_FACT_AQTY  NUMBER(19,4),
  L_FACT_AUSED NUMBER(19),
  L_REUSE1     NUMBER(9),
  L_REUSE2     VARCHAR2(10)
)
;
alter table ALLSYS.EX_EXAM_MANA_LIST
  add constraint PK_EX_EXAM_MANA_LIST primary key (LICENSE_NO, L_G_NO);

prompt
prompt Creating table EX_FASCICLE_LIST
prompt ===============================
prompt
create table ALLSYS.EX_FASCICLE_LIST
(
  MANUAL_NO   VARCHAR2(12),
  FASCICLE_NO VARCHAR2(12) not null,
  CONTR_ITEM  NUMBER(19) not null,
  APPR_QTY    NUMBER(19,4),
  FACT_QTY    NUMBER(19,4)
)
;
alter table ALLSYS.EX_FASCICLE_LIST
  add constraint PK_EX_FASCICLE_LIST primary key (FASCICLE_NO, CONTR_ITEM);
create index ALLSYS.IX_EXFASCICLELIST_MANUALNO on ALLSYS.EX_FASCICLE_LIST (MANUAL_NO);

prompt
prompt Creating table EX_LIC_CODE_TS
prompt =============================
prompt
create table ALLSYS.EX_LIC_CODE_TS
(
  LICENSE_NO   VARCHAR2(20) not null,
  CODE_T_S     VARCHAR2(20),
  BAD_CODE_T_S VARCHAR2(20)
)
;
alter table ALLSYS.EX_LIC_CODE_TS
  add constraint PK_EX_LIC_CODE_TS primary key (LICENSE_NO);

prompt
prompt Creating table EX_TRANS_ALARM_CONTA_REL
prompt =======================================
prompt
create table ALLSYS.EX_TRANS_ALARM_CONTA_REL
(
  PRE_NO           VARCHAR2(16) not null,
  RECORD_NUMBER    VARCHAR2(3) default 1 not null,
  CONTA_NO         VARCHAR2(11) not null,
  TRANS_NAME       VARCHAR2(32),
  TRANS_WEIGHT     NUMBER(19,4),
  CONTA_MODEL      VARCHAR2(2),
  SEAL_NO          VARCHAR2(10),
  SEAL_NUM         NUMBER(9),
  CONTA_CHECK_MARK VARCHAR2(1),
  CONTA_CHK_ER     VARCHAR2(8),
  CONTA_CHK_TIME   DATE,
  EXAM_FLAG        VARCHAR2(6),
  CONTA1           VARCHAR2(32)
)
;
alter table ALLSYS.EX_TRANS_ALARM_CONTA_REL
  add constraint PK_EX_TRANS_ALARM_CONTA_REL primary key (PRE_NO, RECORD_NUMBER, CONTA_NO);
create index ALLSYS.IDX_EX_ALARM_CONTA_REL_CONTA_N on ALLSYS.EX_TRANS_ALARM_CONTA_REL (CONTA_NO);

prompt
prompt Creating table EX_TRANS_ALARM_GOODS_CONTA_REL
prompt =============================================
prompt
create table ALLSYS.EX_TRANS_ALARM_GOODS_CONTA_REL
(
  PRE_NO             VARCHAR2(16) not null,
  RECORD_NUMBER      VARCHAR2(3) default 1 not null,
  G_NO               NUMBER(9) not null,
  CONTA_NO           VARCHAR2(11) not null,
  CONTA_GOODS_COUNT  NUMBER(9),
  CONTA_GOODS_WEIGHT NUMBER(19,4)
)
;
alter table ALLSYS.EX_TRANS_ALARM_GOODS_CONTA_REL
  add constraint PK_EX_TRANS_ALARM_GOODS_CONTA_ primary key (PRE_NO, RECORD_NUMBER, G_NO, CONTA_NO);

prompt
prompt Creating table EX_TRANS_ALARM_LIST_REL
prompt ======================================
prompt
create table ALLSYS.EX_TRANS_ALARM_LIST_REL
(
  PRE_NO        VARCHAR2(16) not null,
  RECORD_NUMBER VARCHAR2(3) not null,
  TRAF_MODE     VARCHAR2(1),
  SHIP_ID       VARCHAR2(32),
  SHIP_NAME_EN  VARCHAR2(255),
  VOYAGE_NO     VARCHAR2(32),
  BILL_NO       VARCHAR2(32),
  I_E_DATE      DATE,
  ENTRY_NO      VARCHAR2(18),
  BIND_FLAG     VARCHAR2(1),
  REC_FLAG      VARCHAR2(1),
  PACK_NO       NUMBER(9),
  GROSS_WT      NUMBER(19,4),
  GOODS_COUNT   NUMBER(9),
  CONTA_C       NUMBER(9),
  OWNER_NAME    VARCHAR2(255),
  EX_CHECK_FLAG VARCHAR2(1),
  EX_CHECK_TIME DATE,
  REAL_PACK_NO  NUMBER(9),
  REAL_GROSS_WT NUMBER(19,4),
  NOTE          VARCHAR2(255)
)
;
alter table ALLSYS.EX_TRANS_ALARM_LIST_REL
  add constraint PK_EX_TRANS_ALARM_LIST_REL primary key (PRE_NO, RECORD_NUMBER);
create index ALLSYS.IDX_EX_ALARM_LIST_REL_ENTRY_NO on ALLSYS.EX_TRANS_ALARM_LIST_REL (ENTRY_NO);

prompt
prompt Creating table EX_TRANS_CONTA_REL
prompt =================================
prompt
create table ALLSYS.EX_TRANS_CONTA_REL
(
  PRE_NO           VARCHAR2(16) not null,
  RECORD_NUMBER    VARCHAR2(3) default 1 not null,
  CONTA_NO         VARCHAR2(11) not null,
  TRANS_NAME       VARCHAR2(32),
  TRANS_WEIGHT     NUMBER(19,4) default 0,
  CONTA_MODEL      VARCHAR2(2),
  SEAL_NO          VARCHAR2(10),
  SEAL_NUM         NUMBER(9) default 0,
  CONTA_CHECK_MARK VARCHAR2(1),
  CONTA_CHK_ER     VARCHAR2(8),
  CONTA_CHK_TIME   DATE,
  EXAM_FLAG        VARCHAR2(6),
  CONTA1           VARCHAR2(32),
  SEND_PORT        VARCHAR2(4),
  RECV_PORT        VARCHAR2(4),
  ESEAL_ID         VARCHAR2(128)
)
;
alter table ALLSYS.EX_TRANS_CONTA_REL
  add constraint PK_EX_TRANS_CONTA_REL primary key (PRE_NO, RECORD_NUMBER, CONTA_NO);
create index ALLSYS.IDX_EX_CONTA_REL_CONTA_NO on ALLSYS.EX_TRANS_CONTA_REL (CONTA_NO);
create index ALLSYS.IDX_EX_CONTA_REL_TRANS_NAME on ALLSYS.EX_TRANS_CONTA_REL (TRANS_NAME);

prompt
prompt Creating table EX_TRANS_GOODS_CONTA_REL
prompt =======================================
prompt
create table ALLSYS.EX_TRANS_GOODS_CONTA_REL
(
  PRE_NO             VARCHAR2(16) not null,
  RECORD_NUMBER      VARCHAR2(3) default 1 not null,
  G_NO               NUMBER(9) default 1 not null,
  CONTA_NO           VARCHAR2(11) not null,
  CONTA_GOODS_COUNT  NUMBER(9) default 0,
  CONTA_GOODS_WEIGHT NUMBER(19,4) default 0,
  SEND_PORT          VARCHAR2(4),
  RECV_PORT          VARCHAR2(4)
)
;
alter table ALLSYS.EX_TRANS_GOODS_CONTA_REL
  add constraint PK_EX_TRANS_GOODS_CONTA_REL primary key (PRE_NO, RECORD_NUMBER, G_NO, CONTA_NO);

prompt
prompt Creating table EX_TRANS_HIS_CONTA_REL
prompt =====================================
prompt
create table ALLSYS.EX_TRANS_HIS_CONTA_REL
(
  PRE_NO           VARCHAR2(16) not null,
  RECORD_NUMBER    VARCHAR2(3) default 1 not null,
  CONTA_NO         VARCHAR2(11) not null,
  TRANS_NAME       VARCHAR2(32),
  TRANS_WEIGHT     NUMBER(19,4),
  CONTA_MODEL      VARCHAR2(2),
  SEAL_NO          VARCHAR2(10),
  SEAL_NUM         NUMBER(9),
  CONTA_CHECK_MARK VARCHAR2(1),
  CONTA_CHK_ER     VARCHAR2(8),
  CONTA_CHK_TIME   DATE,
  EXAM_FLAG        VARCHAR2(6),
  CONTA1           VARCHAR2(32)
)
;
alter table ALLSYS.EX_TRANS_HIS_CONTA_REL
  add constraint PK_EX_TRANS_HIS_CONTA_REL primary key (PRE_NO, RECORD_NUMBER, CONTA_NO);
create index ALLSYS.IDX_EX_HIS_CONTA_REL_CONTA_NO on ALLSYS.EX_TRANS_HIS_CONTA_REL (CONTA_NO);

prompt
prompt Creating table EX_TRANS_HIS_GOODS_CONTA_REL
prompt ===========================================
prompt
create table ALLSYS.EX_TRANS_HIS_GOODS_CONTA_REL
(
  PRE_NO             VARCHAR2(16) not null,
  RECORD_NUMBER      VARCHAR2(3) default 1 not null,
  G_NO               NUMBER(9) not null,
  CONTA_NO           VARCHAR2(11) not null,
  CONTA_GOODS_COUNT  NUMBER(9),
  CONTA_GOODS_WEIGHT NUMBER(19,4)
)
;
alter table ALLSYS.EX_TRANS_HIS_GOODS_CONTA_REL
  add constraint PK_EX_TRANS_HIS_GOODS_CONTA_RE primary key (PRE_NO, RECORD_NUMBER, G_NO, CONTA_NO);

prompt
prompt Creating table EX_TRANS_HIS_LIST_REL
prompt ====================================
prompt
create table ALLSYS.EX_TRANS_HIS_LIST_REL
(
  PRE_NO        VARCHAR2(16) not null,
  RECORD_NUMBER VARCHAR2(3) not null,
  TRAF_MODE     VARCHAR2(1),
  SHIP_ID       VARCHAR2(32),
  SHIP_NAME_EN  VARCHAR2(255),
  VOYAGE_NO     VARCHAR2(32),
  BILL_NO       VARCHAR2(32),
  I_E_DATE      DATE,
  ENTRY_NO      VARCHAR2(18),
  BIND_FLAG     VARCHAR2(1),
  REC_FLAG      VARCHAR2(1),
  PACK_NO       NUMBER(9),
  GROSS_WT      NUMBER(19,4),
  GOODS_COUNT   NUMBER(9),
  CONTA_C       NUMBER(9),
  OWNER_NAME    VARCHAR2(255),
  EX_CHECK_FLAG VARCHAR2(1),
  EX_CHECK_TIME DATE,
  REAL_PACK_NO  NUMBER(9),
  REAL_GROSS_WT NUMBER(19,4),
  NOTE          VARCHAR2(255)
)
;
alter table ALLSYS.EX_TRANS_HIS_LIST_REL
  add constraint PK_EX_TRANS_HIS_LIST_REL primary key (PRE_NO, RECORD_NUMBER);
create index ALLSYS.IDX_EX_HIS_LIST_REL_ENTRY_NO on ALLSYS.EX_TRANS_HIS_LIST_REL (ENTRY_NO);

prompt
prompt Creating table EX_TRANS_LIST_REL
prompt ================================
prompt
create table ALLSYS.EX_TRANS_LIST_REL
(
  PRE_NO        VARCHAR2(16) not null,
  RECORD_NUMBER VARCHAR2(3) not null,
  TRAF_MODE     VARCHAR2(1),
  SHIP_ID       VARCHAR2(32),
  SHIP_NAME_EN  VARCHAR2(255),
  VOYAGE_NO     VARCHAR2(32),
  BILL_NO       VARCHAR2(32),
  I_E_DATE      DATE,
  ENTRY_NO      VARCHAR2(18),
  BIND_FLAG     VARCHAR2(1),
  REC_FLAG      VARCHAR2(1),
  PACK_NO       NUMBER(9) default 0,
  GROSS_WT      NUMBER(19,4) default 0,
  GOODS_COUNT   NUMBER(9) default 0,
  CONTA_C       NUMBER(9) default 0,
  OWNER_NAME    VARCHAR2(255),
  EX_CHECK_FLAG VARCHAR2(1),
  EX_CHECK_TIME DATE,
  REAL_PACK_NO  NUMBER(9) default 0,
  REAL_GROSS_WT NUMBER(19,4) default 0,
  NOTE          VARCHAR2(255),
  SEND_PORT     VARCHAR2(4),
  RECV_PORT     VARCHAR2(4)
)
;
alter table ALLSYS.EX_TRANS_LIST_REL
  add constraint PK_EX_TRANS_LIST_REL primary key (PRE_NO, RECORD_NUMBER);
create index ALLSYS.IDX_EX_LIST_REL_ENTRY_NO on ALLSYS.EX_TRANS_LIST_REL (ENTRY_NO);

prompt
prompt Creating table EX_TRAN_JOU
prompt ==========================
prompt
create table ALLSYS.EX_TRAN_JOU
(
  I_E_PORT      VARCHAR2(4),
  ENTRY_ID      VARCHAR2(18) not null,
  G_NO          NUMBER(9) not null,
  ENTRY_LIC_NO  VARCHAR2(20),
  CODE_TS       VARCHAR2(16),
  G_NAME        VARCHAR2(255),
  G_MODEL       VARCHAR2(255),
  QTY_1         NUMBER(19,4),
  UNIT_NAME     VARCHAR2(32),
  USD_PRICE     NUMBER(19),
  REL_DATE      DATE,
  REL_TIME      DATE,
  REL_ER        VARCHAR2(8),
  AFTER_MARK    VARCHAR2(1),
  SEND_GEN_DATE DATE,
  NOTE_S        VARCHAR2(255),
  SECURITY_ID   VARCHAR2(16)
)
;
alter table ALLSYS.EX_TRAN_JOU
  add constraint PK_EX_TRAN_JOU primary key (ENTRY_ID, G_NO);

prompt
prompt Creating table EX_TRN_ARRIVAL_CONTA
prompt ===================================
prompt
create table ALLSYS.EX_TRN_ARRIVAL_CONTA
(
  ARRIVE_NO    VARCHAR2(18) not null,
  CONTA_ID     VARCHAR2(64) not null,
  BILL_NO      VARCHAR2(32),
  CUSTOMS_CODE VARCHAR2(4),
  TRAF_MODE    VARCHAR2(1),
  TRAF_NAME    VARCHAR2(255),
  VOYAGE_NO    VARCHAR2(32),
  TRAF_WAY     VARCHAR2(1),
  PACK_NO      NUMBER(19),
  GROSS_WT     NUMBER(19,4),
  UNLOAD_CODE  VARCHAR2(32),
  ARRIVE_TIME  DATE,
  CONTA_TYPE   VARCHAR2(4),
  TRN_MODE     VARCHAR2(1),
  NOTES        VARCHAR2(255),
  CREATE_DATE  DATE,
  ENTRY_ID     VARCHAR2(18),
  CHK_ER       VARCHAR2(8),
  CHK_DATE     DATE
)
;
alter table ALLSYS.EX_TRN_ARRIVAL_CONTA
  add constraint PK_EX_TRN_ARRIVAL_CONTA primary key (ARRIVE_NO, CONTA_ID);
create index ALLSYS.IX_EX_TRN_ARV_CONTA_CREATE_DAT on ALLSYS.EX_TRN_ARRIVAL_CONTA (CREATE_DATE);
create index ALLSYS.IX_EX_TRN_ARV_CONTA_ENTRY_ID on ALLSYS.EX_TRN_ARRIVAL_CONTA (ENTRY_ID);

prompt
prompt Creating table EX_TRN_CONTA_ENTRY_ARV
prompt =====================================
prompt
create table ALLSYS.EX_TRN_CONTA_ENTRY_ARV
(
  ENTRY_ID     VARCHAR2(18) not null,
  CONTA_ID     VARCHAR2(64) not null,
  CUSTOMS_CODE VARCHAR2(4),
  TRAF_MODE    VARCHAR2(1),
  TRAF_NAME    VARCHAR2(255),
  VOYAGE_NO    VARCHAR2(32),
  BILL_NO      VARCHAR2(32),
  PACK_NO      NUMBER(19),
  GROSS_WT     NUMBER(19,4),
  ARV_FLAG     VARCHAR2(1),
  TRN_MODE     VARCHAR2(1)
)
;
alter table ALLSYS.EX_TRN_CONTA_ENTRY_ARV
  add constraint PK_EX_TRN_CONTA_ENTRY_ARV primary key (ENTRY_ID, CONTA_ID);
create index ALLSYS.IX_EX_TRN_CONTA_ENTRY_ARV_M on ALLSYS.EX_TRN_CONTA_ENTRY_ARV (TRAF_NAME, VOYAGE_NO, BILL_NO, TRAF_MODE, CUSTOMS_CODE, CONTA_ID);
create index ALLSYS.IX_EX_TRN_CONTA_ENTRY_ARV_N on ALLSYS.EX_TRN_CONTA_ENTRY_ARV (BILL_NO, TRAF_MODE, CUSTOMS_CODE, CONTA_ID);
create index ALLSYS.IX_EX_TRN_CONTA_ENTRY_ARV_S on ALLSYS.EX_TRN_CONTA_ENTRY_ARV (TRAF_NAME, TRAF_MODE, CUSTOMS_CODE, CONTA_ID);

prompt
prompt Creating table EX_TRN_CONTA_ENTRY_CHK
prompt =====================================
prompt
create table ALLSYS.EX_TRN_CONTA_ENTRY_CHK
(
  ENTRY_ID  VARCHAR2(18) not null,
  ARRIVE_NO VARCHAR2(18) not null,
  CONTA_ID  VARCHAR2(64) not null,
  CHK_ER    VARCHAR2(8),
  CHK_DATE  DATE
)
;
alter table ALLSYS.EX_TRN_CONTA_ENTRY_CHK
  add constraint PK_EX_TRN_CONTA_ENTRY_CHK primary key (ENTRY_ID, ARRIVE_NO, CONTA_ID);

prompt
prompt Creating table FASCICLE_HEAD
prompt ============================
prompt
create table ALLSYS.FASCICLE_HEAD
(
  MANUAL_NO       VARCHAR2(12),
  FASCICLE_NO     VARCHAR2(12) not null,
  PRE_FASCICLE_NO VARCHAR2(12),
  I_E_PORT        VARCHAR2(4),
  TYPE_ER         VARCHAR2(8),
  TYPE_DATE       DATE,
  LIMIT_DATE      DATE,
  TRADE_CO        VARCHAR2(10),
  CHK_ER          VARCHAR2(8),
  RECHK_ER        VARCHAR2(8),
  PR_DATE         DATE,
  FASCICLE_TYPE   VARCHAR2(1),
  EXE_MARK        VARCHAR2(1),
  CONTR_IN        VARCHAR2(32),
  CONTR_OUT       VARCHAR2(32),
  IN_PNT          NUMBER(19),
  EX_PNT          NUMBER(19),
  SUPV_MARK       VARCHAR2(1),
  NOTE_S          VARCHAR2(255)
)
;
alter table ALLSYS.FASCICLE_HEAD
  add constraint PK_FASCICLE_HEAD primary key (FASCICLE_NO);
create index ALLSYS.IX_FASCICLEHEAD_MANUALNO on ALLSYS.FASCICLE_HEAD (MANUAL_NO);

prompt
prompt Creating table FCB_CHK
prompt ======================
prompt
create table ALLSYS.FCB_CHK
(
  FCB_ID       VARCHAR2(18) not null,
  FORM_FLAG    VARCHAR2(1) not null,
  ENTRY_ID     VARCHAR2(18) not null,
  CUSTOMS_CODE VARCHAR2(4),
  PACK_NO      NUMBER(19),
  GROSS_WT     NUMBER(19,5),
  CHK_ER       VARCHAR2(8),
  CHK_DATE     DATE,
  REL_ER       VARCHAR2(8),
  REL_DATE     DATE,
  RTX_ER       VARCHAR2(8),
  RTX_DATE     DATE,
  NOTE         VARCHAR2(255)
)
;
alter table ALLSYS.FCB_CHK
  add constraint PK_FCB_CHK primary key (FCB_ID, FORM_FLAG, ENTRY_ID);
create index ALLSYS.IX_FCB_CHK_FORM_ID on ALLSYS.FCB_CHK (ENTRY_ID);

prompt
prompt Creating table FCB_CONTA
prompt ========================
prompt
create table ALLSYS.FCB_CONTA
(
  FCB_ID          VARCHAR2(18) not null,
  CONTA_ID        VARCHAR2(32) not null,
  ESEAL_ID        VARCHAR2(128),
  CONTA_MODEL     VARCHAR2(4),
  CONTA_TYPE      VARCHAR2(1),
  PORT_CUS        VARCHAR2(4),
  MAIN_CUS        VARCHAR2(4),
  DE_CONSOLIDATOR VARCHAR2(255),
  CONTA_WT        NUMBER(19,5),
  NOTE            VARCHAR2(255)
)
;
alter table ALLSYS.FCB_CONTA
  add constraint PK_FCB_CONTA primary key (FCB_ID, CONTA_ID);

prompt
prompt Creating table FCB_CONTA_MODI
prompt =============================
prompt
create table ALLSYS.FCB_CONTA_MODI
(
  FCB_ID          VARCHAR2(18) not null,
  CONTA_ID        VARCHAR2(32) not null,
  ESEAL_ID        VARCHAR2(128),
  CONTA_MODEL     VARCHAR2(4),
  CONTA_TYPE      VARCHAR2(1),
  DE_CONSOLIDATOR VARCHAR2(255),
  CONTA_WT        NUMBER(19,5),
  NOTE            VARCHAR2(255)
)
;
alter table ALLSYS.FCB_CONTA_MODI
  add constraint PK_FCB_CONTA_MODI primary key (FCB_ID, CONTA_ID);

prompt
prompt Creating table FCB_HEAD
prompt =======================
prompt
create table ALLSYS.FCB_HEAD
(
  FCB_ID             VARCHAR2(18) not null,
  I_E_FLAG           VARCHAR2(1),
  I_E_DATE           DATE,
  FCB_MODE           VARCHAR2(1),
  GOODS_CHK_FLAG     VARCHAR2(8),
  PORT_CUS           VARCHAR2(4),
  MAIN_CUS           VARCHAR2(4),
  APPL_CODE          VARCHAR2(10),
  APPL_NAME          VARCHAR2(255),
  VE_CUSTOMS_NO      VARCHAR2(10),
  VE_NAME            VARCHAR2(32),
  VE_NO1             VARCHAR2(32),
  VE_WT              NUMBER(19,5),
  VE_TYPE            VARCHAR2(1),
  CONSIGNER          VARCHAR2(255),
  CO_REG_NO          VARCHAR2(10),
  CONTRACTOR         VARCHAR2(255),
  CONTRACTOR_OUTER   VARCHAR2(255),
  CONTRACTOR_ADD     VARCHAR2(255),
  DR_CUSTOMS_NO      VARCHAR2(10),
  DR_NAME            VARCHAR2(32),
  PHONE_NO           VARCHAR2(32),
  TRADE_MODE         VARCHAR2(4),
  VE_FRAME_NO        VARCHAR2(32),
  PACK_NO            NUMBER(19),
  GROSS_WT           NUMBER(19,5),
  LOAD_PLACE         VARCHAR2(255),
  DISCHARGE_PLACE    VARCHAR2(255),
  ORIGIN_COUNTRY     VARCHAR2(3),
  DESTINATION        VARCHAR2(3),
  CONTR_NO           VARCHAR2(32),
  TRANSSHIPMENT_MARK VARCHAR2(1),
  LICENSE_NO         VARCHAR2(32),
  BILL_NO            VARCHAR2(32),
  PERMISSIVE_TIME    DATE,
  INPUT_TIME         DATE,
  SUR_TIME           DATE,
  REAL_I_E_TIME      DATE,
  REL_TIME           DATE,
  ARRIVE_TIME        DATE,
  LEAVE_TIME         DATE,
  CANCEL_TIME        DATE,
  MODIFY_APPLY_MARK  VARCHAR2(1),
  TIME_STAMP         DATE,
  RISK_INFO          VARCHAR2(255),
  SYS_INFO           VARCHAR2(255),
  PORT_WT            NUMBER(19,5),
  MAIN_WT            NUMBER(19,5),
  EX_TRAF_MODE       VARCHAR2(1),
  CONTA_COUNT        NUMBER(19),
  CONTA_STD_COUNT    NUMBER(19),
  CONTA_EMPTY_COUNT  NUMBER(19),
  PRE_MARK           VARCHAR2(8),
  PRE_ID             VARCHAR2(32),
  ESEAL_KEY          VARCHAR2(32),
  HASH_SIGN          VARCHAR2(380),
  PRE_NO             VARCHAR2(13),
  VE_FRAME_WT        NUMBER(19,5),
  NOTE               VARCHAR2(255)
)
;
alter table ALLSYS.FCB_HEAD
  add constraint PK_FCB_HEAD primary key (FCB_ID);
create index ALLSYS.IX_FCB_ARRIVE on ALLSYS.FCB_HEAD (ARRIVE_TIME);
create index ALLSYS.IX_FCB_FCBREAL_I_E on ALLSYS.FCB_HEAD (REAL_I_E_TIME);
create index ALLSYS.IX_FCB_INPUT on ALLSYS.FCB_HEAD (INPUT_TIME);
create index ALLSYS.IX_FCB_LEAVE on ALLSYS.FCB_HEAD (LEAVE_TIME);
create index ALLSYS.IX_FCB_MAIN_CUS on ALLSYS.FCB_HEAD (MAIN_CUS);
create index ALLSYS.IX_FCB_PORT_CUS on ALLSYS.FCB_HEAD (PORT_CUS);
create index ALLSYS.IX_FCB_PRE_NO on ALLSYS.FCB_HEAD (PRE_NO);
create index ALLSYS.IX_FCB_REL on ALLSYS.FCB_HEAD (REL_TIME);
create index ALLSYS.IX_FCB_SUR on ALLSYS.FCB_HEAD (SUR_TIME);

prompt
prompt Creating table FCB_HEAD_MODI
prompt ============================
prompt
create table ALLSYS.FCB_HEAD_MODI
(
  FCB_ID             VARCHAR2(18) not null,
  PROCESS_STATUS     VARCHAR2(1),
  I_E_FLAG           VARCHAR2(1),
  I_E_DATE           DATE,
  FCB_MODE           VARCHAR2(1),
  GOODS_CHK_FLAG     VARCHAR2(8),
  PORT_CUS           VARCHAR2(4),
  MAIN_CUS           VARCHAR2(4),
  APPL_CODE          VARCHAR2(10),
  APPL_NAME          VARCHAR2(255),
  VE_CUSTOMS_NO      VARCHAR2(10),
  VE_NAME            VARCHAR2(32),
  VE_NO1             VARCHAR2(32),
  VE_WT              NUMBER(19,5),
  VE_TYPE            VARCHAR2(1),
  CONSIGNER          VARCHAR2(255),
  CO_REG_NO          VARCHAR2(10),
  CONTRACTOR         VARCHAR2(255),
  CONTRACTOR_OUTER   VARCHAR2(255),
  CONTRACTOR_ADD     VARCHAR2(255),
  DR_CUSTOMS_NO      VARCHAR2(10),
  DR_NAME            VARCHAR2(32),
  PHONE_NO           VARCHAR2(32),
  TRADE_MODE         VARCHAR2(4),
  VE_FRAME_NO        VARCHAR2(32),
  PACK_NO            NUMBER(19),
  GROSS_WT           NUMBER(19,5),
  LOAD_PLACE         VARCHAR2(255),
  DISCHARGE_PLACE    VARCHAR2(255),
  ORIGIN_COUNTRY     VARCHAR2(3),
  DESTINATION        VARCHAR2(3),
  CONTR_NO           VARCHAR2(32),
  TRANSSHIPMENT_MARK VARCHAR2(1),
  LICENSE_NO         VARCHAR2(32),
  BILL_NO            VARCHAR2(32),
  INPUT_TIME         DATE,
  EX_TRAF_MODE       VARCHAR2(1),
  CONTA_COUNT        NUMBER(19),
  CONTA_STD_COUNT    NUMBER(19),
  CONTA_EMPTY_COUNT  NUMBER(19),
  PRE_MARK           VARCHAR2(8),
  PRE_ID             VARCHAR2(18),
  PRE_NO             VARCHAR2(13),
  VE_FRAME_WT        NUMBER(19,5),
  NOTE               VARCHAR2(255)
)
;
alter table ALLSYS.FCB_HEAD_MODI
  add constraint PK_FCB_HEAD_MODI primary key (FCB_ID);

prompt
prompt Creating table FCB_LIST
prompt =======================
prompt
create table ALLSYS.FCB_LIST
(
  FCB_ID    VARCHAR2(18) not null,
  G_NO      NUMBER(19) not null,
  CODE_TS   VARCHAR2(16),
  G_NAME    VARCHAR2(255),
  WRAP_TYPE VARCHAR2(1),
  PACK_NO   NUMBER(19),
  GROSS_WT  NUMBER(19,5),
  PRICE     NUMBER(19,4),
  CURR      VARCHAR2(3),
  MARK      VARCHAR2(512),
  CONSIGNOR VARCHAR2(255),
  CONSIGNEE VARCHAR2(255),
  UCR       VARCHAR2(64),
  UNDG      VARCHAR2(4),
  FREE_TEXT VARCHAR2(512),
  PORT_CUS  VARCHAR2(4),
  MAIN_CUS  VARCHAR2(4),
  BILL_NO   VARCHAR2(32)
)
;
alter table ALLSYS.FCB_LIST
  add constraint PK_FCB_LIST primary key (FCB_ID, G_NO);

prompt
prompt Creating table FCB_LIST_MODI
prompt ============================
prompt
create table ALLSYS.FCB_LIST_MODI
(
  FCB_ID    VARCHAR2(18) not null,
  G_NO      NUMBER(19) not null,
  CODE_TS   VARCHAR2(16),
  G_NAME    VARCHAR2(255),
  WRAP_TYPE VARCHAR2(1),
  PACK_NO   NUMBER(19),
  GROSS_WT  NUMBER(19,5),
  PRICE     NUMBER(19,4),
  CURR      VARCHAR2(3),
  MARK      VARCHAR2(512),
  CONSIGNOR VARCHAR2(255),
  CONSIGNEE VARCHAR2(255),
  UCR       VARCHAR2(64),
  UNDG      VARCHAR2(4),
  FREE_TEXT VARCHAR2(512),
  BILL_NO   VARCHAR2(32)
)
;
alter table ALLSYS.FCB_LIST_MODI
  add constraint PK_FCB_LIST_MODI primary key (FCB_ID, G_NO);

prompt
prompt Creating table FCB_RSK
prompt ======================
prompt
create table ALLSYS.FCB_RSK
(
  FCB_ID       VARCHAR2(18) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  INPUT_ER     VARCHAR2(8),
  INPUT_TIME   DATE,
  REQUIRE      VARCHAR2(255),
  RELEASE_ER   VARCHAR2(8),
  RELEASE_TIME DATE,
  RESULT       VARCHAR2(255)
)
;
alter table ALLSYS.FCB_RSK
  add constraint PK_FCB_RSK primary key (FCB_ID, CUSTOMS_CODE);

prompt
prompt Creating table FCB_WORKFLOW
prompt ===========================
prompt
create table ALLSYS.FCB_WORKFLOW
(
  FCB_ID      VARCHAR2(18) not null,
  STEP_ID     VARCHAR2(8) not null,
  CREATE_DATE DATE not null,
  PROC_ER     VARCHAR2(13),
  PROC_RESULT VARCHAR2(8),
  RECHK_COMM  VARCHAR2(512),
  PORT_CUS    VARCHAR2(4),
  MAIN_CUS    VARCHAR2(4)
)
;
alter table ALLSYS.FCB_WORKFLOW
  add constraint PK_FCB_WORKFLOW primary key (FCB_ID, STEP_ID, CREATE_DATE);
create index ALLSYS.IX_FCBWORKFLOW_CREATEDATE on ALLSYS.FCB_WORKFLOW (CREATE_DATE, STEP_ID);

prompt
prompt Creating table FEE_INVOICE
prompt ==========================
prompt
create table ALLSYS.FEE_INVOICE
(
  MANUAL_NO      VARCHAR2(12) not null,
  F_NO           NUMBER(19) not null,
  FEE_ID         NUMBER(19) not null,
  CREATE_DATE    DATE,
  CHK_ER         VARCHAR2(8),
  TYPE_ER        VARCHAR2(8),
  TYPE_DATE      DATE,
  FINANCIAL_FLAG VARCHAR2(1),
  FINANCIAL_DATE DATE,
  BOOK_NO        NUMBER(19),
  FEE_AMT        NUMBER(19,5),
  NOTE_S         VARCHAR2(255)
)
;
alter table ALLSYS.FEE_INVOICE
  add constraint PK_FEE_INVOICE primary key (MANUAL_NO, F_NO);

prompt
prompt Creating table FORFEIT_FORM
prompt ===========================
prompt
create table ALLSYS.FORFEIT_FORM
(
  FMS_ID          VARCHAR2(18) not null,
  DEPARTMENT      VARCHAR2(2),
  DEPARTMENT_NOTE VARCHAR2(255),
  DISTRICT_CODE   VARCHAR2(5),
  PAYER_NAME      VARCHAR2(255),
  FMS_CLASS       VARCHAR2(3),
  FMS_AMOUNT      NUMBER(19,4),
  OPER_CODE       VARCHAR2(32),
  LAW_ID          VARCHAR2(255),
  TAX_FLAG        VARCHAR2(32),
  LIMIT_DAY       NUMBER(19),
  FMS_MODE        VARCHAR2(1),
  CREATE_DATE     DATE,
  CUSTOMS_CODE    VARCHAR2(32),
  SECTION_ID      VARCHAR2(32),
  GROUP_ID        VARCHAR2(32)
)
;
alter table ALLSYS.FORFEIT_FORM
  add constraint PK_FORFEIT_FORM primary key (FMS_ID);

prompt
prompt Creating table FORM_CHK
prompt =======================
prompt
create table ALLSYS.FORM_CHK
(
  FORM_ID      VARCHAR2(18) not null,
  FORM_FLAG    VARCHAR2(1),
  TRANS_NO     VARCHAR2(32),
  SHIP_ID      VARCHAR2(32),
  VOYAGE_NO    VARCHAR2(32),
  BILL_NO      VARCHAR2(32),
  BILL_NO_ORI  VARCHAR2(32),
  TRAF_MODE    VARCHAR2(32),
  I_E_FLAG     VARCHAR2(32),
  DECL_PORT    VARCHAR2(4),
  I_E_PORT     VARCHAR2(4),
  I_E_DATE     DATE,
  D_DATE       DATE,
  TRADE_NAME   VARCHAR2(255),
  AGENT_NAME   VARCHAR2(255),
  OWNER_NAME   VARCHAR2(255),
  CONTR_NO     VARCHAR2(32),
  LICENSE_NO   VARCHAR2(20),
  APPR_NO      VARCHAR2(20),
  MANUAL_NO    VARCHAR2(12),
  PACK_NO      NUMBER(19,5),
  GROSS_WT     NUMBER(19,4),
  GEN_DATE     DATE,
  GEN_ER       VARCHAR2(8),
  CHK_MARK     VARCHAR2(1),
  CHK_DATE     DATE,
  CHK_ER       VARCHAR2(8),
  COUNTRY_CODE VARCHAR2(3),
  NOTE_S       VARCHAR2(255),
  CHK_ER_TRN   VARCHAR2(8),
  CHK_MARK_TRN VARCHAR2(1),
  PACK_NO_TRN  NUMBER(19,5),
  GROSS_WT_TRN NUMBER(19,4),
  CHK_DATE_TRN DATE,
  NOTE_S_RTX   VARCHAR2(255),
  CHK_MARK_TMP VARCHAR2(1),
  MFT_TYPE     VARCHAR2(1),
  NOTE_S_MFT   VARCHAR2(255)
)
;
alter table ALLSYS.FORM_CHK
  add constraint PK_FORM_CHK primary key (FORM_ID);
create index ALLSYS.IX_FORM_CHK_BILLNO on ALLSYS.FORM_CHK (BILL_NO);
create index ALLSYS.IX_FORM_CHK_GEN_DATE on ALLSYS.FORM_CHK (GEN_DATE, I_E_FLAG, I_E_PORT);
create index ALLSYS.IX_FORM_CHK_SHIPID on ALLSYS.FORM_CHK (SHIP_ID, VOYAGE_NO);
create index ALLSYS.IX_FORM_CHK_TRANSNO on ALLSYS.FORM_CHK (TRANS_NO);

prompt
prompt Creating table GUARANTEE_DEL_LOG
prompt ================================
prompt
create table ALLSYS.GUARANTEE_DEL_LOG
(
  GUA_ID             VARCHAR2(18) not null,
  ENTRY_ID           VARCHAR2(18),
  DECL_PORT          VARCHAR2(4),
  APP_REASON         VARCHAR2(1),
  GUAR_ER            VARCHAR2(255),
  REPRE_ER           VARCHAR2(32),
  ADDRESS            VARCHAR2(255),
  TELEPHONE          VARCHAR2(32),
  APPR_ER            VARCHAR2(32),
  D_DATE             DATE,
  I_E_FLAG           VARCHAR2(1),
  TRADE_CO           VARCHAR2(10),
  TRADE_NAME         VARCHAR2(255),
  CODE_TS            VARCHAR2(16),
  G_NAME             VARCHAR2(255),
  DUTY_VALUE         NUMBER(19,4),
  CUT_MODE           VARCHAR2(3),
  DUTY_MODE          VARCHAR2(1),
  GUAR_CURR          VARCHAR2(3),
  RE_ACCOUNT         NUMBER(19,4),
  PAYER_NAME         VARCHAR2(255),
  REGR_DATE          DATE,
  REGR_ER            VARCHAR2(8),
  LOG_DATE           DATE,
  ENTER_ER           VARCHAR2(8),
  PERIOD             DATE,
  DELAY_MARK         NUMBER(19),
  DELAY_DATE         DATE,
  DELAY_ER           VARCHAR2(8),
  DELAY_REASON       VARCHAR2(255),
  C_DATE             DATE,
  CANCEL_ER          VARCHAR2(8),
  PROC_MARK          VARCHAR2(1),
  C_REASON           VARCHAR2(255),
  UR_COUNT           NUMBER(19),
  UR_DATE            DATE,
  UR_ER              VARCHAR2(8),
  REMARK             VARCHAR2(255),
  PRINT_DATE         DATE,
  PRINT_ER           VARCHAR2(8),
  REGISTER_MODE      VARCHAR2(1),
  OP_ID              VARCHAR2(8),
  DEL_DATETIME       DATE not null,
  DEL_REASON         VARCHAR2(255),
  PAY_MODE           VARCHAR2(1),
  EPORT_ID           VARCHAR2(32),
  PAY_DATE           DATE,
  EXQ_DATE           DATE,
  BANK_NAME          VARCHAR2(255),
  BANK_ACCOUNT       VARCHAR2(32),
  GEN_DATE           DATE,
  BANK_CODE          VARCHAR2(20),
  BANK_ACCOUNT_NAME  VARCHAR2(128),
  PAYER_ACCOUNT_NO   VARCHAR2(32),
  PAYER_ACCOUNT_NAME VARCHAR2(255),
  PAYER_BANK_NAME    VARCHAR2(255),
  PAYER_BANK_CODE    VARCHAR2(20)
)
;
alter table ALLSYS.GUARANTEE_DEL_LOG
  add constraint PK_GUARANTEE_DEL_LOG primary key (GUA_ID, DEL_DATETIME);

prompt
prompt Creating table GUARANTEE_LIST
prompt =============================
prompt
create table ALLSYS.GUARANTEE_LIST
(
  ENTRY_ID        VARCHAR2(18) not null,
  G_NO            NUMBER(19) not null,
  CODE_TS         VARCHAR2(16),
  GRT_ACCOUNT     NUMBER(19,4),
  GRT_RATE        NUMBER(19,5),
  APP_REASON      VARCHAR2(1),
  TAX_TYPE        VARCHAR2(1) not null,
  ACTION_NO       VARCHAR2(255),
  COMPANY_NAME_CN VARCHAR2(255),
  COMPANY_NAME_EN VARCHAR2(255)
)
;
alter table ALLSYS.GUARANTEE_LIST
  add constraint PK_GUARANTEE_LIST primary key (ENTRY_ID, G_NO, TAX_TYPE);

prompt
prompt Creating table GUARANTEE_R
prompt ==========================
prompt
create table ALLSYS.GUARANTEE_R
(
  GUA_ID             VARCHAR2(18) not null,
  ENTRY_ID           VARCHAR2(18),
  DECL_PORT          VARCHAR2(4),
  APP_REASON         VARCHAR2(1),
  GUAR_ER            VARCHAR2(255),
  REPRE_ER           VARCHAR2(32),
  ADDRESS            VARCHAR2(255),
  TELEPHONE          VARCHAR2(32),
  APPR_ER            VARCHAR2(32),
  D_DATE             DATE,
  I_E_FLAG           VARCHAR2(1),
  TRADE_CO           VARCHAR2(10),
  TRADE_NAME         VARCHAR2(255),
  CODE_TS            VARCHAR2(16),
  G_NAME             VARCHAR2(255),
  DUTY_VALUE         NUMBER(19,4),
  CUT_MODE           VARCHAR2(3),
  DUTY_MODE          VARCHAR2(1),
  GUAR_CURR          VARCHAR2(3),
  RE_ACCOUNT         NUMBER(19,4),
  PAYER_NAME         VARCHAR2(255),
  REGR_DATE          DATE,
  REGR_ER            VARCHAR2(8),
  LOG_DATE           DATE,
  ENTER_ER           VARCHAR2(8),
  PERIOD             DATE,
  DELAY_MARK         NUMBER(19),
  DELAY_DATE         DATE,
  DELAY_ER           VARCHAR2(8),
  DELAY_REASON       VARCHAR2(255),
  C_DATE             DATE,
  CANCEL_ER          VARCHAR2(8),
  PROC_MARK          VARCHAR2(1),
  C_REASON           VARCHAR2(255),
  UR_COUNT           NUMBER(19),
  UR_DATE            DATE,
  UR_ER              VARCHAR2(8),
  REMARK             VARCHAR2(255),
  PRINT_DATE         DATE,
  PRINT_ER           VARCHAR2(8),
  REGISTER_MODE      VARCHAR2(1),
  PAY_MODE           VARCHAR2(1),
  EPORT_ID           VARCHAR2(32),
  PAY_DATE           DATE,
  EXQ_DATE           DATE,
  BANK_NAME          VARCHAR2(255),
  BANK_ACCOUNT       VARCHAR2(32),
  GEN_DATE           DATE,
  BANK_CODE          VARCHAR2(20),
  BANK_ACCOUNT_NAME  VARCHAR2(128),
  PAYER_ACCOUNT_NO   VARCHAR2(32),
  PAYER_ACCOUNT_NAME VARCHAR2(255),
  PAYER_BANK_NAME    VARCHAR2(255),
  PAYER_BANK_CODE    VARCHAR2(20)
)
;
alter table ALLSYS.GUARANTEE_R
  add constraint PK_GUARANTEE_R primary key (GUA_ID);
create index ALLSYS.IX_GUARANTEER_DECLPORT on ALLSYS.GUARANTEE_R (DECL_PORT);
create index ALLSYS.IX_GUARANTEER_ENTRYID on ALLSYS.GUARANTEE_R (ENTRY_ID);
create index ALLSYS.IX_GUARANTEER_REGRDATE on ALLSYS.GUARANTEE_R (REGR_DATE);
create index ALLSYS.IX_GUARANTEER_TRADECO on ALLSYS.GUARANTEE_R (TRADE_CO);

prompt
prompt Creating table H2000_SMS_SEND
prompt =============================
prompt
create table ALLSYS.H2000_SMS_SEND
(
  SEQUENCE_NO  VARCHAR2(18) not null,
  FORM_ID      VARCHAR2(32) not null,
  CUSTOMS_CODE VARCHAR2(4),
  SYSTEM_ID    VARCHAR2(3) not null,
  POS_ID       VARCHAR2(8) not null,
  OP_TIME      DATE not null,
  PHONE_NO     VARCHAR2(32) not null,
  MSG_TEXT     VARCHAR2(255),
  PROC_FLAG    VARCHAR2(1),
  NOTES        VARCHAR2(255)
)
;
alter table ALLSYS.H2000_SMS_SEND
  add constraint PK_H2000_SMS_SEND primary key (SEQUENCE_NO, FORM_ID, SYSTEM_ID, POS_ID, OP_TIME, PHONE_NO);

prompt
prompt Creating table H2000_SMS_SENDLOG
prompt ================================
prompt
create table ALLSYS.H2000_SMS_SENDLOG
(
  SEQUENCE_NO  VARCHAR2(18) not null,
  FORM_ID      VARCHAR2(32) not null,
  CUSTOMS_CODE VARCHAR2(4),
  SYSTEM_ID    VARCHAR2(3) not null,
  POS_ID       VARCHAR2(8) not null,
  OP_TIME      DATE not null,
  PHONE_NO     VARCHAR2(32) not null,
  MSG_TEXT     VARCHAR2(255),
  NOTES        VARCHAR2(255),
  LOG_TIME     DATE default sysdate
)
;
alter table ALLSYS.H2000_SMS_SENDLOG
  add constraint PK_H2000_SMS_SENDLOG primary key (SEQUENCE_NO, FORM_ID, SYSTEM_ID, POS_ID, OP_TIME, PHONE_NO);

prompt
prompt Creating table HIS_TRN_COP_REL
prompt ==============================
prompt
create table ALLSYS.HIS_TRN_COP_REL
(
  CO_REG_NO          VARCHAR2(9) not null,
  CO_CUSTOMS_NO      VARCHAR2(10),
  MAIN_PORT          VARCHAR2(4),
  CO_NAME            VARCHAR2(255),
  CO_ADDRESS         VARCHAR2(255),
  CO_PHONE_NO        VARCHAR2(20),
  VALID_FLAG         VARCHAR2(1),
  VALID_DATE         DATE,
  INPUT_DATE         DATE,
  INPUT_OP_ID        VARCHAR2(8),
  PERMIT_FLAG        VARCHAR2(1),
  PERMIT_DATE        DATE,
  PERMIT_OP_ID       VARCHAR2(8),
  MODI_OP_ID         VARCHAR2(8),
  MODI_TIME          DATE,
  MODI_COUNT         NUMBER(9) not null,
  RESERV_FIELD       VARCHAR2(10),
  CO_REG_TYPE        VARCHAR2(1),
  CO_PROPERTY        VARCHAR2(1),
  CO_DEAL_RANGE      VARCHAR2(1),
  CO_AUTHORIZE_NO    VARCHAR2(30),
  CO_DEAL_DATE       DATE,
  CO_CORPORATION_REP VARCHAR2(20),
  CO_ABROAD_NAME     VARCHAR2(255),
  GANG_AO_CARS       NUMBER(9),
  GANG_AO_CARS_USED  NUMBER(9),
  CK_FLAG            VARCHAR2(1),
  NOTE_FIELD         VARCHAR2(255)
)
;
alter table ALLSYS.HIS_TRN_COP_REL
  add constraint PK_HIS_TRN_COP_REL primary key (CO_REG_NO, MODI_COUNT);

prompt
prompt Creating table HIS_TRN_DR_REL
prompt =============================
prompt
create table ALLSYS.HIS_TRN_DR_REL
(
  DR_REG_TYPE      VARCHAR2(1),
  DR_CUSTOMS_NO    VARCHAR2(10) not null,
  DR_IC_NO         VARCHAR2(10),
  DR_NAME          VARCHAR2(20),
  DR_IDCARD_NO     VARCHAR2(18),
  DR_GENDER        VARCHAR2(1),
  DR_NATIVE        VARCHAR2(20),
  DR_BIRTH_DATE    DATE,
  CO_REG_NO        VARCHAR2(9),
  CO_NAME          VARCHAR2(255),
  MAIN_PORT        VARCHAR2(4),
  DR_LIC_CUS       VARCHAR2(4),
  DR_IE_CERF_NO    VARCHAR2(30),
  DR_PERMIT_VE     VARCHAR2(255),
  VALID_FLAG       VARCHAR2(1),
  CK_FLAG          VARCHAR2(1),
  VALID_DATE       DATE,
  TRAIN_VALID_DATE DATE,
  INPUT_DATE       DATE,
  INPUT_OP_ID      VARCHAR2(8),
  RESERV_FIELD     VARCHAR2(10),
  NOTE_FIELD       VARCHAR2(255),
  MODI_OP_ID       VARCHAR2(8),
  MODI_TIME        DATE,
  MODI_COUNT       NUMBER(9) not null,
  DR_IC_NO2        VARCHAR2(16)
)
;
alter table ALLSYS.HIS_TRN_DR_REL
  add constraint PK_HIS_TRN_DR_REL primary key (DR_CUSTOMS_NO, MODI_COUNT);

prompt
prompt Creating table HIS_TRN_ESEAL_REL
prompt ================================
prompt
create table ALLSYS.HIS_TRN_ESEAL_REL
(
  ESEAL_ID      VARCHAR2(20) not null,
  CUSTOMS_CODE  VARCHAR2(4),
  CO_REG_NO     VARCHAR2(9),
  CO_NAME       VARCHAR2(255),
  VE_CUSTOMS_NO VARCHAR2(10),
  VE_NAME       VARCHAR2(32),
  INPUT_OP_ID   VARCHAR2(8),
  INPUT_DATE    DATE,
  VALID_FLAG    VARCHAR2(1),
  MODI_OP_ID    VARCHAR2(8),
  MODI_TIME     DATE not null
)
;
alter table ALLSYS.HIS_TRN_ESEAL_REL
  add constraint PK_HIS_TRN_ESEAL_REL primary key (ESEAL_ID, MODI_TIME);

prompt
prompt Creating table HIS_TRN_VE_REL
prompt =============================
prompt
create table ALLSYS.HIS_TRN_VE_REL
(
  VE_CUSTOMS_NO  VARCHAR2(10) not null,
  CAR_EC_NO      VARCHAR2(20),
  VE_TYPE        VARCHAR2(1),
  MAIN_PORT      VARCHAR2(4),
  VE_NAME        VARCHAR2(32),
  CO_REG_NO      VARCHAR2(9),
  CO_NAME        VARCHAR2(255),
  CK_FLAG        VARCHAR2(1),
  VALID_FLAG     VARCHAR2(1),
  VALID_DATE     DATE,
  INPUT_DATE     DATE,
  INPUT_OP_ID    VARCHAR2(8),
  MODI_OP_ID     VARCHAR2(8),
  MODI_TIME      DATE,
  MODI_COUNT     NUMBER(9) not null,
  RESERV_FIELD   VARCHAR2(10),
  VE_WT          NUMBER(9),
  REG_TYPE       VARCHAR2(1),
  VE_NO1         VARCHAR2(10),
  VE_BELONG_AREA VARCHAR2(1),
  VE_PROPERTY    VARCHAR2(1),
  VE_BRAND       VARCHAR2(8),
  VE_OILTANK_VOL NUMBER(9),
  VE_INDEX_NO    VARCHAR2(20),
  VE_IE_CERF_NO  VARCHAR2(30),
  VE_COLOR       VARCHAR2(10),
  VE_MOTOR_NO    VARCHAR2(30),
  VE_FRAME_NO    VARCHAR2(30),
  VE_TON         NUMBER(9),
  NOTE_FIELD     VARCHAR2(255),
  VE_IE_PORT     VARCHAR2(255),
  GPS_ID         VARCHAR2(20),
  SIM_1          VARCHAR2(15),
  SIM_2          VARCHAR2(15),
  GPS_PROVIDER   VARCHAR2(255),
  GPS_FLAG       VARCHAR2(1),
  TRANS_NO       VARCHAR2(32)
)
;
alter table ALLSYS.HIS_TRN_VE_REL
  add constraint PK_HIS_TRN_VE_REL primary key (VE_CUSTOMS_NO, MODI_COUNT);

prompt
prompt Creating table IMA_APPL_CLOSE
prompt =============================
prompt
create table ALLSYS.IMA_APPL_CLOSE
(
  MANUAL_NO  VARCHAR2(12) not null,
  CONTR_ITEM NUMBER(19) not null,
  CODE_TS    VARCHAR2(16),
  G_NAME     VARCHAR2(50),
  G_MODEL    VARCHAR2(50),
  G_QTY      NUMBER(19,4),
  G_UNIT     VARCHAR2(3),
  DECL_PRICE NUMBER(19,4),
  G_AMT      NUMBER(19,5),
  PROC_MODE  VARCHAR2(1),
  BOOK_NO    NUMBER(19)
)
;
alter table ALLSYS.IMA_APPL_CLOSE
  add constraint PK_IMA_APPL_CLOSE primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table IM_APPL_CLOSE
prompt ============================
prompt
create table ALLSYS.IM_APPL_CLOSE
(
  MANUAL_NO      VARCHAR2(12) not null,
  CONTR_ITEM     NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(50),
  G_MODEL        VARCHAR2(50),
  FACT_QTY       NUMBER(19,4),
  T_IN_QTY       NUMBER(19,4),
  T_EX_QTY       NUMBER(19,4),
  USED_QTY       NUMBER(19,4),
  REMAIN_QTY     NUMBER(19,4),
  PROC_MODE      VARCHAR2(1),
  CORR_MANUAL_NO VARCHAR2(12)
)
;
alter table ALLSYS.IM_APPL_CLOSE
  add constraint PK_IM_APPL_CLOSE primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table IM_CDL_MNL_DEDUCT
prompt ================================
prompt
create table ALLSYS.IM_CDL_MNL_DEDUCT
(
  MANUAL_NO   VARCHAR2(12) not null,
  CONTR_ITEM  NUMBER(19),
  ENTRY_ID    VARCHAR2(18) not null,
  ENTRY_ITEM  NUMBER(19),
  I_E_PORT    VARCHAR2(8),
  I_E_DATE    DATE,
  G_NO        NUMBER(19) not null,
  IN_QTY      NUMBER(19,4),
  I_ACCOUNT   NUMBER(19,5),
  I_CURR      VARCHAR2(3),
  DUTY_MODE   VARCHAR2(1),
  VERIFY_MODE VARCHAR2(1),
  VERIFY_DATE DATE,
  VERIFY_ER   VARCHAR2(8),
  DUTY_PRINT  VARCHAR2(1)
)
;
alter table ALLSYS.IM_CDL_MNL_DEDUCT
  add constraint PK_IM_CDL_MNL_DEDUCT primary key (MANUAL_NO, ENTRY_ID, G_NO);
create index ALLSYS.IX_IMCDLMNLDEDUCT_ENTRYID on ALLSYS.IM_CDL_MNL_DEDUCT (ENTRY_ID);

prompt
prompt Creating table IM_CONTRACT_CLEAR
prompt ================================
prompt
create table ALLSYS.IM_CONTRACT_CLEAR
(
  MANUAL_NO     VARCHAR2(12) not null,
  CONTR_ITEM    NUMBER(19) not null,
  APPR_AMT      NUMBER(19,5),
  FACT_AMT      NUMBER(19,5),
  APPR_QTY      NUMBER(19,4),
  FACT_QTY      NUMBER(19,4),
  CONSUME_AMT   NUMBER(19,5),
  CONSUME_QTY   NUMBER(19,4),
  RESOR_IN_AMT  NUMBER(19,5),
  RESOR_IN_QTY  NUMBER(19,4),
  RESOR_EX_AMT  NUMBER(19,5),
  RESOR_EX_QTY  NUMBER(19,4),
  RESOR_TAX_AMT NUMBER(19,5),
  RESOR_TAX_QTY NUMBER(19,4),
  REMAIN_AMT    NUMBER(19,5),
  REMAIN_QTY    NUMBER(19,4),
  ABANDON_AMT   NUMBER(19,5),
  ABANDON_QTY   NUMBER(19,4),
  ABANDON_DATE  DATE,
  ABANDON_ER    VARCHAR2(8),
  UNIT_1        VARCHAR2(3),
  CLEAR_ER      VARCHAR2(8),
  CLEAR_DATE    DATE,
  CLOSE_ER      VARCHAR2(8),
  CLOSE_DATE    DATE
)
;
alter table ALLSYS.IM_CONTRACT_CLEAR
  add constraint PK_IM_CONTRACT_CLEAR primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table IM_CONTRACT_DEDUC
prompt ================================
prompt
create table ALLSYS.IM_CONTRACT_DEDUC
(
  MANUAL_NO   VARCHAR2(12) not null,
  CONTR_ITEM  NUMBER(19),
  ENTRY_ID    VARCHAR2(18) not null,
  ENTRY_ITEM  NUMBER(19),
  I_E_PORT    VARCHAR2(8),
  I_E_DATE    DATE,
  G_NO        NUMBER(19) not null,
  IN_QTY      NUMBER(19,4),
  I_ACCOUNT   NUMBER(19,5),
  I_CURR      VARCHAR2(3),
  DUTY_MODE   VARCHAR2(1),
  VERIFY_MODE VARCHAR2(1),
  VERIFY_DATE DATE,
  VERIFY_ER   VARCHAR2(8),
  DUTY_PRINT  VARCHAR2(1)
)
;
alter table ALLSYS.IM_CONTRACT_DEDUC
  add constraint PK_IM_CONTRACT_DEDUC primary key (MANUAL_NO, ENTRY_ID, G_NO);
create index ALLSYS.IX_IMCONTRACTDEDUC_ENTRYID on ALLSYS.IM_CONTRACT_DEDUC (ENTRY_ID);
create index ALLSYS.IX_IMCONTRACTDEDUC_MANUALNO on ALLSYS.IM_CONTRACT_DEDUC (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table IM_CONTRACT_LIST
prompt ===============================
prompt
create table ALLSYS.IM_CONTRACT_LIST
(
  MANUAL_NO      VARCHAR2(12) not null,
  CONTR_ITEM     NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  CLASS_MARK     VARCHAR2(1),
  G_NAME         VARCHAR2(50),
  G_MODEL        VARCHAR2(50),
  ORIGIN_COUNTRY VARCHAR2(3),
  DUTY_MODE      VARCHAR2(1),
  DUTY_RATIO     NUMBER(19,5),
  LOCAL_CONTR    VARCHAR2(20),
  APPR_AMT       NUMBER(19,5),
  FACT_AMT       NUMBER(19,5),
  UNIT_PRICE     NUMBER(19,10),
  APPR_QTY       NUMBER(19,5),
  FACT_QTY       NUMBER(19,5),
  TRANSFER_QTY   NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  IN_COUNT       NUMBER(19),
  IM_MODE        VARCHAR2(1),
  CONSUME_NOTE   VARCHAR2(255)
)
;
alter table ALLSYS.IM_CONTRACT_LIST
  add constraint PK_IM_CONTRACT_LIST primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table IM_COP_RATE
prompt ==========================
prompt
create table ALLSYS.IM_COP_RATE
(
  TRADE_CO    VARCHAR2(10) not null,
  CHKSTDATE   DATE not null,
  CHKENDDATE  DATE not null,
  CORCORPNAME VARCHAR2(128),
  CHKRATE     NUMBER(21,4),
  RECV_DATE   DATE
)
;
alter table ALLSYS.IM_COP_RATE
  add constraint PK_IM_COP_RATE primary key (TRADE_CO, CHKSTDATE, CHKENDDATE);

prompt
prompt Creating table IM_DECL_ALARM_HEAD
prompt =================================
prompt
create table ALLSYS.IM_DECL_ALARM_HEAD
(
  PRE_NO            VARCHAR2(16) not null,
  TURN_NO           VARCHAR2(16),
  CONTACT_NO        VARCHAR2(16),
  CONTR_NO          VARCHAR2(40),
  LICENSE_NO        VARCHAR2(20),
  MANUAL_NO         VARCHAR2(12),
  TRADE_MODE        VARCHAR2(4),
  OWNER_NAME        VARCHAR2(255),
  VALID_TIME        DATE,
  APPL_NAME         VARCHAR2(255),
  APPL_CODE         VARCHAR2(10),
  IN_TRAF_NAME      VARCHAR2(32),
  IMPORT_DATE       DATE,
  CONTRACTOR        VARCHAR2(255),
  CONTRACTOR_CODE   VARCHAR2(10),
  DRIVER_CODE       VARCHAR2(8),
  TRAF_WAY          VARCHAR2(1),
  CUSTOMS_NO        VARCHAR2(13),
  TRANS_NO          VARCHAR2(32),
  NATIVE_VOYAGE_NO  VARCHAR2(32),
  BILL_NO           VARCHAR2(32),
  BILL_COUNT        NUMBER(9),
  CONTA_NO          VARCHAR2(20),
  CONTA_TYPE        VARCHAR2(6),
  CONTA_AMOUNT      NUMBER(19,4),
  CONTA_INI_COUNT   NUMBER(19,4),
  CONTA_EMPTY_COUNT NUMBER(19,4),
  SEAL_NO           VARCHAR2(12),
  GOODS_NOTE        VARCHAR2(255),
  INPUT_OP_ID       VARCHAR2(8),
  INPUT_TIME        DATE,
  EXAM_OP_ID        VARCHAR2(8),
  EXAM_TIME         DATE,
  REC_MARK          VARCHAR2(1),
  CHECK_OP_ID       VARCHAR2(8),
  CHECK_TIME        DATE,
  CHECK_MARK        VARCHAR2(1),
  DEL_OP_ID         VARCHAR2(8),
  DEL_TIME          DATE,
  DEL_REASON        VARCHAR2(1),
  DELI_MARK         VARCHAR2(1),
  REL_OP_ID         VARCHAR2(8),
  REL_TIME          DATE,
  PRE_FIEL          VARCHAR2(32),
  MFT_VOYAGE_NO     VARCHAR2(32),
  MFT_BILL_NO       VARCHAR2(32),
  MFT_TRAF_WAY      VARCHAR2(1),
  MFT_GOODS_PIECE   NUMBER(9),
  MFT_GROSS_WEIGHT  NUMBER(19,4),
  MFT_REC_MARK      VARCHAR2(1),
  SEND_PORT         VARCHAR2(4),
  RECV_PORT         VARCHAR2(4),
  APP_TELE          VARCHAR2(32),
  FOR_PORT_NAME     VARCHAR2(255),
  R_PORT_NAME       VARCHAR2(255),
  GOODS_CHK_FLAG    VARCHAR2(1),
  OTHER_CHK_MARK    VARCHAR2(8),
  TRN_MODE          VARCHAR2(2),
  ADV_MARK          VARCHAR2(1),
  ENTRY_NO          VARCHAR2(18),
  SEAL_NO2          VARCHAR2(12),
  TRANS_PRE_NO      VARCHAR2(18),
  TRANS_PRE_MARK    VARCHAR2(1),
  STF_DATE          DATE,
  STF_NO            VARCHAR2(32),
  PRE_FIELD1        VARCHAR2(32),
  PRE_FIELD2        VARCHAR2(32),
  CA_KEY            VARCHAR2(380),
  HASH_SIGN         VARCHAR2(380)
)
;
alter table ALLSYS.IM_DECL_ALARM_HEAD
  add constraint PK_IM_DECL_ALARM_HEAD primary key (PRE_NO);
create index ALLSYS.IDX_IM_DECL_ALARM_HEAD_RECV on ALLSYS.IM_DECL_ALARM_HEAD (RECV_PORT, EXAM_TIME);
create index ALLSYS.IDX_IM_DECL_ALARM_HEAD_SEND on ALLSYS.IM_DECL_ALARM_HEAD (SEND_PORT, EXAM_TIME);
create index ALLSYS.IDX_IM_DECL_ALARM_HEAD_TURN_NO on ALLSYS.IM_DECL_ALARM_HEAD (TURN_NO);

prompt
prompt Creating table IM_DECL_ALARM_LIST
prompt =================================
prompt
create table ALLSYS.IM_DECL_ALARM_LIST
(
  PRE_NO         VARCHAR2(16) not null,
  RECORD_NUMBER  VARCHAR2(3) default 1 not null,
  TURN_NO        VARCHAR2(16),
  G_NO           NUMBER(9) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  PACK_TYPE      VARCHAR2(1),
  GOODS_PIECE    NUMBER(9),
  GOODS_AMOUNT   NUMBER(19,4),
  GOODS_UNIT     VARCHAR2(3),
  GOODS_WEIGHT   NUMBER(19,4),
  GOODS_PRICE    NUMBER(19,4),
  GOODS_CURR     VARCHAR2(3),
  GOODS_CHK_MARK VARCHAR2(4)
)
;
alter table ALLSYS.IM_DECL_ALARM_LIST
  add constraint PK_IM_DECL_ALARM_LIST primary key (PRE_NO, RECORD_NUMBER, G_NO);
create index ALLSYS.IDX_IM_DECL_ALARM_LIST_TURN_NO on ALLSYS.IM_DECL_ALARM_LIST (TURN_NO);

prompt
prompt Creating table IM_DECL_CUR_HEAD
prompt ===============================
prompt
create table ALLSYS.IM_DECL_CUR_HEAD
(
  PRE_NO            VARCHAR2(16) not null,
  TURN_NO           VARCHAR2(16),
  CONTACT_NO        VARCHAR2(16),
  CONTR_NO          VARCHAR2(40),
  LICENSE_NO        VARCHAR2(20),
  MANUAL_NO         VARCHAR2(12),
  TRADE_MODE        VARCHAR2(4),
  OWNER_NAME        VARCHAR2(255),
  VALID_TIME        DATE,
  APPL_NAME         VARCHAR2(255),
  APPL_CODE         VARCHAR2(10),
  IN_TRAF_NAME      VARCHAR2(32),
  IMPORT_DATE       DATE,
  CONTRACTOR        VARCHAR2(255),
  CONTRACTOR_CODE   VARCHAR2(10),
  DRIVER_CODE       VARCHAR2(8),
  TRAF_WAY          VARCHAR2(1),
  CUSTOMS_NO        VARCHAR2(13),
  TRANS_NO          VARCHAR2(32),
  NATIVE_VOYAGE_NO  VARCHAR2(32),
  BILL_NO           VARCHAR2(32),
  BILL_COUNT        NUMBER(9) default 0,
  CONTA_NO          VARCHAR2(20),
  CONTA_TYPE        VARCHAR2(6),
  CONTA_AMOUNT      NUMBER(19,4) default 0,
  CONTA_INI_COUNT   NUMBER(19,4) default 0,
  CONTA_EMPTY_COUNT NUMBER(19,4) default 0,
  SEAL_NO           VARCHAR2(12),
  GOODS_NOTE        VARCHAR2(255),
  INPUT_OP_ID       VARCHAR2(8),
  INPUT_TIME        DATE,
  EXAM_OP_ID        VARCHAR2(8),
  EXAM_TIME         DATE,
  REC_MARK          VARCHAR2(1),
  CHECK_OP_ID       VARCHAR2(8),
  CHECK_TIME        DATE,
  CHECK_MARK        VARCHAR2(1),
  DEL_OP_ID         VARCHAR2(8),
  DEL_TIME          DATE,
  DEL_REASON        VARCHAR2(1),
  DELI_MARK         VARCHAR2(1),
  REL_OP_ID         VARCHAR2(8),
  REL_TIME          DATE,
  PRE_FIEL          VARCHAR2(32),
  MFT_VOYAGE_NO     VARCHAR2(32),
  MFT_BILL_NO       VARCHAR2(32),
  MFT_TRAF_WAY      VARCHAR2(1),
  MFT_GOODS_PIECE   NUMBER(9) default 0,
  MFT_GROSS_WEIGHT  NUMBER(19,4) default 0,
  MFT_REC_MARK      VARCHAR2(1),
  SEND_PORT         VARCHAR2(4),
  RECV_PORT         VARCHAR2(4),
  APP_TELE          VARCHAR2(32),
  FOR_PORT_NAME     VARCHAR2(255),
  R_PORT_NAME       VARCHAR2(255),
  GOODS_CHK_FLAG    VARCHAR2(1),
  OTHER_CHK_MARK    VARCHAR2(8),
  TRN_MODE          VARCHAR2(2),
  ADV_MARK          VARCHAR2(1),
  ENTRY_NO          VARCHAR2(18),
  SEAL_NO2          VARCHAR2(12),
  TRANS_PRE_NO      VARCHAR2(18),
  TRANS_PRE_MARK    VARCHAR2(1),
  STF_DATE          DATE,
  STF_NO            VARCHAR2(32),
  PRE_FIELD1        VARCHAR2(32),
  PRE_FIELD2        VARCHAR2(32),
  CA_KEY            VARCHAR2(380),
  HASH_SIGN         VARCHAR2(380),
  DEL_REASON_DETAIL VARCHAR2(255),
  ESEAL_KEY         VARCHAR2(30),
  ESEAL_FLAG        VARCHAR2(1)
)
;
alter table ALLSYS.IM_DECL_CUR_HEAD
  add constraint PK_IM_DECL_CUR_HEAD primary key (PRE_NO);
create index ALLSYS.IDX_IM_DECL_CUR_HEAD_CONT_NO on ALLSYS.IM_DECL_CUR_HEAD (CONTACT_NO);
create index ALLSYS.IDX_IM_DECL_CUR_HEAD_RECV on ALLSYS.IM_DECL_CUR_HEAD (RECV_PORT, EXAM_TIME);
create index ALLSYS.IDX_IM_DECL_CUR_HEAD_SEND on ALLSYS.IM_DECL_CUR_HEAD (SEND_PORT, EXAM_TIME);
create index ALLSYS.IDX_IM_DECL_CUR_HEAD_TURN_NO on ALLSYS.IM_DECL_CUR_HEAD (TURN_NO);

prompt
prompt Creating table IM_DECL_CUR_LIST
prompt ===============================
prompt
create table ALLSYS.IM_DECL_CUR_LIST
(
  PRE_NO         VARCHAR2(16) not null,
  RECORD_NUMBER  VARCHAR2(3) default 1 not null,
  TURN_NO        VARCHAR2(16),
  G_NO           NUMBER(9) default 1 not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  PACK_TYPE      VARCHAR2(1),
  GOODS_PIECE    NUMBER(9) default 0,
  GOODS_AMOUNT   NUMBER(19,4) default 0,
  GOODS_UNIT     VARCHAR2(3),
  GOODS_WEIGHT   NUMBER(19,4) default 0,
  GOODS_PRICE    NUMBER(19,4) default 0,
  GOODS_CURR     VARCHAR2(3),
  GOODS_CHK_MARK VARCHAR2(4),
  SEND_PORT      VARCHAR2(4),
  RECV_PORT      VARCHAR2(4)
)
;
alter table ALLSYS.IM_DECL_CUR_LIST
  add constraint PK_IM_DECL_CUR_LIST primary key (PRE_NO, RECORD_NUMBER, G_NO);
create index ALLSYS.IDX_IM_DECL_CUR_LIST_TURN_NO on ALLSYS.IM_DECL_CUR_LIST (TURN_NO);

prompt
prompt Creating table IM_DECL_HIS_HEAD
prompt ===============================
prompt
create table ALLSYS.IM_DECL_HIS_HEAD
(
  PRE_NO            VARCHAR2(16) not null,
  TURN_NO           VARCHAR2(16),
  CONTACT_NO        VARCHAR2(16),
  CONTR_NO          VARCHAR2(40),
  LICENSE_NO        VARCHAR2(20),
  MANUAL_NO         VARCHAR2(12),
  TRADE_MODE        VARCHAR2(4),
  OWNER_NAME        VARCHAR2(255),
  VALID_TIME        DATE,
  APPL_NAME         VARCHAR2(255),
  APPL_CODE         VARCHAR2(10),
  IN_TRAF_NAME      VARCHAR2(32),
  IMPORT_DATE       DATE,
  CONTRACTOR        VARCHAR2(255),
  CONTRACTOR_CODE   VARCHAR2(10),
  DRIVER_CODE       VARCHAR2(8),
  TRAF_WAY          VARCHAR2(1),
  CUSTOMS_NO        VARCHAR2(13),
  TRANS_NO          VARCHAR2(32),
  NATIVE_VOYAGE_NO  VARCHAR2(32),
  BILL_NO           VARCHAR2(32),
  BILL_COUNT        NUMBER(9),
  CONTA_NO          VARCHAR2(20),
  CONTA_TYPE        VARCHAR2(6),
  CONTA_AMOUNT      NUMBER(19,4),
  CONTA_INI_COUNT   NUMBER(19,4),
  CONTA_EMPTY_COUNT NUMBER(19,4),
  SEAL_NO           VARCHAR2(12),
  GOODS_NOTE        VARCHAR2(255),
  INPUT_OP_ID       VARCHAR2(8),
  INPUT_TIME        DATE,
  EXAM_OP_ID        VARCHAR2(8),
  EXAM_TIME         DATE,
  REC_MARK          VARCHAR2(1),
  CHECK_OP_ID       VARCHAR2(8),
  CHECK_TIME        DATE,
  CHECK_MARK        VARCHAR2(1),
  DEL_OP_ID         VARCHAR2(8),
  DEL_TIME          DATE,
  DEL_REASON        VARCHAR2(1),
  DELI_MARK         VARCHAR2(1),
  REL_OP_ID         VARCHAR2(8),
  REL_TIME          DATE,
  PRE_FIEL          VARCHAR2(32),
  MFT_VOYAGE_NO     VARCHAR2(32),
  MFT_BILL_NO       VARCHAR2(32),
  MFT_TRAF_WAY      VARCHAR2(1),
  MFT_GOODS_PIECE   NUMBER(9),
  MFT_GROSS_WEIGHT  NUMBER(19,4),
  MFT_REC_MARK      VARCHAR2(1),
  SEND_PORT         VARCHAR2(4),
  RECV_PORT         VARCHAR2(4),
  APP_TELE          VARCHAR2(32),
  FOR_PORT_NAME     VARCHAR2(255),
  R_PORT_NAME       VARCHAR2(255),
  GOODS_CHK_FLAG    VARCHAR2(1),
  OTHER_CHK_MARK    VARCHAR2(8),
  TRN_MODE          VARCHAR2(2),
  ADV_MARK          VARCHAR2(1),
  ENTRY_NO          VARCHAR2(18),
  SEAL_NO2          VARCHAR2(12),
  TRANS_PRE_NO      VARCHAR2(18),
  TRANS_PRE_MARK    VARCHAR2(1),
  STF_DATE          DATE,
  STF_NO            VARCHAR2(32),
  PRE_FIELD1        VARCHAR2(32),
  PRE_FIELD2        VARCHAR2(32),
  CA_KEY            VARCHAR2(380),
  HASH_SIGN         VARCHAR2(380)
)
;
alter table ALLSYS.IM_DECL_HIS_HEAD
  add constraint PK_IM_DECL_HIS_HEAD primary key (PRE_NO);
create index ALLSYS.IDX_IM_DECL_HIS_HEAD_RECV on ALLSYS.IM_DECL_HIS_HEAD (RECV_PORT, EXAM_TIME);
create index ALLSYS.IDX_IM_DECL_HIS_HEAD_SEND on ALLSYS.IM_DECL_HIS_HEAD (SEND_PORT, EXAM_TIME);
create index ALLSYS.IDX_IM_DECL_HIS_HEAD_TURN_NO on ALLSYS.IM_DECL_HIS_HEAD (TURN_NO);

prompt
prompt Creating table IM_DECL_HIS_LIST
prompt ===============================
prompt
create table ALLSYS.IM_DECL_HIS_LIST
(
  PRE_NO         VARCHAR2(16) not null,
  RECORD_NUMBER  VARCHAR2(3) default 1 not null,
  TURN_NO        VARCHAR2(16),
  G_NO           NUMBER(9) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  PACK_TYPE      VARCHAR2(1),
  GOODS_PIECE    NUMBER(9),
  GOODS_AMOUNT   NUMBER(19,4),
  GOODS_UNIT     VARCHAR2(3),
  GOODS_WEIGHT   NUMBER(19,4),
  GOODS_PRICE    NUMBER(19,4),
  GOODS_CURR     VARCHAR2(3),
  GOODS_CHK_MARK VARCHAR2(4)
)
;
alter table ALLSYS.IM_DECL_HIS_LIST
  add constraint PK_IM_DECL_HIS_LIST primary key (PRE_NO, RECORD_NUMBER, G_NO);
create index ALLSYS.IDX_IM_DECL_HIS_LIST_TURN_NO on ALLSYS.IM_DECL_HIS_LIST (TURN_NO);

prompt
prompt Creating table IM_ELE_HEAD
prompt ==========================
prompt
create table ALLSYS.IM_ELE_HEAD
(
  LICENSE_NO          VARCHAR2(20) not null,
  TRADE_CODE          VARCHAR2(13),
  TRADE_NAME          VARCHAR2(255),
  OWNER_NAME          VARCHAR2(255),
  LIC_ALLOW_DATE      DATE,
  LIC_SIGN_DATE       DATE,
  TRADE_COUNTRY       VARCHAR2(3),
  ORIGIN_COUNTRY      VARCHAR2(3),
  CONTR_NO            VARCHAR2(20),
  IE_PORT1            VARCHAR2(4),
  IE_PORT2            VARCHAR2(4),
  IE_PORT3            VARCHAR2(4),
  TRADE_MODE          VARCHAR2(4),
  TRADE_MODE_NAME     VARCHAR2(32),
  CODE_T_S            VARCHAR2(11),
  G_NAME              VARCHAR2(255),
  UNIT_NAME           VARCHAR2(32),
  LIC_QTY_TOTAL       NUMBER(19,4),
  LIC_USD_PRICE_TOTAL NUMBER(19),
  LIC_MARK            VARCHAR2(1),
  SEND_DATE           DATE,
  RECEIVE_DATE        DATE,
  DELETE_DATE         DATE,
  LIC_ITEMS_NO        NUMBER(9),
  CHECK_MARK          VARCHAR2(1),
  SECURITY_ID         VARCHAR2(16),
  REUSE1              NUMBER(9),
  REUSE2              VARCHAR2(10),
  NOTE_S              VARCHAR2(255)
)
;
alter table ALLSYS.IM_ELE_HEAD
  add constraint PK_IM_ELE_HEAD primary key (LICENSE_NO);

prompt
prompt Creating table IM_ELE_LIST
prompt ==========================
prompt
create table ALLSYS.IM_ELE_LIST
(
  LICENSE_NO    VARCHAR2(20) not null,
  L_G_NO        NUMBER(9) not null,
  G_MODEL       VARCHAR2(255),
  LIC_QTY       NUMBER(19,4),
  LIC_USD_PRICE NUMBER(19)
)
;
alter table ALLSYS.IM_ELE_LIST
  add constraint PK_IM_ELE_LIST primary key (LICENSE_NO, L_G_NO);

prompt
prompt Creating table IM_EXAM_JOU
prompt ==========================
prompt
create table ALLSYS.IM_EXAM_JOU
(
  ENTRY_ID        VARCHAR2(18) not null,
  G_NO            NUMBER(9) not null,
  LICENSE_NO      VARCHAR2(20),
  L_G_NO          NUMBER(9),
  EXE_MARK        VARCHAR2(1),
  ENTRY_MARK      VARCHAR2(1),
  TRADE_CO        VARCHAR2(10),
  TRADE_NAME      VARCHAR2(255),
  OWNER_NAME      VARCHAR2(255),
  TRADE_COUNTRY   VARCHAR2(3),
  ORIGIN_COUNTRY  VARCHAR2(3),
  CONTR_NO        VARCHAR2(32),
  TRAF_NAME       VARCHAR2(32),
  TRADE_MODE      VARCHAR2(4),
  TRADE_MODE_NAME VARCHAR2(32),
  I_E_DATE        DATE,
  PRE_IMP_DATE    DATE,
  PRE_IMP_TIME    DATE,
  PRE_IMP_ER      VARCHAR2(8),
  MOD_DEL_DATE    DATE,
  MOD_DEL_TIME    DATE,
  MOD_DEL_ER      VARCHAR2(8),
  I_E_PORT        VARCHAR2(4),
  IMPLETE_DATE    DATE,
  IMPLETE_TIME    DATE,
  IMPLETE_ER      VARCHAR2(8),
  CODE_TS         VARCHAR2(16),
  G_NAME          VARCHAR2(255),
  G_MODEL         VARCHAR2(255),
  SUB_QTY_1       NUMBER(19,4),
  SUB_UNIT_NAME   VARCHAR2(32),
  SUB_USD_PRICE   NUMBER(19),
  QTY1            NUMBER(19,4),
  UNIT_NAME       VARCHAR2(32),
  FEED_DATE       DATE,
  FEED_MARK       VARCHAR2(1),
  M_D_MARK        VARCHAR2(1),
  M_COUNT         NUMBER(9) default 0,
  RTX_MARK        VARCHAR2(1),
  NOTE_S          VARCHAR2(255),
  SECURITY_ID     VARCHAR2(16),
  REUSE1          NUMBER(9),
  REUSE2          VARCHAR2(10)
)
;
alter table ALLSYS.IM_EXAM_JOU
  add constraint PK_IM_EXAM_JOU primary key (ENTRY_ID, G_NO);
create index ALLSYS.IDX_IM_EXAM_JOU_IMPLETE_DATE on ALLSYS.IM_EXAM_JOU (IMPLETE_DATE);
create index ALLSYS.IDX_IM_EXAM_JOU_MOD_DEL_DATE on ALLSYS.IM_EXAM_JOU (MOD_DEL_DATE);
create index ALLSYS.IX_IMEXAMJOU_LICENSENO on ALLSYS.IM_EXAM_JOU (LICENSE_NO);

prompt
prompt Creating table IM_EXAM_MANA_HEAD
prompt ================================
prompt
create table ALLSYS.IM_EXAM_MANA_HEAD
(
  LICENSE_NO    VARCHAR2(20) not null,
  FACT_AQTY     NUMBER(19,4),
  FACT_AUSED    NUMBER(19),
  FACT_MARK     VARCHAR2(1),
  EXE_MARK      VARCHAR2(1),
  DELAY_MARK    VARCHAR2(1),
  CLOSE_MARK    VARCHAR2(1),
  CLOSE_DATE    DATE,
  CLOSE_TIME    DATE,
  CLOSE_ER      VARCHAR2(8),
  EXE_PORT      VARCHAR2(4),
  TRAN_PORT     VARCHAR2(4),
  TRAN_DATE     DATE,
  TRAN_TIME     DATE,
  CHECK_MARK    VARCHAR2(1),
  CHECK_DATE    DATE,
  CHECK_TIME    DATE,
  CHECK_ER      VARCHAR2(8),
  SEND_GEN_DATE DATE,
  SEND_FOR_DATE DATE,
  SOURCE_PORT   VARCHAR2(4),
  NOTE_S        VARCHAR2(255),
  OVER_ALLOW    VARCHAR2(3),
  SECURITY_ID   VARCHAR2(16),
  REUSE1        NUMBER(9),
  REUSE2        VARCHAR2(10)
)
;
alter table ALLSYS.IM_EXAM_MANA_HEAD
  add constraint PK_IM_EXAM_MANA_HEAD primary key (LICENSE_NO);

prompt
prompt Creating table IM_EXAM_MANA_LIST
prompt ================================
prompt
create table ALLSYS.IM_EXAM_MANA_LIST
(
  LICENSE_NO   VARCHAR2(20) not null,
  L_G_NO       NUMBER(9) not null,
  L_FACT_AQTY  NUMBER(19,4) default 0,
  L_FACT_AUSED NUMBER(19) default 0,
  L_REUSE1     NUMBER(9) default 0,
  L_REUSE2     VARCHAR2(10)
)
;
alter table ALLSYS.IM_EXAM_MANA_LIST
  add constraint PK_IM_EXAM_MANA_LIST primary key (LICENSE_NO, L_G_NO);

prompt
prompt Creating table IM_FASCICLE_LIST
prompt ===============================
prompt
create table ALLSYS.IM_FASCICLE_LIST
(
  MANUAL_NO   VARCHAR2(12),
  FASCICLE_NO VARCHAR2(12) not null,
  CONTR_ITEM  NUMBER(19) not null,
  APPR_QTY    NUMBER(19,4),
  FACT_QTY    NUMBER(19,4)
)
;
alter table ALLSYS.IM_FASCICLE_LIST
  add constraint PK_IM_FASCICLE_LIST primary key (FASCICLE_NO, CONTR_ITEM);
create index ALLSYS.IX_IMFASCICLELIST_MANUALNO on ALLSYS.IM_FASCICLE_LIST (MANUAL_NO);

prompt
prompt Creating table IM_LIC_CODE_TS
prompt =============================
prompt
create table ALLSYS.IM_LIC_CODE_TS
(
  LICENSE_NO   VARCHAR2(20) not null,
  CODE_T_S     VARCHAR2(20),
  BAD_CODE_T_S VARCHAR2(20)
)
;
alter table ALLSYS.IM_LIC_CODE_TS
  add constraint PK_IM_LIC_CODE_TS primary key (LICENSE_NO);

prompt
prompt Creating table IM_TRANS_ALARM_CONTA_REL
prompt =======================================
prompt
create table ALLSYS.IM_TRANS_ALARM_CONTA_REL
(
  PRE_NO           VARCHAR2(16) not null,
  RECORD_NUMBER    VARCHAR2(3) default 1 not null,
  CONTA_NO         VARCHAR2(11) not null,
  TRANS_NAME       VARCHAR2(32),
  TRANS_WEIGHT     NUMBER(19,4),
  CONTA_MODEL      VARCHAR2(2),
  SEAL_NO          VARCHAR2(10),
  SEAL_NUM         NUMBER(9),
  CONTA_CHECK_MARK VARCHAR2(1),
  CONTA_CHK_ER     VARCHAR2(8),
  CONTA_CHK_TIME   DATE,
  EXAM_FLAG        VARCHAR2(6),
  CONTA1           VARCHAR2(32)
)
;
alter table ALLSYS.IM_TRANS_ALARM_CONTA_REL
  add constraint PK_IM_TRANS_ALARM_CONTA_REL primary key (PRE_NO, RECORD_NUMBER, CONTA_NO);
create index ALLSYS.IDX_IM_ALARM_CONTA_REL_CONTA_N on ALLSYS.IM_TRANS_ALARM_CONTA_REL (CONTA_NO);

prompt
prompt Creating table IM_TRANS_ALARM_GOODS_CONTA_REL
prompt =============================================
prompt
create table ALLSYS.IM_TRANS_ALARM_GOODS_CONTA_REL
(
  PRE_NO             VARCHAR2(16) not null,
  RECORD_NUMBER      VARCHAR2(3) default 1 not null,
  G_NO               NUMBER(9) not null,
  CONTA_NO           VARCHAR2(11) not null,
  CONTA_GOODS_COUNT  NUMBER(9),
  CONTA_GOODS_WEIGHT NUMBER(19,4)
)
;
alter table ALLSYS.IM_TRANS_ALARM_GOODS_CONTA_REL
  add constraint PK_IM_TRANS_ALARM_GOODS_CONTA_ primary key (PRE_NO, RECORD_NUMBER, G_NO, CONTA_NO);

prompt
prompt Creating table IM_TRANS_ALARM_LIST_REL
prompt ======================================
prompt
create table ALLSYS.IM_TRANS_ALARM_LIST_REL
(
  PRE_NO        VARCHAR2(16) not null,
  RECORD_NUMBER VARCHAR2(3) not null,
  TRAF_MODE     VARCHAR2(1),
  SHIP_ID       VARCHAR2(32),
  SHIP_NAME_EN  VARCHAR2(255),
  VOYAGE_NO     VARCHAR2(32),
  BILL_NO       VARCHAR2(32),
  I_E_DATE      DATE,
  ENTRY_NO      VARCHAR2(18),
  BIND_FLAG     VARCHAR2(1),
  REC_FLAG      VARCHAR2(1),
  PACK_NO       NUMBER(9),
  GROSS_WT      NUMBER(19,4),
  GOODS_COUNT   NUMBER(9),
  CONTA_C       NUMBER(9),
  OWNER_NAME    VARCHAR2(255),
  EX_CHECK_FLAG VARCHAR2(1),
  EX_CHECK_TIME DATE,
  REAL_PACK_NO  NUMBER(9),
  REAL_GROSS_WT NUMBER(19,4),
  NOTE          VARCHAR2(255)
)
;
alter table ALLSYS.IM_TRANS_ALARM_LIST_REL
  add constraint PK_IM_TRANS_ALARM_LIST_REL primary key (PRE_NO, RECORD_NUMBER);
create index ALLSYS.IDX_IM_ALARM_LIST_REL_ENTRY_NO on ALLSYS.IM_TRANS_ALARM_LIST_REL (ENTRY_NO);

prompt
prompt Creating table IM_TRANS_CONTA_REL
prompt =================================
prompt
create table ALLSYS.IM_TRANS_CONTA_REL
(
  PRE_NO           VARCHAR2(16) not null,
  RECORD_NUMBER    VARCHAR2(3) default 1 not null,
  CONTA_NO         VARCHAR2(11) not null,
  TRANS_NAME       VARCHAR2(32),
  TRANS_WEIGHT     NUMBER(19,4) default 0,
  CONTA_MODEL      VARCHAR2(2),
  SEAL_NO          VARCHAR2(10),
  SEAL_NUM         NUMBER(9) default 0,
  CONTA_CHECK_MARK VARCHAR2(1),
  CONTA_CHK_ER     VARCHAR2(8),
  CONTA_CHK_TIME   DATE,
  EXAM_FLAG        VARCHAR2(6),
  CONTA1           VARCHAR2(32),
  SEND_PORT        VARCHAR2(4),
  RECV_PORT        VARCHAR2(4),
  ESEAL_ID         VARCHAR2(128)
)
;
alter table ALLSYS.IM_TRANS_CONTA_REL
  add constraint PK_IM_TRANS_CONTA_REL primary key (PRE_NO, RECORD_NUMBER, CONTA_NO);
create index ALLSYS.IDX_IM_CONTA_REL_CONTA_NO on ALLSYS.IM_TRANS_CONTA_REL (CONTA_NO);
create index ALLSYS.IDX_IM_CONTA_REL_TRANS_NAME on ALLSYS.IM_TRANS_CONTA_REL (TRANS_NAME);

prompt
prompt Creating table IM_TRANS_GOODS_CONTA_REL
prompt =======================================
prompt
create table ALLSYS.IM_TRANS_GOODS_CONTA_REL
(
  PRE_NO             VARCHAR2(16) not null,
  RECORD_NUMBER      VARCHAR2(3) default 1 not null,
  G_NO               NUMBER(9) default 1 not null,
  CONTA_NO           VARCHAR2(11) not null,
  CONTA_GOODS_COUNT  NUMBER(9) default 0,
  CONTA_GOODS_WEIGHT NUMBER(19,4) default 0,
  SEND_PORT          VARCHAR2(4),
  RECV_PORT          VARCHAR2(4)
)
;
alter table ALLSYS.IM_TRANS_GOODS_CONTA_REL
  add constraint PK_IM_TRANS_GOODS_CONTA_REL primary key (PRE_NO, RECORD_NUMBER, G_NO, CONTA_NO);

prompt
prompt Creating table IM_TRANS_HIS_CONTA_REL
prompt =====================================
prompt
create table ALLSYS.IM_TRANS_HIS_CONTA_REL
(
  PRE_NO           VARCHAR2(16) not null,
  RECORD_NUMBER    VARCHAR2(3) default 1 not null,
  CONTA_NO         VARCHAR2(11) not null,
  TRANS_NAME       VARCHAR2(32),
  TRANS_WEIGHT     NUMBER(19,4),
  CONTA_MODEL      VARCHAR2(2),
  SEAL_NO          VARCHAR2(10),
  SEAL_NUM         NUMBER(9),
  CONTA_CHECK_MARK VARCHAR2(1),
  CONTA_CHK_ER     VARCHAR2(8),
  CONTA_CHK_TIME   DATE,
  EXAM_FLAG        VARCHAR2(6),
  CONTA1           VARCHAR2(32)
)
;
alter table ALLSYS.IM_TRANS_HIS_CONTA_REL
  add constraint PK_IM_TRANS_HIS_CONTA_REL primary key (PRE_NO, RECORD_NUMBER, CONTA_NO);
create index ALLSYS.IDX_IM_HIS_CONTA_REL_CONTA_NO on ALLSYS.IM_TRANS_HIS_CONTA_REL (CONTA_NO);

prompt
prompt Creating table IM_TRANS_HIS_GOODS_CONTA_REL
prompt ===========================================
prompt
create table ALLSYS.IM_TRANS_HIS_GOODS_CONTA_REL
(
  PRE_NO             VARCHAR2(16) not null,
  RECORD_NUMBER      VARCHAR2(3) default 1 not null,
  G_NO               NUMBER(9) not null,
  CONTA_NO           VARCHAR2(11) not null,
  CONTA_GOODS_COUNT  NUMBER(9),
  CONTA_GOODS_WEIGHT NUMBER(19,4)
)
;
alter table ALLSYS.IM_TRANS_HIS_GOODS_CONTA_REL
  add constraint PK_IM_TRANS_HIS_GOODS_CONTA_RE primary key (PRE_NO, RECORD_NUMBER, G_NO, CONTA_NO);

prompt
prompt Creating table IM_TRANS_HIS_LIST_REL
prompt ====================================
prompt
create table ALLSYS.IM_TRANS_HIS_LIST_REL
(
  PRE_NO        VARCHAR2(16) not null,
  RECORD_NUMBER VARCHAR2(3) not null,
  TRAF_MODE     VARCHAR2(1),
  SHIP_ID       VARCHAR2(32),
  SHIP_NAME_EN  VARCHAR2(255),
  VOYAGE_NO     VARCHAR2(32),
  BILL_NO       VARCHAR2(32),
  I_E_DATE      DATE,
  ENTRY_NO      VARCHAR2(18),
  BIND_FLAG     VARCHAR2(1),
  REC_FLAG      VARCHAR2(1),
  PACK_NO       NUMBER(9),
  GROSS_WT      NUMBER(19,4),
  GOODS_COUNT   NUMBER(9),
  CONTA_C       NUMBER(9),
  OWNER_NAME    VARCHAR2(255),
  EX_CHECK_FLAG VARCHAR2(1),
  EX_CHECK_TIME DATE,
  REAL_PACK_NO  NUMBER(9),
  REAL_GROSS_WT NUMBER(19,4),
  NOTE          VARCHAR2(255)
)
;
alter table ALLSYS.IM_TRANS_HIS_LIST_REL
  add constraint PK_IM_TRANS_HIS_LIST_REL primary key (PRE_NO, RECORD_NUMBER);
create index ALLSYS.IDX_IM_HIS_LIST_REL_ENTRY_NO on ALLSYS.IM_TRANS_HIS_LIST_REL (ENTRY_NO);

prompt
prompt Creating table IM_TRANS_LIST_REL
prompt ================================
prompt
create table ALLSYS.IM_TRANS_LIST_REL
(
  PRE_NO         VARCHAR2(16) not null,
  RECORD_NUMBER  VARCHAR2(3) default 1 not null,
  TRAF_MODE      VARCHAR2(1),
  SHIP_ID        VARCHAR2(32),
  SHIP_NAME_EN   VARCHAR2(255),
  VOYAGE_NO      VARCHAR2(32),
  BILL_NO        VARCHAR2(32),
  I_E_DATE       DATE,
  ENTRY_NO       VARCHAR2(18),
  BIND_FLAG      VARCHAR2(1),
  REC_FLAG       VARCHAR2(1),
  PACK_NO        NUMBER(9) default 0,
  GROSS_WT       NUMBER(19,4) default 0,
  GOODS_COUNT    NUMBER(9) default 0,
  CONTA_C        NUMBER(9) default 0,
  OWNER_NAME     VARCHAR2(255),
  EX_CHECK_FLAG  VARCHAR2(1),
  EX_CHECK_TIME  DATE,
  REAL_PACK_NO   NUMBER(9) default 0,
  REAL_GROSS_WT  NUMBER(19,4) default 0,
  NOTE           VARCHAR2(255),
  SEND_PORT      VARCHAR2(4),
  RECV_PORT      VARCHAR2(4),
  EX_CHECK_OP_ID VARCHAR2(8)
)
;
alter table ALLSYS.IM_TRANS_LIST_REL
  add constraint PK_IM_TRANS_LIST_REL primary key (PRE_NO, RECORD_NUMBER);
create index ALLSYS.IDX_IM_LIST_REL_ENTRY_NO on ALLSYS.IM_TRANS_LIST_REL (ENTRY_NO);

prompt
prompt Creating table IM_TRAN_JOU
prompt ==========================
prompt
create table ALLSYS.IM_TRAN_JOU
(
  I_E_PORT      VARCHAR2(4),
  ENTRY_ID      VARCHAR2(18) not null,
  G_NO          NUMBER(9) not null,
  ENTRY_LIC_NO  VARCHAR2(20),
  CODE_TS       VARCHAR2(16),
  G_NAME        VARCHAR2(255),
  G_MODEL       VARCHAR2(255),
  QTY_1         NUMBER(19,4),
  UNIT_NAME     VARCHAR2(32),
  USD_PRICE     NUMBER(19),
  REL_DATE      DATE,
  REL_TIME      DATE,
  REL_ER        VARCHAR2(8),
  AFTER_MARK    VARCHAR2(1),
  SEND_GEN_DATE DATE,
  NOTE_S        VARCHAR2(255),
  SECURITY_ID   VARCHAR2(16)
)
;
alter table ALLSYS.IM_TRAN_JOU
  add constraint PK_IM_TRAN_JOU primary key (ENTRY_ID, G_NO);

prompt
prompt Creating table INCOME_INFO
prompt ==========================
prompt
create table ALLSYS.INCOME_INFO
(
  RPTNO        VARCHAR2(32) not null,
  CORCORPNAME  VARCHAR2(128),
  TRADE_CO     VARCHAR2(10),
  CSTSETCODE   VARCHAR2(1),
  TXCCY        VARCHAR2(3),
  TXAMT        NUMBER(21,2),
  INCHARGECCY  VARCHAR2(3),
  INCHARGEAMT  NUMBER(21,2),
  OUTCHARGECCY VARCHAR2(3),
  OUTCHARGEAMT NUMBER(21,2),
  OPPNAME      VARCHAR2(128),
  COUNTRYCODE  VARCHAR2(3),
  RCVTYPE      VARCHAR2(1),
  ISWRITEOFF   VARCHAR2(1),
  RECV_DATE    DATE
)
;
alter table ALLSYS.INCOME_INFO
  add constraint PK_INCOME_INFO primary key (RPTNO);

prompt
prompt Creating table INVESTER_REL
prompt ===========================
prompt
create table ALLSYS.INVESTER_REL
(
  TRADE_CO    VARCHAR2(10) not null,
  INV_NO      NUMBER(19) not null,
  INV_CO      VARCHAR2(255),
  INV_MOD     VARCHAR2(32),
  INV_FUND    NUMBER(19,4),
  ACT_FUND    NUMBER(19,4),
  INV_DATE    DATE,
  INV_COUNTRY VARCHAR2(3)
)
;
alter table ALLSYS.INVESTER_REL
  add constraint PK_INVESTER_REL primary key (TRADE_CO, INV_NO);

prompt
prompt Creating table INVLOG_REL
prompt =========================
prompt
create table ALLSYS.INVLOG_REL
(
  LOG_ID           NUMBER(19) not null,
  LOG_MODE         VARCHAR2(4),
  LOG_DATE         DATE default SYSDATE,
  LOG_OPER_ID      VARCHAR2(32),
  LOG_CUSTOMS_CODE VARCHAR2(4),
  LOG_COMPUTER     VARCHAR2(32),
  TRADE_CO         VARCHAR2(10),
  INV_NO           NUMBER(19),
  INV_CO           VARCHAR2(255),
  INV_MOD          VARCHAR2(32),
  INV_FUND         NUMBER(19,4),
  ACT_FUND         NUMBER(19,4),
  INV_DATE         DATE,
  INV_COUNTRY      VARCHAR2(3)
)
;
alter table ALLSYS.INVLOG_REL
  add constraint PK_INVLOG_REL primary key (LOG_ID);

prompt
prompt Creating table JOB_PARAMETER
prompt ============================
prompt
create table ALLSYS.JOB_PARAMETER
(
  JOB_NAME        VARCHAR2(32) not null,
  PARAMETER_NAME  VARCHAR2(32) not null,
  PARAMETER_VALUE VARCHAR2(32) not null,
  UPDATE_TIME     DATE not null,
  NOTES           VARCHAR2(255)
)
;
alter table ALLSYS.JOB_PARAMETER
  add constraint PK_JOB_PARAMETER primary key (JOB_NAME, PARAMETER_NAME, PARAMETER_VALUE);

prompt
prompt Creating table LSP_CHK
prompt ======================
prompt
create table ALLSYS.LSP_CHK
(
  LSP_ID      VARCHAR2(18) not null,
  LSP_TYPE    VARCHAR2(1) not null,
  I_E_FLAG    VARCHAR2(1) not null,
  ENTRY_ID    VARCHAR2(18) not null,
  G_NO        NUMBER(9) not null,
  CREATE_DATE DATE,
  RMB_PRICE   NUMBER(19),
  USD_PRICE   NUMBER(19),
  G_QTY       NUMBER(19,5),
  G_UNIT      VARCHAR2(3),
  QTY_1       NUMBER(19,5),
  UNIT_1      VARCHAR2(3),
  CHK_MARK    VARCHAR2(1)
)
;
alter table ALLSYS.LSP_CHK
  add constraint PK_LSP_CHK primary key (LSP_ID, LSP_TYPE, I_E_FLAG, ENTRY_ID, G_NO);
create index ALLSYS.IX_LSP_CHK_ENTRY_ID on ALLSYS.LSP_CHK (ENTRY_ID);

prompt
prompt Creating table LSP_HEAD
prompt =======================
prompt
create table ALLSYS.LSP_HEAD
(
  LSP_ID             VARCHAR2(32) not null,
  LSP_TYPE           VARCHAR2(1) not null,
  I_E_FLAG           VARCHAR2(1) not null,
  EPORT_ID           VARCHAR2(18),
  LSP_DEPART_CODE    VARCHAR2(32),
  LSL_DEPART_NAME    VARCHAR2(255),
  DECL_PORT          VARCHAR2(4),
  OWNER_CODE         VARCHAR2(10),
  OWNER_ST_CODE      VARCHAR2(32),
  OWNER_NAME         VARCHAR2(255),
  TRADE_MODE         VARCHAR2(4),
  TRADE_MODE_NAME    VARCHAR2(32),
  CONTR_NO           VARCHAR2(32),
  TRAF_NAME          VARCHAR2(255),
  VOYAGE_NO          VARCHAR2(32),
  BILL_NO            VARCHAR2(32),
  TRADE_COUNTRY      VARCHAR2(4),
  TRADE_COUNTRY_NAME VARCHAR2(32),
  DISTRICT_CODE      VARCHAR2(8),
  APPR_QTY           NUMBER(19,5),
  QTY_UNIT           VARCHAR2(3),
  APPR_PRICE         NUMBER(19,4),
  PRICE_CURR         VARCHAR2(3),
  OP_FLAG            VARCHAR2(1),
  SIGN_DATE          DATE,
  VALID_DATE         DATE,
  NOTES              VARCHAR2(255),
  SIGN_DATA          VARCHAR2(380),
  PROC_MARK          VARCHAR2(8),
  ENTRY_ID           VARCHAR2(18),
  VERIFY_ER          VARCHAR2(32),
  VERIFY_DATE        DATE,
  CLEAR_ER           VARCHAR2(32),
  CLEAR_DATE         DATE,
  REVOKE_ER          VARCHAR2(32),
  REVOKE_DATE        DATE,
  CREATE_DATE        DATE default SYSDATE
)
;
alter table ALLSYS.LSP_HEAD
  add constraint PK_LSP_HEAD primary key (LSP_ID, LSP_TYPE, I_E_FLAG);
create index ALLSYS.IDX_LSPHEAD_ENTRYID on ALLSYS.LSP_HEAD (ENTRY_ID);

prompt
prompt Creating table LSP_LIST
prompt =======================
prompt
create table ALLSYS.LSP_LIST
(
  LSP_ID         VARCHAR2(32) not null,
  LSP_TYPE       VARCHAR2(1) not null,
  I_E_FLAG       VARCHAR2(1) not null,
  G_NO           NUMBER(9) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  TRADE_TOTAL    NUMBER(19,4),
  TRADE_CURR     VARCHAR2(3),
  G_QTY          NUMBER(19,4),
  G_UNIT         VARCHAR2(3),
  QTY_1          NUMBER(19,4),
  UNIT_1         VARCHAR2(3),
  PACK_NO        NUMBER(19,4),
  PACK_TYPE      VARCHAR2(32),
  NOTE           VARCHAR2(255)
)
;
alter table ALLSYS.LSP_LIST
  add constraint PK_LSP_LIST primary key (LSP_ID, LSP_TYPE, I_E_FLAG, G_NO);

prompt
prompt Creating table MAIL_FILE
prompt ========================
prompt
create table ALLSYS.MAIL_FILE
(
  NO           NUMBER(9) not null,
  SEND_PORT    VARCHAR2(4),
  RECV_PORT    VARCHAR2(4),
  NOTE         VARCHAR2(1024),
  PROCESS_MARK VARCHAR2(1),
  RECV_NAME    VARCHAR2(8),
  RECV_DATE    DATE,
  CA_KEY       VARCHAR2(380),
  HASH_SIGN    VARCHAR2(380)
)
;
alter table ALLSYS.MAIL_FILE
  add constraint PK_MAIL_FILE primary key (NO);

prompt
prompt Creating table MANA_REL
prompt =======================
prompt
create table ALLSYS.MANA_REL
(
  TRADE_CO     VARCHAR2(10) not null,
  MANAG_NO     NUMBER(19) not null,
  MANAG_NAME   VARCHAR2(32),
  MANAG_TITLE  VARCHAR2(32),
  MANAG_NAT    VARCHAR2(3),
  MANAG_ID     VARCHAR2(32),
  MANAG_BIR    DATE,
  MANAG_SEX    VARCHAR2(2),
  MANAG_ADDR   VARCHAR2(255),
  MANAG_TEL_BP VARCHAR2(32),
  MANAG_NOTE   VARCHAR2(255),
  MANAG_DEGREE VARCHAR2(32),
  MANAG_MAR    VARCHAR2(1)
)
;
alter table ALLSYS.MANA_REL
  add constraint PK_MANA_REL primary key (TRADE_CO, MANAG_NO);

prompt
prompt Creating table MANIFEST_CHK
prompt ===========================
prompt
create table ALLSYS.MANIFEST_CHK
(
  I_E_FLAG     VARCHAR2(1) not null,
  FORM_ID      VARCHAR2(18) not null,
  SHIP_ID      VARCHAR2(32) not null,
  VOYAGE_NO    VARCHAR2(32) not null,
  BILL_NO      VARCHAR2(32) not null,
  TRAF_MODE    VARCHAR2(1) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  SHIP_NAME_EN VARCHAR2(255),
  FORM_FLAG    VARCHAR2(1),
  PACK_NO      NUMBER(19,5),
  GROSS_WT     NUMBER(19,5),
  CHK_MARK     VARCHAR2(1),
  CHK_ER       VARCHAR2(8),
  CHK_DATE     DATE,
  DELAY_DAYS   NUMBER(19),
  REL_ER       VARCHAR2(8),
  REL_DATE     DATE,
  COUNTRY_CODE VARCHAR2(3),
  NOTES        VARCHAR2(255)
)
;
alter table ALLSYS.MANIFEST_CHK
  add constraint PK_MANIFEST_CHK primary key (BILL_NO, SHIP_ID, VOYAGE_NO, CUSTOMS_CODE, TRAF_MODE, I_E_FLAG, FORM_ID);
create index ALLSYS.IX_MANIFEST_CHK_FORM_ID on ALLSYS.MANIFEST_CHK (FORM_ID);

prompt
prompt Creating table MANIFEST_CHK_LOG
prompt ===============================
prompt
create table ALLSYS.MANIFEST_CHK_LOG
(
  FORM_ID      VARCHAR2(18) not null,
  CREATE_DATE  DATE default SYSDATE not null,
  OPER_FLAG    VARCHAR2(1),
  OPER_ER      VARCHAR2(8),
  FORM_FLAG    VARCHAR2(1),
  SHIP_ID      VARCHAR2(32),
  VOYAGE_NO    VARCHAR2(32),
  SHIP_NAME_EN VARCHAR2(255),
  BILL_NO      VARCHAR2(32) not null,
  TRAF_MODE    VARCHAR2(1),
  CUSTOMS_CODE VARCHAR2(4),
  I_E_FLAG     VARCHAR2(1),
  PACK_NO      NUMBER(19,5),
  GROSS_WT     NUMBER(19,5),
  CHK_MARK     VARCHAR2(1),
  CHK_ER       VARCHAR2(8),
  CHK_DATE     DATE,
  REL_ER       VARCHAR2(8),
  REL_DATE     DATE,
  COUNTRY_CODE VARCHAR2(3),
  NOTES        VARCHAR2(255)
)
;
alter table ALLSYS.MANIFEST_CHK_LOG
  add constraint PK_MANIFEST_CHK_LOG primary key (FORM_ID, CREATE_DATE, BILL_NO);

prompt
prompt Creating table MANIFEST_CONTA
prompt =============================
prompt
create table ALLSYS.MANIFEST_CONTA
(
  I_E_FLAG     VARCHAR2(1) not null,
  TRAF_MODE    VARCHAR2(1) not null,
  VOYAGE_NO    VARCHAR2(32) not null,
  BILL_NO      VARCHAR2(32) not null,
  CONTA_ID     VARCHAR2(32) not null,
  SHIP_ID      VARCHAR2(32) not null,
  CONTA_MODEL  VARCHAR2(2),
  SEAL_NO      VARCHAR2(32),
  CONTA_WT     NUMBER(19,5),
  CONTA_FLAG   VARCHAR2(1),
  PACK_NO      NUMBER(19,5),
  MAIN_G_NAME  VARCHAR2(255),
  NOTES        VARCHAR2(255),
  CUSTOMS_CODE VARCHAR2(4)
)
;
alter table ALLSYS.MANIFEST_CONTA
  add constraint PK_MANIFEST_CONTA primary key (VOYAGE_NO, TRAF_MODE, I_E_FLAG, BILL_NO, CONTA_ID, SHIP_ID);

prompt
prompt Creating table MANIFEST_EXCH_LOG
prompt ================================
prompt
create table ALLSYS.MANIFEST_EXCH_LOG
(
  CUSTOMS_CODE     VARCHAR2(4) not null,
  VOYAGE_NO        VARCHAR2(32) not null,
  SHIP_ID          VARCHAR2(32) not null,
  BILL_NO          VARCHAR2(32) not null,
  I_E_DATE         DATE not null,
  I_E_FLAG         VARCHAR2(1),
  TRAF_MODE        VARCHAR2(1),
  SHIP_NAME_EN     VARCHAR2(255),
  NOTICE_DATE      DATE,
  FILE_NAME        VARCHAR2(50),
  MANTFEST_NO      VARCHAR2(18),
  OP_MODE          VARCHAR2(3),
  MODIFY_TIMES     NUMBER(9),
  NEW_CHANNEL      VARCHAR2(1),
  SUR_NOTICE_DATE  DATE,
  SUR_FILE_NAME    VARCHAR2(50),
  SUR_ER           VARCHAR2(8),
  INSE_NOTICE_DATE DATE,
  INSE_FILE_NAME   VARCHAR2(50),
  INSE_CHANNEL     VARCHAR2(1),
  EXCH_NOTICE_DATE DATE,
  EXCH_FILE_NAME   VARCHAR2(50),
  EXCH_OP_TACHE    VARCHAR2(3),
  EXCH_ER          VARCHAR2(8),
  CHK_NOTICE_DATE  DATE,
  CHK_FILE_NAME    VARCHAR2(50),
  CHK_OP_TACHE     VARCHAR2(3),
  CHK_ER           VARCHAR2(8),
  REL_NOTICE_DATE  DATE,
  REL_FILE_NAME    VARCHAR2(50),
  REL_OP_TACHE     VARCHAR2(3),
  REL_ER           VARCHAR2(8),
  NOTES            VARCHAR2(255)
)
;
alter table ALLSYS.MANIFEST_EXCH_LOG
  add constraint PK_MANIFEST_EXCH_LOG primary key (CUSTOMS_CODE, SHIP_ID, VOYAGE_NO, BILL_NO, I_E_DATE);
create index ALLSYS.IX_MANIFEST_EXCH_LOG_BILL_NO on ALLSYS.MANIFEST_EXCH_LOG (BILL_NO);

prompt
prompt Creating table MANIFEST_EXCH_LOG_BAK
prompt ====================================
prompt
create table ALLSYS.MANIFEST_EXCH_LOG_BAK
(
  CUSTOMS_CODE     VARCHAR2(4) not null,
  VOYAGE_NO        VARCHAR2(32) not null,
  SHIP_ID          VARCHAR2(32) not null,
  BILL_NO          VARCHAR2(32) not null,
  I_E_DATE         DATE not null,
  CREATE_DATE      DATE not null,
  I_E_FLAG         VARCHAR2(1),
  TRAF_MODE        VARCHAR2(1),
  SHIP_NAME_EN     VARCHAR2(255),
  NOTICE_DATE      DATE,
  FILE_NAME        VARCHAR2(50),
  MANTFEST_NO      VARCHAR2(18),
  OP_MODE          VARCHAR2(3),
  MODIFY_TIMES     NUMBER(9),
  INSE_NOTICE_DATE DATE,
  INSE_FILE_NAME   VARCHAR2(50),
  INSE_CHANNEL     VARCHAR2(1),
  NOTES            VARCHAR2(255)
)
;
alter table ALLSYS.MANIFEST_EXCH_LOG_BAK
  add constraint PK_MANIFEST_EXCH_LOG_BAK primary key (CUSTOMS_CODE, SHIP_ID, VOYAGE_NO, BILL_NO, I_E_DATE, CREATE_DATE);

prompt
prompt Creating table MANIFEST_HEAD
prompt ============================
prompt
create table ALLSYS.MANIFEST_HEAD
(
  I_E_FLAG        VARCHAR2(1) not null,
  CUSTOMS_CODE    VARCHAR2(4) not null,
  TRAF_MODE       VARCHAR2(1) not null,
  VOYAGE_NO       VARCHAR2(32) not null,
  SHIP_ID         VARCHAR2(32) not null,
  I_E_DATE        DATE not null,
  I_E_PORT        VARCHAR2(4),
  SHIP_NAME_CN    VARCHAR2(255),
  SHIP_NAME_EN    VARCHAR2(255),
  CONTA_NUM       NUMBER(19),
  EMPTY_CONTA_NUM NUMBER(19),
  T_GROSS_WT      NUMBER(19,5),
  T_PACK_NO       NUMBER(19),
  BILL_NUM        NUMBER(19),
  TAL_FLAG        VARCHAR2(1),
  D_MODE          VARCHAR2(1),
  D_DATE          DATE,
  BILL_FLAG       VARCHAR2(1),
  OP_ID           VARCHAR2(8),
  MANIFEST_NO     VARCHAR2(18)
)
;
alter table ALLSYS.MANIFEST_HEAD
  add constraint PK_MANIFEST_HEAD primary key (I_E_FLAG, CUSTOMS_CODE, TRAF_MODE, VOYAGE_NO, SHIP_ID, I_E_DATE);
create index ALLSYS.IX_MANIFEST_HEAD_NAME on ALLSYS.MANIFEST_HEAD (I_E_FLAG, CUSTOMS_CODE, TRAF_MODE, VOYAGE_NO, SHIP_NAME_EN);

prompt
prompt Creating table MANIFEST_HEAD_XMS_LOG
prompt ====================================
prompt
create table ALLSYS.MANIFEST_HEAD_XMS_LOG
(
  I_E_FLAG     VARCHAR2(1) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  TRAF_MODE    VARCHAR2(1) not null,
  VOYAGE_NO    VARCHAR2(32) not null,
  SHIP_ID      VARCHAR2(32) not null,
  I_E_DATE     DATE not null,
  CREATE_DATE  DATE
)
;
alter table ALLSYS.MANIFEST_HEAD_XMS_LOG
  add constraint PK_MANIFEST_HEAD_XMS_LOG primary key (VOYAGE_NO, SHIP_ID, CUSTOMS_CODE, I_E_DATE, TRAF_MODE, I_E_FLAG);

prompt
prompt Creating table MANIFEST_LIST
prompt ============================
prompt
create table ALLSYS.MANIFEST_LIST
(
  I_E_FLAG            VARCHAR2(1) not null,
  CUSTOMS_CODE        VARCHAR2(4) not null,
  TRAF_MODE           VARCHAR2(1) not null,
  VOYAGE_NO           VARCHAR2(32) not null,
  BILL_NO             VARCHAR2(32) not null,
  SHIP_ID             VARCHAR2(32) not null,
  I_E_DATE            DATE not null,
  BILL_FLAG           VARCHAR2(1),
  SHIP_NAME_EN        VARCHAR2(255),
  CONSIGNOR           VARCHAR2(255),
  CONSIGNEE           VARCHAR2(255),
  LOADING_PORT        VARCHAR2(6),
  DESTINATION_PORT    VARCHAR2(6),
  DISTRICT_CODE       VARCHAR2(5),
  DISCHARGE_PLACE     VARCHAR2(8),
  MAIN_G_NAME         VARCHAR2(255),
  PACK_NO             NUMBER(19,5),
  WRAP_TYPE           VARCHAR2(32),
  VOLUME              NUMBER(19),
  MARK_CONTR          VARCHAR2(32),
  CONTA_NUM           NUMBER(19),
  GROSS_WT            NUMBER(19,5),
  BILL_PACK_NO        NUMBER(19,5),
  BILL_GROSS_WT       NUMBER(19,5),
  TAL_FLAG            VARCHAR2(1),
  TAL_DATE            DATE,
  TAL_ER              VARCHAR2(8),
  SUR_DATE            DATE,
  SUR_ER              VARCHAR2(8),
  EXAM_FLAG           VARCHAR2(1),
  URG_DATE            DATE,
  URG_ER              VARCHAR2(8),
  SEL_DATE            DATE,
  SEL_ER              VARCHAR2(8),
  ITEMS_NO            NUMBER(19),
  TOTAL_VALUE         NUMBER(19,4),
  CURR_CODE           VARCHAR2(3),
  I_E_PORT            VARCHAR2(4),
  DISTRIBUTE_FLAG     VARCHAR2(1),
  DISTRIBUTE_DATE     DATE,
  TRANS_NO            VARCHAR2(32),
  ARRIVE_DATE         DATE,
  BILL_NO_ORI         VARCHAR2(32),
  RSK_ER              VARCHAR2(8),
  RSK_DATE            DATE,
  RSK_CODE            VARCHAR2(2),
  RSK_LEVEL           VARCHAR2(1),
  RELEASE_ER          VARCHAR2(8),
  RELEASE_DATE        DATE,
  DISCHARGE_PLACE_ORI VARCHAR2(8),
  CN_SHIP_ID          VARCHAR2(15),
  CN_SHIP_ER          VARCHAR2(8),
  CN_SHIP_DATE        DATE,
  D_DATE              DATE,
  RSK_PHONE           VARCHAR2(32),
  RSK_RESULT          VARCHAR2(2),
  RSKAPPLY_ER         VARCHAR2(8),
  NOTES               VARCHAR2(255),
  CREATE_DATE         DATE
)
;
alter table ALLSYS.MANIFEST_LIST
  add constraint PK_MANIFEST_LIST primary key (BILL_NO, VOYAGE_NO, CUSTOMS_CODE, SHIP_ID, I_E_DATE, TRAF_MODE, I_E_FLAG);
create index ALLSYS.IX_MANIFESTLIST_TRANSNO on ALLSYS.MANIFEST_LIST (TRANS_NO);
create index ALLSYS.IX_MANIFEST_LIST_BILLORI on ALLSYS.MANIFEST_LIST (BILL_NO_ORI, VOYAGE_NO, CUSTOMS_CODE);
create index ALLSYS.IX_MANIFEST_LIST_I_E_DATE on ALLSYS.MANIFEST_LIST (I_E_DATE, CUSTOMS_CODE, TRAF_MODE, I_E_FLAG);
create index ALLSYS.IX_MANIFEST_LIST_VOYAGE_NO on ALLSYS.MANIFEST_LIST (VOYAGE_NO, SHIP_ID, CUSTOMS_CODE, I_E_DATE);

prompt
prompt Creating table MANIFEST_LIST_CONTA
prompt ==================================
prompt
create table ALLSYS.MANIFEST_LIST_CONTA
(
  I_E_FLAG     VARCHAR2(1) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  TRAF_MODE    VARCHAR2(1) not null,
  VOYAGE_NO    VARCHAR2(32) not null,
  BILL_NO      VARCHAR2(32) not null,
  CONTA_ID     VARCHAR2(32) not null,
  SHIP_ID      VARCHAR2(32) not null,
  RSK_ER       VARCHAR2(8),
  RSK_DATE     DATE,
  RSK_CODE     VARCHAR2(2),
  RSK_LEVEL    VARCHAR2(1),
  RSK_RESULT   VARCHAR2(2),
  RELEASE_ER   VARCHAR2(8),
  RELEASE_DATE DATE
)
;
alter table ALLSYS.MANIFEST_LIST_CONTA
  add constraint PK_MANIFEST_LIST_CONTA primary key (VOYAGE_NO, CUSTOMS_CODE, TRAF_MODE, I_E_FLAG, BILL_NO, CONTA_ID, SHIP_ID);

prompt
prompt Creating table MANIFEST_LIST_LOG
prompt ================================
prompt
create table ALLSYS.MANIFEST_LIST_LOG
(
  I_E_FLAG            VARCHAR2(1) not null,
  CUSTOMS_CODE        VARCHAR2(4) not null,
  TRAF_MODE           VARCHAR2(1) not null,
  VOYAGE_NO           VARCHAR2(32) not null,
  BILL_NO             VARCHAR2(32) not null,
  SHIP_ID             VARCHAR2(32) not null,
  CREATE_DATE         DATE default SYSDATE not null,
  OPER_FLAG           VARCHAR2(1),
  OPER_ER             VARCHAR2(8),
  BILL_FLAG           VARCHAR2(1),
  SHIP_NAME_EN        VARCHAR2(255),
  CONSIGNOR           VARCHAR2(255),
  CONSIGNEE           VARCHAR2(255),
  LOADING_PORT        VARCHAR2(6),
  DESTINATION_PORT    VARCHAR2(6),
  DISTRICT_CODE       VARCHAR2(5),
  DISCHARGE_PLACE     VARCHAR2(8),
  I_E_DATE            DATE not null,
  MAIN_G_NAME         VARCHAR2(255),
  PACK_NO             NUMBER(19,5),
  WRAP_TYPE           VARCHAR2(32),
  VOLUME              NUMBER(19),
  MARK_CONTR          VARCHAR2(32),
  CONTA_NUM           NUMBER(19),
  GROSS_WT            NUMBER(19,5),
  BILL_PACK_NO        NUMBER(19,5),
  BILL_GROSS_WT       NUMBER(19,5),
  TAL_FLAG            VARCHAR2(1),
  TAL_DATE            DATE,
  TAL_ER              VARCHAR2(8),
  SUR_DATE            DATE,
  SUR_ER              VARCHAR2(8),
  EXAM_FLAG           VARCHAR2(1),
  URG_DATE            DATE,
  URG_ER              VARCHAR2(8),
  SEL_DATE            DATE,
  SEL_ER              VARCHAR2(8),
  ITEMS_NO            NUMBER(19),
  TOTAL_VALUE         NUMBER(19,4),
  CURR_CODE           VARCHAR2(3),
  I_E_PORT            VARCHAR2(4),
  DISTRIBUTE_FLAG     VARCHAR2(1),
  DISTRIBUTE_DATE     DATE,
  TRANS_NO            VARCHAR2(32),
  ARRIVE_DATE         DATE,
  RSK_ER              VARCHAR2(8),
  RSK_DATE            DATE,
  RSK_CODE            VARCHAR2(2),
  RSK_LEVEL           VARCHAR2(1),
  RELEASE_ER          VARCHAR2(8),
  RELEASE_DATE        DATE,
  DISCHARGE_PLACE_ORI VARCHAR2(8),
  CN_SHIP_ID          VARCHAR2(15),
  CN_SHIP_ER          VARCHAR2(8),
  CN_SHIP_DATE        DATE,
  D_DATE              DATE,
  RSK_PHONE           VARCHAR2(32),
  RSK_RESULT          VARCHAR2(2),
  RSKAPPLY_ER         VARCHAR2(8),
  NOTES               VARCHAR2(255)
)
;
alter table ALLSYS.MANIFEST_LIST_LOG
  add constraint PK_MANIFEST_LIST_LOG primary key (I_E_FLAG, CUSTOMS_CODE, TRAF_MODE, VOYAGE_NO, BILL_NO, SHIP_ID, CREATE_DATE, I_E_DATE);

prompt
prompt Creating table MANIFEST_LIST_RSKINFO_LOG
prompt ========================================
prompt
create table ALLSYS.MANIFEST_LIST_RSKINFO_LOG
(
  BILL_NO      VARCHAR2(32) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  VOYAGE_NO    VARCHAR2(32) not null,
  SHIP_ID      VARCHAR2(32) not null,
  I_E_DATE     DATE not null,
  TRAF_MODE    VARCHAR2(1) not null,
  I_E_FLAG     VARCHAR2(1) not null,
  SHIP_NAME_EN VARCHAR2(255),
  RSK_ER       VARCHAR2(8),
  RSK_DATE     DATE not null,
  RSK_CODE     VARCHAR2(2),
  RSK_LEVEL    VARCHAR2(1),
  RSK_RESULT   VARCHAR2(2),
  RSKAPPLY_ER  VARCHAR2(8),
  RELEASE_ER   VARCHAR2(8),
  RELEASE_DATE DATE
)
;
alter table ALLSYS.MANIFEST_LIST_RSKINFO_LOG
  add constraint PK_MANIFEST_LIST_RSKINFO_LOG primary key (BILL_NO, CUSTOMS_CODE, VOYAGE_NO, SHIP_ID, I_E_DATE, TRAF_MODE, I_E_FLAG, RSK_DATE);
create index ALLSYS.IDX_MANIFEST_LIST_RSKINFO_LOG_ on ALLSYS.MANIFEST_LIST_RSKINFO_LOG (RSK_DATE, CUSTOMS_CODE);

prompt
prompt Creating table MGR_SECTION_CODE
prompt ===============================
prompt
create table ALLSYS.MGR_SECTION_CODE
(
  SECTION_ID   VARCHAR2(3) not null,
  CUSTOMS_CODE VARCHAR2(4) not null,
  SECTION_NAME VARCHAR2(32),
  FLAG         VARCHAR2(1),
  FLAG_DATE    DATE
)
;
alter table ALLSYS.MGR_SECTION_CODE
  add constraint PK_MGR_SECTION_CODE primary key (SECTION_ID, CUSTOMS_CODE);

prompt
prompt Creating table MGR_USER_INFO
prompt ============================
prompt
create table ALLSYS.MGR_USER_INFO
(
  EMPLOYEE_ID      VARCHAR2(16) not null,
  ACCOUNT_NAME     VARCHAR2(32) not null,
  COMMON_NAME      VARCHAR2(32),
  FULL_NAME        VARCHAR2(32),
  CUSTOMS_CODE     VARCHAR2(4),
  DEPARTMENT_ID    VARCHAR2(3),
  LOGIN_LIMIT      VARCHAR2(168),
  DESCRIPTION      VARCHAR2(32),
  ACCOUNT_DISABLED VARCHAR2(1),
  OP_FLAG          VARCHAR2(1),
  OP_TIME          DATE,
  SYN_TIME         DATE,
  DOMAIN_NAME      VARCHAR2(32) not null
)
;
alter table ALLSYS.MGR_USER_INFO
  add constraint PK_MGR_USER_INFO primary key (EMPLOYEE_ID, DOMAIN_NAME);

prompt
prompt Creating table MICROSOFTDTPROPERTIES
prompt ====================================
prompt
create table ALLSYS.MICROSOFTDTPROPERTIES
(
  ID       NUMBER,
  OBJECTID NUMBER,
  PROPERTY VARCHAR2(64),
  VALUE    VARCHAR2(255),
  LVALUE   LONG RAW,
  VERSION  NUMBER default (0)
)
;
alter table ALLSYS.MICROSOFTDTPROPERTIES
  add constraint MICROSOFT_PK_DTPROPERTIES primary key (ID, PROPERTY);
alter table ALLSYS.MICROSOFTDTPROPERTIES
  add constraint MICROSOFT_NN_ID
  check ("ID" IS NOT NULL);
alter table ALLSYS.MICROSOFTDTPROPERTIES
  add constraint MICROSOFT_NN_PROPERTY
  check ("PROPERTY" IS NOT NULL);
alter table ALLSYS.MICROSOFTDTPROPERTIES
  add constraint MICROSOFT_NN_VERSION
  check ("VERSION" IS NOT NULL);

prompt
prompt Creating table MNLBAK_ACCOUNT
prompt =============================
prompt
create table ALLSYS.MNLBAK_ACCOUNT
(
  MANUAL_NO         VARCHAR2(12) not null,
  ID_STAT           VARCHAR2(2) not null,
  CONTR_NO          VARCHAR2(32),
  OWNER_NAME        VARCHAR2(255),
  LIMIT_DATE        DATE,
  ACCOUNT_AMT_RMB   NUMBER(19,5),
  ACCOUNT_AMT       NUMBER(19,5),
  ACCOUNT_AMT_ORG   NUMBER(19,5),
  ACCOUNT_CURR      VARCHAR2(3),
  IM_AMT            NUMBER(19,5),
  TAX_AMT           NUMBER(19,5),
  DEFER_TAX_AMT     NUMBER(19,5),
  DEAL_MARK         VARCHAR2(1),
  TYPE_ER           VARCHAR2(8),
  TYPE_DATE         DATE,
  BANK_NOTE_NO      VARCHAR2(32),
  BANK_OPEN_DATE    DATE,
  BANK_NOTE_DATE    DATE,
  APPR_DATE         DATE,
  BANK_ID           VARCHAR2(20),
  NEXT_FLAG         VARCHAR2(2),
  NOTE_S            VARCHAR2(255),
  GUA_ID            VARCHAR2(12),
  GUA_APPL_DATE     DATE,
  GUA_OPEN_DATE     DATE,
  GUA_APPR_DATE     DATE,
  GUA_REGISTER_ER   VARCHAR2(8),
  GUA_REGISTER_DATE DATE,
  GUA_COPY          NUMBER(19),
  GUA_TYPE          VARCHAR2(1),
  GUA_OWNER_NAME    VARCHAR2(32),
  GUA_LIMIT_DATE    DATE,
  GUARANTEE_ADD     NUMBER(19,5),
  GUARANTEE_AMT     NUMBER(19,5),
  GUARANTEE_CURR    VARCHAR2(3),
  GUARANTEE_RMB     NUMBER(19,5),
  GUARANTEE_ORG     VARCHAR2(70),
  GUA_MARK          VARCHAR2(1),
  PROCESS_MARK      VARCHAR2(5),
  PROCESS_ER        VARCHAR2(8),
  PROCESS_DATE      DATE,
  OTHER_AMT         NUMBER(19,5),
  OTHER_NO          VARCHAR2(20),
  SEQ_NO            VARCHAR2(12),
  DOCUMENT_NO       VARCHAR2(12),
  DOCUMENT_DATE     DATE,
  DOCUMENT_MARK     VARCHAR2(1),
  DOCUMENT_ER       VARCHAR2(8),
  NOTE_MARK         VARCHAR2(10),
  PORT_CODE         VARCHAR2(4),
  ZQ_PRINT_FLAG     VARCHAR2(1),
  SECRECT_KEY       VARCHAR2(16)
)
;
alter table ALLSYS.MNLBAK_ACCOUNT
  add constraint PK_MNLBAK_ACCOUNT primary key (MANUAL_NO, ID_STAT);

prompt
prompt Creating table MNLBAK_APPL_CLOSE
prompt ================================
prompt
create table ALLSYS.MNLBAK_APPL_CLOSE
(
  MANUAL_NO      VARCHAR2(12) not null,
  APPL_NO        NUMBER(19),
  APPL_DATE      DATE,
  DECL_IN_AMT    NUMBER(19,5),
  DECL_EX_AMT    NUMBER(19,5),
  DECL_IN_COUNT  NUMBER(19),
  DECL_EX_COUNT  NUMBER(19),
  REMAIN_IN_AMT  NUMBER(19,4),
  REMAIN_EX_AMT  NUMBER(19,4),
  RESOR_IN_COUNT NUMBER(19),
  PRODU_IN_COUNT NUMBER(19),
  RESOR_EX_COUNT NUMBER(19),
  PRODU_EX_COUNT NUMBER(19),
  RESOR_IN_AMT   NUMBER(19,4),
  PRODU_IN_AMT   NUMBER(19,4),
  RESOR_EX_AMT   NUMBER(19,4),
  PRODU_EX_AMT   NUMBER(19,4),
  DC_DATE        DATE,
  TYPE_ER        VARCHAR2(8),
  DECL_CO        VARCHAR2(6),
  CHK_ER         VARCHAR2(8),
  RECHK_ER       VARCHAR2(8),
  CHK_DATE       DATE,
  RECHK_DATE     DATE,
  NOTE_S         VARCHAR2(255)
)
;
alter table ALLSYS.MNLBAK_APPL_CLOSE
  add constraint PK_MNLBAK_APPL_CLOSE primary key (MANUAL_NO);

prompt
prompt Creating table MNLBAK_CLAIM
prompt ===========================
prompt
create table ALLSYS.MNLBAK_CLAIM
(
  GUARANTEE_NO         VARCHAR2(12) not null,
  CLAIM_NO             VARCHAR2(12),
  MANUAL_NO            VARCHAR2(12),
  OWNER_NO             VARCHAR2(32),
  GUARANTEE_AMT        NUMBER(18),
  GUARANTEE_LIMIT_DATE DATE,
  BANK_ID              VARCHAR2(32),
  CLAIM_AMT            NUMBER(18,5),
  CLAIM_RATE           NUMBER(18,5),
  YEAR_RATE            NUMBER(18,5),
  CHK_ER               VARCHAR2(8),
  CHK_DATE             DATE,
  RECHK_ER             VARCHAR2(8),
  RECHK_DATE           DATE,
  CLAIM_DATE           DATE,
  CLAIM_ER             VARCHAR2(8),
  BANK_DATE            DATE,
  TYPE_ER              VARCHAR2(8),
  TYPE_DATE            DATE,
  OTHER_CERT_NO        VARCHAR2(32),
  PROC_MARK            VARCHAR2(32),
  LAST_ER              VARCHAR2(8),
  LAST_DATE            DATE,
  PAY_PRINT_DATE       DATE
)
;
alter table ALLSYS.MNLBAK_CLAIM
  add constraint PK_MNLBAK_CLAIM primary key (GUARANTEE_NO);

prompt
prompt Creating table MNLBAK_CONSUME
prompt =============================
prompt
create table ALLSYS.MNLBAK_CONSUME
(
  MANUAL_NO    VARCHAR2(12) not null,
  CONTR_ITEM   NUMBER(19) not null,
  EX_NO        NUMBER(19) not null,
  APPR_CONSUME NUMBER(19,10),
  APPR_DAMAGE  NUMBER(19,10),
  DECL_CONSUME NUMBER(19,10),
  DECL_DAMAGE  NUMBER(19,10)
)
;
alter table ALLSYS.MNLBAK_CONSUME
  add constraint PK_MNLBAK_CONSUME primary key (MANUAL_NO, CONTR_ITEM, EX_NO);

prompt
prompt Creating table MNLBAK_CONTRACT_HEAD
prompt ===================================
prompt
create table ALLSYS.MNLBAK_CONTRACT_HEAD
(
  MANUAL_NO        VARCHAR2(12) not null,
  PRE_MANUAL_NO    VARCHAR2(12),
  TRADE_CO         VARCHAR2(10),
  TRADE_NAME       VARCHAR2(255),
  DISTRICT_CODE    VARCHAR2(5),
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  FOREIGN_CO_NAME  VARCHAR2(32),
  FOREIGN_MGR      VARCHAR2(32),
  TRADE_MODE       VARCHAR2(4),
  CUT_MODE         VARCHAR2(3),
  TRADE_COUNTRY    VARCHAR2(3),
  PORT_1           VARCHAR2(4),
  PORT_2           VARCHAR2(4),
  PORT_3           VARCHAR2(4),
  PORT_4           VARCHAR2(4),
  PORT_5           VARCHAR2(4),
  AGREE_NO         VARCHAR2(32),
  LICENSE_NO       VARCHAR2(32),
  APPR_NO          VARCHAR2(32),
  CONTR_IN         VARCHAR2(32),
  CONTR_OUT        VARCHAR2(32),
  EQUIP_MODE       VARCHAR2(1),
  TRANS_MODE       VARCHAR2(1),
  INVEST_MODE      VARCHAR2(1),
  PAY_MODE         VARCHAR2(1),
  EX_SOURCE        NUMBER(19),
  PRODUCE_TYPE     VARCHAR2(2),
  RATIO_RANGE      NUMBER(19,4),
  IN_RATIO         NUMBER(19,4),
  INVEST_AMT       NUMBER(19,5),
  INVEST_CURR      VARCHAR2(3),
  APPR_DEV_AMT     NUMBER(19,5),
  FACT_DEV_AMT     NUMBER(19,5),
  IN_AMT           NUMBER(19,5),
  IN_CURR          VARCHAR2(3),
  FACT_IN_AMT      NUMBER(19,5),
  EX_AMT           NUMBER(19,5),
  EX_CURR          VARCHAR2(3),
  FACT_EX_AMT      NUMBER(19,5),
  DECL_FLAG        VARCHAR2(1),
  EXE_MARK         VARCHAR2(1),
  SUPV_MARK        VARCHAR2(10),
  IN_PNT           NUMBER(19),
  EX_PNT           NUMBER(19),
  CONTR_SEQNO      NUMBER(19),
  IM_COUNT         NUMBER(19),
  EX_COUNT         NUMBER(19),
  I_DATE           DATE,
  E_DATE           DATE,
  LIMIT_DATE       DATE,
  TYPE_ER          VARCHAR2(8),
  TYPE_DATE        DATE,
  CHK_ER           VARCHAR2(8),
  APPR_DATE        DATE,
  RECHK_ER         VARCHAR2(8),
  CLEAR_ER         VARCHAR2(8),
  CLEAR_APPL_DATE  DATE,
  CLEAR_DATE       DATE,
  CLOSE_ER         VARCHAR2(8),
  CLOSE_DATE       DATE,
  EXAM_MARK        VARCHAR2(10),
  CLEAR_MARK       VARCHAR2(10),
  CLOSE_MARK       VARCHAR2(1),
  TAX_TYPE         VARCHAR2(1),
  RECOVER_DUTY     NUMBER(19,5),
  RECOVER_TAX      NUMBER(19,5),
  RECOVER_REG      NUMBER(19,5),
  DEFER_DUTY       NUMBER(19,5),
  DEFER_TAX        NUMBER(19,5),
  DEFER_REG        NUMBER(19,5),
  FINE_AMT         NUMBER(19,5),
  REAL_DUTY        NUMBER(19,5),
  REAL_TAX         NUMBER(19,5),
  REAL_REG         NUMBER(19,5),
  SEQ_NO           VARCHAR2(12),
  VER_NO           VARCHAR2(12),
  VER_ER           VARCHAR2(8),
  VER_DATE         DATE,
  CUSTOMS_CODE     VARCHAR2(4),
  SERVICE_FEE_RATE NUMBER(19,5),
  PRE_SERVICE_FEE  NUMBER(19,5),
  FACT_SERVICE_FEE NUMBER(19,5),
  NOTE_S           VARCHAR2(255),
  TR_PNT           NUMBER(19),
  IN_RMB_RATE      NUMBER(19,8),
  IN_USD_RATE      NUMBER(19,8),
  EX_RMB_RATE      NUMBER(19,8),
  EX_USD_RATE      NUMBER(19,8),
  DEDUC_DATE       DATE,
  CHECK_DATE       DATE,
  HASH_SIGN        VARCHAR2(380),
  CASE_MARK        VARCHAR2(1)
)
;
alter table ALLSYS.MNLBAK_CONTRACT_HEAD
  add constraint PK_MNLBAK_CONTRACT_HEAD primary key (MANUAL_NO);

prompt
prompt Creating table MNLBAK_CONTRACT_WORKFLOW
prompt =======================================
prompt
create table ALLSYS.MNLBAK_CONTRACT_WORKFLOW
(
  MANUAL_NO    VARCHAR2(12) not null,
  STEP_ID      VARCHAR2(8) not null,
  PROC_DATE    DATE not null,
  PROC_ER      VARCHAR2(20),
  PROC_ID      VARCHAR2(8),
  PROC_POS     VARCHAR2(4),
  STATUS_STATE VARCHAR2(50)
)
;
alter table ALLSYS.MNLBAK_CONTRACT_WORKFLOW
  add constraint PK_MNLBAK_CONTRACT_WORKFLOW primary key (MANUAL_NO, STEP_ID, PROC_DATE);

prompt
prompt Creating table MNLBAK_EX_CONTRACT_CLEAR
prompt =======================================
prompt
create table ALLSYS.MNLBAK_EX_CONTRACT_CLEAR
(
  MANUAL_NO     VARCHAR2(12) not null,
  CONTR_ITEM    NUMBER(19) not null,
  APPR_AMT      NUMBER(19,5),
  FACT_AMT      NUMBER(19,5),
  APPR_QTY      NUMBER(19,4),
  FACT_QTY      NUMBER(19,4),
  PRODU_EX_AMT  NUMBER(19,5),
  PRODU_EX_QTY  NUMBER(19,4),
  PRODU_TAX_AMT NUMBER(19,5),
  PRODU_TAX_QTY NUMBER(19,4),
  REMAIN_AMT    NUMBER(19,5),
  REMAIN_QTY    NUMBER(19,4),
  ABANDON_AMT   NUMBER(19,5),
  ABANDON_QTY   NUMBER(19,4),
  ABANDON_DATE  DATE,
  ABANDON_ER    VARCHAR2(8),
  UNIT_1        VARCHAR2(3),
  CLEAR_ER      VARCHAR2(8),
  CLEAR_DATE    DATE,
  CLOSE_ER      VARCHAR2(8),
  CLOSE_DATE    DATE
)
;
alter table ALLSYS.MNLBAK_EX_CONTRACT_CLEAR
  add constraint PK_MNLBAK_EX_CONTRACT_CLEAR primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table MNLBAK_EX_CONTRACT_DEDUC
prompt =======================================
prompt
create table ALLSYS.MNLBAK_EX_CONTRACT_DEDUC
(
  MANUAL_NO   VARCHAR2(12) not null,
  CONTR_ITEM  NUMBER(19),
  ENTRY_ID    VARCHAR2(18) not null,
  ENTRY_ITEM  NUMBER(19),
  I_E_PORT    VARCHAR2(8),
  I_E_DATE    DATE,
  G_NO        NUMBER(19) not null,
  IN_QTY      NUMBER(19,4),
  I_ACCOUNT   NUMBER(19,5),
  I_CURR      VARCHAR2(3),
  DUTY_MODE   VARCHAR2(1),
  VERIFY_MODE VARCHAR2(1),
  VERIFY_DATE DATE,
  VERIFY_ER   VARCHAR2(8)
)
;
alter table ALLSYS.MNLBAK_EX_CONTRACT_DEDUC
  add constraint PK_MNLBAK_EX_CONTRACT_DEDUC primary key (MANUAL_NO, ENTRY_ID, G_NO);

prompt
prompt Creating table MNLBAK_EX_CONTRACT_LIST
prompt ======================================
prompt
create table ALLSYS.MNLBAK_EX_CONTRACT_LIST
(
  MANUAL_NO      VARCHAR2(12) not null,
  CONTR_ITEM     NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  CLASS_MARK     VARCHAR2(1),
  G_NAME         VARCHAR2(50),
  G_MODEL        VARCHAR2(50),
  ORIGIN_COUNTRY VARCHAR2(3),
  DUTY_MODE      VARCHAR2(1),
  DUTY_RATIO     NUMBER(19,5),
  LOCAL_CONTR    VARCHAR2(20),
  APPR_AMT       NUMBER(19,5),
  FACT_AMT       NUMBER(19,5),
  UNIT_PRICE     NUMBER(19,10),
  APPR_QTY       NUMBER(19,5),
  FACT_QTY       NUMBER(19,5),
  TRANSFER_QTY   NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  IN_COUNT       NUMBER(19),
  WORK_PAY       NUMBER(19),
  CURR_WORK      VARCHAR2(3),
  CONSUME_NOTE   VARCHAR2(255)
)
;
alter table ALLSYS.MNLBAK_EX_CONTRACT_LIST
  add constraint PK_MNLBAK_EX_CONTRACT_LIST primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table MNLBAK_EX_FASCICLE_LIST
prompt ======================================
prompt
create table ALLSYS.MNLBAK_EX_FASCICLE_LIST
(
  MANUAL_NO   VARCHAR2(12),
  FASCICLE_NO VARCHAR2(12) not null,
  CONTR_ITEM  NUMBER(19) not null,
  APPR_QTY    NUMBER(19,4),
  FACT_QTY    NUMBER(19,4)
)
;
alter table ALLSYS.MNLBAK_EX_FASCICLE_LIST
  add constraint PK_MNLBAK_EX_FASCICLE_LIST primary key (FASCICLE_NO, CONTR_ITEM);
create index ALLSYS.IX_EXFASCICLELIST_MANUALNO1 on ALLSYS.MNLBAK_EX_FASCICLE_LIST (MANUAL_NO);

prompt
prompt Creating table MNLBAK_FASCICLE_HEAD
prompt ===================================
prompt
create table ALLSYS.MNLBAK_FASCICLE_HEAD
(
  MANUAL_NO       VARCHAR2(12),
  FASCICLE_NO     VARCHAR2(12) not null,
  PRE_FASCICLE_NO VARCHAR2(12),
  I_E_PORT        VARCHAR2(4),
  TYPE_ER         VARCHAR2(8),
  TYPE_DATE       DATE,
  LIMIT_DATE      DATE,
  TRADE_CO        VARCHAR2(10),
  CHK_ER          VARCHAR2(8),
  RECHK_ER        VARCHAR2(8),
  PR_DATE         DATE,
  FASCICLE_TYPE   VARCHAR2(1),
  EXE_MARK        VARCHAR2(1),
  CONTR_IN        VARCHAR2(32),
  CONTR_OUT       VARCHAR2(32),
  IN_PNT          NUMBER(19),
  EX_PNT          NUMBER(19),
  SUPV_MARK       VARCHAR2(1),
  NOTE_S          VARCHAR2(255)
)
;
alter table ALLSYS.MNLBAK_FASCICLE_HEAD
  add constraint PK_MNLBAK_FASCICLE_HEAD primary key (FASCICLE_NO);
create index ALLSYS.IX_FASCICLEHEAD_MANUALNO1 on ALLSYS.MNLBAK_FASCICLE_HEAD (MANUAL_NO);

prompt
prompt Creating table MNLBAK_FEE_INVOICE
prompt =================================
prompt
create table ALLSYS.MNLBAK_FEE_INVOICE
(
  MANUAL_NO      VARCHAR2(12) not null,
  F_NO           NUMBER(19) not null,
  FEE_ID         NUMBER(19) not null,
  CREATE_DATE    DATE,
  CHK_ER         VARCHAR2(8),
  TYPE_ER        VARCHAR2(8),
  TYPE_DATE      DATE,
  FINANCIAL_FLAG VARCHAR2(1),
  FINANCIAL_DATE DATE,
  BOOK_NO        NUMBER(19),
  FEE_AMT        NUMBER(19,5),
  NOTE_S         VARCHAR2(255)
)
;
alter table ALLSYS.MNLBAK_FEE_INVOICE
  add constraint PK_MNLBAK_FEE_INVOICE primary key (MANUAL_NO, F_NO);

prompt
prompt Creating table MNLBAK_IM_CONTRACT_CLEAR
prompt =======================================
prompt
create table ALLSYS.MNLBAK_IM_CONTRACT_CLEAR
(
  MANUAL_NO     VARCHAR2(12) not null,
  CONTR_ITEM    NUMBER(19) not null,
  APPR_AMT      NUMBER(19,5),
  FACT_AMT      NUMBER(19,5),
  APPR_QTY      NUMBER(19,4),
  FACT_QTY      NUMBER(19,4),
  CONSUME_AMT   NUMBER(19,5),
  CONSUME_QTY   NUMBER(19,4),
  RESOR_IN_AMT  NUMBER(19,5),
  RESOR_IN_QTY  NUMBER(19,4),
  RESOR_EX_AMT  NUMBER(19,5),
  RESOR_EX_QTY  NUMBER(19,4),
  RESOR_TAX_AMT NUMBER(19,5),
  RESOR_TAX_QTY NUMBER(19,4),
  REMAIN_AMT    NUMBER(19,5),
  REMAIN_QTY    NUMBER(19,4),
  ABANDON_AMT   NUMBER(19,5),
  ABANDON_QTY   NUMBER(19,4),
  ABANDON_DATE  DATE,
  ABANDON_ER    VARCHAR2(8),
  UNIT_1        VARCHAR2(3),
  CLEAR_ER      VARCHAR2(8),
  CLEAR_DATE    DATE,
  CLOSE_ER      VARCHAR2(8),
  CLOSE_DATE    DATE
)
;
alter table ALLSYS.MNLBAK_IM_CONTRACT_CLEAR
  add constraint PK_MNLBAK_IM_CONTRACT_CLEAR primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table MNLBAK_IM_CONTRACT_DEDUC
prompt =======================================
prompt
create table ALLSYS.MNLBAK_IM_CONTRACT_DEDUC
(
  MANUAL_NO   VARCHAR2(12) not null,
  CONTR_ITEM  NUMBER(19),
  ENTRY_ID    VARCHAR2(18) not null,
  ENTRY_ITEM  NUMBER(19),
  I_E_PORT    VARCHAR2(8),
  I_E_DATE    DATE,
  G_NO        NUMBER(19) not null,
  IN_QTY      NUMBER(19,4),
  I_ACCOUNT   NUMBER(19,5),
  I_CURR      VARCHAR2(3),
  DUTY_MODE   VARCHAR2(1),
  VERIFY_MODE VARCHAR2(1),
  VERIFY_DATE DATE,
  VERIFY_ER   VARCHAR2(8),
  DUTY_PRINT  VARCHAR2(1)
)
;
alter table ALLSYS.MNLBAK_IM_CONTRACT_DEDUC
  add constraint PK_MNLBAK_IM_CONTRACT_DEDUC primary key (MANUAL_NO, ENTRY_ID, G_NO);

prompt
prompt Creating table MNLBAK_IM_CONTRACT_LIST
prompt ======================================
prompt
create table ALLSYS.MNLBAK_IM_CONTRACT_LIST
(
  MANUAL_NO      VARCHAR2(12) not null,
  CONTR_ITEM     NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  CLASS_MARK     VARCHAR2(1),
  G_NAME         VARCHAR2(50),
  G_MODEL        VARCHAR2(50),
  ORIGIN_COUNTRY VARCHAR2(3),
  DUTY_MODE      VARCHAR2(1),
  DUTY_RATIO     NUMBER(19,5),
  LOCAL_CONTR    VARCHAR2(20),
  APPR_AMT       NUMBER(19,5),
  FACT_AMT       NUMBER(19,5),
  UNIT_PRICE     NUMBER(19,10),
  APPR_QTY       NUMBER(19,5),
  FACT_QTY       NUMBER(19,5),
  TRANSFER_QTY   NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  IN_COUNT       NUMBER(19),
  IM_MODE        VARCHAR2(1),
  CONSUME_NOTE   VARCHAR2(255)
)
;
alter table ALLSYS.MNLBAK_IM_CONTRACT_LIST
  add constraint PK_MNLBAK_IM_CONTRACT_LIST primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table MNLBAK_IM_FASCICLE_LIST
prompt ======================================
prompt
create table ALLSYS.MNLBAK_IM_FASCICLE_LIST
(
  MANUAL_NO   VARCHAR2(12),
  FASCICLE_NO VARCHAR2(12) not null,
  CONTR_ITEM  NUMBER(19) not null,
  APPR_QTY    NUMBER(19,4),
  FACT_QTY    NUMBER(19,4)
)
;
alter table ALLSYS.MNLBAK_IM_FASCICLE_LIST
  add constraint PK_MNLBAK_IM_FASCICLE_LIST primary key (FASCICLE_NO, CONTR_ITEM);
create index ALLSYS.IX_IMFASCICLELIST_MANUALNO1 on ALLSYS.MNLBAK_IM_FASCICLE_LIST (MANUAL_NO);

prompt
prompt Creating table MNLBAK_PRESS_CLEAR
prompt =================================
prompt
create table ALLSYS.MNLBAK_PRESS_CLEAR
(
  MANUAL_NO     VARCHAR2(12) not null,
  PR_NO         VARCHAR2(14) not null,
  PR_COUNT      NUMBER(9),
  PR_CUSTOMS    VARCHAR2(4),
  PR_DEPARTMENT VARCHAR2(20),
  PR_DATE       DATE
)
;
alter table ALLSYS.MNLBAK_PRESS_CLEAR
  add constraint PK_MNLBAK_PRESS_CLEAR primary key (MANUAL_NO, PR_NO);

prompt
prompt Creating table MNLBAK_SERVICE_FEE
prompt =================================
prompt
create table ALLSYS.MNLBAK_SERVICE_FEE
(
  MANUAL_NO   VARCHAR2(12) not null,
  DUE_FEE_AMT NUMBER(19,5),
  PAY_FEE_AMT NUMBER(19,5),
  CREATE_DATE DATE,
  RETURN_ID   NUMBER(19),
  RETURN_FLAG VARCHAR2(1),
  REMAIN_AMT  NUMBER(19,5)
)
;
alter table ALLSYS.MNLBAK_SERVICE_FEE
  add constraint PK_MNLBAK_SERVICE_FEE primary key (MANUAL_NO);

prompt
prompt Creating table MNLBAK_SERVICE_LIST
prompt ==================================
prompt
create table ALLSYS.MNLBAK_SERVICE_LIST
(
  MANUAL_NO   VARCHAR2(12) not null,
  F_NO        NUMBER(19) not null,
  FEE_TYPE    VARCHAR2(1),
  FEE_RATE    NUMBER(19,5),
  G_NO        NUMBER(19),
  G_NAME      VARCHAR2(255),
  FEE_AMT     NUMBER(19,5),
  FEE_CURR    VARCHAR2(3),
  FEE_RMB     NUMBER(19,5),
  SERVICE_FEE NUMBER(19,5)
)
;
alter table ALLSYS.MNLBAK_SERVICE_LIST
  add constraint PK_MNLBAK_SERVICE_LIST primary key (MANUAL_NO, F_NO);

prompt
prompt Creating table MNL_PARA
prompt =======================
prompt
create table ALLSYS.MNL_PARA
(
  PARA_TYPE  VARCHAR2(10) not null,
  PARA_ID    VARCHAR2(10) not null,
  PARA_NAME  VARCHAR2(30),
  PARA_EXP   VARCHAR2(30),
  PARA_FLAG  VARCHAR2(20),
  PARA_VALUE VARCHAR2(255),
  PARA_MARK  VARCHAR2(30)
)
;
alter table ALLSYS.MNL_PARA
  add constraint PK_MNL_PARA primary key (PARA_TYPE, PARA_ID);

prompt
prompt Creating table MNL_PRESS
prompt ========================
prompt
create table ALLSYS.MNL_PRESS
(
  PARA_TYPE  VARCHAR2(10) not null,
  PARA_ID    VARCHAR2(10),
  PARA_NAME  VARCHAR2(30) not null,
  PARA_EXP   VARCHAR2(30),
  PARA_FLAG  VARCHAR2(20),
  PARA_VALUE VARCHAR2(255),
  PARA_MARK  VARCHAR2(30)
)
;
alter table ALLSYS.MNL_PRESS
  add constraint PK_MNL_PRESS primary key (PARA_TYPE, PARA_NAME);

prompt
prompt Creating table MNL_RECEIVE_RECEIPT
prompt ==================================
prompt
create table ALLSYS.MNL_RECEIVE_RECEIPT
(
  MANUAL_NO          VARCHAR2(12) not null,
  SEND_CUSTOMS       VARCHAR2(4) not null,
  CUSTOMS_CODE       VARCHAR2(4) not null,
  H2000_RECEIVE_DATE DATE not null,
  RECEIVE_DATE       DATE,
  TYPE               VARCHAR2(7),
  SEND_TIMES         NUMBER(9),
  APPL_NO            VARCHAR2(32),
  FLAG               VARCHAR2(1),
  NOTE               VARCHAR2(255)
)
;
alter table ALLSYS.MNL_RECEIVE_RECEIPT
  add constraint PK_MNL_RECEIVE_RECEIPT primary key (MANUAL_NO, SEND_CUSTOMS, CUSTOMS_CODE, H2000_RECEIVE_DATE);

prompt
prompt Creating table MNL_SEQ
prompt ======================
prompt
create table ALLSYS.MNL_SEQ
(
  MNL_KEY VARCHAR2(10) not null,
  MNL_SEQ NUMBER(16)
)
;
alter table ALLSYS.MNL_SEQ
  add constraint PK_MNL_SEQ primary key (MNL_KEY);

prompt
prompt Creating table MOD_PROJECT_HEAD
prompt ===============================
prompt
create table ALLSYS.MOD_PROJECT_HEAD
(
  PRE_PROJECT_ID   VARCHAR2(18),
  PROJECT_ID       VARCHAR2(18) not null,
  MODIFY_TIMES     NUMBER(9) not null,
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  TRADE_TYPE_NAME  VARCHAR2(12),
  APPR_DEPT        VARCHAR2(4),
  PROJECT_FUND     VARCHAR2(1),
  PROJECT_TYPE     VARCHAR2(12),
  PROJECT_NAME     VARCHAR2(255),
  PROJECT_DATE     DATE,
  START_DATE       DATE,
  LIMIT_DATE       DATE,
  FOREIGN_CO       VARCHAR2(255),
  FOREIGN_COUNTRY  VARCHAR2(255),
  INVEST_RATE_NAME VARCHAR2(255),
  CONTR_NO         VARCHAR2(255),
  RISK_MARK        VARCHAR2(10),
  CUT_MODE         VARCHAR2(3),
  INVEST_AMT       NUMBER(19,4),
  INVEST_CURR      VARCHAR2(3),
  QUOTA_AMT        NUMBER(19,4),
  QUOTA_FREE       NUMBER(19,4),
  APPR_AMT_FREE    NUMBER(19,4),
  FACT_AMT_FREE    NUMBER(19,4),
  APPR_AMT         NUMBER(19,4),
  FACT_AMT         NUMBER(19,4),
  DUTY_CUT         NUMBER(19,4),
  TAX_CUT          NUMBER(19,4),
  OTHER_CUT        NUMBER(19,4),
  REAL_DUTY        NUMBER(19,4),
  REAL_TAX         NUMBER(19,4),
  REAL_OTHER       NUMBER(19,4),
  REAL_DUTY_CUT    NUMBER(19,4),
  REAL_TAX_CUT     NUMBER(19,4),
  REAL_OTHER_CUT   NUMBER(19,4),
  QTY_CUT          NUMBER(19,4),
  UNIT_CUT         VARCHAR2(3),
  APPR_QTY         NUMBER(19,4),
  FACT_QTY         NUMBER(19,4),
  AGREE_NO         VARCHAR2(255),
  SECURITY_LEVEL   VARCHAR2(1),
  COLLECT_MARK     VARCHAR2(1),
  COLLECT_DATE     DATE,
  MASTER_CUSTOMS   VARCHAR2(4),
  LINKMAN          VARCHAR2(255),
  ITEMS_NO         NUMBER(9),
  INPUT_DATE       DATE,
  TYPE_ER          VARCHAR2(8),
  INPUT_COP        VARCHAR2(255),
  CHK_DATE         DATE,
  CHK_ER           VARCHAR2(8),
  RECHK_DATE       DATE,
  MODIFY_DATE      DATE,
  RECHK_ER         VARCHAR2(8),
  EXE_MARK         VARCHAR2(1),
  SEQ_NO           VARCHAR2(12),
  SEQ_DATE         DATE,
  SEQ_ER           VARCHAR2(8),
  REPORT_MARK      VARCHAR2(1),
  REPORT_DATE      DATE,
  REPORT_CGAC_DATE DATE,
  REPLY_DATE       DATE,
  REPLY_ER         VARCHAR2(8),
  REASON           VARCHAR2(255),
  RESERVE1         VARCHAR2(255),
  NOTE             VARCHAR2(255),
  HASH_SIGN        VARCHAR2(380),
  FIRST_PASS_DATE  DATE,
  INVEST_AMT_USD   NUMBER(19,4),
  MODIFY_ER        VARCHAR2(8),
  BELONG_AREA_NAME VARCHAR2(255)
)
;
alter table ALLSYS.MOD_PROJECT_HEAD
  add constraint PK_MOD_PROJECT_HEAD primary key (PROJECT_ID, MODIFY_TIMES);

prompt
prompt Creating table MOD_PROJECT_LIST
prompt ===============================
prompt
create table ALLSYS.MOD_PROJECT_LIST
(
  PROJECT_ID     VARCHAR2(18) not null,
  MODIFY_TIMES   NUMBER(9) not null,
  G_NO           NUMBER(9) not null,
  CODE_TS        VARCHAR2(16),
  CLASS_MARK     VARCHAR2(1),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  G_UNIT         VARCHAR2(3),
  G_QTY          NUMBER(19,4),
  UNIT_1         VARCHAR2(3),
  QTY_1          NUMBER(19,4),
  UNIT_2         VARCHAR2(3),
  QTY_2          NUMBER(19,4),
  DECL_TOTAL     NUMBER(19,4),
  TRADE_CURR     VARCHAR2(3),
  USED_QTY       NUMBER(19,4),
  USED_AMT       NUMBER(19,4),
  FACT_QTY       NUMBER(19,4),
  FACT_AMT       NUMBER(19,4),
  DUTY_MODE      VARCHAR2(1),
  D_RATE         NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  O_RATE         NUMBER(19,5),
  DUTY_RATE      NUMBER(19,5),
  TAX_RATE       NUMBER(19,5),
  OTHER_RATE     NUMBER(19,5),
  CHECK_MARK     VARCHAR2(1),
  RESERVE1       VARCHAR2(255),
  NOTE           VARCHAR2(255)
)
;
alter table ALLSYS.MOD_PROJECT_LIST
  add constraint PK_MOD_PROJECT_LIST primary key (PROJECT_ID, MODIFY_TIMES, G_NO);

prompt
prompt Creating table MOD_RED_HEAD
prompt ===========================
prompt
create table ALLSYS.MOD_RED_HEAD
(
  PROJECT_ID       VARCHAR2(18),
  PRE_CUT_ID       VARCHAR2(18),
  CUT_ID           VARCHAR2(12) not null,
  MODIFY_TIMES     NUMBER(9) not null,
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  TRADE_CO         VARCHAR2(10),
  TRADE_NAME       VARCHAR2(255),
  APPR_DEPT        VARCHAR2(4),
  PROJECT_FUND     VARCHAR2(1),
  PROJECT_TYPE     VARCHAR2(12),
  CUT_MODE         VARCHAR2(3),
  APPR_REASON      VARCHAR2(255),
  I_E_PORT         VARCHAR2(4),
  I_E_FLAG         VARCHAR2(1),
  LICENSE_NO       VARCHAR2(20),
  CONTR_NO         VARCHAR2(255),
  ITEMS_NO         NUMBER(9),
  INPUT_DATE       DATE,
  TYPE_ER          VARCHAR2(8),
  INPUT_COP        VARCHAR2(255),
  CHK_DATE         DATE,
  CHK_ER           VARCHAR2(8),
  RECHK_DATE       DATE,
  MODIFY_DATE      DATE,
  RECHK_ER         VARCHAR2(8),
  EXE_MARK         VARCHAR2(1),
  LIMIT_DATE       DATE,
  ENTRY_PWD        VARCHAR2(12),
  PRINT_DATE       DATE,
  PRINT_ER         VARCHAR2(8),
  PRINT_MARK       VARCHAR2(1),
  TRANS_TIMES      NUMBER(9),
  APPR_AMT         NUMBER(19,4),
  FACT_AMT         NUMBER(19,4),
  APPR_QUOTA_SUM   NUMBER(19,4),
  APPR_QUOTA_QTY   NUMBER(19,4),
  REAL_QUOTA_SUM   NUMBER(19,4),
  REAL_QUOTA_QTY   NUMBER(19,4),
  DUTY_CUT         NUMBER(19,4),
  TAX_CUT          NUMBER(19,4),
  OTHER_CUT        NUMBER(19,4),
  REAL_DUTY        NUMBER(19,4),
  REAL_TAX         NUMBER(19,4),
  REAL_OTHER       NUMBER(19,4),
  REAL_DUTY_CUT    NUMBER(19,4),
  REAL_TAX_CUT     NUMBER(19,4),
  REAL_OTHER_CUT   NUMBER(19,4),
  VERIFY_DATE      DATE,
  MASTER_CUSTOMS   VARCHAR2(4),
  CHECK_NOTE       VARCHAR2(255),
  RECHK_NOTE       VARCHAR2(255),
  REPLY_CHECK_NOTE VARCHAR2(255),
  RISK_MARK        VARCHAR2(10),
  COLLECT_MARK     VARCHAR2(1),
  COLLECT_DATE     DATE,
  ENTRY_ID         VARCHAR2(18),
  VERIFY_TIMES     NUMBER(9),
  SECURITY_LEVEL   VARCHAR2(1),
  REPORT_MARK      VARCHAR2(1),
  REPORT_DATE      DATE,
  REPORT_CGAC_DATE DATE,
  REPLY_DATE       DATE,
  REPLY_ER         VARCHAR2(8),
  SEQ_NO           VARCHAR2(12),
  SEQ_DATE         DATE,
  SEQ_ER           VARCHAR2(8),
  RED_TYPE         VARCHAR2(1),
  TRADE_MODE       VARCHAR2(4),
  TRANS_MODE       VARCHAR2(1),
  FEE_MARK         VARCHAR2(1),
  OTHER_MARK       VARCHAR2(1),
  INSUR_MARK       VARCHAR2(1),
  FEE_CURR         VARCHAR2(3),
  FEE_RATE         NUMBER(19,5),
  OTHER_CURR       VARCHAR2(3),
  OTHER_RATE       NUMBER(19,5),
  INSUR_CURR       VARCHAR2(3),
  INSUR_RATE       NUMBER(19,5),
  SERVICE_RATE     NUMBER(19,5),
  SERVICE_FEE      NUMBER(19,4),
  MNL_JGF_FLAG     VARCHAR2(1),
  REASON           VARCHAR2(255),
  RESERVE1         VARCHAR2(255),
  NOTE             VARCHAR2(255),
  HASH_SIGN        VARCHAR2(380),
  MODIFY_ER        VARCHAR2(8),
  HAS_DECLARE      VARCHAR2(1)
)
;
alter table ALLSYS.MOD_RED_HEAD
  add constraint PK_MOD_RED_HEAD primary key (CUT_ID, MODIFY_TIMES);

prompt
prompt Creating table MOD_RED_LIST
prompt ===========================
prompt
create table ALLSYS.MOD_RED_LIST
(
  CUT_ID         VARCHAR2(12) not null,
  MODIFY_TIMES   NUMBER(9) not null,
  G_NO           NUMBER(9) not null,
  MAN_G_NO       NUMBER(9),
  CODE_TS        VARCHAR2(16),
  CLASS_MARK     VARCHAR2(1),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  G_UNIT         VARCHAR2(3),
  G_QTY          NUMBER(19,4),
  UNIT_1         VARCHAR2(3),
  QTY_1          NUMBER(19,4),
  UNIT_2         VARCHAR2(3),
  QTY_2          NUMBER(19,4),
  DECL_TOTAL     NUMBER(19,4),
  TRADE_CURR     VARCHAR2(3),
  DUTY_MODE      VARCHAR2(1),
  D_RATE         NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  O_RATE         NUMBER(19,5),
  DUTY_RATE      NUMBER(19,5),
  TAX_RATE       NUMBER(19,5),
  OTHER_RATE     NUMBER(19,5),
  DUTY_CUT       NUMBER(19,4),
  TAX_CUT        NUMBER(19,4),
  OTHER_CUT      NUMBER(19,4),
  APPR_QUOTA     NUMBER(19,4),
  FACT_AMT       NUMBER(19,4),
  FACT_QTY       NUMBER(19,4),
  DUTY_VALUE     NUMBER(19),
  AUDIT_FLAG     VARCHAR2(1),
  RESERVE1       VARCHAR2(255),
  NOTE           VARCHAR2(255)
)
;
alter table ALLSYS.MOD_RED_LIST
  add constraint PK_MOD_RED_LIST primary key (CUT_ID, MODIFY_TIMES, G_NO);

prompt
prompt Creating table NONENTRY_CHK_RESULT
prompt ==================================
prompt
create table ALLSYS.NONENTRY_CHK_RESULT
(
  RSK_NO          VARCHAR2(15) not null,
  I_E_FLAG        CHAR(1),
  TRAF_MODE       CHAR(1),
  I_E_DATE        DATE,
  TRAF_NAME       VARCHAR2(255),
  EXAM_MODE_CODE  VARCHAR2(2),
  VOYAGE_NO       VARCHAR2(32),
  BILL_NO         VARCHAR2(32),
  FORM_ID         VARCHAR2(50),
  RSK_REQUEST_STR VARCHAR2(255),
  EXAM_ADDR       VARCHAR2(50),
  EXAM_ADDR_CODE  VARCHAR2(13),
  EXAM_RESULT     VARCHAR2(50),
  EXAM_PROC_IDEA  VARCHAR2(2),
  ALC_OP          VARCHAR2(8),
  ALC_DATE        DATE,
  CHK_ER1         VARCHAR2(8),
  CHK_ER2         VARCHAR2(8),
  EXAM_PROC_TIME  DATE,
  CHK_FLAG        VARCHAR2(1),
  NOTE_S          VARCHAR2(255)
)
;
alter table ALLSYS.NONENTRY_CHK_RESULT
  add constraint PK_NONENTRY_CHK_RESULT primary key (RSK_NO);

prompt
prompt Creating table NORSK_COMPANY
prompt ============================
prompt
create table ALLSYS.NORSK_COMPANY
(
  CCTS_CODE    VARCHAR2(16) not null,
  TRADE_CO     VARCHAR2(10),
  TRADE_NAME   VARCHAR2(64),
  BEGIN_DATE   DATE,
  END_DATE     DATE,
  CUSTOMS_CODE VARCHAR2(4),
  INPUT_ID     VARCHAR2(8),
  AUTHORIZE_ID VARCHAR2(8),
  OP_TIME      DATE,
  I_E_FLAG     VARCHAR2(1)
)
;
alter table ALLSYS.NORSK_COMPANY
  add constraint PK_NORSK_COMPANY primary key (CCTS_CODE);
create index ALLSYS.IDX_CTS_TRADE_COMPANY on ALLSYS.NORSK_COMPANY (TRADE_CO, CUSTOMS_CODE);

prompt
prompt Creating table NORSK_COMPANY_BAK
prompt ================================
prompt
create table ALLSYS.NORSK_COMPANY_BAK
(
  CCTS_CODE      VARCHAR2(16) not null,
  TRADE_CO       VARCHAR2(10),
  TRADE_NAME     VARCHAR2(64),
  BEGIN_DATE     DATE,
  END_DATE       DATE,
  CUSTOMS_CODE   VARCHAR2(4),
  INPUT_ID       VARCHAR2(8),
  AUTHORIZE_ID   VARCHAR2(8),
  OP_TIME        DATE,
  I_E_FLAG       VARCHAR2(1),
  OP_BAK_TYPE    VARCHAR2(8),
  OP_BAK_CUSTOMS VARCHAR2(4),
  OP_BAK_MAN     VARCHAR2(8),
  OP_BAK_TIME    DATE not null
)
;
alter table ALLSYS.NORSK_COMPANY_BAK
  add constraint PK_NORSK_COMPANY_BAK primary key (CCTS_CODE, OP_BAK_TIME);
create index ALLSYS.IDX_CTS_TRADE_COMPANY_BAK on ALLSYS.NORSK_COMPANY_BAK (TRADE_CO, CUSTOMS_CODE);

prompt
prompt Creating table NORSK_CONDITION
prompt ==============================
prompt
create table ALLSYS.NORSK_CONDITION
(
  CCTS_CODE    VARCHAR2(16) not null,
  RSK_COND     VARCHAR2(2048),
  RSK_COND_MID VARCHAR2(2048),
  RSK_COND_TXT VARCHAR2(2048),
  NOTE         VARCHAR2(255),
  BEGIN_DATE   DATE,
  END_DATE     DATE,
  CUSTOMS_CODE VARCHAR2(4),
  INPUT_ID     VARCHAR2(8),
  AUTHORIZE_ID VARCHAR2(8),
  OP_TIME      DATE
)
;
alter table ALLSYS.NORSK_CONDITION
  add constraint PK_NORSK_CONDITION primary key (CCTS_CODE);
create index ALLSYS.IDX_CTS_CUSTOMS_CODE on ALLSYS.NORSK_CONDITION (CUSTOMS_CODE);

prompt
prompt Creating table NORSK_CONDITION_BAK
prompt ==================================
prompt
create table ALLSYS.NORSK_CONDITION_BAK
(
  CCTS_CODE      VARCHAR2(16) not null,
  RSK_COND       VARCHAR2(2048),
  RSK_COND_MID   VARCHAR2(2048),
  RSK_COND_TXT   VARCHAR2(2048),
  NOTE           VARCHAR2(255),
  BEGIN_DATE     DATE,
  END_DATE       DATE,
  CUSTOMS_CODE   VARCHAR2(4),
  INPUT_ID       VARCHAR2(8),
  AUTHORIZE_ID   VARCHAR2(8),
  OP_TIME        DATE,
  OP_BAK_TYPE    VARCHAR2(8),
  OP_BAK_CUSTOMS VARCHAR2(4),
  OP_BAK_MAN     VARCHAR2(8),
  OP_BAK_TIME    DATE not null
)
;
alter table ALLSYS.NORSK_CONDITION_BAK
  add constraint PK_NORSK_CONDITION_BAK primary key (CCTS_CODE, OP_BAK_TIME);
create index ALLSYS.IDX_CTS_CUSTOMS_CODE_BAK on ALLSYS.NORSK_CONDITION_BAK (CUSTOMS_CODE);

prompt
prompt Creating table NORSK_TRADE_MODE
prompt ===============================
prompt
create table ALLSYS.NORSK_TRADE_MODE
(
  CCTS_CODE    VARCHAR2(16) not null,
  TRADE_MODE   VARCHAR2(4),
  TRADE_NAME   VARCHAR2(255),
  BEGIN_DATE   DATE,
  END_DATE     DATE,
  CUSTOMS_CODE VARCHAR2(4),
  INPUT_ID     VARCHAR2(8),
  AUTHORIZE_ID VARCHAR2(8),
  OP_TIME      DATE,
  I_E_FLAG     VARCHAR2(1)
)
;
alter table ALLSYS.NORSK_TRADE_MODE
  add constraint PK_NORSK_TRADE_MODE primary key (CCTS_CODE);
create index ALLSYS.IDX_CTS_TRADE_CUSTOMS on ALLSYS.NORSK_TRADE_MODE (TRADE_MODE, CUSTOMS_CODE);

prompt
prompt Creating table NORSK_TRADE_MODE_BAK
prompt ===================================
prompt
create table ALLSYS.NORSK_TRADE_MODE_BAK
(
  CCTS_CODE      VARCHAR2(16) not null,
  TRADE_MODE     VARCHAR2(4),
  TRADE_NAME     VARCHAR2(255),
  BEGIN_DATE     DATE,
  END_DATE       DATE,
  CUSTOMS_CODE   VARCHAR2(4),
  INPUT_ID       VARCHAR2(8),
  AUTHORIZE_ID   VARCHAR2(8),
  OP_TIME        DATE,
  I_E_FLAG       VARCHAR2(1),
  OP_BAK_TYPE    VARCHAR2(8),
  OP_BAK_CUSTOMS VARCHAR2(4),
  OP_BAK_MAN     VARCHAR2(8),
  OP_BAK_TIME    DATE not null
)
;
alter table ALLSYS.NORSK_TRADE_MODE_BAK
  add constraint PK_NORSK_TRADE_MODE_BAK primary key (CCTS_CODE, OP_BAK_TIME);
create index ALLSYS.IDX_CTS_TRADE_CUSTOMS_BAK on ALLSYS.NORSK_TRADE_MODE_BAK (TRADE_MODE, CUSTOMS_CODE);

prompt
prompt Creating table OCC_ELE_HEAD
prompt ===========================
prompt
create table ALLSYS.OCC_ELE_HEAD
(
  CERTIFICATE_NO     VARCHAR2(12) not null,
  AGREEMENT_ID       VARCHAR2(2) not null,
  ISSUE_PLACE        VARCHAR2(3) not null,
  MODIFY_NUM         NUMBER(19) not null,
  TRANSFER_NUM       NUMBER(19) not null,
  ISSUE_ORGANIZATION VARCHAR2(32) not null,
  ISSUE_DATE         DATE not null,
  VALID_DATE         DATE not null,
  EXPORTER_NAME      VARCHAR2(255),
  EXPORTER_ADDR      VARCHAR2(255),
  CONSIGNEE_NAME     VARCHAR2(255),
  CONSIGNEE_ADDR     VARCHAR2(255),
  FACTORY_NUMBER     VARCHAR2(6) not null,
  DEPARTURE_DATE     DATE,
  TRANS_MODE         VARCHAR2(1),
  PLACE_OF_LOADING   VARCHAR2(3),
  PORT_OF_DISCHARGE  VARCHAR2(4) not null,
  GOODS_NUM          VARCHAR2(2) not null,
  OPER_MODE          VARCHAR2(1) not null,
  RECV_DATE          DATE,
  REUSE1             VARCHAR2(32),
  REUSE2             NUMBER(19,4),
  HASH_SIGN          VARCHAR2(380)
)
;
alter table ALLSYS.OCC_ELE_HEAD
  add constraint PK_OCC_ELE_HEAD primary key (CERTIFICATE_NO, AGREEMENT_ID, ISSUE_PLACE);

prompt
prompt Creating table OCC_ELE_LIST
prompt ===========================
prompt
create table ALLSYS.OCC_ELE_LIST
(
  CERTIFICATE_NO VARCHAR2(12) not null,
  AGREEMENT_ID   VARCHAR2(2) not null,
  ISSUE_PLACE    VARCHAR2(3) not null,
  G_NO           VARCHAR2(2) not null,
  CODE_TS        VARCHAR2(16) not null,
  G_NAME_MODEL   VARCHAR2(270) not null,
  PACK_NO        NUMBER(19,5),
  PACK_TYPE      VARCHAR2(32),
  G_QTY          NUMBER(19,5) not null,
  G_UNIT         VARCHAR2(3) not null,
  FOB_VALUE      NUMBER(19,2),
  FOB_CURRENCY   VARCHAR2(3),
  BRAND_NAME     VARCHAR2(255),
  REUSE1         VARCHAR2(32),
  REUSE2         NUMBER(19,4),
  HASH_SIGN      VARCHAR2(380)
)
;
alter table ALLSYS.OCC_ELE_LIST
  add constraint PK_OCC_ELE_LIST primary key (CERTIFICATE_NO, AGREEMENT_ID, ISSUE_PLACE, G_NO);

prompt
prompt Creating table OCC_EXAM
prompt =======================
prompt
create table ALLSYS.OCC_EXAM
(
  CERTIFICATE_NO VARCHAR2(12) not null,
  AGREEMENT_ID   VARCHAR2(2) not null,
  ISSUE_PLACE    VARCHAR2(3) not null,
  ENTRY_ID       VARCHAR2(18),
  BASE_ID        VARCHAR2(17),
  G_NO           VARCHAR2(4) not null,
  ENTRY_G_NO     NUMBER(19) not null,
  FACT_AQTY      NUMBER(19,4),
  FACT_TOTAL     NUMBER(19,2),
  FACT_CURR      VARCHAR2(3),
  CHK_DATE       DATE,
  CHK_ER         VARCHAR2(8),
  VERIFY_DATE    DATE,
  VERIFY_ER      VARCHAR2(8),
  RETURN_DATE    DATE,
  REUSE1         VARCHAR2(32),
  REUSE2         NUMBER(19,4),
  HASH_SIGN      VARCHAR2(380)
)
;
alter table ALLSYS.OCC_EXAM
  add constraint PK_OCC_EXAM primary key (CERTIFICATE_NO, AGREEMENT_ID, ISSUE_PLACE, G_NO, ENTRY_G_NO);
create index ALLSYS.IX_ENTRYID_GNO on ALLSYS.OCC_EXAM (ENTRY_ID, G_NO);

prompt
prompt Creating table OCC_RECEIPT
prompt ==========================
prompt
create table ALLSYS.OCC_RECEIPT
(
  CERTIFICATE_NO VARCHAR2(12) not null,
  AGREEMENT_ID   VARCHAR2(2) not null,
  ISSUE_PLACE    VARCHAR2(3) not null,
  RETURN_DATE    DATE,
  MESSAGE_ID     VARCHAR2(43),
  STEP_ID        VARCHAR2(3)
)
;
alter table ALLSYS.OCC_RECEIPT
  add constraint PK_OCC_RECEIPT primary key (CERTIFICATE_NO, AGREEMENT_ID, ISSUE_PLACE);

prompt
prompt Creating table ODIOGGCKPT
prompt =========================
prompt
create table ALLSYS.ODIOGGCKPT
(
  GROUP_NAME     VARCHAR2(8) not null,
  GROUP_KEY      NUMBER(19) not null,
  SEQNO          NUMBER(10),
  RBA            NUMBER(19) not null,
  AUDIT_TS       VARCHAR2(29),
  CREATE_TS      DATE not null,
  LAST_UPDATE_TS DATE not null,
  CURRENT_DIR    VARCHAR2(255) not null
)
;
alter table ALLSYS.ODIOGGCKPT
  add primary key (GROUP_NAME, GROUP_KEY);

prompt
prompt Creating table OTHER_STF_RECORD
prompt ===============================
prompt
create table ALLSYS.OTHER_STF_RECORD
(
  OTHER_ID  VARCHAR2(32) not null,
  STF_ID    VARCHAR2(23),
  MANUAL_NO VARCHAR2(23),
  I_E_FLAG  VARCHAR2(1),
  STF_DATE1 DATE,
  STF_ER1   VARCHAR2(8),
  STF_DATE2 DATE,
  STF_ER2   VARCHAR2(8),
  ROOM_NO   VARCHAR2(16),
  NOTE_TEXT VARCHAR2(16),
  ID_TYPE   VARCHAR2(1) not null
)
;
alter table ALLSYS.OTHER_STF_RECORD
  add constraint PK_OTHER_STF_RECORD primary key (OTHER_ID, ID_TYPE);
create index ALLSYS.IDX_STF_OTHER_MANUAL_NO on ALLSYS.OTHER_STF_RECORD (MANUAL_NO);
create index ALLSYS.IDX_STF_OTHER_STF_ID on ALLSYS.OTHER_STF_RECORD (STF_ID);

prompt
prompt Creating table PAPERLESS_SELFSAVE_CERT
prompt ======================================
prompt
create table ALLSYS.PAPERLESS_SELFSAVE_CERT
(
  ENTRY_ID   VARCHAR2(18) not null,
  I_E_FLAG   VARCHAR2(1),
  DECL_PORT  VARCHAR2(4),
  REL_TIME   DATE,
  AGENT_CODE VARCHAR2(10),
  TRADE_CO   VARCHAR2(10),
  TRADE_NAME VARCHAR2(255),
  AGENT_NAME VARCHAR2(255),
  PRINT_TIME DATE,
  PROC_MARK  VARCHAR2(1),
  D_DATE     DATE
)
;
alter table ALLSYS.PAPERLESS_SELFSAVE_CERT
  add constraint PK_PAPERLESS_SELFSAVE_CERT primary key (ENTRY_ID);
create index ALLSYS.IDX_PAPERLESS_SELF_RELTIME on ALLSYS.PAPERLESS_SELFSAVE_CERT (REL_TIME, DECL_PORT, I_E_FLAG);

prompt
prompt Creating table PAYOUT_REMIT_HEAD
prompt ================================
prompt
create table ALLSYS.PAYOUT_REMIT_HEAD
(
  RPTNO        VARCHAR2(32) not null,
  RPTUSER      VARCHAR2(128),
  TRADE_CO     VARCHAR2(10),
  RCVNAME      VARCHAR2(128),
  ACTUCCY      VARCHAR2(3),
  ACTUAMT      NUMBER(21,2),
  CSTSETCODE   VARCHAR2(2),
  COUNTRYCODE  VARCHAR2(3),
  CSTCNTRCTNO  VARCHAR2(32),
  INVOICENO    VARCHAR2(64),
  LCBGNO       VARCHAR2(32),
  CUS_TRADE_CO VARCHAR2(12),
  RECV_DATE    DATE
)
;
alter table ALLSYS.PAYOUT_REMIT_HEAD
  add constraint PK_PAYOUT_REMIT_HEAD primary key (RPTNO);

prompt
prompt Creating table PAYOUT_REMIT_LIST
prompt ================================
prompt
create table ALLSYS.PAYOUT_REMIT_LIST
(
  RPTNO       VARCHAR2(32) not null,
  ENTRY_ID    VARCHAR2(18) not null,
  CUSTOMCCY   VARCHAR2(3),
  CUSTOMAMT   NUMBER(21,2),
  WRITEOFFAMT NUMBER(21,2),
  RECV_DATE   DATE
)
;
alter table ALLSYS.PAYOUT_REMIT_LIST
  add constraint PK_PAYOUT_REMIT_LIST primary key (RPTNO, ENTRY_ID);
create index ALLSYS.IX_PAYOUT_ENTRY_ID on ALLSYS.PAYOUT_REMIT_LIST (ENTRY_ID);

prompt
prompt Creating table PES_CANCEL
prompt =========================
prompt
create table ALLSYS.PES_CANCEL
(
  ENTRY_ID      VARCHAR2(32) not null,
  I_E_FLAG      VARCHAR2(1),
  G_NO          NUMBER(19),
  NOTE_NO       VARCHAR2(16),
  NOTE_TYPE     VARCHAR2(4),
  TRADE_CODE    VARCHAR2(10),
  TRADE_NAME    VARCHAR2(255),
  OWNER_CODE    VARCHAR2(10),
  OWNER_NAME    VARCHAR2(255),
  DISTRICT_CODE VARCHAR2(3),
  TRADE_COUNTRY VARCHAR2(3),
  TRADE_MODE    VARCHAR2(4),
  DECL_CUSTOM   VARCHAR2(4),
  CODE_TS       VARCHAR2(16),
  G_NAME        VARCHAR2(255),
  G_MODEL       VARCHAR2(255),
  QTY           NUMBER(19,5),
  UNIT          VARCHAR2(3),
  DECL_TOTAL    NUMBER(19,4),
  TRADE_CURR    VARCHAR2(3),
  G_DATE        DATE,
  STAT          VARCHAR2(3)
)
;
alter table ALLSYS.PES_CANCEL
  add constraint PK_PES_CANCEL primary key (ENTRY_ID);
create index ALLSYS.IX_PESCANCEL_NOTENO on ALLSYS.PES_CANCEL (NOTE_NO);

prompt
prompt Creating table PES_NOTE
prompt =======================
prompt
create table ALLSYS.PES_NOTE
(
  NOTE_NO       VARCHAR2(16) not null,
  NOTE_TYPE     VARCHAR2(4),
  I_E_FLAG      VARCHAR2(1),
  ID_STAT       VARCHAR2(32),
  APPR_DATE     DATE,
  BEGIN_DATE    DATE,
  END_DATE      DATE,
  TRADE_CODE    VARCHAR2(16),
  TRADE_NAME    VARCHAR2(32),
  CODE_TS       VARCHAR2(16),
  G_NAME        VARCHAR2(255),
  G_USE         VARCHAR2(32),
  QTY           NUMBER(19,3),
  UNIT          VARCHAR2(4),
  DISTRICT_CODE VARCHAR2(4),
  TRADE_MODE    VARCHAR2(4),
  I_E_PORT      VARCHAR2(4),
  STAT          VARCHAR2(1),
  VERIFY_DATE   DATE,
  VERIFY_ER     VARCHAR2(16),
  CLEAR_DATE    DATE,
  CLEAR_ER      VARCHAR2(16)
)
;
alter table ALLSYS.PES_NOTE
  add constraint PK_PES_NOTE primary key (NOTE_NO);

prompt
prompt Creating table PES_WORKFLOW
prompt ===========================
prompt
create table ALLSYS.PES_WORKFLOW
(
  NOTE_NO        VARCHAR2(18) not null,
  NOTE_TYPE      VARCHAR2(4) not null,
  PROCESS_DATE   DATE not null,
  STEP_ID        VARCHAR2(16) not null,
  PROCESS_STATUS VARCHAR2(2),
  STAT           VARCHAR2(1),
  ENTRY_ID       VARCHAR2(32),
  NOTE           VARCHAR2(255),
  PROCESS_ER     VARCHAR2(16)
)
;
alter table ALLSYS.PES_WORKFLOW
  add constraint PK_PES_WORKFLOW primary key (NOTE_NO, NOTE_TYPE, PROCESS_DATE, STEP_ID);

prompt
prompt Creating table PORT_BIND_REL
prompt ============================
prompt
create table ALLSYS.PORT_BIND_REL
(
  BIND_NO     VARCHAR2(17) not null,
  PRE_NO      VARCHAR2(16) not null,
  REC_MARK    VARCHAR2(1),
  SPARE_FIELD VARCHAR2(255)
)
;
alter table ALLSYS.PORT_BIND_REL
  add constraint PK_PORT_BIND_REL primary key (BIND_NO, PRE_NO);
create index ALLSYS.IDX_TRN_BIND_PRE_NO on ALLSYS.PORT_BIND_REL (PRE_NO);

prompt
prompt Creating table PRESS_CLEAR
prompt ==========================
prompt
create table ALLSYS.PRESS_CLEAR
(
  MANUAL_NO     VARCHAR2(12) not null,
  PR_NO         VARCHAR2(14) not null,
  PR_COUNT      NUMBER(9),
  PR_CUSTOMS    VARCHAR2(4),
  PR_DEPARTMENT VARCHAR2(20),
  PR_DATE       DATE
)
;
alter table ALLSYS.PRESS_CLEAR
  add constraint PK_PRESS_CLEAR primary key (MANUAL_NO, PR_NO);

prompt
prompt Creating table PRE_APPL_CLOSE
prompt =============================
prompt
create table ALLSYS.PRE_APPL_CLOSE
(
  MANUAL_NO      VARCHAR2(12) not null,
  APPL_NO        NUMBER(19),
  APPL_DATE      DATE,
  DECL_IN_AMT    NUMBER(19,5),
  DECL_EX_AMT    NUMBER(19,5),
  DECL_IN_COUNT  NUMBER(19),
  DECL_EX_COUNT  NUMBER(19),
  REMAIN_IN_AMT  NUMBER(19,4),
  REMAIN_EX_AMT  NUMBER(19,4),
  RESOR_IN_COUNT NUMBER(19),
  PRODU_IN_COUNT NUMBER(19),
  RESOR_EX_COUNT NUMBER(19),
  PRODU_EX_COUNT NUMBER(19),
  RESOR_IN_AMT   NUMBER(19,4),
  PRODU_IN_AMT   NUMBER(19,4),
  RESOR_EX_AMT   NUMBER(19,4),
  PRODU_EX_AMT   NUMBER(19,4),
  DC_DATE        DATE,
  TYPE_ER        VARCHAR2(8),
  DECL_CO        VARCHAR2(6),
  CHK_ER         VARCHAR2(8),
  RECHK_ER       VARCHAR2(8),
  CHK_DATE       DATE,
  RECHK_DATE     DATE,
  NOTE_S         VARCHAR2(255)
)
;
alter table ALLSYS.PRE_APPL_CLOSE
  add constraint PK_PRE_APPL_CLOSE primary key (MANUAL_NO);

prompt
prompt Creating table PRE_APPL_CLOSE_CONSUME
prompt =====================================
prompt
create table ALLSYS.PRE_APPL_CLOSE_CONSUME
(
  MANUAL_NO    VARCHAR2(12) not null,
  CONTR_ITEM   NUMBER(19) not null,
  CODE_TS      VARCHAR2(16),
  G_NAME       VARCHAR2(32),
  G_MODEL      VARCHAR2(32),
  EX_NO        NUMBER(19) not null,
  DECL_CONSUME NUMBER(19,10),
  DECL_DAMAGE  NUMBER(19,10)
)
;
alter table ALLSYS.PRE_APPL_CLOSE_CONSUME
  add constraint PK_PRE_APPL_CLOSE_CONSUME primary key (MANUAL_NO, CONTR_ITEM, EX_NO);

prompt
prompt Creating table PRE_CDL_COMMODITY
prompt ================================
prompt
create table ALLSYS.PRE_CDL_COMMODITY
(
  RECORDS_NO     VARCHAR2(12),
  PRE_RECORDS_NO VARCHAR2(18) not null,
  RECORDS_DATE   DATE not null,
  PROC_FLAG      VARCHAR2(1),
  TRADE_CO       VARCHAR2(10),
  G_NO           NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  G_UNIT         VARCHAR2(3),
  DECL_PRICE     NUMBER(19,5),
  TRADE_CURR     VARCHAR2(3),
  I_E_FLAG       VARCHAR2(1),
  ORIGIN_COUNTRY VARCHAR2(3),
  DISTRICT_CODE  VARCHAR2(5),
  LICENSE_NO     VARCHAR2(20),
  LICENSE_COUNT  NUMBER(19),
  LICENSE_DATE   DATE,
  MOD_TYPE       VARCHAR2(1),
  CUSTOMS_CODE   VARCHAR2(4)
)
;
alter table ALLSYS.PRE_CDL_COMMODITY
  add constraint PK_PRE_CDL_COMMODITY primary key (PRE_RECORDS_NO, RECORDS_DATE, G_NO);
create index ALLSYS.IX_PRECDLCOMMODITY_RECORDSDATE on ALLSYS.PRE_CDL_COMMODITY (RECORDS_DATE, PROC_FLAG);
create index ALLSYS.IX_PRECDLCOMMODITY_TRADECO on ALLSYS.PRE_CDL_COMMODITY (TRADE_CO, CUSTOMS_CODE);
create index ALLSYS.IX_RECORDS_NO on ALLSYS.PRE_CDL_COMMODITY (RECORDS_NO);

prompt
prompt Creating table PRE_CDL_COMPANY
prompt ==============================
prompt
create table ALLSYS.PRE_CDL_COMPANY
(
  TRADE_CO          VARCHAR2(10) not null,
  RECORDS_DATE      DATE not null,
  PROC_FLAG         VARCHAR2(1),
  TRADE_NAME        VARCHAR2(255),
  CUSTOMS_CODE      VARCHAR2(4),
  APP_MOD_FLAG      VARCHAR2(1),
  TRADE_BONDED_FLAG VARCHAR2(2) not null,
  GRT_TYPE          VARCHAR2(1),
  GRT_PRICE         NUMBER(19,4),
  GRT_DATE          DATE,
  IE_COUNT          NUMBER(19),
  R_NOTES           VARCHAR2(255),
  PRE_COP_NO        VARCHAR2(18)
)
;
alter table ALLSYS.PRE_CDL_COMPANY
  add constraint PK_PRE_CDL_COMPANY primary key (TRADE_CO, RECORDS_DATE, TRADE_BONDED_FLAG);
create index ALLSYS.IX_CDLCOMPANYLOG_RECORDSDATE on ALLSYS.PRE_CDL_COMPANY (RECORDS_DATE, PROC_FLAG);

prompt
prompt Creating table PRE_COMPANY_REL
prompt ==============================
prompt
create table ALLSYS.PRE_COMPANY_REL
(
  PRE_TRADE_CO  VARCHAR2(18) not null,
  TRADE_CO      VARCHAR2(10),
  REG_CO        VARCHAR2(255),
  FULL_NAME     VARCHAR2(255),
  CUSTOMS_CODE  VARCHAR2(4),
  VALID_DATE    DATE default SYSDATE,
  ACCO_BANK     VARCHAR2(32),
  ACCO_NO       VARCHAR2(32),
  MAIL_CO       VARCHAR2(6),
  BROKER_TYPE   VARCHAR2(1),
  LICENSE_ID    VARCHAR2(32),
  EN_FULL_CO    VARCHAR2(255),
  EN_ADDR_CO    VARCHAR2(255),
  ADDR_CO       VARCHAR2(255),
  BUSI_TYPE     VARCHAR2(32),
  CONTAC_CO     VARCHAR2(32),
  TEL_CO        VARCHAR2(32),
  APPR_DEP      VARCHAR2(32),
  APPR_ID       VARCHAR2(32),
  LAW_MAN       VARCHAR2(32),
  LAW_MAN_TEL   VARCHAR2(32),
  INV_FUND_T    NUMBER(19,4),
  ID_NUMBER     VARCHAR2(32),
  RG_FUND       NUMBER(19,4),
  CURR_CODE     VARCHAR2(3),
  TAXY_RG_NO    VARCHAR2(32),
  CO_TYPE       VARCHAR2(32),
  IN_RATIO      NUMBER(19),
  SPE_CO        VARCHAR2(8),
  MAIN_PRO      VARCHAR2(255),
  ACT_FUND      NUMBER(18),
  COP_NOTE      VARCHAR2(255),
  PRE_OPER_CODE VARCHAR2(8),
  PRE_OPER_DATE DATE,
  PRE_OPER_FLAG VARCHAR2(1),
  PRE_CHK_FLAG  VARCHAR2(1),
  PRE_CHK_DATE  DATE,
  COP_GB_CODE   VARCHAR2(32),
  COP_IO_CODE   VARCHAR2(32),
  COP_RANGE     VARCHAR2(4000),
  DISTRICT_CODE VARCHAR2(5),
  CO_OWNER      VARCHAR2(1)
)
;
alter table ALLSYS.PRE_COMPANY_REL
  add constraint PK_PRE_COMPANY_REL primary key (PRE_TRADE_CO);

prompt
prompt Creating table PRE_CONSUME
prompt ==========================
prompt
create table ALLSYS.PRE_CONSUME
(
  MANUAL_NO    VARCHAR2(12) not null,
  CONTR_ITEM   NUMBER(19) not null,
  EX_NO        NUMBER(19) not null,
  APPR_CONSUME NUMBER(19,10),
  APPR_DAMAGE  NUMBER(19,10),
  DECL_CONSUME NUMBER(19,10),
  DECL_DAMAGE  NUMBER(19,10)
)
;
alter table ALLSYS.PRE_CONSUME
  add constraint PK_PRE_CONSUME primary key (MANUAL_NO, CONTR_ITEM, EX_NO);

prompt
prompt Creating table PRE_CONTRACT_HEAD
prompt ================================
prompt
create table ALLSYS.PRE_CONTRACT_HEAD
(
  MANUAL_NO        VARCHAR2(12) not null,
  PRE_MANUAL_NO    VARCHAR2(12),
  TRADE_CO         VARCHAR2(10),
  TRADE_NAME       VARCHAR2(255),
  DISTRICT_CODE    VARCHAR2(5),
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  FOREIGN_CO_NAME  VARCHAR2(32),
  FOREIGN_MGR      VARCHAR2(32),
  TRADE_MODE       VARCHAR2(4),
  CUT_MODE         VARCHAR2(3),
  TRADE_COUNTRY    VARCHAR2(3),
  PORT_1           VARCHAR2(4),
  PORT_2           VARCHAR2(4),
  PORT_3           VARCHAR2(4),
  PORT_4           VARCHAR2(4),
  PORT_5           VARCHAR2(4),
  AGREE_NO         VARCHAR2(32),
  LICENSE_NO       VARCHAR2(32),
  APPR_NO          VARCHAR2(32),
  CONTR_IN         VARCHAR2(32),
  CONTR_OUT        VARCHAR2(32),
  EQUIP_MODE       VARCHAR2(1),
  TRANS_MODE       VARCHAR2(1),
  INVEST_MODE      VARCHAR2(1),
  PAY_MODE         VARCHAR2(1),
  EX_SOURCE        NUMBER(19),
  PRODUCE_TYPE     VARCHAR2(2),
  RATIO_RANGE      NUMBER(19,4),
  IN_RATIO         NUMBER(19,4),
  INVEST_AMT       NUMBER(19,5),
  INVEST_CURR      VARCHAR2(3),
  APPR_DEV_AMT     NUMBER(19,5),
  FACT_DEV_AMT     NUMBER(19,5),
  IN_AMT           NUMBER(19,5),
  IN_CURR          VARCHAR2(3),
  FACT_IN_AMT      NUMBER(19,5),
  EX_AMT           NUMBER(19,5),
  EX_CURR          VARCHAR2(3),
  FACT_EX_AMT      NUMBER(19,5),
  DECL_FLAG        VARCHAR2(1),
  EXE_MARK         VARCHAR2(1),
  SUPV_MARK        VARCHAR2(10),
  IN_PNT           NUMBER(19),
  EX_PNT           NUMBER(19),
  CONTR_SEQNO      NUMBER(19),
  IM_COUNT         NUMBER(19),
  EX_COUNT         NUMBER(19),
  I_DATE           DATE,
  E_DATE           DATE,
  LIMIT_DATE       DATE,
  TYPE_ER          VARCHAR2(8),
  TYPE_DATE        DATE,
  CHK_ER           VARCHAR2(8),
  APPR_DATE        DATE,
  RECHK_ER         VARCHAR2(8),
  CLEAR_ER         VARCHAR2(8),
  CLEAR_APPL_DATE  DATE,
  CLEAR_DATE       DATE,
  CLOSE_ER         VARCHAR2(8),
  CLOSE_DATE       DATE,
  EXAM_MARK        VARCHAR2(10),
  CLEAR_MARK       VARCHAR2(10),
  CLOSE_MARK       VARCHAR2(1),
  TAX_TYPE         VARCHAR2(1),
  RECOVER_DUTY     NUMBER(19,5),
  RECOVER_TAX      NUMBER(19,5),
  RECOVER_REG      NUMBER(19,5),
  DEFER_DUTY       NUMBER(19,5),
  DEFER_TAX        NUMBER(19,5),
  DEFER_REG        NUMBER(19,5),
  FINE_AMT         NUMBER(19,5),
  REAL_DUTY        NUMBER(19,5),
  REAL_TAX         NUMBER(19,5),
  REAL_REG         NUMBER(19,5),
  SEQ_NO           VARCHAR2(12),
  VER_NO           VARCHAR2(12),
  VER_ER           VARCHAR2(8),
  VER_DATE         DATE,
  CUSTOMS_CODE     VARCHAR2(4),
  SERVICE_FEE_RATE NUMBER(19,5),
  PRE_SERVICE_FEE  NUMBER(19,5),
  FACT_SERVICE_FEE NUMBER(19,5),
  NOTE_S           VARCHAR2(255),
  TR_PNT           NUMBER(19),
  IN_RMB_RATE      NUMBER(19,8),
  IN_USD_RATE      NUMBER(19,8),
  EX_RMB_RATE      NUMBER(19,8),
  EX_USD_RATE      NUMBER(19,8),
  DEDUC_DATE       DATE,
  CHECK_DATE       DATE,
  HASH_SIGN        VARCHAR2(380)
)
;
alter table ALLSYS.PRE_CONTRACT_HEAD
  add constraint PK_PRE_CONTRACT_HEAD primary key (MANUAL_NO);

prompt
prompt Creating table PRE_DECL_REL
prompt ===========================
prompt
create table ALLSYS.PRE_DECL_REL
(
  TRADE_CO         VARCHAR2(10),
  DECL_TRAIN_CO    VARCHAR2(21) not null,
  DECL_ZG_CODE     VARCHAR2(9),
  DECL_NAME        VARCHAR2(32),
  DECL_SEX         VARCHAR2(2),
  DECL_DEGREE      VARCHAR2(32),
  DECL_ID_CODE     VARCHAR2(21),
  DECL_TEL_BP_CODE VARCHAR2(32),
  DECL_APPL_TIME   NUMBER(19),
  DECL_TEST_SCORE  NUMBER(19),
  DECL_APPL_FLAG   VARCHAR2(1),
  DECL_INP_DATE    DATE default SYSDATE,
  DECL_NOTE        VARCHAR2(255)
)
;
alter table ALLSYS.PRE_DECL_REL
  add constraint PK_PRE_DECL_REL primary key (DECL_TRAIN_CO);
create index ALLSYS.DECL_ID_CODE_P_INDEX on ALLSYS.PRE_DECL_REL (DECL_ID_CODE);
create index ALLSYS.DECL_TRADE_P_INDEX on ALLSYS.PRE_DECL_REL (TRADE_CO);

prompt
prompt Creating table PRE_EXA_APPL_CLOSE
prompt =================================
prompt
create table ALLSYS.PRE_EXA_APPL_CLOSE
(
  MANUAL_NO  VARCHAR2(12) not null,
  CONTR_ITEM NUMBER(19) not null,
  CODE_TS    VARCHAR2(16),
  G_NAME     VARCHAR2(50),
  G_MODEL    VARCHAR2(50),
  G_QTY      NUMBER(19,4),
  DECL_PRICE NUMBER(19,4),
  G_AMT      NUMBER(19,5),
  PROC_MODE  VARCHAR2(1),
  BOOK_NO    VARCHAR2(18)
)
;
alter table ALLSYS.PRE_EXA_APPL_CLOSE
  add constraint PK_PRE_EXA_APPL_CLOSE primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table PRE_EX_APPL_CLOSE
prompt ================================
prompt
create table ALLSYS.PRE_EX_APPL_CLOSE
(
  MANUAL_NO      VARCHAR2(12) not null,
  CONTR_ITEM     NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(30),
  G_MODEL        VARCHAR2(30),
  FACT_QTY       NUMBER(19,4),
  T_IN_QTY       NUMBER(19,4),
  T_EX_QTY       NUMBER(19,4),
  REMAIN_QTY     NUMBER(19,4),
  PROC_MODE      VARCHAR2(1),
  CORR_MANUAL_NO VARCHAR2(12)
)
;
alter table ALLSYS.PRE_EX_APPL_CLOSE
  add constraint PK_PRE_EX_APPL_CLOSE primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table PRE_EX_CONTRACT_LIST
prompt ===================================
prompt
create table ALLSYS.PRE_EX_CONTRACT_LIST
(
  MANUAL_NO      VARCHAR2(12) not null,
  CONTR_ITEM     NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  CLASS_MARK     VARCHAR2(1),
  G_NAME         VARCHAR2(50),
  G_MODEL        VARCHAR2(50),
  ORIGIN_COUNTRY VARCHAR2(3),
  DUTY_MODE      VARCHAR2(1),
  DUTY_RATIO     NUMBER(19,5),
  LOCAL_CONTR    VARCHAR2(20),
  APPR_AMT       NUMBER(19,5),
  FACT_AMT       NUMBER(19,5),
  UNIT_PRICE     NUMBER(19,10),
  APPR_QTY       NUMBER(19,5),
  FACT_QTY       NUMBER(19,5),
  TRANSFER_QTY   NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  IN_COUNT       NUMBER(19),
  WORK_PAY       NUMBER(19),
  CURR_WORK      VARCHAR2(3),
  CONSUME_NOTE   VARCHAR2(255)
)
;
alter table ALLSYS.PRE_EX_CONTRACT_LIST
  add constraint PK_PRE_EX_CONTRACT_LIST primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table PRE_EX_FASCICLE_LIST
prompt ===================================
prompt
create table ALLSYS.PRE_EX_FASCICLE_LIST
(
  MANUAL_NO   VARCHAR2(12),
  FASCICLE_NO VARCHAR2(12) not null,
  CONTR_ITEM  NUMBER(19) not null,
  APPR_QTY    NUMBER(19,4),
  FACT_QTY    NUMBER(19,4)
)
;
alter table ALLSYS.PRE_EX_FASCICLE_LIST
  add constraint PK_PRE_EX_FASCICLE_LIST primary key (FASCICLE_NO, CONTR_ITEM);

prompt
prompt Creating table PRE_FASCICLE_HEAD
prompt ================================
prompt
create table ALLSYS.PRE_FASCICLE_HEAD
(
  MANUAL_NO       VARCHAR2(12),
  FASCICLE_NO     VARCHAR2(12) not null,
  PRE_FASCICLE_NO VARCHAR2(12),
  I_E_PORT        VARCHAR2(4),
  TYPE_ER         VARCHAR2(8),
  TYPE_DATE       DATE,
  LIMIT_DATE      DATE,
  TRADE_CO        VARCHAR2(10),
  CHK_ER          VARCHAR2(8),
  RECHK_ER        VARCHAR2(8),
  PR_DATE         DATE,
  FASCICLE_TYPE   VARCHAR2(1),
  EXE_MARK        VARCHAR2(1),
  CONTR_IN        VARCHAR2(32),
  CONTR_OUT       VARCHAR2(32),
  IN_PNT          NUMBER(19),
  EX_PNT          NUMBER(19),
  SUPV_MARK       VARCHAR2(1),
  NOTE_S          VARCHAR2(255)
)
;
alter table ALLSYS.PRE_FASCICLE_HEAD
  add constraint PK_PRE_FASCICLE_HEAD primary key (FASCICLE_NO);

prompt
prompt Creating table PRE_IMA_APPL_CLOSE
prompt =================================
prompt
create table ALLSYS.PRE_IMA_APPL_CLOSE
(
  MANUAL_NO  VARCHAR2(12) not null,
  CONTR_ITEM NUMBER(19) not null,
  CODE_TS    VARCHAR2(16),
  G_NAME     VARCHAR2(50),
  G_MODEL    VARCHAR2(50),
  G_QTY      NUMBER(19,4),
  G_UNIT     VARCHAR2(3),
  DECL_PRICE NUMBER(19,4),
  G_AMT      NUMBER(19,5),
  PROC_MODE  VARCHAR2(1),
  BOOK_NO    NUMBER(19)
)
;
alter table ALLSYS.PRE_IMA_APPL_CLOSE
  add constraint PK_PRE_IMA_APPL_CLOSE primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table PRE_IM_APPL_CLOSE
prompt ================================
prompt
create table ALLSYS.PRE_IM_APPL_CLOSE
(
  MANUAL_NO      VARCHAR2(12) not null,
  CONTR_ITEM     NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(50),
  G_MODEL        VARCHAR2(50),
  FACT_QTY       NUMBER(19,4),
  T_IN_QTY       NUMBER(19,4),
  T_EX_QTY       NUMBER(19,4),
  USED_QTY       NUMBER(19,4),
  REMAIN_QTY     NUMBER(19,4),
  PROC_MODE      VARCHAR2(1),
  CORR_MANUAL_NO VARCHAR2(12)
)
;
alter table ALLSYS.PRE_IM_APPL_CLOSE
  add constraint PK_PRE_IM_APPL_CLOSE primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table PRE_IM_CONTRACT_LIST
prompt ===================================
prompt
create table ALLSYS.PRE_IM_CONTRACT_LIST
(
  MANUAL_NO      VARCHAR2(12) not null,
  CONTR_ITEM     NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  CLASS_MARK     VARCHAR2(1),
  G_NAME         VARCHAR2(50),
  G_MODEL        VARCHAR2(50),
  ORIGIN_COUNTRY VARCHAR2(3),
  DUTY_MODE      VARCHAR2(1),
  DUTY_RATIO     NUMBER(19,5),
  LOCAL_CONTR    VARCHAR2(20),
  APPR_AMT       NUMBER(19,5),
  FACT_AMT       NUMBER(19,5),
  UNIT_PRICE     NUMBER(19,10),
  APPR_QTY       NUMBER(19,5),
  FACT_QTY       NUMBER(19,5),
  TRANSFER_QTY   NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  IN_COUNT       NUMBER(19),
  IM_MODE        VARCHAR2(1),
  CONSUME_NOTE   VARCHAR2(255)
)
;
alter table ALLSYS.PRE_IM_CONTRACT_LIST
  add constraint PK_PRE_IM_CONTRACT_LIST primary key (MANUAL_NO, CONTR_ITEM);

prompt
prompt Creating table PRE_IM_FASCICLE_LIST
prompt ===================================
prompt
create table ALLSYS.PRE_IM_FASCICLE_LIST
(
  MANUAL_NO   VARCHAR2(12),
  FASCICLE_NO VARCHAR2(12) not null,
  CONTR_ITEM  NUMBER(19) not null,
  APPR_QTY    NUMBER(19,4),
  FACT_QTY    NUMBER(19,4)
)
;
alter table ALLSYS.PRE_IM_FASCICLE_LIST
  add constraint PK_PRE_IM_FASCICLE_LIST primary key (FASCICLE_NO, CONTR_ITEM);

prompt
prompt Creating table PRE_INVESTER_REL
prompt ===============================
prompt
create table ALLSYS.PRE_INVESTER_REL
(
  PRE_TRADE_CO VARCHAR2(18) not null,
  INV_NO       NUMBER(8) not null,
  INV_CO       VARCHAR2(255),
  INV_MOD      VARCHAR2(3),
  INV_FUND     NUMBER(19,4),
  ACT_FUND     NUMBER(19,4),
  INV_DATE     DATE,
  INV_COUNTRY  VARCHAR2(3)
)
;
alter table ALLSYS.PRE_INVESTER_REL
  add constraint PK_PRE_INVESTER_REL primary key (PRE_TRADE_CO, INV_NO);

prompt
prompt Creating table PRE_MANA_REL
prompt ===========================
prompt
create table ALLSYS.PRE_MANA_REL
(
  PRE_TRADE_CO VARCHAR2(18) not null,
  MANAG_NO     NUMBER(19) not null,
  MANAG_NAME   VARCHAR2(32),
  MANAG_TITLE  VARCHAR2(32),
  MANAG_NAT    VARCHAR2(3),
  MANAG_ID     VARCHAR2(32),
  MANAG_BIR    DATE,
  MANAG_SEX    VARCHAR2(2),
  MANAG_ADDR   VARCHAR2(255),
  MANAG_TEL_BP VARCHAR2(32),
  MANAG_NOTE   VARCHAR2(255),
  MANAG_DEGREE VARCHAR2(32)
)
;
alter table ALLSYS.PRE_MANA_REL
  add constraint PK_PRE_MANA_REL primary key (PRE_TRADE_CO, MANAG_NO);

prompt
prompt Creating table PRE_PROJECT_HEAD
prompt ===============================
prompt
create table ALLSYS.PRE_PROJECT_HEAD
(
  PRE_PROJECT_ID   VARCHAR2(18),
  PROJECT_ID       VARCHAR2(12) not null,
  MODIFY_TIMES     NUMBER(9) not null,
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  TRADE_TYPE_NAME  VARCHAR2(12),
  APPR_DEPT        VARCHAR2(4),
  PROJECT_FUND     VARCHAR2(1),
  PROJECT_TYPE     VARCHAR2(5),
  PROJECT_NAME     VARCHAR2(255),
  PROJECT_DATE     DATE,
  START_DATE       DATE,
  LIMIT_DATE       DATE,
  FOREIGN_CO       VARCHAR2(255),
  FOREIGN_COUNTRY  VARCHAR2(255),
  INVEST_RATE_NAME VARCHAR2(255),
  CONTR_NO         VARCHAR2(255),
  RISK_MARK        VARCHAR2(10),
  CUT_MODE         VARCHAR2(3),
  INVEST_AMT       NUMBER(19,4),
  INVEST_CURR      VARCHAR2(3),
  QUOTA_AMT        NUMBER(19,4),
  QUOTA_FREE       NUMBER(19,4),
  APPR_AMT_FREE    NUMBER(19,4),
  FACT_AMT_FREE    NUMBER(19,4),
  APPR_AMT         NUMBER(19,4),
  FACT_AMT         NUMBER(19,4),
  DUTY_CUT         NUMBER(19,4),
  TAX_CUT          NUMBER(19,4),
  OTHER_CUT        NUMBER(19,4),
  REAL_DUTY        NUMBER(19,4),
  REAL_TAX         NUMBER(19,4),
  REAL_OTHER       NUMBER(19,4),
  REAL_DUTY_CUT    NUMBER(19,4),
  REAL_TAX_CUT     NUMBER(19,4),
  REAL_OTHER_CUT   NUMBER(19,4),
  QTY_CUT          NUMBER(19,4),
  UNIT_CUT         VARCHAR2(3),
  APPR_QTY         NUMBER(19,4),
  FACT_QTY         NUMBER(19,4),
  AGREE_NO         VARCHAR2(255),
  SECURITY_LEVEL   VARCHAR2(1),
  COLLECT_MARK     VARCHAR2(1),
  COLLECT_DATE     DATE,
  MASTER_CUSTOMS   VARCHAR2(4),
  LINKMAN          VARCHAR2(255),
  ITEMS_NO         NUMBER(9),
  INPUT_DATE       DATE,
  TYPE_ER          VARCHAR2(8),
  INPUT_COP        VARCHAR2(255),
  CHK_DATE         DATE,
  CHK_ER           VARCHAR2(8),
  RECHK_DATE       DATE,
  MODIFY_DATE      DATE,
  RECHK_ER         VARCHAR2(8),
  EXE_MARK         VARCHAR2(1),
  SEQ_NO           VARCHAR2(12),
  SEQ_DATE         DATE,
  SEQ_ER           VARCHAR2(8),
  REPORT_MARK      VARCHAR2(1),
  REPORT_DATE      DATE,
  REPORT_CGAC_DATE DATE,
  REPLY_DATE       DATE,
  REPLY_ER         VARCHAR2(8),
  REASON           VARCHAR2(255),
  RESERVE1         VARCHAR2(255),
  NOTE             VARCHAR2(255),
  HASH_SIGN        VARCHAR2(380)
)
;
alter table ALLSYS.PRE_PROJECT_HEAD
  add constraint PK_PRE_PROJECT_HEAD primary key (PROJECT_ID, MODIFY_TIMES);

prompt
prompt Creating table PRE_PROJECT_LIST
prompt ===============================
prompt
create table ALLSYS.PRE_PROJECT_LIST
(
  PROJECT_ID     VARCHAR2(12) not null,
  MODIFY_TIMES   NUMBER(9) not null,
  G_NO           NUMBER(9) not null,
  CODE_TS        VARCHAR2(16),
  CLASS_MARK     VARCHAR2(1),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  G_UNIT         VARCHAR2(3),
  G_QTY          NUMBER(19,4),
  UNIT_1         VARCHAR2(3),
  QTY_1          NUMBER(19,4),
  UNIT_2         VARCHAR2(3),
  QTY_2          NUMBER(19,4),
  DECL_TOTAL     NUMBER(19,4),
  TRADE_CURR     VARCHAR2(3),
  USED_QTY       NUMBER(19,4),
  USED_AMT       NUMBER(19,4),
  FACT_QTY       NUMBER(19,4),
  FACT_AMT       NUMBER(19,4),
  DUTY_MODE      VARCHAR2(1),
  D_RATE         NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  O_RATE         NUMBER(19,5),
  DUTY_RATE      NUMBER(19,5),
  TAX_RATE       NUMBER(19,5),
  OTHER_RATE     NUMBER(19,5),
  CHECK_MARK     VARCHAR2(1),
  RESERVE1       VARCHAR2(255),
  NOTE           VARCHAR2(255)
)
;
alter table ALLSYS.PRE_PROJECT_LIST
  add constraint PK_PRE_PROJECT_LIST primary key (PROJECT_ID, MODIFY_TIMES, G_NO);

prompt
prompt Creating table PRE_RED_HEAD
prompt ===========================
prompt
create table ALLSYS.PRE_RED_HEAD
(
  PROJECT_ID       VARCHAR2(12),
  PRE_CUT_ID       VARCHAR2(18),
  CUT_ID           VARCHAR2(12) not null,
  MODIFY_TIMES     NUMBER(9) not null,
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  TRADE_CO         VARCHAR2(10),
  TRADE_NAME       VARCHAR2(255),
  APPR_DEPT        VARCHAR2(4),
  PROJECT_FUND     VARCHAR2(1),
  PROJECT_TYPE     VARCHAR2(5),
  CUT_MODE         VARCHAR2(3),
  APPR_REASON      VARCHAR2(255),
  I_E_PORT         VARCHAR2(4),
  I_E_FLAG         VARCHAR2(1),
  LICENSE_NO       VARCHAR2(20),
  CONTR_NO         VARCHAR2(255),
  ITEMS_NO         NUMBER(9),
  INPUT_DATE       DATE,
  TYPE_ER          VARCHAR2(8),
  INPUT_COP        VARCHAR2(255),
  CHK_DATE         DATE,
  CHK_ER           VARCHAR2(8),
  RECHK_DATE       DATE,
  MODIFY_DATE      DATE,
  RECHK_ER         VARCHAR2(8),
  EXE_MARK         VARCHAR2(1),
  LIMIT_DATE       DATE,
  ENTRY_PWD        VARCHAR2(12),
  PRINT_DATE       DATE,
  PRINT_ER         VARCHAR2(8),
  PRINT_MARK       VARCHAR2(1),
  TRANS_TIMES      NUMBER(9),
  APPR_AMT         NUMBER(19,4),
  FACT_AMT         NUMBER(19,4),
  APPR_QUOTA_SUM   NUMBER(19,4),
  APPR_QUOTA_QTY   NUMBER(19,4),
  REAL_QUOTA_SUM   NUMBER(19,4),
  REAL_QUOTA_QTY   NUMBER(19,4),
  DUTY_CUT         NUMBER(19,4),
  TAX_CUT          NUMBER(19,4),
  OTHER_CUT        NUMBER(19,4),
  REAL_DUTY        NUMBER(19,4),
  REAL_TAX         NUMBER(19,4),
  REAL_OTHER       NUMBER(19,4),
  REAL_DUTY_CUT    NUMBER(19,4),
  REAL_TAX_CUT     NUMBER(19,4),
  REAL_OTHER_CUT   NUMBER(19,4),
  VERIFY_DATE      DATE,
  MASTER_CUSTOMS   VARCHAR2(4),
  CHECK_NOTE       VARCHAR2(255),
  RECHK_NOTE       VARCHAR2(255),
  REPLY_CHECK_NOTE VARCHAR2(255),
  RISK_MARK        VARCHAR2(10),
  COLLECT_MARK     VARCHAR2(1),
  COLLECT_DATE     DATE,
  ENTRY_ID         VARCHAR2(18),
  VERIFY_TIMES     NUMBER(9),
  SECURITY_LEVEL   VARCHAR2(1),
  REPORT_MARK      VARCHAR2(1),
  REPORT_DATE      DATE,
  REPORT_CGAC_DATE DATE,
  REPLY_DATE       DATE,
  REPLY_ER         VARCHAR2(8),
  SEQ_NO           VARCHAR2(12),
  SEQ_DATE         DATE,
  SEQ_ER           VARCHAR2(8),
  RED_TYPE         VARCHAR2(1),
  TRADE_MODE       VARCHAR2(4),
  TRANS_MODE       VARCHAR2(1),
  FEE_MARK         VARCHAR2(1),
  OTHER_MARK       VARCHAR2(1),
  INSUR_MARK       VARCHAR2(1),
  FEE_CURR         VARCHAR2(3),
  FEE_RATE         NUMBER(19,5),
  OTHER_CURR       VARCHAR2(3),
  OTHER_RATE       NUMBER(19,5),
  INSUR_CURR       VARCHAR2(3),
  INSUR_RATE       NUMBER(19,5),
  SERVICE_RATE     NUMBER(19,5),
  SERVICE_FEE      NUMBER(19,4),
  MNL_JGF_FLAG     VARCHAR2(1),
  REASON           VARCHAR2(255),
  RESERVE1         VARCHAR2(255),
  NOTE             VARCHAR2(255),
  HASH_SIGN        VARCHAR2(380)
)
;
alter table ALLSYS.PRE_RED_HEAD
  add constraint PK_PRE_RED_HEAD primary key (CUT_ID, MODIFY_TIMES);

prompt
prompt Creating table PRE_RED_LIST
prompt ===========================
prompt
create table ALLSYS.PRE_RED_LIST
(
  CUT_ID         VARCHAR2(12) not null,
  MODIFY_TIMES   NUMBER(9) not null,
  G_NO           NUMBER(9) not null,
  MAN_G_NO       NUMBER(9),
  CODE_TS        VARCHAR2(16),
  CLASS_MARK     VARCHAR2(1),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  G_UNIT         VARCHAR2(3),
  G_QTY          NUMBER(19,4),
  UNIT_1         VARCHAR2(3),
  QTY_1          NUMBER(19,4),
  UNIT_2         VARCHAR2(3),
  QTY_2          NUMBER(19,4),
  DECL_TOTAL     NUMBER(19,4),
  TRADE_CURR     VARCHAR2(3),
  DUTY_MODE      VARCHAR2(1),
  D_RATE         NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  O_RATE         NUMBER(19,5),
  DUTY_RATE      NUMBER(19,5),
  TAX_RATE       NUMBER(19,5),
  OTHER_RATE     NUMBER(19,5),
  DUTY_CUT       NUMBER(19,4),
  TAX_CUT        NUMBER(19,4),
  OTHER_CUT      NUMBER(19,4),
  APPR_QUOTA     NUMBER(19,4),
  FACT_AMT       NUMBER(19,4),
  FACT_QTY       NUMBER(19,4),
  DUTY_VALUE     NUMBER(19),
  AUDIT_FLAG     VARCHAR2(1),
  RESERVE1       VARCHAR2(255),
  NOTE           VARCHAR2(255)
)
;
alter table ALLSYS.PRE_RED_LIST
  add constraint PK_PRE_RED_LIST primary key (CUT_ID, MODIFY_TIMES, G_NO);

prompt
prompt Creating table PRE_REL_ALC_WORK
prompt ===============================
prompt
create table ALLSYS.PRE_REL_ALC_WORK
(
  ENTRY_ID     VARCHAR2(18) not null,
  CUSTOMS_CODE VARCHAR2(4),
  I_E_PORT     VARCHAR2(4),
  D_DATE       DATE,
  REC_DATE     DATE,
  DECL_TYPE    VARCHAR2(1),
  AVR_FLAG     VARCHAR2(1),
  RSK_FLAG     VARCHAR2(1),
  REL_TYPE     VARCHAR2(1),
  TRAF_NAME    VARCHAR2(255),
  VOYAGE_NO    VARCHAR2(32),
  BILL_NO      VARCHAR2(32),
  LAST_STEP    VARCHAR2(2),
  PROC_FLAG    VARCHAR2(8),
  OP_DATE      DATE
)
;
alter table ALLSYS.PRE_REL_ALC_WORK
  add constraint PK_PRE_REL_ALC_WORK primary key (ENTRY_ID);

prompt
prompt Creating table PRICE_LIBRARY
prompt ============================
prompt
create table ALLSYS.PRICE_LIBRARY
(
  REC_NO         VARCHAR2(18) not null,
  I_E_FLAG       VARCHAR2(1) not null,
  REC_TYPE       VARCHAR2(1) not null,
  CREATE_DATE    DATE not null,
  POST_MARK      DATE not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_NAME_E       VARCHAR2(255),
  BRAND_C        VARCHAR2(255),
  BRAND_E        VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  TRADE_COUNTRY  VARCHAR2(3),
  TRANS_MODE     VARCHAR2(1),
  TRANS_PORT     VARCHAR2(20),
  CURR_CODE      VARCHAR2(3),
  PRICE          NUMBER(19,5),
  DECL_PRICE     NUMBER(19,5),
  PRICE_CO       VARCHAR2(1),
  QTY            NUMBER(19,5),
  UNIT_NAME      VARCHAR2(12),
  TRAF_MODE      VARCHAR2(1),
  TRADE_MODE     VARCHAR2(4),
  TRADE_NAME     VARCHAR2(255),
  OWNER_NAME     VARCHAR2(255),
  WRAP_TYPE      VARCHAR2(32),
  PAY_WAY        VARCHAR2(1),
  NOTE_S         VARCHAR2(255),
  I_E_DATE       DATE,
  INPUT_DATE     DATE,
  BEG_DATE       DATE,
  END_DATE       DATE,
  CUSTOMER_CODE  VARCHAR2(8),
  FORM_ID        VARCHAR2(50),
  ID_TYPE        VARCHAR2(1),
  MARK1          VARCHAR2(1),
  MARK2          VARCHAR2(1),
  MARK3          VARCHAR2(1),
  MARK4          VARCHAR2(1)
)
;
alter table ALLSYS.PRICE_LIBRARY
  add constraint PK_PRICE_LIBRARY primary key (REC_NO, I_E_FLAG, REC_TYPE, CREATE_DATE, POST_MARK);
create index ALLSYS.IDX_PRICE_LIBRARY on ALLSYS.PRICE_LIBRARY (CREATE_DATE);
create index ALLSYS.IX_PRICELIBRARY_CODETS on ALLSYS.PRICE_LIBRARY (CODE_TS);
create index ALLSYS.IX_PRICE_LIBRARY on ALLSYS.PRICE_LIBRARY (I_E_FLAG, REC_TYPE, CREATE_DATE, CODE_TS);

prompt
prompt Creating table PRICE_LIBRARY_ENTRY
prompt ==================================
prompt
create table ALLSYS.PRICE_LIBRARY_ENTRY
(
  REC_NO         VARCHAR2(18) not null,
  I_E_FLAG       VARCHAR2(1) not null,
  REC_TYPE       VARCHAR2(1) not null,
  CREATE_DATE    DATE not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_NAME_E       VARCHAR2(255),
  BRAND_C        VARCHAR2(255),
  BRAND_E        VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  TRADE_COUNTRY  VARCHAR2(3),
  TRANS_MODE     VARCHAR2(1),
  TRANS_PORT     VARCHAR2(20),
  TRADE_CURR     VARCHAR2(3),
  VAL_PRICE      NUMBER(19,5),
  VAL_CURR       VARCHAR2(3),
  DECL_PRICE     NUMBER(19,5),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  QTY_1          NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  QTY_2          NUMBER(19,5),
  UNIT_2         VARCHAR2(3),
  TRAF_MODE      VARCHAR2(1),
  TRADE_MODE     VARCHAR2(4),
  TRADE_CO       VARCHAR2(10),
  TRADE_NAME     VARCHAR2(255),
  OWNER_CO       VARCHAR2(10),
  OWNER_NAME     VARCHAR2(255),
  WRAP_TYPE      VARCHAR2(32),
  PAY_WAY        VARCHAR2(1),
  NOTE_S         VARCHAR2(255),
  I_E_DATE       DATE,
  SIGN_DATE      DATE,
  BEG_DATE       DATE,
  END_DATE       DATE,
  CUSTOMER_CODE  VARCHAR2(8),
  FORM_ID        VARCHAR2(50),
  ID_TYPE        VARCHAR2(1),
  MARK1          VARCHAR2(1),
  MARK2          VARCHAR2(1),
  MARK3          VARCHAR2(1),
  MARK4          VARCHAR2(1),
  REMARK         NVARCHAR2(255)
)
;
alter table ALLSYS.PRICE_LIBRARY_ENTRY
  add constraint PK_PRICE_LIBRARY_ENTRY primary key (REC_NO, I_E_FLAG, REC_TYPE, CREATE_DATE);
create index ALLSYS.IDX_PRICELIBRARYENTRY_CDATE on ALLSYS.PRICE_LIBRARY_ENTRY (CREATE_DATE);
create index ALLSYS.IX_PRICELIBRARYENTRY_CODETS on ALLSYS.PRICE_LIBRARY_ENTRY (CODE_TS);

prompt
prompt Creating table PRICE_LIBRARY_MAN
prompt ================================
prompt
create table ALLSYS.PRICE_LIBRARY_MAN
(
  REC_NO         VARCHAR2(18) not null,
  I_E_FLAG       VARCHAR2(1) not null,
  REC_TYPE       VARCHAR2(1) not null,
  CREATE_DATE    DATE not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_NAME_E       VARCHAR2(255),
  BRAND_C        VARCHAR2(255),
  BRAND_E        VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  TRADE_COUNTRY  VARCHAR2(3),
  TRANS_MODE     VARCHAR2(1),
  TRANS_PORT     VARCHAR2(20),
  TRADE_CURR     VARCHAR2(3),
  VAL_PRICE      NUMBER(19,5),
  VAL_CURR       VARCHAR2(3),
  DECL_PRICE     NUMBER(19,5),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  QTY_1          NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  QTY_2          NUMBER(19,5),
  UNIT_2         VARCHAR2(3),
  TRAF_MODE      VARCHAR2(1),
  TRADE_MODE     VARCHAR2(4),
  TRADE_CO       VARCHAR2(10),
  TRADE_NAME     VARCHAR2(255),
  OWNER_CO       VARCHAR2(10),
  OWNER_NAME     VARCHAR2(255),
  WRAP_TYPE      VARCHAR2(32),
  PAY_WAY        VARCHAR2(1),
  NOTE_S         VARCHAR2(255),
  I_E_DATE       DATE,
  SIGN_DATE      DATE,
  BEG_DATE       DATE,
  END_DATE       DATE,
  CUSTOMER_CODE  VARCHAR2(8),
  FORM_ID        VARCHAR2(50),
  ID_TYPE        VARCHAR2(1),
  MARK1          VARCHAR2(1),
  MARK2          VARCHAR2(1),
  MARK3          VARCHAR2(1),
  MARK4          VARCHAR2(1),
  REMARK         NVARCHAR2(255)
)
;
alter table ALLSYS.PRICE_LIBRARY_MAN
  add constraint PK_PRICE_LIBRARY_MAN primary key (REC_NO, I_E_FLAG, REC_TYPE, CREATE_DATE);
create index ALLSYS.IDX_PRICELIBRARYMAN_CDATE on ALLSYS.PRICE_LIBRARY_MAN (CREATE_DATE);
create index ALLSYS.IX_PRICELIBRARYMAN_CODETS on ALLSYS.PRICE_LIBRARY_MAN (CODE_TS);

prompt
prompt Creating table PRICE_LIBRARY_RISK
prompt =================================
prompt
create table ALLSYS.PRICE_LIBRARY_RISK
(
  REC_NO         VARCHAR2(18) not null,
  I_E_FLAG       VARCHAR2(1) not null,
  REC_TYPE       VARCHAR2(1) not null,
  CREATE_DATE    DATE not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_NAME_E       VARCHAR2(255),
  BRAND_C        VARCHAR2(255),
  BRAND_E        VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  TRADE_COUNTRY  VARCHAR2(3),
  TRANS_MODE     VARCHAR2(1),
  TRANS_PORT     VARCHAR2(20),
  TRADE_CURR     VARCHAR2(3),
  VAL_PRICE      NUMBER(19,5),
  VAL_CURR       VARCHAR2(3),
  DECL_PRICE     NUMBER(19,5),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  QTY_1          NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  QTY_2          NUMBER(19,5),
  UNIT_2         VARCHAR2(3),
  TRAF_MODE      VARCHAR2(1),
  TRADE_MODE     VARCHAR2(4),
  TRADE_CO       VARCHAR2(10),
  TRADE_NAME     VARCHAR2(255),
  OWNER_CO       VARCHAR2(10),
  OWNER_NAME     VARCHAR2(255),
  WRAP_TYPE      VARCHAR2(32),
  PAY_WAY        VARCHAR2(1),
  NOTE_S         VARCHAR2(255),
  I_E_DATE       DATE,
  SIGN_DATE      DATE,
  BEG_DATE       DATE,
  END_DATE       DATE,
  CUSTOMER_CODE  VARCHAR2(8),
  FORM_ID        VARCHAR2(50),
  ID_TYPE        VARCHAR2(1),
  MARK1          VARCHAR2(1),
  MARK2          VARCHAR2(1),
  MARK3          VARCHAR2(1),
  MARK4          VARCHAR2(1),
  REMARK         NVARCHAR2(255)
)
;
alter table ALLSYS.PRICE_LIBRARY_RISK
  add constraint PK_PRICE_LIBRARY_RISK primary key (REC_NO, I_E_FLAG, REC_TYPE, CREATE_DATE);
create index ALLSYS.IDX_PRICELIBRARYRISK_CDATE on ALLSYS.PRICE_LIBRARY_RISK (CREATE_DATE);
create index ALLSYS.IX_PRICELIBRARYRISK_CODETS on ALLSYS.PRICE_LIBRARY_RISK (CODE_TS);

prompt
prompt Creating table PROJECT_HEAD
prompt ===========================
prompt
create table ALLSYS.PROJECT_HEAD
(
  PRE_PROJECT_ID   VARCHAR2(18),
  PROJECT_ID       VARCHAR2(18) not null,
  MODIFY_TIMES     NUMBER(9) not null,
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  TRADE_TYPE_NAME  VARCHAR2(12),
  APPR_DEPT        VARCHAR2(4),
  PROJECT_FUND     VARCHAR2(1),
  PROJECT_TYPE     VARCHAR2(12),
  PROJECT_NAME     VARCHAR2(255),
  PROJECT_DATE     DATE,
  START_DATE       DATE,
  LIMIT_DATE       DATE,
  FOREIGN_CO       VARCHAR2(255),
  FOREIGN_COUNTRY  VARCHAR2(255),
  INVEST_RATE_NAME VARCHAR2(255),
  CONTR_NO         VARCHAR2(255),
  RISK_MARK        VARCHAR2(10),
  CUT_MODE         VARCHAR2(3),
  INVEST_AMT       NUMBER(19,4),
  INVEST_CURR      VARCHAR2(3),
  QUOTA_AMT        NUMBER(19,4),
  QUOTA_FREE       NUMBER(19,4),
  APPR_AMT_FREE    NUMBER(19,4),
  FACT_AMT_FREE    NUMBER(19,4),
  APPR_AMT         NUMBER(19,4),
  FACT_AMT         NUMBER(19,4),
  DUTY_CUT         NUMBER(19,4),
  TAX_CUT          NUMBER(19,4),
  OTHER_CUT        NUMBER(19,4),
  REAL_DUTY        NUMBER(19,4),
  REAL_TAX         NUMBER(19,4),
  REAL_OTHER       NUMBER(19,4),
  REAL_DUTY_CUT    NUMBER(19,4),
  REAL_TAX_CUT     NUMBER(19,4),
  REAL_OTHER_CUT   NUMBER(19,4),
  QTY_CUT          NUMBER(19,4),
  UNIT_CUT         VARCHAR2(3),
  APPR_QTY         NUMBER(19,4),
  FACT_QTY         NUMBER(19,4),
  AGREE_NO         VARCHAR2(255),
  SECURITY_LEVEL   VARCHAR2(1),
  COLLECT_MARK     VARCHAR2(1),
  COLLECT_DATE     DATE,
  MASTER_CUSTOMS   VARCHAR2(4),
  LINKMAN          VARCHAR2(255),
  ITEMS_NO         NUMBER(9),
  INPUT_DATE       DATE,
  TYPE_ER          VARCHAR2(8),
  INPUT_COP        VARCHAR2(255),
  CHK_DATE         DATE,
  CHK_ER           VARCHAR2(8),
  RECHK_DATE       DATE,
  MODIFY_DATE      DATE,
  RECHK_ER         VARCHAR2(8),
  EXE_MARK         VARCHAR2(1),
  SEQ_NO           VARCHAR2(12),
  SEQ_DATE         DATE,
  SEQ_ER           VARCHAR2(8),
  REPORT_MARK      VARCHAR2(1),
  REPORT_DATE      DATE,
  REPORT_CGAC_DATE DATE,
  REPLY_DATE       DATE,
  REPLY_ER         VARCHAR2(8),
  REASON           VARCHAR2(255),
  RESERVE1         VARCHAR2(255),
  NOTE             VARCHAR2(255),
  HASH_SIGN        VARCHAR2(380),
  FIRST_PASS_DATE  DATE,
  INVEST_AMT_USD   NUMBER(19,4),
  MODIFY_ER        VARCHAR2(8),
  BELONG_AREA_NAME VARCHAR2(255)
)
;
alter table ALLSYS.PROJECT_HEAD
  add constraint PK_PROJECT_HEAD primary key (PROJECT_ID, MODIFY_TIMES);
create index ALLSYS.IX_PROJECTHEAD_CUSTEXE on ALLSYS.PROJECT_HEAD (MASTER_CUSTOMS, EXE_MARK);
create index ALLSYS.IX_PROJECTHEAD_PREPROJECTID on ALLSYS.PROJECT_HEAD (PRE_PROJECT_ID);

prompt
prompt Creating table PROJECT_LIST
prompt ===========================
prompt
create table ALLSYS.PROJECT_LIST
(
  PROJECT_ID     VARCHAR2(18) not null,
  MODIFY_TIMES   NUMBER(9) not null,
  G_NO           NUMBER(9) not null,
  CODE_TS        VARCHAR2(16),
  CLASS_MARK     VARCHAR2(1),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  G_UNIT         VARCHAR2(3),
  G_QTY          NUMBER(19,4),
  UNIT_1         VARCHAR2(3),
  QTY_1          NUMBER(19,4),
  UNIT_2         VARCHAR2(3),
  QTY_2          NUMBER(19,4),
  DECL_TOTAL     NUMBER(19,4),
  TRADE_CURR     VARCHAR2(3),
  USED_QTY       NUMBER(19,4),
  USED_AMT       NUMBER(19,4),
  FACT_QTY       NUMBER(19,4),
  FACT_AMT       NUMBER(19,4),
  DUTY_MODE      VARCHAR2(1),
  D_RATE         NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  O_RATE         NUMBER(19,5),
  DUTY_RATE      NUMBER(19,5),
  TAX_RATE       NUMBER(19,5),
  OTHER_RATE     NUMBER(19,5),
  CHECK_MARK     VARCHAR2(1),
  RESERVE1       VARCHAR2(255),
  NOTE           VARCHAR2(255)
)
;
alter table ALLSYS.PROJECT_LIST
  add constraint PK_PROJECT_LIST primary key (PROJECT_ID, MODIFY_TIMES, G_NO);

prompt
prompt Creating table PROJECT_MAX_NO
prompt =============================
prompt
create table ALLSYS.PROJECT_MAX_NO
(
  MASTER_CUSTOMS VARCHAR2(4) not null,
  YEAR_2         CHAR(2) not null,
  CUT_MODE       VARCHAR2(3) not null,
  MAX_NO         NUMBER(3)
)
;
alter table ALLSYS.PROJECT_MAX_NO
  add constraint PK_PROJECT_MAX_NO primary key (MASTER_CUSTOMS, YEAR_2, CUT_MODE);

prompt
prompt Creating table PROJECT_MAX_NO_2007
prompt ==================================
prompt
create table ALLSYS.PROJECT_MAX_NO_2007
(
  MASTER_CUSTOMS VARCHAR2(4) not null,
  YEAR_4         CHAR(4) not null,
  CUT_MODE       VARCHAR2(3) not null,
  MAX_NO         NUMBER(4)
)
;
alter table ALLSYS.PROJECT_MAX_NO_2007
  add constraint PK_PROJECT_MAX_NO_2007 primary key (MASTER_CUSTOMS, YEAR_4, CUT_MODE);

prompt
prompt Creating table QUEST_SL_TEMP_EXPLAIN1
prompt =====================================
prompt
create global temporary table ALLSYS.QUEST_SL_TEMP_EXPLAIN1
(
  STATEMENT_ID      VARCHAR2(30),
  PLAN_ID           NUMBER,
  TIMESTAMP         DATE,
  REMARKS           VARCHAR2(80),
  OPERATION         VARCHAR2(30),
  OPTIONS           VARCHAR2(255),
  OBJECT_NODE       VARCHAR2(128),
  OBJECT_OWNER      VARCHAR2(30),
  OBJECT_NAME       VARCHAR2(30),
  OBJECT_ALIAS      VARCHAR2(65),
  OBJECT_INSTANCE   NUMBER,
  OBJECT_TYPE       VARCHAR2(30),
  OPTIMIZER         VARCHAR2(255),
  SEARCH_COLUMNS    NUMBER,
  ID                NUMBER,
  PARENT_ID         NUMBER,
  DEPTH             NUMBER,
  POSITION          NUMBER,
  COST              NUMBER,
  CARDINALITY       NUMBER,
  BYTES             NUMBER,
  OTHER_TAG         VARCHAR2(255),
  PARTITION_START   VARCHAR2(255),
  PARTITION_STOP    VARCHAR2(255),
  PARTITION_ID      NUMBER,
  OTHER             LONG,
  DISTRIBUTION      VARCHAR2(30),
  CPU_COST          NUMBER(38),
  IO_COST           NUMBER(38),
  TEMP_SPACE        NUMBER(38),
  ACCESS_PREDICATES VARCHAR2(4000),
  FILTER_PREDICATES VARCHAR2(4000)
)
on commit preserve rows;

prompt
prompt Creating table RAM_HEAD
prompt =======================
prompt
create table ALLSYS.RAM_HEAD
(
  PRE_RAM_ID       VARCHAR2(18),
  RAM_ID           VARCHAR2(18) not null,
  CUT_ID           VARCHAR2(18),
  RELATIVE_ID      VARCHAR2(18),
  RAM_TYPE         VARCHAR2(5),
  PROJECT_ID       VARCHAR2(18),
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  MASTER_CUSTOMS   VARCHAR2(4),
  LINKMAN          VARCHAR2(255),
  I_DATE           DATE,
  INPUT_DATE       DATE,
  INPUT_ER         VARCHAR2(8),
  PRE_PRINT_ER     VARCHAR2(8),
  PRE_PRINT_DATE   DATE,
  DECL_DATE        DATE,
  CHK_DATE         DATE,
  CHK_ER           VARCHAR2(8),
  CHECK_NOTE       VARCHAR2(255),
  RECHK_DATE       DATE,
  RECHK_ER         VARCHAR2(8),
  RECHK_NOTE       VARCHAR2(255),
  REPLY_DATE       DATE,
  REPLY_ER         VARCHAR2(8),
  REPLY_CHECK_NOTE VARCHAR2(255),
  MODIFY_DATE      DATE,
  MODIFY_ER        VARCHAR2(8),
  MODIFY_NOTE      VARCHAR2(255),
  EXE_MARK         VARCHAR2(1),
  TOTAL_AMT        NUMBER(19,4),
  PRINT_DATE       DATE,
  PRINT_ER         VARCHAR2(8),
  SOURCE_TYPE      VARCHAR2(12),
  RESERVE1         VARCHAR2(255),
  NOTE             VARCHAR2(255),
  HASH_SIGN        VARCHAR2(380),
  REASON           VARCHAR2(255),
  LIMIT_DATE       DATE,
  VERIFY_DATE      DATE,
  ENTRY_ID         VARCHAR2(18),
  RTX_DATE         DATE,
  BANK_NAME        VARCHAR2(255),
  DATE_BEGIN       DATE,
  DATE_END         DATE,
  MAX_LOAN_VALUE   NUMBER(19,4),
  TAX_AMT          NUMBER(19,4),
  END_LOAN_DATE    DATE,
  END_LOAN_ER      VARCHAR2(8),
  UNFREEZE_TYPE    VARCHAR2(2),
  I_E_PORT         VARCHAR2(4),
  CUT_APP_REASON   VARCHAR2(255),
  CUT_FILE         VARCHAR2(255),
  I_E_ZGCUST       VARCHAR2(4),
  IM_CUSTOMS_CODE  VARCHAR2(4),
  IM_COP_CODE      VARCHAR2(10),
  IM_COP_NAME      VARCHAR2(255),
  IM_PROJECT_ID    VARCHAR2(18),
  IM_LINKMAN       VARCHAR2(255),
  YD_REPLY_ER      VARCHAR2(8),
  YD_REPLY_DATE    DATE,
  YD_REPLY_NOTE    VARCHAR2(255),
  REAL_DUTY        NUMBER(19,4),
  REAL_TAX         NUMBER(19,4),
  REAL_REG         NUMBER(19,4),
  REAL_ANTI        NUMBER(19,4),
  REAL_OTHER       NUMBER(19,4)
)
;
alter table ALLSYS.RAM_HEAD
  add constraint PK_RAM_HEAD primary key (RAM_ID);
create index ALLSYS.IX_RAMHEAD_CODENAME on ALLSYS.RAM_HEAD (OWNER_CODE, OWNER_NAME);
create index ALLSYS.IX_RAMHEAD_CUSTEXE on ALLSYS.RAM_HEAD (MASTER_CUSTOMS, RAM_TYPE, EXE_MARK);
create index ALLSYS.IX_RAMHEAD_PRERAMID on ALLSYS.RAM_HEAD (PRE_RAM_ID);

prompt
prompt Creating table RAM_LIST
prompt =======================
prompt
create table ALLSYS.RAM_LIST
(
  RAM_ID     VARCHAR2(18) not null,
  NUM        NUMBER(9) not null,
  G_NO       NUMBER(9),
  CODE_TS    VARCHAR2(16),
  G_NAME     VARCHAR2(255),
  G_MODEL    VARCHAR2(255),
  G_UNIT     VARCHAR2(3),
  G_QTY      NUMBER(19,4),
  DECL_TOTAL NUMBER(19,4),
  TRADE_CURR VARCHAR2(3),
  FACT_AMT   NUMBER(19,4),
  RESERVE1   VARCHAR2(255),
  NOTE       VARCHAR2(255),
  CUT_ID     VARCHAR2(18),
  PROJECT_ID VARCHAR2(18),
  I_DATE     DATE
)
;
alter table ALLSYS.RAM_LIST
  add constraint PK_RAM_LIST primary key (RAM_ID, NUM);
create index ALLSYS.IX_RAMLIST_CUTID on ALLSYS.RAM_LIST (CUT_ID);

prompt
prompt Creating table RAM_PRINT_LOG
prompt ============================
prompt
create table ALLSYS.RAM_PRINT_LOG
(
  RAM_ID     VARCHAR2(18) not null,
  PRINT_DATE DATE not null,
  PRINT_ER   VARCHAR2(8)
)
;
alter table ALLSYS.RAM_PRINT_LOG
  add constraint PK_RAM_PRINT_LOG primary key (RAM_ID, PRINT_DATE);

prompt
prompt Creating table RAM_RG_COPINFO
prompt =============================
prompt
create table ALLSYS.RAM_RG_COPINFO
(
  RAM_ID         VARCHAR2(18) not null,
  TYPE           VARCHAR2(1) not null,
  COP_NO         VARCHAR2(5) not null,
  COP_CODE       VARCHAR2(10),
  COP_NAME       VARCHAR2(255),
  COP_TYPE       VARCHAR2(1),
  MASTER_CUSTOMS VARCHAR2(4),
  CHANGE_NOTE    VARCHAR2(255),
  NOTE           VARCHAR2(255),
  LINKMAN        VARCHAR2(255),
  YD_CHK_DATE    DATE,
  YD_CHK_ER      VARCHAR2(8),
  YD_CHK_MARK    VARCHAR2(1),
  YD_CHK_NOTE    VARCHAR2(255),
  YD_LINK_NO     VARCHAR2(5)
)
;
alter table ALLSYS.RAM_RG_COPINFO
  add constraint PK_RAM_RG_COPINFO primary key (RAM_ID, TYPE, COP_NO);
create index ALLSYS.IX_RGCOPINFO_COP on ALLSYS.RAM_RG_COPINFO (COP_CODE, COP_NAME);

prompt
prompt Creating table RAM_RG_COP_OWNER
prompt ===============================
prompt
create table ALLSYS.RAM_RG_COP_OWNER
(
  RAM_ID      VARCHAR2(18) not null,
  TYPE        VARCHAR2(1) not null,
  COP_NO      VARCHAR2(5) not null,
  OWNER_NO    VARCHAR2(5) not null,
  OWNER_NAME  VARCHAR2(255),
  COUNTRY     VARCHAR2(3),
  INVEST_RATE VARCHAR2(255)
)
;
alter table ALLSYS.RAM_RG_COP_OWNER
  add constraint PK_RAM_RG_COP_OWNER primary key (RAM_ID, TYPE, COP_NO, OWNER_NO);

prompt
prompt Creating table RAM_RG_COP_PROJECT
prompt =================================
prompt
create table ALLSYS.RAM_RG_COP_PROJECT
(
  RAM_ID       VARCHAR2(18) not null,
  TYPE         VARCHAR2(1) not null,
  COP_NO       VARCHAR2(5) not null,
  PROJECT_NO   VARCHAR2(6) not null,
  PROJECT_ID   VARCHAR2(18),
  PROJECT_NAME VARCHAR2(255),
  PROJECT_FUND VARCHAR2(1),
  PROJECT_TYPE VARCHAR2(32),
  INVEST_AMT   NUMBER(19,4),
  INVEST_CURR  VARCHAR2(3),
  QUOTA_AMT    NUMBER(19,4),
  QUOTA_FREE   NUMBER(19,4)
)
;
alter table ALLSYS.RAM_RG_COP_PROJECT
  add constraint PK_RAM_RG_COP_PROJECT primary key (RAM_ID, TYPE, COP_NO, PROJECT_NO);

prompt
prompt Creating table RAM_RG_HEAD
prompt ==========================
prompt
create table ALLSYS.RAM_RG_HEAD
(
  PRE_RAM_ID       VARCHAR2(18),
  RAM_ID           VARCHAR2(18) not null,
  MASTER_CUSTOMS   VARCHAR2(4),
  RAM_TYPE         VARCHAR2(5),
  INPUT_DATE       DATE,
  INPUT_ER         VARCHAR2(8),
  PRE_PRINT_ER     VARCHAR2(8),
  PRE_PRINT_DATE   DATE,
  DECL_DATE        DATE,
  CHK_DATE         DATE,
  CHK_ER           VARCHAR2(8),
  CHECK_NOTE       VARCHAR2(255),
  RECHK_DATE       DATE,
  RECHK_ER         VARCHAR2(8),
  RECHK_NOTE       VARCHAR2(255),
  REPLY_DATE       DATE,
  REPLY_ER         VARCHAR2(8),
  REPLY_CHECK_NOTE VARCHAR2(255),
  MODIFY_DATE      DATE,
  MODIFY_ER        VARCHAR2(8),
  MODIFY_NOTE      VARCHAR2(255),
  EXE_MARK         VARCHAR2(1),
  PRINT_DATE       DATE,
  PRINT_ER         VARCHAR2(8),
  SOURCE_TYPE      VARCHAR2(12),
  YD_LINK_CNT      NUMBER(9)
)
;
alter table ALLSYS.RAM_RG_HEAD
  add constraint PK_RAM_RG_HEAD primary key (RAM_ID);
create index ALLSYS.IX_RGHEAD_CUSTEXE on ALLSYS.RAM_RG_HEAD (MASTER_CUSTOMS, EXE_MARK);
create index ALLSYS.IX_RGHEAD_PRERAMID on ALLSYS.RAM_RG_HEAD (PRE_RAM_ID);

prompt
prompt Creating table RAM_RN_INFO
prompt ==========================
prompt
create table ALLSYS.RAM_RN_INFO
(
  PRE_RAM_ID       VARCHAR2(18),
  RAM_ID           VARCHAR2(18) not null,
  COP_CODE         VARCHAR2(10),
  COP_NAME         VARCHAR2(255),
  RAM_TYPE         VARCHAR2(5),
  RN_YEAR          VARCHAR2(4),
  MASTER_CUSTOMS   VARCHAR2(4),
  INPUT_DATE       DATE,
  INPUT_ER         VARCHAR2(8),
  PRE_PRINT_ER     VARCHAR2(8),
  PRE_PRINT_DATE   DATE,
  DECL_DATE        DATE,
  CHK_DATE         DATE,
  CHK_ER           VARCHAR2(8),
  CHECK_NOTE       VARCHAR2(255),
  RECHK_DATE       DATE,
  RECHK_ER         VARCHAR2(8),
  RECHK_NOTE       VARCHAR2(255),
  REPLY_DATE       DATE,
  REPLY_ER         VARCHAR2(8),
  REPLY_CHECK_NOTE VARCHAR2(255),
  MODIFY_DATE      DATE,
  MODIFY_ER        VARCHAR2(8),
  MODIFY_NOTE      VARCHAR2(255),
  EXE_MARK         VARCHAR2(1),
  PRINT_DATE       DATE,
  PRINT_ER         VARCHAR2(8),
  SOURCE_TYPE      VARCHAR2(12),
  NOTE_PLACE       VARCHAR2(255),
  NOTE_RAM         VARCHAR2(255),
  NOTE_OVER_SCOPE  VARCHAR2(255),
  NOTE_GOODS       VARCHAR2(255),
  NOTE_COP         VARCHAR2(255),
  NOTE_PROJECT     VARCHAR2(255),
  NOTE_ASSETS      VARCHAR2(255),
  OTHER            VARCHAR2(255),
  NOTE             VARCHAR2(255)
)
;
alter table ALLSYS.RAM_RN_INFO
  add constraint PK_RAM_RN_INFO primary key (RAM_ID);
create index ALLSYS.IX_RNHEAD_CODENAME on ALLSYS.RAM_RN_INFO (COP_CODE, COP_NAME);
create index ALLSYS.IX_RNHEAD_CUSTEXE on ALLSYS.RAM_RN_INFO (MASTER_CUSTOMS, EXE_MARK);
create index ALLSYS.IX_RNHEAD_PRERAMID on ALLSYS.RAM_RN_INFO (PRE_RAM_ID);

prompt
prompt Creating table RAM_RY_COMMUNICATION
prompt ===================================
prompt
create table ALLSYS.RAM_RY_COMMUNICATION
(
  RAM_ID            VARCHAR2(18) not null,
  SEQ_NO            VARCHAR2(5) not null,
  SEND_CUSTOMS_CODE VARCHAR2(4),
  SEND_DATE         DATE,
  SEND_CONTENT      VARCHAR2(1023),
  SEND_ER           VARCHAR2(8),
  REC_CUSTOMS_CODE  VARCHAR2(4),
  FEEDBACK_DATE     DATE,
  FEEDBACK_ER       VARCHAR2(8),
  FEEDBACK_CONTENT  VARCHAR2(1023)
)
;
alter table ALLSYS.RAM_RY_COMMUNICATION
  add constraint PK_RAM_RY_COMMUNICATION primary key (RAM_ID, SEQ_NO);
create index ALLSYS.IX_RYCOMMUNICATION_RECCUSTOMS on ALLSYS.RAM_RY_COMMUNICATION (REC_CUSTOMS_CODE);

prompt
prompt Creating table RAM_STATUS
prompt =========================
prompt
create table ALLSYS.RAM_STATUS
(
  CUT_ID         VARCHAR2(18) not null,
  G_NO           NUMBER(9) not null,
  MASTER_CUSTOMS VARCHAR2(4),
  CUT_MODE       VARCHAR2(3),
  VERIFY_DATE    DATE,
  OWNER_CODE     VARCHAR2(10),
  OWNER_NAME     VARCHAR2(255),
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  FREEZE_MONTHS  NUMBER(19,4),
  G_UNIT         VARCHAR2(3),
  FACT_AMT       NUMBER(19,4),
  FACT_QTY       NUMBER(19,4)
)
;
alter table ALLSYS.RAM_STATUS
  add constraint PK_RAM_STATUS primary key (CUT_ID, G_NO);
create index ALLSYS.IX_RAMSTATUS_OWNER on ALLSYS.RAM_STATUS (OWNER_CODE, OWNER_NAME);

prompt
prompt Creating table RAM_STATUS_LIST
prompt ==============================
prompt
create table ALLSYS.RAM_STATUS_LIST
(
  CUT_ID       VARCHAR2(18) not null,
  G_NO         NUMBER(9) not null,
  RJ_QTY       NUMBER(19,4),
  RT_QTY       NUMBER(19,4),
  RT_QTY_DONE  NUMBER(19,4),
  RD_QTY       NUMBER(19,4),
  RD_QTY_DONE  NUMBER(19,4),
  RY_QTY       NUMBER(19,4),
  RY_QTY_DONE  NUMBER(19,4),
  RZ_QTY       NUMBER(19,4),
  RZ_QTY_DONE  NUMBER(19,4),
  RB_QTY       NUMBER(19,4),
  RB_QTY_DONE  NUMBER(19,4),
  RYE_QTY      NUMBER(19,4),
  RYE_QTY_DONE NUMBER(19,4),
  RESERVE1     VARCHAR2(255),
  NOTE         VARCHAR2(255)
)
;
alter table ALLSYS.RAM_STATUS_LIST
  add constraint PK_RAM_STATUS_LIST primary key (CUT_ID, G_NO);

prompt
prompt Creating table RAM_STATUS_MODI_LOG
prompt ==================================
prompt
create table ALLSYS.RAM_STATUS_MODI_LOG
(
  CUT_ID       VARCHAR2(18) not null,
  G_NO         NUMBER(9) not null,
  MODIFY_DATE  DATE not null,
  MODIFY_ER    VARCHAR2(8),
  FIELD_NAME   VARCHAR2(50) not null,
  ORIGIN_VALUE VARCHAR2(255),
  NEW_VALUE    VARCHAR2(255),
  REASON       VARCHAR2(255)
)
;
alter table ALLSYS.RAM_STATUS_MODI_LOG
  add constraint PK_RAM_STATUS_MODI_LOG primary key (CUT_ID, G_NO, MODIFY_DATE, FIELD_NAME);

prompt
prompt Creating table RCP_INCOME_HEAD
prompt ==============================
prompt
create table ALLSYS.RCP_INCOME_HEAD
(
  LEVYNO           VARCHAR2(32) not null,
  BANKORGCODE      VARCHAR2(12),
  PAYEENAME        VARCHAR2(128),
  PAYEEORGCODE     VARCHAR2(16),
  PAYEECGACCODE    VARCHAR2(32),
  PAYEEACCT        VARCHAR2(64),
  PAYERNAME        VARCHAR2(255),
  PAYERCOUNTRYCODE VARCHAR2(8),
  SWIFTBIC         VARCHAR2(64),
  PAYEEDATE        DATE,
  PAYEECNY         VARCHAR2(64),
  PAYEEAMT         NUMBER(19,2),
  CUSTOMSAMT       NUMBER(19,2),
  PREPAYEEAMT      NUMBER(19,2),
  REFUNDMENTAMT    NUMBER(19,2),
  BALANCEMODE      VARCHAR2(4),
  ACCOUNTPERIOD    NUMBER(19),
  BANKTRANO        VARCHAR2(64),
  ADDWORD          VARCHAR2(255)
)
;
alter table ALLSYS.RCP_INCOME_HEAD
  add constraint PK_RCP_INCOME_HEAD primary key (LEVYNO);

prompt
prompt Creating table RCP_INCOME_HEAD_BAK
prompt ==================================
prompt
create table ALLSYS.RCP_INCOME_HEAD_BAK
(
  LEVYNO           VARCHAR2(32) not null,
  BANKORGCODE      VARCHAR2(12),
  PAYEENAME        VARCHAR2(128),
  PAYEEORGCODE     VARCHAR2(16),
  PAYEECGACCODE    VARCHAR2(32),
  PAYEEACCT        VARCHAR2(64),
  PAYERNAME        VARCHAR2(255),
  PAYERCOUNTRYCODE VARCHAR2(8),
  SWIFTBIC         VARCHAR2(64),
  PAYEEDATE        DATE,
  PAYEECNY         VARCHAR2(64),
  PAYEEAMT         NUMBER(19,2),
  CUSTOMSAMT       NUMBER(19,2),
  PREPAYEEAMT      NUMBER(19,2),
  REFUNDMENTAMT    NUMBER(19,2),
  BALANCEMODE      VARCHAR2(4),
  ACCOUNTPERIOD    NUMBER(19),
  BANKTRANO        VARCHAR2(64),
  ADDWORD          VARCHAR2(255)
)
;
alter table ALLSYS.RCP_INCOME_HEAD_BAK
  add constraint PK_RCP_INCOME_HEAD_BAK primary key (LEVYNO);

prompt
prompt Creating table RCP_INCOME_LIST
prompt ==============================
prompt
create table ALLSYS.RCP_INCOME_LIST
(
  LEVYNO      VARCHAR2(32) not null,
  LISTNO      NUMBER(19) not null,
  CUSTOMSDATE DATE
)
;
alter table ALLSYS.RCP_INCOME_LIST
  add constraint PK_RCP_INCOME_LIST primary key (LEVYNO, LISTNO);

prompt
prompt Creating table RCP_INCOME_LIST_BAK
prompt ==================================
prompt
create table ALLSYS.RCP_INCOME_LIST_BAK
(
  LEVYNO      VARCHAR2(32) not null,
  LISTNO      NUMBER(19) not null,
  CUSTOMSDATE DATE
)
;
alter table ALLSYS.RCP_INCOME_LIST_BAK
  add constraint PK_RCP_INCOME_LIST_BAK primary key (LEVYNO, LISTNO);

prompt
prompt Creating table RCP_PAYMENT_HEAD
prompt ===============================
prompt
create table ALLSYS.RCP_PAYMENT_HEAD
(
  LEVYNO           VARCHAR2(32) not null,
  BANKORGCODE      VARCHAR2(12),
  PAYERNAME        VARCHAR2(128),
  PAYERORGCODE     VARCHAR2(16),
  PAYERCGACCODE    VARCHAR2(32),
  PAYERACCT        VARCHAR2(64),
  PAYEENAME        VARCHAR2(255),
  PAYEECOUNTRYCODE VARCHAR2(8),
  SWIFTBIC         VARCHAR2(64),
  PAYERDATE        DATE,
  PAYERCNY         VARCHAR2(64),
  PAYERAMT         NUMBER(19,2),
  CUSTOMSAMT       NUMBER(19,2),
  PREPAYERAMT      NUMBER(19,2),
  REFUNDMENTAMT    NUMBER(19,2),
  BALANCEMODE      VARCHAR2(4),
  ACCOUNTPERIOD    NUMBER(19),
  BANKTRANO        VARCHAR2(64),
  ADDWORD          VARCHAR2(255)
)
;
alter table ALLSYS.RCP_PAYMENT_HEAD
  add constraint PK_RCP_PAYMENT_HEAD primary key (LEVYNO);

prompt
prompt Creating table RCP_PAYMENT_HEAD_BAK
prompt ===================================
prompt
create table ALLSYS.RCP_PAYMENT_HEAD_BAK
(
  LEVYNO           VARCHAR2(32) not null,
  BANKORGCODE      VARCHAR2(12),
  PAYERNAME        VARCHAR2(128),
  PAYERORGCODE     VARCHAR2(16),
  PAYERCGACCODE    VARCHAR2(32),
  PAYERACCT        VARCHAR2(64),
  PAYEENAME        VARCHAR2(255),
  PAYEECOUNTRYCODE VARCHAR2(8),
  SWIFTBIC         VARCHAR2(64),
  PAYERDATE        DATE,
  PAYERCNY         VARCHAR2(64),
  PAYERAMT         NUMBER(19,2),
  CUSTOMSAMT       NUMBER(19,2),
  PREPAYERAMT      NUMBER(19,2),
  REFUNDMENTAMT    NUMBER(19,2),
  BALANCEMODE      VARCHAR2(4),
  ACCOUNTPERIOD    NUMBER(19),
  BANKTRANO        VARCHAR2(64),
  ADDWORD          VARCHAR2(255)
)
;
alter table ALLSYS.RCP_PAYMENT_HEAD_BAK
  add constraint PK_RCP_PAYMENT_HEAD_BAK primary key (LEVYNO);

prompt
prompt Creating table RCP_PAYMENT_LIST
prompt ===============================
prompt
create table ALLSYS.RCP_PAYMENT_LIST
(
  LEVYNO      VARCHAR2(32) not null,
  LISTNO      NUMBER(19) not null,
  CUSTOMSDATE DATE
)
;
alter table ALLSYS.RCP_PAYMENT_LIST
  add constraint PK_RCP_PAYMENT_LIST primary key (LEVYNO, LISTNO);

prompt
prompt Creating table RCP_PAYMENT_LIST_BAK
prompt ===================================
prompt
create table ALLSYS.RCP_PAYMENT_LIST_BAK
(
  LEVYNO      VARCHAR2(32) not null,
  LISTNO      NUMBER(19) not null,
  CUSTOMSDATE DATE
)
;
alter table ALLSYS.RCP_PAYMENT_LIST_BAK
  add constraint PK_RCP_PAYMENT_LIST_BAK primary key (LEVYNO, LISTNO);

prompt
prompt Creating table RCP_RECORD_HEAD
prompt ==============================
prompt
create table ALLSYS.RCP_RECORD_HEAD
(
  LEVYNO      VARCHAR2(32) not null,
  ORGCODE     VARCHAR2(16),
  CGACCODE    VARCHAR2(32),
  ORGNAME     VARCHAR2(255),
  ENTRYID     VARCHAR2(32),
  TRADEDATE   DATE,
  TOTALAMT    NUMBER(19,2),
  BALANCEMODE VARCHAR2(4),
  PACTNO      VARCHAR2(64),
  PRERECDATE  DATE,
  PRERECAMT   NUMBER(19,2)
)
;
alter table ALLSYS.RCP_RECORD_HEAD
  add constraint PK_RCP_RECORD_HEAD primary key (LEVYNO);

prompt
prompt Creating table RCP_RECORD_HEAD_BAK
prompt ==================================
prompt
create table ALLSYS.RCP_RECORD_HEAD_BAK
(
  LEVYNO      VARCHAR2(32) not null,
  ORGCODE     VARCHAR2(16),
  CGACCODE    VARCHAR2(32),
  ORGNAME     VARCHAR2(255),
  ENTRYID     VARCHAR2(32),
  TRADEDATE   DATE,
  TOTALAMT    NUMBER(19,2),
  BALANCEMODE VARCHAR2(4),
  PACTNO      VARCHAR2(64),
  PRERECDATE  DATE,
  PRERECAMT   NUMBER(19,2)
)
;
alter table ALLSYS.RCP_RECORD_HEAD_BAK
  add constraint PK_RCP_RECORD_HEAD_BAK primary key (LEVYNO);

prompt
prompt Creating table RCP_RECORD_LIST
prompt ==============================
prompt
create table ALLSYS.RCP_RECORD_LIST
(
  LEVYNO      VARCHAR2(32) not null,
  LISTNO      NUMBER(19) not null,
  COUNTRYAREA VARCHAR2(4),
  BANKNAMEOUT VARCHAR2(255),
  BANKACCTOUT VARCHAR2(64),
  BANKAMTOUT  NUMBER(19,2),
  RECDATEOUT  DATE,
  REMARK      VARCHAR2(255)
)
;
alter table ALLSYS.RCP_RECORD_LIST
  add constraint PK_RCP_RECORD_LIST primary key (LEVYNO, LISTNO);

prompt
prompt Creating table RCP_RECORD_LIST_BAK
prompt ==================================
prompt
create table ALLSYS.RCP_RECORD_LIST_BAK
(
  LEVYNO      VARCHAR2(32) not null,
  LISTNO      NUMBER(19) not null,
  COUNTRYAREA VARCHAR2(4),
  BANKNAMEOUT VARCHAR2(255),
  BANKACCTOUT VARCHAR2(64),
  BANKAMTOUT  NUMBER(19,2),
  RECDATEOUT  DATE,
  REMARK      VARCHAR2(255)
)
;
alter table ALLSYS.RCP_RECORD_LIST_BAK
  add constraint PK_RCP_RECORD_LIST_BAK primary key (LEVYNO, LISTNO);

prompt
prompt Creating table RCP_WORKFLOW
prompt ===========================
prompt
create table ALLSYS.RCP_WORKFLOW
(
  LEVYNO         VARCHAR2(64) not null,
  TRANSFER_NUM   VARCHAR2(32) not null,
  PROCESS_STATUS VARCHAR2(2) not null,
  PROCESS_DATE   DATE not null,
  ENTRY_ID       VARCHAR2(32),
  NOTE           VARCHAR2(255)
)
;
alter table ALLSYS.RCP_WORKFLOW
  add constraint PK_RCP_WORKFLOW primary key (LEVYNO, TRANSFER_NUM, PROCESS_STATUS, PROCESS_DATE);

prompt
prompt Creating table RED_ENTRY_HEAD
prompt =============================
prompt
create table ALLSYS.RED_ENTRY_HEAD
(
  ENTRY_ID           VARCHAR2(18) not null,
  PRE_ENTRY_ID       VARCHAR2(18),
  ID_CHK             VARCHAR2(1),
  I_E_FLAG           VARCHAR2(1),
  I_E_PORT           VARCHAR2(4),
  I_E_DATE           DATE,
  D_DATE             DATE,
  DESTINATION_PORT   VARCHAR2(4),
  TRAF_NAME          VARCHAR2(255),
  VOYAGE_NO          VARCHAR2(32),
  TRAF_MODE          VARCHAR2(1),
  TRADE_CO           VARCHAR2(10),
  TRADE_NAME         VARCHAR2(255),
  DISTRICT_CODE      VARCHAR2(5),
  OWNER_CODE         VARCHAR2(10),
  OWNER_NAME         VARCHAR2(255),
  AGENT_CODE         VARCHAR2(10),
  AGENT_NAME         VARCHAR2(255),
  CONTR_NO           VARCHAR2(32),
  IN_RATIO           NUMBER(19,5),
  BILL_NO            VARCHAR2(32),
  TRADE_COUNTRY      VARCHAR2(3),
  TRADE_MODE         VARCHAR2(4),
  CUT_MODE           VARCHAR2(3),
  TRANS_MODE         VARCHAR2(1),
  CONTAINER_NO       NUMBER(19,4),
  PAY_WAY            VARCHAR2(1),
  FEE_MARK           VARCHAR2(1),
  FEE_CURR           VARCHAR2(3),
  FEE_RATE           NUMBER(19,5),
  INSUR_MARK         VARCHAR2(1),
  INSUR_CURR         VARCHAR2(3),
  INSUR_RATE         NUMBER(19,5),
  OTHER_MARK         VARCHAR2(1),
  OTHER_CURR         VARCHAR2(3),
  OTHER_RATE         NUMBER(19,5),
  PACK_NO            NUMBER(19),
  GROSS_WT           NUMBER(19,5),
  NET_WT             NUMBER(19,5),
  WRAP_TYPE          VARCHAR2(32),
  MANUAL_NO          VARCHAR2(12),
  LICENSE_NO         VARCHAR2(20),
  APPR_NO            VARCHAR2(32),
  NOTE_S             VARCHAR2(255),
  DECL_PORT          VARCHAR2(4),
  CO_OWNER           VARCHAR2(1),
  TAXY_RG_NO         VARCHAR2(32),
  MNL_JGF_FLAG       VARCHAR2(1),
  SERVICE_FEE        NUMBER(19,4),
  SERVICE_RATE       NUMBER(19,5),
  RELATIVE_ID        VARCHAR2(18),
  BONDED_NO          VARCHAR2(32),
  BP_NO              VARCHAR2(255),
  TYPIST_NO          VARCHAR2(32),
  INPUT_NO           VARCHAR2(32),
  P_DATE             DATE,
  CTA_CHK_RESULT     VARCHAR2(255),
  MODI_NO            NUMBER(19),
  EDI_ID             VARCHAR2(1),
  STATUS_RESULT      VARCHAR2(120),
  DECLARE_NO         VARCHAR2(32),
  JOU_EVENT          VARCHAR2(15),
  JOU_FLAG           VARCHAR2(15),
  EDI_REMARK         VARCHAR2(32),
  PARTNER_ID         VARCHAR2(20),
  CUSTOMS_FIELD      VARCHAR2(8),
  ENTRY_TYPE         VARCHAR2(4),
  RELATIVE_MANUAL_NO VARCHAR2(12),
  PRICE_RANGE        NUMBER(19,4),
  SPECIAL_FLAG       VARCHAR2(1),
  DELAY_DAYS         NUMBER(19),
  DELAY_ACCOUNT      NUMBER(19,2),
  HASH_SIGN          VARCHAR2(380)
)
;
alter table ALLSYS.RED_ENTRY_HEAD
  add constraint PK_RED_ENTRY_HEAD primary key (ENTRY_ID);
create index ALLSYS.IX_REDENTRYHEAD_MANUALNO on ALLSYS.RED_ENTRY_HEAD (MANUAL_NO);

prompt
prompt Creating table RED_ENTRY_LIST
prompt =============================
prompt
create table ALLSYS.RED_ENTRY_LIST
(
  ENTRY_ID       VARCHAR2(18) not null,
  G_NO           NUMBER(19) not null,
  CODE_TS        VARCHAR2(16),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  CONTR_ITEM     NUMBER(19),
  TRADE_CURR     VARCHAR2(3),
  EXCHANGE_RATE  NUMBER(19,7),
  DECL_PRICE     NUMBER(19,5),
  DECL_TOTAL     NUMBER(19,4),
  USE_TO         VARCHAR2(2),
  DUTY_MODE      VARCHAR2(1),
  G_QTY          NUMBER(19,5),
  G_UNIT         VARCHAR2(3),
  QTY_1          NUMBER(19,5),
  UNIT_1         VARCHAR2(3),
  QTY_2          NUMBER(19,5),
  UNIT_2         VARCHAR2(3),
  TRADE_TOTAL    NUMBER(19,4),
  RMB_PRICE      NUMBER(19),
  USD_PRICE      NUMBER(19),
  DUTY_VALUE     NUMBER(19),
  G_PROCESS_MARK VARCHAR2(2),
  WORK_USD       NUMBER(19,4),
  CLASS_MARK     VARCHAR2(1),
  G_CERT_FLAG    VARCHAR2(32),
  TARIFF_MARK    VARCHAR2(32),
  DUTY_TYPE      VARCHAR2(1),
  REAL_DUTY      NUMBER(19,4),
  DUTY_CUT       NUMBER(19,4),
  DUTY_RATE      NUMBER(19,5),
  D_RATE         NUMBER(19,5),
  QTY_DUTY_RATE  NUMBER(19,5),
  QTY_D_RATE     NUMBER(19,5),
  TAX_TYPE       VARCHAR2(1),
  REAL_TAX       NUMBER(19,4),
  TAX_CUT        NUMBER(19,4),
  TAX_RATE       NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  QTY_TAX_RATE   NUMBER(19,5),
  QTY_T_RATE     NUMBER(19,5),
  REG_TYPE       VARCHAR2(1),
  REAL_REG       NUMBER(19,4),
  REG_CUT        NUMBER(19,4),
  REG_RATE       NUMBER(19,5),
  R_RATE         NUMBER(19,5),
  QTY_REG_RATE   NUMBER(19,5),
  QTY_R_RATE     NUMBER(19,5),
  OIL_TYPE       VARCHAR2(1),
  REAL_OIL       NUMBER(19,4),
  OIL_CUT        NUMBER(19,4),
  OIL_RATE       NUMBER(19,5),
  O_RATE         NUMBER(19,5),
  QTY_OIL_RATE   NUMBER(19,5),
  QTY_O_RATE     NUMBER(19,5),
  ANTI_TYPE      VARCHAR2(1),
  REAL_ANTI      NUMBER(19,4),
  ANTI_CUT       NUMBER(19,4),
  ANTI_RATE      NUMBER(19,5),
  A_RATE         NUMBER(19,5),
  QTY_ANTI_RATE  NUMBER(19,5),
  QTY_A_RATE     NUMBER(19,5),
  PRDT_NO        VARCHAR2(32),
  GOODS_ID       VARCHAR2(32),
  DECL_CODE_TS   VARCHAR2(16)
)
;
alter table ALLSYS.RED_ENTRY_LIST
  add constraint PK_RED_ENTRY_LIST primary key (ENTRY_ID, G_NO);

prompt
prompt Creating table RED_FEE_INVOICE
prompt ==============================
prompt
create table ALLSYS.RED_FEE_INVOICE
(
  MANUAL_NO      VARCHAR2(12) not null,
  F_NO           NUMBER(19),
  FEE_ID         NUMBER(19) not null,
  CREATE_DATE    DATE,
  CHK_ER         VARCHAR2(8),
  TYPE_ER        VARCHAR2(8),
  TYPE_DATE      DATE,
  FINANCIAL_FLAG VARCHAR2(1),
  FINANCIAL_DATE DATE,
  BOOK_NO        NUMBER(19),
  FEE_AMT        NUMBER(19,5),
  NOTE_S         VARCHAR2(255)
)
;
alter table ALLSYS.RED_FEE_INVOICE
  add constraint PK_RED_FEE_INVOICE primary key (MANUAL_NO, FEE_ID);

prompt
prompt Creating table RED_HEAD
prompt =======================
prompt
create table ALLSYS.RED_HEAD
(
  PROJECT_ID       VARCHAR2(18),
  PRE_CUT_ID       VARCHAR2(18),
  CUT_ID           VARCHAR2(12) not null,
  MODIFY_TIMES     NUMBER(9) not null,
  OWNER_CODE       VARCHAR2(10),
  OWNER_NAME       VARCHAR2(255),
  TRADE_CO         VARCHAR2(10),
  TRADE_NAME       VARCHAR2(255),
  APPR_DEPT        VARCHAR2(4),
  PROJECT_FUND     VARCHAR2(1),
  PROJECT_TYPE     VARCHAR2(12),
  CUT_MODE         VARCHAR2(3),
  APPR_REASON      VARCHAR2(255),
  I_E_PORT         VARCHAR2(4),
  I_E_FLAG         VARCHAR2(1),
  LICENSE_NO       VARCHAR2(20),
  CONTR_NO         VARCHAR2(255),
  ITEMS_NO         NUMBER(9),
  INPUT_DATE       DATE,
  TYPE_ER          VARCHAR2(8),
  INPUT_COP        VARCHAR2(255),
  CHK_DATE         DATE,
  CHK_ER           VARCHAR2(8),
  RECHK_DATE       DATE,
  MODIFY_DATE      DATE,
  RECHK_ER         VARCHAR2(8),
  EXE_MARK         VARCHAR2(1),
  LIMIT_DATE       DATE,
  ENTRY_PWD        VARCHAR2(12),
  PRINT_DATE       DATE,
  PRINT_ER         VARCHAR2(8),
  PRINT_MARK       VARCHAR2(1),
  TRANS_TIMES      NUMBER(9),
  APPR_AMT         NUMBER(19,4),
  FACT_AMT         NUMBER(19,4),
  APPR_QUOTA_SUM   NUMBER(19,4),
  APPR_QUOTA_QTY   NUMBER(19,4),
  REAL_QUOTA_SUM   NUMBER(19,4),
  REAL_QUOTA_QTY   NUMBER(19,4),
  DUTY_CUT         NUMBER(19,4),
  TAX_CUT          NUMBER(19,4),
  OTHER_CUT        NUMBER(19,4),
  REAL_DUTY        NUMBER(19,4),
  REAL_TAX         NUMBER(19,4),
  REAL_OTHER       NUMBER(19,4),
  REAL_DUTY_CUT    NUMBER(19,4),
  REAL_TAX_CUT     NUMBER(19,4),
  REAL_OTHER_CUT   NUMBER(19,4),
  VERIFY_DATE      DATE,
  MASTER_CUSTOMS   VARCHAR2(4),
  CHECK_NOTE       VARCHAR2(255),
  RECHK_NOTE       VARCHAR2(255),
  REPLY_CHECK_NOTE VARCHAR2(255),
  RISK_MARK        VARCHAR2(10),
  COLLECT_MARK     VARCHAR2(1),
  COLLECT_DATE     DATE,
  ENTRY_ID         VARCHAR2(18),
  VERIFY_TIMES     NUMBER(9),
  SECURITY_LEVEL   VARCHAR2(1),
  REPORT_MARK      VARCHAR2(1),
  REPORT_DATE      DATE,
  REPORT_CGAC_DATE DATE,
  REPLY_DATE       DATE,
  REPLY_ER         VARCHAR2(8),
  SEQ_NO           VARCHAR2(12),
  SEQ_DATE         DATE,
  SEQ_ER           VARCHAR2(8),
  RED_TYPE         VARCHAR2(1),
  TRADE_MODE       VARCHAR2(4),
  TRANS_MODE       VARCHAR2(1),
  FEE_MARK         VARCHAR2(1),
  OTHER_MARK       VARCHAR2(1),
  INSUR_MARK       VARCHAR2(1),
  FEE_CURR         VARCHAR2(3),
  FEE_RATE         NUMBER(19,5),
  OTHER_CURR       VARCHAR2(3),
  OTHER_RATE       NUMBER(19,5),
  INSUR_CURR       VARCHAR2(3),
  INSUR_RATE       NUMBER(19,5),
  SERVICE_RATE     NUMBER(19,5),
  SERVICE_FEE      NUMBER(19,4),
  MNL_JGF_FLAG     VARCHAR2(1),
  REASON           VARCHAR2(255),
  RESERVE1         VARCHAR2(255),
  NOTE             VARCHAR2(255),
  HASH_SIGN        VARCHAR2(380),
  MODIFY_ER        VARCHAR2(8),
  HAS_DECLARE      VARCHAR2(1)
)
;
alter table ALLSYS.RED_HEAD
  add constraint PK_RED_HEAD primary key (CUT_ID, MODIFY_TIMES);
create index ALLSYS.IX_REDHEAD_CUSTEXE on ALLSYS.RED_HEAD (MASTER_CUSTOMS, EXE_MARK);
create index ALLSYS.IX_REDHEAD_PRECUTID on ALLSYS.RED_HEAD (PRE_CUT_ID);
create index ALLSYS.IX_REDHEAD_PROJECTID on ALLSYS.RED_HEAD (PROJECT_ID);

prompt
prompt Creating table RED_LIST
prompt =======================
prompt
create table ALLSYS.RED_LIST
(
  CUT_ID         VARCHAR2(12) not null,
  MODIFY_TIMES   NUMBER(9) not null,
  G_NO           NUMBER(9) not null,
  MAN_G_NO       NUMBER(9),
  CODE_TS        VARCHAR2(16),
  CLASS_MARK     VARCHAR2(1),
  G_NAME         VARCHAR2(255),
  G_MODEL        VARCHAR2(255),
  ORIGIN_COUNTRY VARCHAR2(3),
  G_UNIT         VARCHAR2(3),
  G_QTY          NUMBER(19,4),
  UNIT_1         VARCHAR2(3),
  QTY_1          NUMBER(19,4),
  UNIT_2         VARCHAR2(3),
  QTY_2          NUMBER(19,4),
  DECL_TOTAL     NUMBER(19,4),
  TRADE_CURR     VARCHAR2(3),
  DUTY_MODE      VARCHAR2(1),
  D_RATE         NUMBER(19,5),
  T_RATE         NUMBER(19,5),
  O_RATE         NUMBER(19,5),
  DUTY_RATE      NUMBER(19,5),
  TAX_RATE       NUMBER(19,5),
  OTHER_RATE     NUMBER(19,5),
  DUTY_CUT       NUMBER(19,4),
  TAX_CUT        NUMBER(19,4),
  OTHER_CUT      NUMBER(19,4),
  APPR_QUOTA     NUMBER(19,4),
  FACT_AMT       NUMBER(19,4),
  FACT_QTY       NUMBER(19,4),
  DUTY_VALUE     NUMBER(19),
  AUDIT_FLAG     VARCHAR2(1),
  RESERVE1       VARCHAR2(255),
  NOTE           VARCHAR2(255)
)
;
alter table ALLSYS.RED_LIST
  add constraint PK_RED_LIST primary key (CUT_ID, MODIFY_TIMES, G_NO);

prompt
prompt Creating table RED_MAX_NO
prompt =========================
prompt
create table ALLSYS.RED_MAX_NO
(
  MASTER_CUSTOMS VARCHAR2(4) not null,
  YEAR_1         CHAR(1) not null,
  CLASS          CHAR(1) not null,
  MAX_NO         NUMBER(5)
)
;
alter table ALLSYS.RED_MAX_NO
  add constraint PK_RED_MAX_NO primary key (MASTER_CUSTOMS, YEAR_1, CLASS);

prompt
prompt Creating table RED_MAX_NO_2007
prompt ==============================
prompt
create table ALLSYS.RED_MAX_NO_2007
(
  MASTER_CUSTOMS VARCHAR2(4) not null,
  YEAR_2         CHAR(2) not null,
  MAX_NO         NUMBER(5)
)
;
alter table ALLSYS.RED_MAX_NO_2007
  add constraint PK_RED_MAX_NO_2007 primary key (MASTER_CUSTOMS, YEAR_2);

prompt
prompt Creating table RED_RECEIVE_RECEIPT
prompt ==================================
prompt
create table ALLSYS.RED_RECEIVE_RECEIPT
(
  CUT_ID           VARCHAR2(12) not null,
  SEND_TIMES       NUMBER(9) not null,
  SEND_CUSTOMS     VARCHAR2(4),
  REC_CUSTOMS_CODE VARCHAR2(4),
  RECEIVE_DATE     DATE,
  TYPE             VARCHAR2(1),
  LINE             NUMBER(9),
  VERSION          NUMBER(9),
  FLAG             VARCHAR2(7),
  NOTE             VARCHAR2(255)
)
;
alter table ALLSYS.RED_RECEIVE_RECEIPT
  add constraint PK_RED_RECEIVE_RECEIPT primary key (CUT_ID, SEND_TIMES);

prompt
prompt Creating table RED_SERVICE_FEE
prompt ==============================
prompt
create table ALLSYS.RED_SERVICE_FEE
(
  MANUAL_NO   VARCHAR2(12) not null,
  DUE_FEE_AMT NUMBER(19,5),
  PAY_FEE_AMT NUMBER(19,5),
  CREATE_DATE DATE,
  RETURN_ID   NUMBER(19),
  RETURN_FLAG VARCHAR2(1),
  REMAIN_AMT  NUMBER(19,5)
)
;
alter table ALLSYS.RED_SERVICE_FEE
  add constraint PK_RED_SERVICE_FEE primary key (MANUAL_NO);

prompt
prompt Creating table REL_ALC_WORK
prompt ===========================
prompt
create table ALLSYS.REL_ALC_WORK
(
  ENTRY_ID     VARCHAR2(18) not null,
  STEP_ID      VARCHAR2(8) not null,
  REC_DATE     DATE not null,
  CUSTOMS_CODE VARCHAR2(4),
  I_E_PORT     VARCHAR2(4),
  TRAF_NAME    VARCHAR2(255),
  VOYAGE_NO    VARCHAR2(32),
  BILL_NO      VARCHAR2(32),
  PROC_FLAG    VARCHAR2(8),
  OP_DATE      DATE,
  PASSED_FLAG  VARCHAR2(1)
)
;
alter table ALLSYS.REL_ALC_WORK
  add constraint PK_REL_ALC_WORK primary key (ENTRY_ID);
create index ALLSYS.IX_REL_ALC_WORK_STEP_ID on ALLSYS.REL_ALC_WORK (STEP_ID, CUSTOMS_CODE, VOYAGE_NO, TRAF_NAME);

prompt
prompt Creating table RESTORE_DEDUCT
prompt =============================
prompt
create table ALLSYS.RESTORE_DEDUCT
(
  ENTRY_ID    VARCHAR2(18) not null,
  EMS_NO      VARCHAR2(12) not null,
  G_TYPE      VARCHAR2(1) not null,
  EMS_G_NO    NUMBER(19),
  ENTRY_G_NO  NUMBER(19) not null,
  EXG_VERSION VARCHAR2(32),
  IN_QTY      NUMBER(19,5),
  I_ACCOUNT   NUMBER(19,5),
  I_WT        NUMBER(19,5),
  I_E_FLAG    VARCHAR2(1),
  I_CURR      VARCHAR2(4),
  I_E_PORT    VARCHAR2(255),
  TRADE_MODE  VARCHAR2(4),
  TRAF_MODE   VARCHAR2(1),
  VERIFY_MODE VARCHAR2(2),
  VERIFY_DATE DATE,
  VERIFY_ER   VARCHAR2(8),
  JOU_MARK    VARCHAR2(1),
  I_E_DATE    DATE,
  USD_ACCOUNT NUMBER(19,5)
)
;

prompt
prompt Creating table RESTORE_DEDUCT_LOG
prompt =================================
prompt
create table ALLSYS.RESTORE_DEDUCT_LOG
(
  ENTRY_ID    VARCHAR2(18) not null,
  EMS_NO      VARCHAR2(12) not null,
  CREATE_DATE DATE not null,
  JOU_MARK    VARCHAR2(1) not null,
  NOTE        VARCHAR2(1),
  VERIFY_ER   VARCHAR2(8)
)
;

prompt
prompt Creating table RETURN_REL
prompt =========================
prompt
create table ALLSYS.RETURN_REL
(
  RET_TRANS_NO VARCHAR2(16) not null,
  RET_TYPE     VARCHAR2(8) not null,
  RET_TIME     DATE not null,
  RET_CODE     NUMBER(9),
  RET_MESS     VARCHAR2(255)
)
;
alter table ALLSYS.RETURN_REL
  add constraint PK_RETURN_REL primary key (RET_TRANS_NO, RET_TYPE, RET_TIME);

prompt
prompt Creating table RISK_ARCTEMP1
prompt ============================
prompt
create table ALLSYS.RISK_ARCTEMP1
(
  SAVE_TIME1 DATE
)
;

prompt
prompt Creating table RISK_ARCTEMP2
prompt ============================
prompt
create table ALLSYS.RISK_ARCTEMP2
(
  SAVE_NAME  VARCHAR2(257),
  SAVE_TIME2 DATE
)
;

prompt
prompt Creating table RISK_CONTROL
prompt ===========================
prompt
create table ALLSYS.RISK_CONTROL
(
  RISK_CONTROL_CODE VARCHAR2(32) not null,
  RISK_TYPE         VARCHAR2(1) not null,
  RISK_SCHEDULE     NUMBER(19) not null,
  RISK_SOURCE       VARCHAR2(4),
  RISK_RANGE        VARCHAR2(1),
  RISK_PRIORITY     VARCHAR2(1),
  RISK_DEPT         VARCHAR2(10),
  RISK_ADM_CODE     VARCHAR2(8),
  RISK_ADM          VARCHAR2(32),
  RISK_DATE         DATE,
  RISK_OPEN         DATE,
  RISK_CLOSE        DATE,
  RISK_REASON       VARCHAR2(255),
  RISK_ACTIVITY     VARCHAR2(255),
  RISK_COP_INF      VARCHAR2(255)
)
;
alter table ALLSYS.RISK_CONTROL
  add constraint PK_RISK_CONTROL primary key (RISK_CONTROL_CODE, RISK_TYPE, RISK_SCHEDULE);

prompt
prompt Creating table RSK_ASSAY_APPLICATION
prompt ====================================
prompt
create table ALLSYS.RSK_ASSAY_APPLICATION
(
  ENTRY_ID              VARCHAR2(18) not null,
  G_NO                  NUMBER(19) not null,
  APPLY_NO              VARCHAR2(32),
  ASSAY_AGENT_NAME      VARCHAR2(32),
  CUSTOMS_DEPARTMENT    VARCHAR2(64),
  G_NAME                VARCHAR2(255),
  TRADE_NAME            VARCHAR2(255),
  OWNER_NAME            VARCHAR2(255),
  TRADE_MODE            VARCHAR2(4),
  G_QTY                 NUMBER(19,5),
  DECL_PRICE            NUMBER(19,5),
  DECL_TOTAL            NUMBER(19,5),
  ORIGIN_COUNTRY        VARCHAR2(3),
  WRAP_TYPE             VARCHAR2(32),
  G_DESCRIPITION        VARCHAR2(1024),
  ASSAY_AIM             VARCHAR2(1024),
  ASSAY_AIM_OTHER       VARCHAR2(512),
  CODE_TS               VARCHAR2(10),
  DRAFT_CODE_TS         VARCHAR2(10),
  SAMPLE_TIME           DATE,
  SAMPLE_ADDR           VARCHAR2(32),
  SAMPLE_DESCRIPITION   VARCHAR2(1024),
  OP_ER_PHONE           VARCHAR2(32),
  OWNER_NAME_PHONE      VARCHAR2(32),
  APPLY_OP_ER           VARCHAR2(8),
  APPLY_TIME            DATE,
  FEEDBACK_CERT_NO      VARCHAR2(32),
  FEEDBACK_DESCRIPITION VARCHAR2(1024),
  FEEDBACK_RESULT       VARCHAR2(1),
  FEEDBACK_CODE_TS      VARCHAR2(10),
  FEEDBACK_OP_ER        VARCHAR2(8),
  FEEDBACK_TIME         DATE
)
;
alter table ALLSYS.RSK_ASSAY_APPLICATION
  add constraint PK_RSK_ASSAY_APPLICATION primary key (ENTRY_ID, G_NO);

prompt
prompt Creating table RSK_CASE_FEEDBACK_HEAD
prompt =====================================
prompt
create table ALLSYS.RSK_CASE_FEEDBACK_HEAD
(
  ENTRY_ID             VARCHAR2(18) not null,
  CASE_ID              VARCHAR2(18) not null,
  TRADE_NAME           VARCHAR2(255),
  AGENT_NAME           VARCHAR2(255),
  BILL_NO              VARCHAR2(32),
  D_DATE               DATE,
  I_E_DATE             DATE,
  EXAM_ER1             VARCHAR2(8),
  EXAM_PROC_TIME       DATE,
  CASE_PROPERTY        VARCHAR2(1),
  ADMIN_PUNISH_CERT_NO VARCHAR2(32),
  NOTE_S               VARCHAR2(255),
  OP_ER                VARCHAR2(8),
  CASE_VALUE           NUMBER(19,5),
  TRANSFER_DEPARTMENT  VARCHAR2(32),
  RECEIVE_DEPARTMENT   VARCHAR2(32)
)
;
alter table ALLSYS.RSK_CASE_FEEDBACK_HEAD
  add constraint PK_RSK_CASE_FEEDBACK_HEAD primary key (ENTRY_ID, CASE_ID);

prompt
prompt Creating table RSK_CASE_FEEDBACK_LIST
prompt =====================================
prompt
create table ALLSYS.RSK_CASE_FEEDBACK_LIST
(
  ENTRY_ID    VARCHAR2(18) not null,
  CASE_ID     VARCHAR2(18) not null,
  PROC_NO     VARCHAR2(12) not null,
  PROC_RESULT VARCHAR2(32)
)
;
alter table ALLSYS.RSK_CASE_FEEDBACK_LIST
  add constraint PK_RSK_CASE_FEEDBACK_LIST primary key (ENTRY_ID, CASE_ID, PROC_NO);
create index ALLSYS.IDX_ENTRY_ID_FEEDBACK_LIST on ALLSYS.RSK_CASE_FEEDBACK_LIST (ENTRY_ID, CASE_ID);

prompt
prompt Creating table RSK_CASE_FEEDBACK_LIST_CERT
prompt ==========================================
prompt
create table ALLSYS.RSK_CASE_FEEDBACK_LIST_CERT
(
  ENTRY_ID        VARCHAR2(18) not null,
  CASE_ID         VARCHAR2(18) not null,
  CERT_NO         VARCHAR2(2) not null,
  CERT_NAME       VARCHAR2(32),
  CERT_NUM        NUMBER(5),
  CERT_TOTAL_PAGE NUMBER(19)
)
;
alter table ALLSYS.RSK_CASE_FEEDBACK_LIST_CERT
  add constraint PK_RSK_CASE_FEEDBACK_LIST_CERT primary key (ENTRY_ID, CASE_ID, CERT_NO);
create index ALLSYS.IDX_ENTRY_ID_LIST_CERT on ALLSYS.RSK_CASE_FEEDBACK_LIST_CERT (ENTRY_ID, CASE_ID);

prompt
prompt Creating table RSK_CASE_TRANSFER_G_NO
prompt =====================================
prompt
create table ALLSYS.RSK_CASE_TRANSFER_G_NO
(
  ENTRY_ID VARCHAR2(18) not null,
  CASE_ID  VARCHAR2(18) not null,
  G_NO     NUMBER(19) not null,
  G_NAME   VARCHAR2(255)
)
;
alter table ALLSYS.RSK_CASE_TRANSFER_G_NO
  add constraint PK_RSK_CASE_TRANSFER_G_NO primary key (ENTRY_ID, CASE_ID, G_NO);
create index ALLSYS.IDX_ENTRY_ID_G_NO on ALLSYS.RSK_CASE_TRANSFER_G_NO (ENTRY_ID, CASE_ID);

prompt
prompt Creating table RSK_CASE_TRANSFER_HEAD
prompt =====================================
prompt
create table ALLSYS.RSK_CASE_TRANSFER_HEAD
(
  ENTRY_ID            VARCHAR2(18) not null,
  CASE_ID             VARCHAR2(18) not null,
  G_NAME              VARCHAR2(255),
  GROSS_WT            NUMBER(19,5),
  TRADE_TOTAL         NUMBER(19,5),
  TRADE_NAME          VARCHAR2(255),
  AGENT_NAME          VARCHAR2(255),
  BILL_NO             VARCHAR2(32),
  D_DATE              DATE,
  TRAF_MODE           VARCHAR2(1),
  I_E_DATE            DATE,
  EXAM_ER1            VARCHAR2(8),
  CASE_DESCRIBATION   VARCHAR2(512),
  TRANSFER_DEPARTMENT VARCHAR2(32),
  TRANSFER_REASON     VARCHAR2(2),
  TRANSFER_ER         VARCHAR2(8),
  TRANSFER_TIME       DATE,
  RECEIVE_DEPARTMENT  VARCHAR2(32)
)
;
alter table ALLSYS.RSK_CASE_TRANSFER_HEAD
  add constraint PK_RSK_CASE_TRANSFER_HEAD primary key (ENTRY_ID, CASE_ID);

prompt
prompt Creating table RSK_CASE_TRANSFER_LIST
prompt =====================================
prompt
create table ALLSYS.RSK_CASE_TRANSFER_LIST
(
  ENTRY_ID        VARCHAR2(18) not null,
  CASE_ID         VARCHAR2(18) not null,
  CERT_NO         VARCHAR2(2) not null,
  CERT_NAME       VARCHAR2(32),
  CERT_NUM        NUMBER(5),
  CERT_TOTAL_PAGE NUMBER(19)
)
;
alter table ALLSYS.RSK_CASE_TRANSFER_LIST
  add constraint PK_RSK_CASE_TRANSFER_LIST primary key (ENTRY_ID, CASE_ID, CERT_NO);
create index ALLSYS.IDX_ENTRY_ID_TRANSFER_LIST on ALLSYS.RSK_CASE_TRANSFER_LIST (ENTRY_ID, CASE_ID);

prompt
prompt Creating table RSK_CODE_TS
prompt ==========================
prompt
create table ALLSYS.RSK_CODE_TS
(
  CCTS_CODE    VARCHAR2(16) not null,
  CODE_TS      VARCHAR2(16),
  I_E_FLAG     VARCHAR2(1),
  CUSTOMS_CODE VARCHAR2(4),
  BEGIN_DATE   DATE,
  END_DATE     DATE,
  INPUT_ID     VARCHAR2(8),
  AUTHORIZE_ID VARCHAR2(8),
  OP_TIME      DATE,
  NOTE         VARCHAR2(255)
)
;
alter table ALLSYS.RSK_CODE_TS
  add constraint PK_RSK_CODE_TS primary key (CCTS_CODE);
create index ALLSYS.IDX_CTS_CODE_CUSTOMS on ALLSYS.RSK_CODE_TS (CODE_TS, CUSTOMS_CODE);

prompt
prompt Creating table RSK_CODE_TS_BAK
prompt ==============================
prompt
create table ALLSYS.RSK_CODE_TS_BAK
(
  CCTS_CODE      VARCHAR2(16) not null,
  CODE_TS        VARCHAR2(16),
  I_E_FLAG       VARCHAR2(1),
  CUSTOMS_CODE   VARCHAR2(4),
  BEGIN_DATE     DATE,
  END_DATE       DATE,
  INPUT_ID       VARCHAR2(8),
  AUTHORIZE_ID   VARCHAR2(8),
  OP_TIME        DATE,
  NOTE           VARCHAR2(255),
  OP_BAK_TYPE    VARCHAR2(8),
  OP_BAK_CUSTOMS VARCHAR2(4),
  OP_BAK_MAN     VARCHAR2(8),
  OP_BAK_TIME    DATE not null
)
;
alter table ALLSYS.RSK_CODE_TS_BAK
  add constraint PK_RSK_CODE_TS_BAK primary key (CCTS_CODE, OP_BAK_TIME);
create index ALLSYS.IDX_CTS_CODE_CUSTOMS_BAK on ALLSYS.RSK_CODE_TS_BAK (CODE_TS, CUSTOMS_CODE);

prompt
prompt Creating table RSK_CONDITION
prompt ============================
prompt
create table ALLSYS.RSK_CONDITION
(
  CCTS_CODE    VARCHAR2(16) not null,
  TRADE_CO     VARCHAR2(10),
  TRADE_NAME   VARCHAR2(255),
  CORP_TYPE    VARCHAR2(1),
  RSK_COND     VARCHAR2(2048),
  RSK_COND_MID VARCHAR2(2048),
  RSK_COND_TXT VARCHAR2(2048),
  BEGIN_DATE   DATE,
  END_DATE     DATE,
  CUSTOMS_CODE VARCHAR2(4),
  SMUGGLE_MODE VARCHAR2(112),
  INPUT_ID     VARCHAR2(8),
  AUTHORIZE_ID VARCHAR2(8),
  OP_TIME      DATE
)
;
alter table ALLSYS.RSK_CONDITION
  add constraint PK_RSK_CONDITION primary key (CCTS_CODE);
create index ALLSYS.IDX_CTS_CORP_CUSTOMS on ALLSYS.RSK_CONDITION (TRADE_CO, CUSTOMS_CODE);

prompt
prompt Creating table RSK_CONDITION_BAK
prompt ================================
prompt
create table ALLSYS.RSK_CONDITION_BAK
(
  CCTS_CODE      VARCHAR2(16) not null,
  TRADE_CO       VARCHAR2(10),
  TRADE_NAME     VARCHAR2(255),
  CORP_TYPE      VARCHAR2(1),
  RSK_COND       VARCHAR2(2048),
  RSK_COND_MID   VARCHAR2(2048),
  RSK_COND_TXT   VARCHAR2(2048),
  BEGIN_DATE     DATE,
  END_DATE       DATE,
  CUSTOMS_CODE   VARCHAR2(4),
  SMUGGLE_MODE   VARCHAR2(112),
  INPUT_ID       VARCHAR2(8),
  AUTHORIZE_ID   VARCHAR2(8),
  OP_TIME        DATE,
  OP_BAK_TYPE    VARCHAR2(8),
  OP_BAK_CUSTOMS VARCHAR2(4),
  OP_BAK_MAN     VARCHAR2(8),
  OP_BAK_TIME    DATE not null
)
;
alter table ALLSYS.RSK_CONDITION_BAK
  add constraint PK_RSK_CONDITION_BAK primary key (CCTS_CODE, OP_BAK_TIME);
create index ALLSYS.IDX_CTS_CORP_CUSTOMS_BAK on ALLSYS.RSK_CONDITION_BAK (TRADE_CO, CUSTOMS_CODE);

prompt
prompt Creating table RSK_CONTA_CAPACITY
prompt =================================
prompt
create table ALLSYS.RSK_CONTA_CAPACITY
(
  CCTS_CODE         VARCHAR2(16) not null,
  CONTA_MODEL       VARCHAR2(4),
  CONTA_BULK        VARCHAR2(16),
  CONTA_WEIGHT_LOW  NUMBER(19,4),
  CONTA_WEIGHT_HIGH NUMBER(19,4),
  CUSTOMS_CODE      VARCHAR2(4),
  INPUT_ID          VARCHAR2(8),
  BEGIN_DATE        DATE,
  END_DATE          DATE
)
;
alter table ALLSYS.RSK_CONTA_CAPACITY
  add constraint PK_RSK_CONTA_CAPACITY primary key (CCTS_CODE);
create index ALLSYS.IDX_CTS_CONTA_CUSTOMS on ALLSYS.RSK_CONTA_CAPACITY (CONTA_MODEL, CUSTOMS_CODE);

prompt
prompt Creating table RSK_CONTA_CAPACITY_BAK
prompt =====================================
prompt
create table ALLSYS.RSK_CONTA_CAPACITY_BAK
(
  CCTS_CODE         VARCHAR2(16) not null,
  CONTA_MODEL       VARCHAR2(4),
  CONTA_BULK        VARCHAR2(16),
  CONTA_WEIGHT_LOW  NUMBER(19,4),
  CONTA_WEIGHT_HIGH NUMBER(19,4),
  CUSTOMS_CODE      VARCHAR2(4),
  INPUT_ID          VARCHAR2(8),
  BEGIN_DATE        DATE,
  END_DATE          DATE,
  OP_BAK_TYPE       VARCHAR2(8),
  OP_BAK_CUSTOMS    VARCHAR2(4),
  OP_BAK_MAN        VARCHAR2(8),
  OP_BAK_TIME       DATE not null
)
;
alter table ALLSYS.RSK_CONTA_CAPACITY_BAK
  add constraint PK_RSK_CONTA_CAPACITY_BAK primary key (CCTS_CODE, OP_BAK_TIME);
create index ALLSYS.IDX_CTS_CONTA_CUSTOMS_BAK on ALLSYS.RSK_CONTA_CAPACITY_BAK (CONTA_MODEL, CUSTOMS_CODE);

prompt
prompt Creating table RSK_EXAM_HEAD_REL
prompt ================================
prompt
create table ALLSYS.RSK_EXAM_HEAD_REL
(
  EXAM_REC_ID                 VARCHAR2(18) not null,
  GOODS_ADDR                  VARCHAR2(8),
  I_E_FLAG                    VARCHAR2(1),
  FORM_ID                     VARCHAR2(20),
  FORM_TYPE                   VARCHAR2(1),
  TRAF_NAME                   VARCHAR2(255),
  TRAF_MODE                   VARCHAR2(1),
  TRADE_CO                    VARCHAR2(10),
  TRADE_NAME                  VARCHAR2(255),
  OWNER_NAME                  VARCHAR2(255),
  AGENT_NAME                  VARCHAR2(255),
  CONTR_NO                    VARCHAR2(32),
  BILL_NO                     VARCHAR2(32),
  TRADE_MODE                  VARCHAR2(4),
  LICENSE_NO                  VARCHAR2(20),
  APPR_NO                     VARCHAR2(32),
  MANUAL_NO                   VARCHAR2(12),
  I_E_DATE                    DATE,
  D_DATE                      DATE,
  PACK_NO                     NUMBER(19),
  REAL_PACK_NO                NUMBER(19),
  GROSS_WT                    NUMBER(19,5),
  REAL_GROSS_WT               NUMBER(19,5),
  EXAM_TYPE                   VARCHAR2(32),
  EXAM_MODE_CODE              VARCHAR2(64),
  EXAM_TIME                   DATE,
  EXAM_ADDR                   VARCHAR2(20),
  EXAM_ER1                    VARCHAR2(8),
  EXAM_ER2                    VARCHAR2(8),
  EXAM_ASSIGN                 VARCHAR2(8),
  EXAM_RESULT                 VARCHAR2(16),
  EXAM_PROC_CODE              VARCHAR2(2),
  EXAM_PROC_TIME              DATE,
  EXAM_PROC_ER                VARCHAR2(8),
  EXAM_PROC_IDEA              VARCHAR2(40),
  EXAM_APPR_IDEA              VARCHAR2(40),
  EXAM_FORM_ID                VARCHAR2(16),
  RSK_REQUEST_STR             VARCHAR2(20),
  INVES_PROC_ID               VARCHAR2(16),
  CUS_COVER_ID                VARCHAR2(255),
  TRAF_CO_CORR                VARCHAR2(1),
  NOTE_S                      VARCHAR2(255),
  EXAM_ER3                    VARCHAR2(8),
  MAC_EXAM_PROC_IDEA          VARCHAR2(2),
  MAC_EXAM_RESULT             VARCHAR2(2),
  MAC_EXAM_ER1                VARCHAR2(8),
  MAC_EXAM_ER2                VARCHAR2(8),
  MAC_CHK_NOTES               VARCHAR2(2408),
  MAN_CHK_NOTES               VARCHAR2(2408),
  EXAM_MODE_CODE_RESULT       VARCHAR2(64),
  EXAM_MODE_CODE_LOCAL        VARCHAR2(64),
  EXAM_MODE_CODE_LOCAL_RESULT VARCHAR2(64),
  RSK_NO                      VARCHAR2(15),
  EXAM_MODE                   VARCHAR2(1),
  SECURITY_INFO               VARCHAR2(255),
  OTHER_REQUIRE               VARCHAR2(255),
  LAST_RESULT_ER              VARCHAR2(8),
  MAC_EXAM_ADDR               VARCHAR2(32),
  MAC_TIME                    DATE,
  LAST_RESULT_TIME            DATE,
  OWNER_CODE                  VARCHAR2(10)
)
;
alter table ALLSYS.RSK_EXAM_HEAD_REL
  add constraint PK_RSK_EXAM_HEAD_REL primary key (EXAM_REC_ID);
create index ALLSYS.IDX_RSK_EXAM_HEAD_EXAM_PROC_TI on ALLSYS.RSK_EXAM_HEAD_REL (EXAM_PROC_TIME);
create index ALLSYS.IDX_RSK_EXAM_HEAD_FORMID_RSKNO on ALLSYS.RSK_EXAM_HEAD_REL (FORM_ID, RSK_NO);
create index ALLSYS.IDX_RSK_EXAM_HEAD_FORM_ID on ALLSYS.RSK_EXAM_HEAD_REL (FORM_ID);
create index ALLSYS.IDX_RSK_EXAM_HEAD_RSKNO on ALLSYS.RSK_EXAM_HEAD_REL (RSK_NO);

prompt
prompt Creating table RSK_EXAM_LIST_CONTAINER
prompt ======================================
prompt
create table ALLSYS.RSK_EXAM_LIST_CONTAINER
(
  EXAM_REC_ID         VARCHAR2(18) not null,
  C_NO                NUMBER(19),
  CONTAINER_ID        VARCHAR2(32) not null,
  CONTAINER_ID_RESULT VARCHAR2(4),
  NEW_SEAL_NO         VARCHAR2(32),
  SEAL_NO             VARCHAR2(32),
  SEAL_NO_RESULT      VARCHAR2(1),
  HOLLOW_AREA1        VARCHAR2(2),
  HOLLOW_AREA2        VARCHAR2(2),
  MANUAL_FLAG         VARCHAR2(1),
  CONTA_RESULT        VARCHAR2(2)
)
;
alter table ALLSYS.RSK_EXAM_LIST_CONTAINER
  add constraint PK_RSK_EXAM_LIST_CONTAINER primary key (EXAM_REC_ID, CONTAINER_ID);

prompt
prompt Creating table RSK_EXAM_LIST_REL
prompt ================================
prompt
create table ALLSYS.RSK_EXAM_LIST_REL
(
  EXAM_REC_ID           VARCHAR2(18) not null,
  G_NO                  NUMBER(19) not null,
  CODE_TS               VARCHAR2(16),
  G_NAME                VARCHAR2(255),
  G_MODEL               VARCHAR2(255),
  ORIGIN_COUNTRY        VARCHAR2(3),
  QTY_1                 NUMBER(19,5),
  G_UNIT                VARCHAR2(3),
  DECL_PRICE            NUMBER(19,5),
  TRADE_CURR            VARCHAR2(3),
  TRADE_TOTAL           NUMBER(19,4),
  REAL_CODE_TS          VARCHAR2(16),
  REAL_G_NAME           VARCHAR2(255),
  REAL_G_MODEL          VARCHAR2(255),
  REAL_ORIGIN_COUNTRY   VARCHAR2(3),
  REAL_QTY_1            NUMBER(19,5),
  REAL_TRADE_TOTAL      NUMBER(19,4),
  REAL_G_UNIT           VARCHAR2(3),
  REAL_TRADE_CURR       VARCHAR2(3),
  EXAM_RESULT           VARCHAR2(16),
  EXAM_MODE_CODE        VARCHAR2(2),
  CODE_TS_RESULT        VARCHAR2(4),
  G_NAME_RESULT         VARCHAR2(4),
  G_MODEL_RESULT        VARCHAR2(4),
  ORIGIN_COUNTRY_RESULT VARCHAR2(4),
  QTY_1_RESULT          VARCHAR2(4),
  G_UNIT_RESULT         VARCHAR2(4),
  DECL_PRICE_RESULT     VARCHAR2(4),
  TRADE_CURR_RESULT     VARCHAR2(4),
  EXAM_MODE_CODE_RESULT VARCHAR2(2)
)
;
alter table ALLSYS.RSK_EXAM_LIST_REL
  add constraint PK_RSK_EXAM_LIST_REL primary key (EXAM_REC_ID, G_NO);

prompt
prompt Creating table RSK_EXAM_OP_LOG
prompt ==============================
prompt
create table ALLSYS.RSK_EXAM_OP_LOG
(
  EXAM_REC_ID  VARCHAR2(18) not null,
  OP_TIME      DATE not null,
  OP_ER        VARCHAR2(8),
  MODI_TYPE    VARCHAR2(64) not null,
  FORM_ID      VARCHAR2(18),
  TABLE_NAME   VARCHAR2(255) not null,
  ITEM_NAME    VARCHAR2(255) not null,
  ITEM_SOURCE  VARCHAR2(255),
  ITEM_CURRENT VARCHAR2(255),
  NOTE         VARCHAR2(255)
)
;
alter table ALLSYS.RSK_EXAM_OP_LOG
  add constraint PK_RSK_EXAM_OP_LOG primary key (EXAM_REC_ID, OP_TIME, MODI_TYPE, TABLE_NAME, ITEM_NAME);
create index ALLSYS.IX_RSKEXAMOPLOG_FORM_ID on ALLSYS.RSK_EXAM_OP_LOG (FORM_ID);

prompt
prompt Creating table RSK_FAKE_CODE_TS
prompt ===============================
prompt
create table ALLSYS.RSK_FAKE_CODE_TS
(
  CCTS_CODE    VARCHAR2(16) not null,
  CODE_TS      VARCHAR2(16),
  I_E_FLAG     VARCHAR2(1),
  BEGIN_DATE   DATE,
  END_DATE     DATE,
  CUSTOMS_CODE VARCHAR2(4),
  INPUT_ID     VARCHAR2(8),
  AUTHORIZE_ID VARCHAR2(8),
  OP_TIME      DATE,
  SMUGGLE_TYPE VARCHAR2(1)
)
;
alter table ALLSYS.RSK_FAKE_CODE_TS
  add constraint PK_RSK_FAKE_CODE_TS primary key (CCTS_CODE);
create index ALLSYS.IDX_CTS_CODE_TS on ALLSYS.RSK_FAKE_CODE_TS (CODE_TS, CUSTOMS_CODE);

prompt
prompt Creating table RSK_FAKE_CODE_TS_BAK
prompt ===================================
prompt
create table ALLSYS.RSK_FAKE_CODE_TS_BAK
(
  CCTS_CODE      VARCHAR2(16) not null,
  CODE_TS        VARCHAR2(16),
  I_E_FLAG       VARCHAR2(1),
  BEGIN_DATE     DATE,
  END_DATE       DATE,
  CUSTOMS_CODE   VARCHAR2(4),
  INPUT_ID       VARCHAR2(8),
  AUTHORIZE_ID   VARCHAR2(8),
  OP_TIME        DATE,
  SMUGGLE_TYPE   VARCHAR2(1),
  OP_BAK_TYPE    VARCHAR2(8),
  OP_BAK_CUSTOMS VARCHAR2(4),
  OP_BAK_MAN     VARCHAR2(8),
  OP_BAK_TIME    DATE not null
)
;
alter table ALLSYS.RSK_FAKE_CODE_TS_BAK
  add constraint PK_RSK_FAKE_CODE_TS_BAK primary key (CCTS_CODE, OP_BAK_TIME);
create index ALLSYS.IDX_CTS_CODE_TS_BAK on ALLSYS.RSK_FAKE_CODE_TS_BAK (CODE_TS, CUSTOMS_CODE);

prompt
prompt Creating table RSK_FIT_LOG_REL
prompt ==============================
prompt
create table ALLSYS.RSK_FIT_LOG_REL
(
  RSK_NO             VARCHAR2(15) not null,
  FORM_ID            VARCHAR2(20) not null,
  FORM_TYPE          CHAR(1),
  I_E_FLAG           CHAR(1),
  D_DATE             DATE not null,
  R_DATE             DATE,
  FIT_FLAG           CHAR(1),
  INFO_LOCK_FLAG     VARCHAR2(2),
  RSK_REQUEST_DETAIL VARCHAR2(1),
  EXAM_CONTA_FLAG    VARCHAR2(1),
  RSK_BEFORE         VARCHAR2(1)
)
;
alter table ALLSYS.RSK_FIT_LOG_REL
  add constraint PK_RSK_FIT_LOG_REL primary key (RSK_NO, FORM_ID, D_DATE);
create index ALLSYS.IDX_RSK_FIT_LOG_FORM_ID on ALLSYS.RSK_FIT_LOG_REL (FORM_ID);

prompt
prompt Creating table RSK_FIT_RESULT_LOG
prompt =================================
prompt
create table ALLSYS.RSK_FIT_RESULT_LOG
(
  RSK_NO           VARCHAR2(15) not null,
  FORM_ID          VARCHAR2(20) not null,
  FORM_TYPE        CHAR(1),
  I_E_FLAG         CHAR(1),
  D_DATE           DATE not null,
  RSK_POS          VARCHAR2(8) not null,
  RSLT_FLAG_CODE   VARCHAR2(2),
  RTN_FLAG         VARCHAR2(16),
  EXAM_REC_ID      VARCHAR2(18),
  OPER_ID          VARCHAR2(8),
  OPER_CUSTOMSCODE VARCHAR2(4),
  OPER_DATE        DATE
)
;
alter table ALLSYS.RSK_FIT_RESULT_LOG
  add constraint PK_RSK_FIT_RESULT_LOG primary key (RSK_NO, FORM_ID, D_DATE, RSK_POS);

prompt
prompt Creating table RSK_INSTR_ATTR_REL
prompt =================================
prompt
create table ALLSYS.RSK_INSTR_ATTR_REL
(
  RSK_NO            VARCHAR2(15) not null,
  RSK_CUSTOMS       VARCHAR2(4),
  RSK_DEP           VARCHAR2(32),
  IN_OP_ID          VARCHAR2(8),
  INPUT_DATE        DATE,
  RSK_SRC           VARCHAR2(2),
  RSK_REASON        VARCHAR2(255),
  EXE_AREA          VARCHAR2(100),
  RSK_CONF_CUSTOMS  VARCHAR2(4),
  RSK_CONF_DEP      VARCHAR2(32),
  CONF_OP_ID        VARCHAR2(8),
  CONF_DATE         DATE,
  REFUSE_FLAG       CHAR(1),
  REFUSE_REASON     VARCHAR2(255),
  DISPATCH_DATE     DATE,
  B_DATE            DATE,
  E_DATE            DATE,
  FORCE_E_CUSTOMS   VARCHAR2(4),
  FORCE_E_DEP       VARCHAR2(32),
  FORCE_E_OP_ID     VARCHAR2(8),
  FORCE_E_DATE      DATE,
  I_E_FLAG          CHAR(1),
  BP1               VARCHAR2(32),
  BP2               VARCHAR2(32),
  TEL1              VARCHAR2(32),
  TEL2              VARCHAR2(32),
  EMAIL             VARCHAR2(32),
  RSK_INSTR_STAT    CHAR(1),
  RSK_COND          VARCHAR2(2048),
  RSK_COND_MID      VARCHAR2(2048),
  RSK_COND_TXT      VARCHAR2(2048),
  NOTE_S            VARCHAR2(255),
  MEM1              VARCHAR2(32),
  MEM2              VARCHAR2(32),
  INFO_UNLOCK_OP_ID VARCHAR2(8),
  CONTACTER         VARCHAR2(8),
  CONTACTER_TEL     VARCHAR2(32),
  INFO_UNLOCK_DATE  DATE,
  FIT_COUNT         NUMBER(19),
  LAST_FIT_TIME     DATE,
  MAX_FIT_COUNT     NUMBER(19),
  RND_RATE          NUMBER(19,4),
  FORM_TYPE         VARCHAR2(1),
  RSK_NOTES         VARCHAR2(32),
  TOTAL_FIT_COUNT   NUMBER(19)
)
;
alter table ALLSYS.RSK_INSTR_ATTR_REL
  add constraint PK_RSK_INSTR_ATTR_REL primary key (RSK_NO);
create index ALLSYS.IDX_RSK_INSTR_ATTR_CUS_STAT on ALLSYS.RSK_INSTR_ATTR_REL (RSK_CUSTOMS, RSK_INSTR_STAT);
create index ALLSYS.IDX_RSK_INSTR_ATTR_OPID on ALLSYS.RSK_INSTR_ATTR_REL (IN_OP_ID);

prompt
prompt Creating table RSK_INSTR_ATTR_REL_BAK20081110
prompt =============================================
prompt
create table ALLSYS.RSK_INSTR_ATTR_REL_BAK20081110
(
  RSK_NO            VARCHAR2(15) not null,
  RSK_CUSTOMS       VARCHAR2(4),
  RSK_DEP           VARCHAR2(32),
  IN_OP_ID          VARCHAR2(8),
  INPUT_DATE        DATE,
  RSK_SRC           VARCHAR2(2),
  RSK_REASON        VARCHAR2(255),
  EXE_AREA          VARCHAR2(100),
  RSK_CONF_CUSTOMS  VARCHAR2(4),
  RSK_CONF_DEP      VARCHAR2(32),
  CONF_OP_ID        VARCHAR2(8),
  CONF_DATE         DATE,
  REFUSE_FLAG       CHAR(1),
  REFUSE_REASON     VARCHAR2(255),
  DISPATCH_DATE     DATE,
  B_DATE            DATE,
  E_DATE            DATE,
  FORCE_E_CUSTOMS   VARCHAR2(4),
  FORCE_E_DEP       VARCHAR2(32),
  FORCE_E_OP_ID     VARCHAR2(8),
  FORCE_E_DATE      DATE,
  I_E_FLAG          CHAR(1),
  BP1               VARCHAR2(32),
  BP2               VARCHAR2(32),
  TEL1              VARCHAR2(32),
  TEL2              VARCHAR2(32),
  EMAIL             VARCHAR2(32),
  RSK_INSTR_STAT    CHAR(1),
  RSK_COND          VARCHAR2(2048),
  RSK_COND_MID      VARCHAR2(2048),
  RSK_COND_TXT      VARCHAR2(2048),
  NOTE_S            VARCHAR2(255),
  MEM1              VARCHAR2(32),
  MEM2              VARCHAR2(32),
  INFO_UNLOCK_OP_ID VARCHAR2(8),
  CONTACTER         VARCHAR2(8),
  CONTACTER_TEL     VARCHAR2(32),
  INFO_UNLOCK_DATE  DATE
)
;

prompt
prompt Creating table RSK_INSTR_ATTR_REL_PRE07
prompt =======================================
prompt
create table ALLSYS.RSK_INSTR_ATTR_REL_PRE07
(
  RSK_NO            VARCHAR2(15) not null,
  RSK_CUSTOMS       VARCHAR2(4),
  RSK_DEP           VARCHAR2(32),
  IN_OP_ID          VARCHAR2(8),
  INPUT_DATE        DATE,
  RSK_SRC           VARCHAR2(2),
  RSK_REASON        VARCHAR2(255),
  EXE_AREA          VARCHAR2(100),
  RSK_CONF_CUSTOMS  VARCHAR2(4),
  RSK_CONF_DEP      VARCHAR2(32),
  CONF_OP_ID        VARCHAR2(8),
  CONF_DATE         DATE,
  REFUSE_FLAG       CHAR(1),
  REFUSE_REASON     VARCHAR2(255),
  DISPATCH_DATE     DATE,
  B_DATE            DATE,
  E_DATE            DATE,
  FORCE_E_CUSTOMS   VARCHAR2(4),
  FORCE_E_DEP       VARCHAR2(32),
  FORCE_E_OP_ID     VARCHAR2(8),
  FORCE_E_DATE      DATE,
  I_E_FLAG          CHAR(1),
  BP1               VARCHAR2(32),
  BP2               VARCHAR2(32),
  TEL1              VARCHAR2(32),
  TEL2              VARCHAR2(32),
  EMAIL             VARCHAR2(32),
  RSK_INSTR_STAT    CHAR(1),
  RSK_COND          VARCHAR2(2048),
  RSK_COND_MID      VARCHAR2(2048),
  RSK_COND_TXT      VARCHAR2(2048),
  NOTE_S            VARCHAR2(255),
  MEM1              VARCHAR2(32),
  MEM2              VARCHAR2(32),
  INFO_UNLOCK_OP_ID VARCHAR2(8),
  CONTACTER         VARCHAR2(8),
  CONTACTER_TEL     VARCHAR2(32),
  INFO_UNLOCK_DATE  DATE
)
;

prompt
prompt Creating table RSK_INSTR_PROC_REL
prompt =================================
prompt
create table ALLSYS.RSK_INSTR_PROC_REL
(
  RSK_NO              VARCHAR2(15) not null,
  RSK_POS             VARCHAR2(8) not null,
  RSK_REQUEST_STR     VARCHAR2(20),
  RSK_PROC_TYPE_STR   VARCHAR2(20),
  INFO_REQUEST_DETAIL VARCHAR2(255)
)
;
alter table ALLSYS.RSK_INSTR_PROC_REL
  add constraint PK_RSK_INSTR_PROC_REL primary key (RSK_NO, RSK_POS);

prompt
prompt Creating table RSK_OP_LOG
prompt =========================
prompt
create table ALLSYS.RSK_OP_LOG
(
  FORM_ID      VARCHAR2(18) not null,
  FORM_TYPE    VARCHAR2(1),
  CUSTOMS_CODE VARCHAR2(4),
  OP_ER        VARCHAR2(8),
  OP_TIME      DATE not null,
  OP_POS       VARCHAR2(8)
)
;
alter table ALLSYS.RSK_OP_LOG
  add constraint PK_RSK_OP_LOG primary key (FORM_ID, OP_TIME);

prompt
prompt Creating table RSK_RECHECK_REL
prompt ==============================
prompt
create table ALLSYS.RSK_RECHECK_REL
(
  FORM_ID         VARCHAR2(32) not null,
  CHECK_FLAG      VARCHAR2(2),
  LOCK_OP_CUSTOMS VARCHAR2(4),
  LOCK_OP_ID      VARCHAR2(8),
  LOCK_OP_TEL     VARCHAR2(32),
  LOCK_DATE       DATE,
  UNLOCK_CUSTOMS  VARCHAR2(4),
  UNLOCK_OP_ID    VARCHAR2(8),
  UNLOCK_DATE     DATE,
  RSK_NO          VARCHAR2(15)
)
;
alter table ALLSYS.RSK_RECHECK_REL
  add constraint PK_RSK_RECHECK_REL primary key (FORM_ID);

prompt
prompt Creating table RSK_REPLICATION_LOG
prompt ==================================
prompt
create table ALLSYS.RSK_REPLICATION_LOG
(
  CUSTOMS_CODE VARCHAR2(4) not null,
  TABLE_NAME   VARCHAR2(32) not null,
  TABLE_C_NAME VARCHAR2(255),
  REPLI_DATE   DATE not null,
  REPLI_ER     VARCHAR2(8)
)
;
alter table ALLSYS.RSK_REPLICATION_LOG
  add constraint PK_RSK_REPLICATION_LOG primary key (CUSTOMS_CODE, TABLE_NAME, REPLI_DATE);

prompt
prompt Creating table RSK_RESULT_REL
prompt =============================
prompt
create table ALLSYS.RSK_RESULT_REL
(
  RSK_NO         VARCHAR2(15) not null,
  FORM_ID        VARCHAR2(20) not null,
  FORM_TYPE      CHAR(1),
  FIT_DATE       DATE,
  I_E_FLAG       CHAR(1),
  RSK_POS        VARCHAR2(8) not null,
  RSLT_FLAG_CODE VARCHAR2(2),
  RTN_FLAG       VARCHAR2(16),
  EXAM_REC_ID    VARCHAR2(18)
)
;
alter table ALLSYS.RSK_RESULT_REL
  add constraint PK_RSK_RESULT_REL primary key (RSK_NO, FORM_ID, RSK_POS);
create index ALLSYS.IDX_RSK_RESULT_EXAM_REC_ID on ALLSYS.RSK_RESULT_REL (EXAM_REC_ID);
create index ALLSYS.IDX_RSK_RESULT_FORM_ID on ALLSYS.RSK_RESULT_REL (FORM_ID);

prompt
prompt Creating table RSK_TRADE_CO
prompt ===========================
prompt
create table ALLSYS.RSK_TRADE_CO
(
  CCTS_CODE    VARCHAR2(16) not null,
  TRADE_CO     VARCHAR2(10),
  TRADE_NAME   VARCHAR2(255),
  BEGIN_DATE   DATE,
  END_DATE     DATE,
  CUSTOMS_CODE VARCHAR2(4),
  INPUT_ID     VARCHAR2(8),
  AUTHORIZE_ID VARCHAR2(8),
  OP_TIME      DATE,
  I_E_FLAG     VARCHAR2(1)
)
;
alter table ALLSYS.RSK_TRADE_CO
  add constraint PK_RSK_TRADE_CO primary key (CCTS_CODE);
create index ALLSYS.IDX_CTS_TRADE_CO on ALLSYS.RSK_TRADE_CO (TRADE_CO, CUSTOMS_CODE);

prompt
prompt Creating table RSK_TRADE_CO_BAK
prompt ===============================
prompt
create table ALLSYS.RSK_TRADE_CO_BAK
(
  CCTS_CODE      VARCHAR2(16) not null,
  TRADE_CO       VARCHAR2(10),
  TRADE_NAME     VARCHAR2(255),
  BEGIN_DATE     DATE,
  END_DATE       DATE,
  CUSTOMS_CODE   VARCHAR2(4),
  INPUT_ID       VARCHAR2(8),
  AUTHORIZE_ID   VARCHAR2(8),
  OP_TIME        DATE,
  I_E_FLAG       VARCHAR2(1),
  OP_BAK_TYPE    VARCHAR2(8),
  OP_BAK_CUSTOMS VARCHAR2(4),
  OP_BAK_MAN     VARCHAR2(8),
  OP_BAK_TIME    DATE not null
)
;
alter table ALLSYS.RSK_TRADE_CO_BAK
  add constraint PK_RSK_TRADE_CO_BAK primary key (CCTS_CODE, OP_BAK_TIME);
create index ALLSYS.IDX_CTS_TRADE_CO_BAK on ALLSYS.RSK_TRADE_CO_BAK (TRADE_CO, CUSTOMS_CODE);

prompt
prompt Creating table RSK_UNLOCK_OP_LOG
prompt ================================
prompt
create table ALLSYS.RSK_UNLOCK_OP_LOG
(
  FORM_ID       VARCHAR2(18) not null,
  RSK_NO        VARCHAR2(15) not null,
  FORM_TYPE     VARCHAR2(1),
  CUSTOMS_CODE  VARCHAR2(4),
  UNLOCK_ER     VARCHAR2(8),
  UNLOCK_TIME   DATE not null,
  UNLOCK_REASON VARCHAR2(255)
)
;
alter table ALLSYS.RSK_UNLOCK_OP_LOG
  add constraint PK_RSK_UNLOCK_OP_LOG primary key (FORM_ID, RSK_NO, UNLOCK_TIME);

prompt
prompt Creating table RSK_VS_EXAM
prompt ==========================
prompt
create table ALLSYS.RSK_VS_EXAM
(
  FORM_ID     VARCHAR2(20) not null,
  FORM_TYPE   CHAR(1) not null,
  RSK_NO      VARCHAR2(15) not null,
  D_DATE      DATE not null,
  EXAM_REC_ID VARCHAR2(18) not null
)
;
alter table ALLSYS.RSK_VS_EXAM
  add constraint PK_RSK_VS_EXAM primary key (FORM_ID, FORM_TYPE, RSK_NO, D_DATE, EXAM_REC_ID);

prompt
prompt Creating table RSK_WORKFLOW
prompt ===========================
prompt
create table ALLSYS.RSK_WORKFLOW
(
  ENTRY_ID          VARCHAR2(18) not null,
  EXAM_REC_ID       VARCHAR2(18) not null,
  CHK_CUSTOMS_CODE  VARCHAR2(4),
  INPUT_DATE        DATE,
  EXAM_PRINT        DATE,
  EXAM_CONTA_FLAG   VARCHAR2(1),
  PRINT_TIME        DATE,
  EXAM_E_TIME       DATE,
  ALC_DATE          DATE,
  MAC_TIME          DATE,
  EXAM_TIME         DATE,
  EXAM_PROC_TIME    DATE,
  LAST_RESULT_TIME  DATE,
  EXAM_CONTA_PERIOD NUMBER(19),
  EXAM_CHK_PERIOD   NUMBER(19),
  EXAM_PROC_PERIOD  NUMBER(19)
)
;
alter table ALLSYS.RSK_WORKFLOW
  add constraint PK_RSK_WORKFLOW primary key (ENTRY_ID, EXAM_REC_ID);
create index ALLSYS.IDX_RSK_WORKFLOW_CUSTOMSCODE on ALLSYS.RSK_WORKFLOW (INPUT_DATE, CHK_CUSTOMS_CODE);

prompt
prompt Creating table SERVICE_FEE
prompt ==========================
prompt
create table ALLSYS.SERVICE_FEE
(
  MANUAL_NO   VARCHAR2(12) not null,
  DUE_FEE_AMT NUMBER(19,5),
  PAY_FEE_AMT NUMBER(19,5),
  CREATE_DATE DATE,
  RETURN_ID   NUMBER(19),
  RETURN_FLAG VARCHAR2(1),
  REMAIN_AMT  NUMBER(19,5)
)
;
alter table ALLSYS.SERVICE_FEE
  add constraint PK_SERVICE_FEE primary key (MANUAL_NO);

prompt
prompt Creating table SERVICE_LIST
prompt ===========================
prompt
create table ALLSYS.SERVICE_LIST
(
  MANUAL_NO   VARCHAR2(12) not null,
  F_NO        NUMBER(19) not null,
  FEE_TYPE    VARCHAR2(1),
  FEE_RATE    NUMBER(19,5),
  G_NO        NUMBER(19),
  G_NAME      VARCHAR2(255),
  FEE_AMT     NUMBER(19,5),
  FEE_CURR    VARCHAR2(3),
  FEE_RMB     NUMBER(19,5),
  SERVICE_FEE NUMBER(19,5)
)
;
alter table ALLSYS.SERVICE_LIST
  add constraint PK_SERVICE_LIST primary key (MANUAL_NO, F_NO);

prompt
prompt Creating table SHIP_TONNAGE
prompt ===========================
prompt
create table ALLSYS.SHIP_TONNAGE
(
  LICENSE_NO      VARCHAR2(32) not null,
  SHIP_ID         VARCHAR2(32),
  SHIP_NAME_EN    VARCHAR2(255),
  SHIP_NAME_CN    VARCHAR2(255),
  SHIP_NAME_ORI   VARCHAR2(255),
  COUNTRY_CODE    VARCHAR2(3),
  SHIP_TYPE       VARCHAR2(3),
  SHIP_ATTR       VARCHAR2(3),
  SHIP_USE_CODE   VARCHAR2(3),
  TONNAGE         NUMBER(19,2),
  TON_MOD_FLAG    VARCHAR2(2),
  I_E_DATE        DATE,
  DECL_CODE       VARCHAR2(4),
  TONNAGE_TERM    NUMBER(19),
  SHIP_AGENT_CODE VARCHAR2(10),
  SHIP_AGENT_NAME VARCHAR2(255),
  DUTYFORM_NO     VARCHAR2(18),
  REAL_DUTY       NUMBER(19,2),
  INPUT_DATE      DATE,
  INPUT_ER        VARCHAR2(8),
  GRANT_DATE      DATE,
  GRANT_ER        VARCHAR2(8),
  SIGN_NAME       VARCHAR2(32),
  BEGIN_DATE      DATE,
  END_DATE        DATE,
  DUTY_MODE       VARCHAR2(1),
  DEFER_REASON    VARCHAR2(2),
  OP_FLAG         VARCHAR2(1),
  PROC_RESULT     VARCHAR2(1),
  TAX_RATE        NUMBER(19,2),
  HASH_SIGN       VARCHAR2(380),
  MANUAL_LIC_NO   VARCHAR2(32),
  NOTE_MAN        VARCHAR2(255),
  NOTE_AUTO       VARCHAR2(255)
)
;
alter table ALLSYS.SHIP_TONNAGE
  add constraint PK_SHIP_TONNAGE primary key (LICENSE_NO);
create index ALLSYS.IX_SHIP_TONNAGE_DUTYFORM on ALLSYS.SHIP_TONNAGE (DUTYFORM_NO);

prompt
prompt Creating table SPECIAL_ENTRY
prompt ============================
prompt
create table ALLSYS.SPECIAL_ENTRY
(
  ENTRY_ID VARCHAR2(18) not null,
  OP_TIME  DATE not null,
  OP_ER    VARCHAR2(32),
  OP_NOTE  VARCHAR2(255),
  OP_FLAG  VARCHAR2(1),
  REV_ER   VARCHAR2(32),
  REV_TIME DATE,
  END_ER   VARCHAR2(32),
  END_TIME DATE,
  END_NOTE VARCHAR2(255)
)
;
alter table ALLSYS.SPECIAL_ENTRY
  add constraint PK_SPECIAL_ENTRY primary key (ENTRY_ID, OP_TIME);

prompt
prompt Creating table STATUS_DETAIL
prompt ============================
prompt
create table ALLSYS.STATUS_DETAIL
(
  ENTRY_ID      VARCHAR2(18) not null,
  DETAIL_COUNT  NUMBER(9) not null,
  STATUS_NUMBER NUMBER(9),
  STATUS_RESULT VARCHAR2(1),
  STATUS_DETAIL VARCHAR2(255)
)
;
alter table ALLSYS.STATUS_DETAIL
  add constraint PK_STATUS_DETAIL primary key (ENTRY_ID, DETAIL_COUNT);

prompt
prompt Creating table STAT_TAB
prompt =======================
prompt
create table ALLSYS.STAT_TAB
(
  STATID  VARCHAR2(30),
  TYPE    CHAR(1),
  VERSION NUMBER,
  FLAGS   NUMBER,
  C1      VARCHAR2(30),
  C2      VARCHAR2(30),
  C3      VARCHAR2(30),
  C4      VARCHAR2(30),
  C5      VARCHAR2(30),
  N1      NUMBER,
  N2      NUMBER,
  N3      NUMBER,
  N4      NUMBER,
  N5      NUMBER,
  N6      NUMBER,
  N7      NUMBER,
  N8      NUMBER,
  N9      NUMBER,
  N10     NUMBER,
  N11     NUMBER,
  N12     NUMBER,
  D1      DATE,
  R1      RAW(32),
  R2      RAW(32),
  CH1     VARCHAR2(1000)
)
;
create index ALLSYS.STAT_TAB on ALLSYS.STAT_TAB (STATID, TYPE, C5, C1, C2, C3, C4, VERSION);

prompt
prompt Creating table STF_CORP_RECORD
prompt ==============================
prompt
create table ALLSYS.STF_CORP_RECORD
(
  ENTRY_ID       VARCHAR2(18) not null,
  STF_CORP_ID    VARCHAR2(32),
  MANUAL_CORP_NO VARCHAR2(30),
  I_E_FLAG       VARCHAR2(1),
  UNIT_CODE      VARCHAR2(10),
  STF_CORP_DATE1 DATE,
  STF_CORP_ER1   VARCHAR2(16),
  STF_CORP_DATE2 DATE,
  STF_CORP_ER2   VARCHAR2(8),
  ROOM_CORP_NO   VARCHAR2(64),
  NOTE_TEXT      VARCHAR2(255)
)
;
alter table ALLSYS.STF_CORP_RECORD
  add constraint PK_STF_CORP_RECORD primary key (ENTRY_ID);
create index ALLSYS.IDX_STF_CORP_ID on ALLSYS.STF_CORP_RECORD (STF_CORP_ID);

prompt
prompt Creating table STF_RECORD
prompt =========================
prompt
create table ALLSYS.STF_RECORD
(
  ENTRY_ID  VARCHAR2(18) not null,
  STF_ID    VARCHAR2(22),
  I_E_FLAG  VARCHAR2(1),
  MANUAL_NO VARCHAR2(20),
  STF_DATE1 DATE,
  STF_ER1   VARCHAR2(8),
  STF_DATE2 DATE,
  STF_ER2   VARCHAR2(8),
  ROOM_NO   VARCHAR2(16),
  NOTE_TEXT VARCHAR2(10)
)
;
alter table ALLSYS.STF_RECORD
  add constraint PK_STF_RECORD primary key (ENTRY_ID);
create index ALLSYS.IDX_STF_RECORD_MANUAL_NO on ALLSYS.STF_RECORD (MANUAL_NO);
create index ALLSYS.IDX_STF_RECORD_STF_ID on ALLSYS.STF_RECORD (STF_ID);

prompt
prompt Creating table STL_DATA_CONTA_LIST
prompt ==================================
prompt
create table ALLSYS.STL_DATA_CONTA_LIST
(
  UCR_CODE     VARCHAR2(35) not null,
  CONTAINER_ID VARCHAR2(17) not null,
  SEAL_NO      VARCHAR2(4000)
)
;
alter table ALLSYS.STL_DATA_CONTA_LIST
  add constraint PK_STL_DATA_CONTA_LIST primary key (UCR_CODE, CONTAINER_ID);

prompt
prompt Creating table STL_DATA_HEAD
prompt ============================
prompt
create table ALLSYS.STL_DATA_HEAD
(
  UCR_CODE                  VARCHAR2(35) not null,
  ENTRY_ID                  VARCHAR2(18),
  CREATE_DATE               DATE,
  STEP_ID                   VARCHAR2(3),
  STATUS_CODE               VARCHAR2(32),
  I_E_FLAG                  VARCHAR2(1),
  I_E_PORT                  VARCHAR2(11),
  DESTINATION_CUSTOMS_CODE  VARCHAR2(11),
  TRADE_CO                  VARCHAR2(17),
  TRAF_NAME                 VARCHAR2(35),
  VOYAGE_NO                 VARCHAR2(17),
  BILL_NO                   VARCHAR2(35),
  OUT_PORT_DATE             DATE,
  TRADE_PORT                VARCHAR2(11),
  PACK_NO                   NUMBER(19),
  REL_DATE                  DATE,
  HASH_SIGN                 VARCHAR2(380),
  CUSTOMS_REMARK            VARCHAR2(11),
  CUSTOMS_REMARK_NOTES      VARCHAR2(4000),
  CUSTOMS_REMARK_3          VARCHAR2(11),
  CUSTOMS_REMARK_NOTES_3    VARCHAR2(4000),
  CARRIER_NAME              VARCHAR2(70),
  CONSIGNEE_NAME            VARCHAR2(70),
  CONSIGNOR_NAME            VARCHAR2(70),
  NOTIFYPARTY_NAME          VARCHAR2(70),
  SUBMITTER_NAME            VARCHAR2(70),
  FIRSTARRIVALLOCATION_CODE VARCHAR2(17),
  ARRIVAL_DATETIME          DATE,
  ROUTINGCOUNTRY_CODE       VARCHAR2(300),
  DESTINATION_PORT          VARCHAR2(11),
  UPDATE_DATE               DATE
)
;
alter table ALLSYS.STL_DATA_HEAD
  add constraint PK_STL_DATA_HEAD primary key (UCR_CODE);
create index ALLSYS.IDX_STLDATAHEAD_DESTINATIONCUS on ALLSYS.STL_DATA_HEAD (DESTINATION_CUSTOMS_CODE);
create index ALLSYS.IDX_STLDATAHEAD_ENTRYID on ALLSYS.STL_DATA_HEAD (ENTRY_ID);

prompt
prompt Creating table STL_DATA_TS_LIST
prompt ===============================
prompt
create table ALLSYS.STL_DATA_TS_LIST
(
  UCR_CODE VARCHAR2(35) not null,
  G_NO     NUMBER(19) not null,
  CODE_TS  VARCHAR2(12),
  G_NAME   VARCHAR2(255),
  PACK_NO  NUMBER(19)
)
;
alter table ALLSYS.STL_DATA_TS_LIST
  add constraint PK_STL_DATA_TS_LIST primary key (UCR_CODE, G_NO);

prompt
prompt Creating table STL_REQUEST_CHK
prompt ==============================
prompt
create table ALLSYS.STL_REQUEST_CHK
(
  UCR_CODE                 VARCHAR2(35) not null,
  ENTRY_ID                 VARCHAR2(18),
  I_E_FLAG                 VARCHAR2(1),
  CREATE_DATE              DATE,
  DESTINATION_CUSTOMS_CODE VARCHAR2(11),
  TRADE_CO                 VARCHAR2(17),
  TRAF_NAME                VARCHAR2(35),
  VOYAGE_NO                VARCHAR2(17),
  BILL_NO                  VARCHAR2(35),
  CHK_REQUEST              VARCHAR2(11),
  NOTES                    VARCHAR2(4000),
  CHK_STATUS               VARCHAR2(1),
  CUSTOMS_REMARK           VARCHAR2(11),
  CUSTOMS_REMARK_NOTES     VARCHAR2(4000)
)
;
alter table ALLSYS.STL_REQUEST_CHK
  add constraint PK_STL_REQUEST_CHK primary key (UCR_CODE);
create index ALLSYS.IDX_STLREQUESTCHK_ENTRYID on ALLSYS.STL_REQUEST_CHK (ENTRY_ID);

prompt
prompt Creating table SUM_OP_ID
prompt ========================
prompt
create global temporary table ALLSYS.SUM_OP_ID
(
  OP_ID    VARCHAR2(8),
  OP_NAME  VARCHAR2(16),
  SUMDEL   NUMBER(9),
  SUMCHECK NUMBER(9),
  SUMREL   NUMBER(9),
  SUMEXAM  NUMBER(9)
)
on commit preserve rows;

prompt
prompt Creating table TAR_DEL_LOG
prompt ==========================
prompt
create table ALLSYS.TAR_DEL_LOG
(
  ENTRY_ID           VARCHAR2(18) not null,
  ID_CHK             VARCHAR2(1),
  DUTY_FLAG          VARCHAR2(1),
  TAX_TYPE           VARCHAR2(1),
  TAX_ID             VARCHAR2(2) not null,
  BOOK_NO            VARCHAR2(32),
  DUTYFOR_NO         VARCHAR2(32),
  REAL_TAX           NUMBER(19,4),
  DELAY_DAY          NUMBER(19),
  P_DATE             DATE,
  P_LIMIT            DATE,
  C_DATE             DATE,
  CANCEL_ER          VARCHAR2(8),
  RECHK_ER           VARCHAR2(8),
  SYS_DATE           DATE,
  SUBJECT_CODE       VARCHAR2(10),
  SUBJECT_NAME       VARCHAR2(32),
  SUBJECT_LEVEL      VARCHAR2(16),
  DUTY_FLAG_NOTE     VARCHAR2(1),
  OP_TIME            DATE not null,
  OP_ID              VARCHAR2(8),
  DELAY_MARK         VARCHAR2(1),
  GEN_DATE           DATE,
  BANK_CODE          VARCHAR2(20),
  BANK_ACCOUNT_NAME  VARCHAR2(128),
  PAYER_ACCOUNT_NO   VARCHAR2(32),
  PAYER_ACCOUNT_NAME VARCHAR2(255),
  PAYER_BANK_NAME    VARCHAR2(255),
  PAYER_BANK_CODE    VARCHAR2(20)
)
;
alter table ALLSYS.TAR_DEL_LOG
  add constraint PK_TAR_DEL_LOG primary key (ENTRY_ID, TAX_ID, OP_TIME);

prompt
prompt Creating table TB_PCS
prompt =====================
prompt
create table ALLSYS.TB_PCS
(
  SEQ_NO        NUMBER(9),
  PCS_NO_S      VARCHAR2(13) not null,
  TRADE_NAME    VARCHAR2(255),
  TRADE_CO      VARCHAR2(10),
  G_NAME        VARCHAR2(255),
  G_MODEL       VARCHAR2(255),
  G_NAME_ENG    VARCHAR2(255),
  G_NAME_OTR    VARCHAR2(255),
  PROT_NO       VARCHAR2(20),
  STATUS        VARCHAR2(1),
  G_DESCRIPTION VARCHAR2(2000),
  CODE_TS       VARCHAR2(16),
  NOTE          VARCHAR2(2000),
  AGENT_IC_CODE VARCHAR2(32),
  AGENT_IC_NAME VARCHAR2(255),
  TRADE_IC_CODE VARCHAR2(32),
  TRADE_IC_NAME VARCHAR2(32),
  AGENT_NAME    VARCHAR2(255),
  AGENT_CO      VARCHAR2(32),
  AGENT_TEL     VARCHAR2(20),
  INPUT_DATE    DATE,
  CGAC_CO       VARCHAR2(8),
  VALID_DATE    DATE
)
;
alter table ALLSYS.TB_PCS
  add constraint PK_TB_PCS primary key (PCS_NO_S);

prompt
prompt Creating table TB_PCS_HIS
prompt =========================
prompt
create table ALLSYS.TB_PCS_HIS
(
  SEQ_NO        NUMBER(9),
  PCS_NO_S      VARCHAR2(13) not null,
  TRADE_NAME    VARCHAR2(255),
  TRADE_CO      VARCHAR2(10),
  G_NAME        VARCHAR2(255),
  G_MODEL       VARCHAR2(255),
  G_NAME_ENG    VARCHAR2(255),
  G_NAME_OTR    VARCHAR2(255),
  PROT_NO       VARCHAR2(20),
  STATUS        VARCHAR2(1),
  G_DESCRIPTION VARCHAR2(2000),
  CODE_TS       VARCHAR2(16),
  NOTE          VARCHAR2(2000),
  AGENT_IC_CODE VARCHAR2(32),
  AGENT_IC_NAME VARCHAR2(255),
  TRADE_IC_CODE VARCHAR2(32),
  TRADE_IC_NAME VARCHAR2(32),
  AGENT_NAME    VARCHAR2(255),
  AGENT_CO      VARCHAR2(32),
  AGENT_TEL     VARCHAR2(20),
  INPUT_DATE    DATE,
  CGAC_CO       VARCHAR2(8),
  VALID_DATE    DATE
)
;
alter table ALLSYS.TB_PCS_HIS
  add constraint PK_TB_PCS_HIS primary key (PCS_NO_S);

prompt
prompt Creating table TCS_COUNTER
prompt ==========================
prompt
create table ALLSYS.TCS_COUNTER
(
  TCS_KEY VARCHAR2(64) not null,
  COUNTER NUMBER(19)
)
;
alter table ALLSYS.TCS_COUNTER
  add constraint PK_TCS_COUNTER primary key (TCS_KEY);

prompt
prompt Creating table TCS_DETAIL_HEAD
prompt ==============================
prompt
create table ALLSYS.TCS_DETAIL_HEAD
(
  MSG_ID           VARCHAR2(20),
  ACCOUNT_ORG_CODE VARCHAR2(15) not null,
  IN_TREASURY_DATE DATE not null,
  PACK_NO          VARCHAR2(8) not null,
  CHILD_PACK_NUM   NUMBER(19),
  CURRENT_PACK_NO  NUMBER(19) not null,
  ALL_NUM          NUMBER(19),
  ALL_AMOUNT       NUMBER(19,2),
  CURRENT_NUM      NUMBER(19),
  CURRENT_AMOUNT   NUMBER(19,2),
  VERIFY_MARK      VARCHAR2(1),
  VERIFY_NOTE      VARCHAR2(128),
  MAX_ITEM_NO      NUMBER(19),
  RECEIVE_DATE     DATE
)
;
alter table ALLSYS.TCS_DETAIL_HEAD
  add constraint PK_TCS_DETAIL_HEAD primary key (ACCOUNT_ORG_CODE, IN_TREASURY_DATE, PACK_NO, CURRENT_PACK_NO);
create index ALLSYS.IX_TCSDETAILHEAD_MSGID on ALLSYS.TCS_DETAIL_HEAD (MSG_ID);
create index ALLSYS.IX_TCSDETAILHEAD_RECEIVE on ALLSYS.TCS_DETAIL_HEAD (RECEIVE_DATE, ACCOUNT_ORG_CODE);

prompt
prompt Creating table TCS_DETAIL_LIST
prompt ==============================
prompt
create table ALLSYS.TCS_DETAIL_LIST
(
  ACCOUNT_ORG_CODE    VARCHAR2(15) not null,
  IN_TREASURY_DATE    DATE not null,
  PACK_NO             VARCHAR2(8) not null,
  CURRENT_PACK_NO     NUMBER(19),
  ITEM_NO             NUMBER(19) not null,
  ENTRY_ID            VARCHAR2(18),
  TAX_ID              VARCHAR2(2),
  EXPORT_VOU_TYPE     VARCHAR2(1),
  TREASURY_CODE       VARCHAR2(10),
  BUDGET_LEVEL_CODE   VARCHAR2(1),
  BUDGET_SUBJECT_CODE VARCHAR2(30),
  TRA_AMT             NUMBER(19,2),
  ORIGIN              VARCHAR2(1),
  REMARK1             VARCHAR2(255),
  REMARK2             VARCHAR2(255),
  REMARK3             VARCHAR2(255),
  DEAL_MARK           VARCHAR2(8),
  DEAL_TIME           DATE,
  DEAL_NOTE           VARCHAR2(255)
)
;
alter table ALLSYS.TCS_DETAIL_LIST
  add constraint PK_TCS_DETAIL_LIST primary key (ACCOUNT_ORG_CODE, IN_TREASURY_DATE, PACK_NO, ITEM_NO);

prompt
prompt Creating table TCS_ERROR_LOG
prompt ============================
prompt
create table ALLSYS.TCS_ERROR_LOG
(
  GUID        VARCHAR2(36) not null,
  BIZ_ID      VARCHAR2(64) not null,
  CREATE_TIME DATE not null,
  ERR_ID      VARCHAR2(8),
  NOTE        VARCHAR2(2048)
)
;
alter table ALLSYS.TCS_ERROR_LOG
  add constraint PK_TCS_ERROR_LOG primary key (GUID);
create index ALLSYS.IX_TCSERRORLOG_BIZIDCREATETIME on ALLSYS.TCS_ERROR_LOG (BIZ_ID, CREATE_TIME);

prompt
prompt Creating table TCS_SEND_LOG
prompt ===========================
prompt
create table ALLSYS.TCS_SEND_LOG
(
  TRANS_NO               VARCHAR2(20) not null,
  ENTRY_ID               VARCHAR2(18),
  TAX_ID                 VARCHAR2(2),
  SEND_DATE              DATE,
  ACCOUNT_ORG_CODE       VARCHAR2(15),
  ORIGINAL_SOURCE        VARCHAR2(2),
  GEN_DATE               DATE,
  TAX_TYPE               VARCHAR2(1),
  DELAY_MARK             VARCHAR2(1),
  DUTY_FLAG              VARCHAR2(1),
  P_DATE                 DATE,
  BUDGET_SUBJECT_CODE    VARCHAR2(30),
  TREASURY_CODE          VARCHAR2(10),
  BUDGET_LEVEL_CODE      VARCHAR2(1),
  REAL_TAX               NUMBER(19,2),
  C_DATE                 DATE,
  PAY_MODE               VARCHAR2(1),
  PAYER_BANK_NAME        VARCHAR2(255),
  PAYER_ACCOUNT_NO       VARCHAR2(32),
  REMARK1                VARCHAR2(255),
  REMARK2                VARCHAR2(255),
  REMARK3                VARCHAR2(255),
  TREASURY_RESPONSE_DATE DATE,
  RESPONSE_OP_DATE       DATE,
  TREASURY_RESULT        VARCHAR2(10),
  TREASURY_ADD_WORD      VARCHAR2(255)
)
;
alter table ALLSYS.TCS_SEND_LOG
  add constraint PK_TCS_SEND_LOG primary key (TRANS_NO);
create index ALLSYS.IX_TCSSENDLOG_ENTRYID on ALLSYS.TCS_SEND_LOG (ENTRY_ID, TAX_ID);
create index ALLSYS.IX_TCSSENDLOG_SENDDATE on ALLSYS.TCS_SEND_LOG (SEND_DATE, ACCOUNT_ORG_CODE);

prompt
prompt Creating table TCS_STATISTIC_REPORT
prompt ===================================
prompt
create table ALLSYS.TCS_STATISTIC_REPORT
(
  MSG_ID              VARCHAR2(20),
  ACCOUNT_ORG_CODE    VARCHAR2(15) not null,
  REPORT_DATE         DATE not null,
  SPECIAL_PERIOD_FLAG VARCHAR2(1) not null,
  TREASURY_CODE       VARCHAR2(10) not null,
  BUDGET_LEVEL_CODE   VARCHAR2(1) not null,
  BUDGET_SUBJECT_CODE VARCHAR2(30) not null,
  BUDGET_SUBJECT_NAME VARCHAR2(128),
  DAY_AMOUNT          NUMBER(19,2),
  TENDAY_AMOUNT       NUMBER(19,2),
  MONTH_AMOUNT        NUMBER(19,2),
  QUARTER_AMOUNT      NUMBER(19,2),
  YEAR_AMOUNT         NUMBER(19,2),
  RECEIVE_DATE        DATE
)
;
alter table ALLSYS.TCS_STATISTIC_REPORT
  add constraint PK_TCS_STATISTIC_REPORT primary key (ACCOUNT_ORG_CODE, REPORT_DATE, SPECIAL_PERIOD_FLAG, TREASURY_CODE, BUDGET_LEVEL_CODE, BUDGET_SUBJECT_CODE);

prompt
prompt Creating table TEMP_CZW
prompt =======================
prompt
create table ALLSYS.TEMP_CZW
(
  ENTRY_ID VARCHAR2(18)
)
;

prompt
prompt Creating table TEMP_CZW1
prompt ========================
prompt
create table ALLSYS.TEMP_CZW1
(
  ENTRY_ID VARCHAR2(18)
)
;

prompt
prompt Creating table TEMP_CZW2
prompt ========================
prompt
create table ALLSYS.TEMP_CZW2
(
  ENTRY_ID VARCHAR2(18)
)
;

prompt
prompt Creating table TEMP_CZWTJ
prompt =========================
prompt
create table ALLSYS.TEMP_CZWTJ
(
  ENTRY_ID VARCHAR2(18)
)
;

prompt
prompt Creating table TEMP_CZWTJ1
prompt ==========================
prompt
create table ALLSYS.TEMP_CZWTJ1
(
  ENTRY_ID VARCHAR2(18)
)
;

prompt
prompt Creating table TEMP_CZWTJ2
prompt ==========================
prompt
create table ALLSYS.TEMP_CZWTJ2
(
  ENTRY_ID VARCHAR2(18)
)
;

prompt
prompt Creating table TEMP_CZWTJ3
prompt ==========================
prompt
create table ALLSYS.TEMP_CZWTJ3
(
  ENTRY_ID VARCHAR2(18)
)
;

prompt
prompt Creating table TEMP_DB
prompt ======================
prompt
create table ALLSYS.TEMP_DB
(
  PRE_NO       VARCHAR2(16) not null,
  PROCESS_STEP VARCHAR2(1) not null
)
;
alter table ALLSYS.TEMP_DB
  add constraint PK_TEMP_DB primary key (PRE_NO, PROCESS_STEP);

prompt
prompt Creating table TEMP_DEL_EMS_CONSUME
prompt ===================================
prompt
create table ALLSYS.TEMP_DEL_EMS_CONSUME
(
  RID ROWID not null
)
;
alter table ALLSYS.TEMP_DEL_EMS_CONSUME
  add constraint PK_TEMP_DEL_EMS_CONSUME primary key (RID);

prompt
prompt Creating table TEMP_DEL_EMS_HEAD
prompt ================================
prompt
create table ALLSYS.TEMP_DEL_EMS_HEAD
(
  EMS_NO VARCHAR2(12) not null
)
;
alter table ALLSYS.TEMP_DEL_EMS_HEAD
  add constraint PK_TEMP_DEL_EMS_HEAD primary key (EMS_NO);

prompt
prompt Creating table TEMP_PAGE_RANGE
prompt ==============================
prompt
create table ALLSYS.TEMP_PAGE_RANGE
(
  PR_KEY    VARCHAR2(255) not null,
  PR_DETAIL VARCHAR2(255) not null
)
;
alter table ALLSYS.TEMP_PAGE_RANGE
  add constraint PK_TEMP_PAGE_RANGE primary key (PR_KEY, PR_DETAIL);

prompt
prompt Creating table TEMP_STACHKRATE
prompt ==============================
prompt
create table ALLSYS.TEMP_STACHKRATE
(
  CUST_CODE     VARCHAR2(4),
  IM_CHKCOUNT   NUMBER(9),
  IM_TOTALCOUNT NUMBER(9),
  EX_CHKCOUNT   NUMBER(9),
  EX_TOTALCOUNT NUMBER(9)
)
;

prompt
prompt Creating table TEMP_STADECLS
prompt ============================
prompt
create table ALLSYS.TEMP_STADECLS
(
  CUST_CODE  VARCHAR2(4),
  APPLY      NUMBER(9),
  IMDECLS    NUMBER(9),
  IMCHKDECLS NUMBER(9),
  EXDECLS    NUMBER(9),
  EXCHKDECLS NUMBER(9)
)
;

prompt
prompt Creating table TEMP_STARPT1
prompt ===========================
prompt
create table ALLSYS.TEMP_STARPT1
(
  CUST_CODE VARCHAR2(2),
  TRAF_WAY  VARCHAR2(1),
  DECLS     NUMBER(9),
  AMOUNT    NUMBER(9),
  WEIGHT    NUMBER(19),
  PRICE     NUMBER(19,4)
)
;

prompt
prompt Creating table TEMP_STARPT2
prompt ===========================
prompt
create table ALLSYS.TEMP_STARPT2
(
  CUST_CODE  VARCHAR2(4),
  TRADE_MODE VARCHAR2(4),
  DECLS      NUMBER(9),
  AMOUNT     NUMBER(19),
  WEIGHT     NUMBER(19),
  PRICE      NUMBER(19,4)
)
;

prompt
prompt Creating table TEMP_STARPT3
prompt ===========================
prompt
create table ALLSYS.TEMP_STARPT3
(
  CODE_TS    VARCHAR2(16),
  GOODS_NAME VARCHAR2(255),
  CUST_CODE  VARCHAR2(4),
  DECLS      NUMBER(9),
  AMOUNT     NUMBER(9),
  WEIGHT     NUMBER(19),
  PRICE      NUMBER(19)
)
;

prompt
prompt Creating table TEMP_STARPT4
prompt ===========================
prompt
create table ALLSYS.TEMP_STARPT4
(
  CUST_CODE VARCHAR2(4),
  IMEX      CHAR(1),
  INOUT     CHAR(1),
  DECLS     NUMBER(9),
  AMOUNT    NUMBER(9),
  WEIGHT    NUMBER(19),
  PRICE     NUMBER(19)
)
;

prompt
prompt Creating table TEP_COMPANY
prompt ==========================
prompt
create table ALLSYS.TEP_COMPANY
(
  PRE_TEP_NO       VARCHAR2(20),
  TEP_NO           VARCHAR2(21) not null,
  TEP_TYPE         VARCHAR2(1),
  APPLY_DATE       DATE,
  RECORD_DATE      DATE,
  PLATFORM_NAME    VARCHAR2(7),
  CUSTOM_CODE      VARCHAR2(4),
  TRADE_CODE       VARCHAR2(32),
  ORG_CODE         VARCHAR2(9),
  AGREE_NO         VARCHAR2(26),
  LINKMAN          VARCHAR2(64),
  ADDRESS          VARCHAR2(255),
  PHONE            VARCHAR2(32),
  BANK_NAME        VARCHAR2(255),
  APPLY_STATE      VARCHAR2(1),
  BANK_VOUCH_ID    VARCHAR2(32),
  BANK_ID          VARCHAR2(7),
  VOUCH_BANK_NAME  VARCHAR2(255),
  VOUCH_MONEY      NUMBER(21,2),
  VOUCH_BEGIN_DATE DATE,
  VOUCH_END_DATE   DATE,
  AUDIT_STATE      VARCHAR2(1),
  AUDIT_ER         VARCHAR2(8),
  AUDIT_NOTE       VARCHAR2(255),
  AUDIT_DATE       DATE,
  SPT1             VARCHAR2(255),
  SPT2             VARCHAR2(255),
  SPT3             VARCHAR2(255)
)
;
alter table ALLSYS.TEP_COMPANY
  add constraint PK_TEP_COMPANY primary key (TEP_NO);
create index ALLSYS.IX_TEPCOMPANY_TRADECODE on ALLSYS.TEP_COMPANY (TRADE_CODE);

prompt
prompt Creating table TEP_DEBIT_REC_REQUEST
prompt ====================================
prompt
create table ALLSYS.TEP_DEBIT_REC_REQUEST
(
  REQUEST_DATE CHAR(10) not null,
  TRANS_NO     CHAR(27) not null,
  REQUEST_TIME DATE not null,
  PAY_STATUS   CHAR(2),
  ENTRY_ID     CHAR(18),
  DUTY_FLAG    CHAR(1),
  TAX_TYPE     CHAR(1),
  TAX_ID       CHAR(2),
  GUA_ID       CHAR(18),
  AMOUNT       NUMBER(19,2),
  P_LIMIT      DATE,
  MEMO         VARCHAR2(255)
)
;
comment on table ALLSYS.TEP_DEBIT_REC_REQUEST
  is '海关实扣对帐请求';
comment on column ALLSYS.TEP_DEBIT_REC_REQUEST.REQUEST_DATE
  is '请求日期 请求日期(YYYY-MM-DD)';
comment on column ALLSYS.TEP_DEBIT_REC_REQUEST.TRANS_NO
  is '交易流水号 原预扣交易流水号';
comment on column ALLSYS.TEP_DEBIT_REC_REQUEST.REQUEST_TIME
  is '请求时间 请求时间';
comment on column ALLSYS.TEP_DEBIT_REC_REQUEST.PAY_STATUS
  is '支付状态 20:未收到实扣成功回执的电子支付交易；30:未收到实扣响应回执的电子担保交易；40:已担保到期的电子担保交易';
comment on column ALLSYS.TEP_DEBIT_REC_REQUEST.ENTRY_ID
  is '海关编号 格式参见海关编号规则';
comment on column ALLSYS.TEP_DEBIT_REC_REQUEST.DUTY_FLAG
  is '退补税标志 “-”:正常“/”:补税“#”:退税“D”:删除';
comment on column ALLSYS.TEP_DEBIT_REC_REQUEST.TAX_TYPE
  is '税种 根据“预算科目名称”生成相应的代码';
comment on column ALLSYS.TEP_DEBIT_REC_REQUEST.TAX_ID
  is '税单序号 ';
comment on column ALLSYS.TEP_DEBIT_REC_REQUEST.GUA_ID
  is '保函文号 保证金特有，保证金的唯一标示';
comment on column ALLSYS.TEP_DEBIT_REC_REQUEST.AMOUNT
  is '支付金额 原支付金额';
comment on column ALLSYS.TEP_DEBIT_REC_REQUEST.P_LIMIT
  is '担保到期日 担保实扣对帐时必填';
comment on column ALLSYS.TEP_DEBIT_REC_REQUEST.MEMO
  is '备注 ';
alter table ALLSYS.TEP_DEBIT_REC_REQUEST
  add constraint PK_TEP_DEBIT_REC_REQUEST primary key (REQUEST_DATE, TRANS_NO);

prompt
prompt Creating table TEP_DEBIT_REC_RESPONSE
prompt =====================================
prompt
create table ALLSYS.TEP_DEBIT_REC_RESPONSE
(
  TRANS_NO      CHAR(27) not null,
  RESPONSE_DATE CHAR(10) not null,
  RESPONSE_TIME DATE not null,
  REC_CODE      CHAR(6) not null,
  MEMO          VARCHAR2(255)
)
;
comment on table ALLSYS.TEP_DEBIT_REC_RESPONSE
  is '海关实扣对帐应答';
comment on column ALLSYS.TEP_DEBIT_REC_RESPONSE.TRANS_NO
  is '交易流水号 原预扣交易流水号';
comment on column ALLSYS.TEP_DEBIT_REC_RESPONSE.RESPONSE_DATE
  is '应答日期 YYYY-MM-DD';
comment on column ALLSYS.TEP_DEBIT_REC_RESPONSE.RESPONSE_TIME
  is '应答时间 ';
comment on column ALLSYS.TEP_DEBIT_REC_RESPONSE.REC_CODE
  is '对帐返回代码 ';
comment on column ALLSYS.TEP_DEBIT_REC_RESPONSE.MEMO
  is '备注 ';
alter table ALLSYS.TEP_DEBIT_REC_RESPONSE
  add constraint PK_TEP_DEBIT_REC_RESPONSE primary key (TRANS_NO, RESPONSE_DATE);

prompt
prompt Creating table TEP_EPLAT_RESPONSE
prompt =================================
prompt
create table ALLSYS.TEP_EPLAT_RESPONSE
(
  MSG_TYPE        VARCHAR2(10) not null,
  CREATE_DATE     DATE not null,
  CUSTOMS_CODE    VARCHAR2(10),
  RETURN_CODE     VARCHAR2(10),
  ERR_RETURN_CODE VARCHAR2(10),
  ERR_RETURN_INFO VARCHAR2(255),
  SPT1            VARCHAR2(255)
)
;
alter table ALLSYS.TEP_EPLAT_RESPONSE
  add constraint PK_TEP_EPLAT_RESPONSE primary key (MSG_TYPE, CREATE_DATE);

prompt
prompt Creating table TEP_ERR_LOG
prompt ==========================
prompt
create table ALLSYS.TEP_ERR_LOG
(
  ERR_NO      VARCHAR2(27) not null,
  CREATE_DATE DATE not null,
  TEP_TYPE    VARCHAR2(1),
  STEP_ID     VARCHAR2(8),
  NOTE        VARCHAR2(512)
)
;
alter table ALLSYS.TEP_ERR_LOG
  add constraint PK_TEP_ERR_LOG primary key (ERR_NO, CREATE_DATE);

prompt
prompt Creating table TEP_LOG
prompt ======================
prompt
create table ALLSYS.TEP_LOG
(
  STEP_ID         VARCHAR2(8) not null,
  BIZ_ID          VARCHAR2(32) not null,
  CREATE_DATE     DATE not null,
  OPER_ID         VARCHAR2(32),
  OPER_DECRIPTION VARCHAR2(2048),
  NOTE_S          VARCHAR2(255)
)
;
alter table ALLSYS.TEP_LOG
  add constraint PK_TEP_LOG primary key (STEP_ID, BIZ_ID, CREATE_DATE);

prompt
prompt Creating table TEP_PAY_LOG
prompt ==========================
prompt
create table ALLSYS.TEP_PAY_LOG
(
  TRANS_NO              VARCHAR2(32) not null,
  EPLAT_CODE            VARCHAR2(10) not null,
  CUSTOMS_CODE          VARCHAR2(4),
  TAX_TYPE              VARCHAR2(1),
  ENTRY_ID              VARCHAR2(18),
  TAX_ID                VARCHAR2(2),
  GEN_DATE              DATE,
  GUA_ID                VARCHAR2(18),
  DUTY_FLAG             VARCHAR2(1),
  DELAY_MARK            VARCHAR2(1),
  REAL_TAX              NUMBER(19,2),
  EXE_MARK              VARCHAR2(2),
  PAY_MODE              VARCHAR2(1),
  PAY_DATE              DATE,
  PAY_OP_DATE           DATE,
  PAYER_CODE            VARCHAR2(32),
  PAYER_NAME            VARCHAR2(255),
  PAYER_ACCOUNT_NO      VARCHAR2(32),
  PAYER_ACCOUNT_NAME    VARCHAR2(255),
  PAYER_BANK_NAME       VARCHAR2(255),
  PAYER_BANK_CODE       VARCHAR2(20),
  PAY_SIGNER_INFO       VARCHAR2(64),
  PAY_SIGN              VARCHAR2(255),
  PAY_RETURN_CODE       VARCHAR2(10),
  PAY_ERR_RETURN_CODE   VARCHAR2(10),
  PAY_ERR_RETRUN_INFO   VARCHAR2(255),
  CANCEL_PAY_DATE       DATE,
  DELETE_DATE           DATE,
  DEBIT_ORDER_DATE      DATE,
  DEBIT_REPONSE_DATE    DATE,
  DEBIT_REPONSE_OP_DATE DATE,
  DEBIT_REPONSE_OP_INFO VARCHAR2(255),
  DEBIT_DATE            DATE,
  DEBIT_OP_DATE         DATE,
  DEBIT_OP_INFO         VARCHAR2(512),
  DEBIT_RETURN_CODE     VARCHAR2(10),
  DEBIT_ERR_RETURN_CODE VARCHAR2(10),
  DEBIT_ERR_RETURN_INFO VARCHAR2(255),
  DEBIT_SIGNER_INFO     VARCHAR2(64),
  DEBIT_SIGN            VARCHAR2(255),
  BATCH_PRINT_DATE      DATE,
  REC_DATE              DATE,
  P_LIMIT               DATE,
  LAST_UPDATE_DATE      DATE
)
;
alter table ALLSYS.TEP_PAY_LOG
  add constraint PK_TEP_PAY_LOG primary key (TRANS_NO, EPLAT_CODE);
create index ALLSYS.IX_TEPPAYLOG_ENTRYID_TAXID on ALLSYS.TEP_PAY_LOG (ENTRY_ID, TAX_ID);
create index ALLSYS.IX_TEPPAYLOG_GUAID on ALLSYS.TEP_PAY_LOG (GUA_ID);
create index ALLSYS.IX_TEPPAYLOG_PRINT on ALLSYS.TEP_PAY_LOG (CUSTOMS_CODE, TAX_TYPE, PAYER_BANK_CODE, REC_DATE, BATCH_PRINT_DATE);
create index ALLSYS.IX_TEPPAYLOG_REC on ALLSYS.TEP_PAY_LOG (DEBIT_ORDER_DATE, REC_DATE, P_LIMIT);

prompt
prompt Creating table TEP_PAY_REC_REQUEST
prompt ==================================
prompt
create table ALLSYS.TEP_PAY_REC_REQUEST
(
  REQUEST_DATE CHAR(10) not null,
  TRANS_NO     CHAR(27) not null,
  REQUEST_TIME DATE not null,
  PAY_STATUS   CHAR(2),
  ENTRY_ID     CHAR(18),
  DUTY_FLAG    CHAR(1),
  TAX_TYPE     CHAR(1),
  TAX_ID       CHAR(2),
  GUA_ID       CHAR(18),
  AMOUNT       NUMBER(19,2),
  MEMO         VARCHAR2(255)
)
;
comment on table ALLSYS.TEP_PAY_REC_REQUEST
  is '支付平台预扣对帐请求';
comment on column ALLSYS.TEP_PAY_REC_REQUEST.REQUEST_DATE
  is '请求日期 YYYY-MM-DD';
comment on column ALLSYS.TEP_PAY_REC_REQUEST.TRANS_NO
  is '交易流水号 原预扣交易流水号';
comment on column ALLSYS.TEP_PAY_REC_REQUEST.REQUEST_TIME
  is '请求时间 ';
comment on column ALLSYS.TEP_PAY_REC_REQUEST.PAY_STATUS
  is '支付状态 10:预扣交易对账请求';
comment on column ALLSYS.TEP_PAY_REC_REQUEST.ENTRY_ID
  is '海关编号 格式参见海关编号规则';
comment on column ALLSYS.TEP_PAY_REC_REQUEST.DUTY_FLAG
  is '退补税标志 “-”:正常
“/”:补税
“#”:退税
“D”:删除';
comment on column ALLSYS.TEP_PAY_REC_REQUEST.TAX_TYPE
  is '税种 根据“预算科目名称”生成相应的代码';
comment on column ALLSYS.TEP_PAY_REC_REQUEST.TAX_ID
  is '税单序号 ';
comment on column ALLSYS.TEP_PAY_REC_REQUEST.GUA_ID
  is '保函文号 保证金特有，保证金的唯一标示';
comment on column ALLSYS.TEP_PAY_REC_REQUEST.AMOUNT
  is '支付金额 原支付金额';
comment on column ALLSYS.TEP_PAY_REC_REQUEST.MEMO
  is '备注';
alter table ALLSYS.TEP_PAY_REC_REQUEST
  add constraint PK_TEP_PAY_REC_REQUEST primary key (REQUEST_DATE, TRANS_NO);

prompt
prompt Creating table TEP_PAY_REC_RESPONSE
prompt ===================================
prompt
create table ALLSYS.TEP_PAY_REC_RESPONSE
(
  RESPONSE_DATE CHAR(10) not null,
  TRANS_NO      CHAR(27) not null,
  RESPONSE_TIME DATE not null,
  REC_CODE      CHAR(6) not null,
  MEMO          VARCHAR2(255)
)
;
comment on table ALLSYS.TEP_PAY_REC_RESPONSE
  is '支付平台预扣对帐应答';
comment on column ALLSYS.TEP_PAY_REC_RESPONSE.RESPONSE_DATE
  is '应答日期';
comment on column ALLSYS.TEP_PAY_REC_RESPONSE.TRANS_NO
  is '交易流水号 原预扣交易流水号';
comment on column ALLSYS.TEP_PAY_REC_RESPONSE.RESPONSE_TIME
  is '请求时间 请求时间';
comment on column ALLSYS.TEP_PAY_REC_RESPONSE.REC_CODE
  is '对帐返回代码 ';
comment on column ALLSYS.TEP_PAY_REC_RESPONSE.MEMO
  is '备注 ';
alter table ALLSYS.TEP_PAY_REC_RESPONSE
  add constraint PK_TEP_PAY_REC_RESPONSE primary key (RESPONSE_DATE, TRANS_NO);

prompt
prompt Creating table TEP_REC_LOG
prompt ==========================
prompt
create table ALLSYS.TEP_REC_LOG
(
  REC_DATE    CHAR(10) not null,
  TRANS_NO    CHAR(27) not null,
  REC_TIME    DATE not null,
  REC_SIGN    CHAR(1),
  REC_TYPE    CHAR(1) not null,
  ENTRY_ID    VARCHAR2(50),
  TAX_ID      CHAR(2),
  TAX_TYPE    CHAR(1),
  GUA_ID      CHAR(18),
  PAY_STATUS  CHAR(2),
  DUTY_FLAG   CHAR(1),
  AMOUNT      NUMBER(19,2),
  P_LIMIT     DATE,
  RESULT_NO   CHAR(6),
  DESCRIPTION VARCHAR2(255)
)
;
comment on table ALLSYS.TEP_REC_LOG
  is '对账日志';
comment on column ALLSYS.TEP_REC_LOG.REC_DATE
  is '对账日期 ';
comment on column ALLSYS.TEP_REC_LOG.TRANS_NO
  is '交易编号 交易流水号';
comment on column ALLSYS.TEP_REC_LOG.REC_TIME
  is '对账时间 ';
comment on column ALLSYS.TEP_REC_LOG.REC_SIGN
  is '对账标记 0-成功；1-对账失败；2-人工补对账';
comment on column ALLSYS.TEP_REC_LOG.REC_TYPE
  is '对账类型 1-预扣；2-实扣';
comment on column ALLSYS.TEP_REC_LOG.ENTRY_ID
  is '海关单证编号 ';
comment on column ALLSYS.TEP_REC_LOG.TAX_ID
  is '税单小号 ';
comment on column ALLSYS.TEP_REC_LOG.TAX_TYPE
  is '税种 根据“预算科目名称”生成相应的代码';
comment on column ALLSYS.TEP_REC_LOG.GUA_ID
  is '保函文号 保证金特有，保证金的唯一标示';
comment on column ALLSYS.TEP_REC_LOG.PAY_STATUS
  is '支付状态
20:未收到实扣成功通知普通实扣交
30未收到实扣响应回执担保实扣交易
40：担保到期的担保实扣交易';
comment on column ALLSYS.TEP_REC_LOG.DUTY_FLAG
  is '退补税标志
 “-”:正常
“/”:补税
“#”:退税
“D”:删除';
comment on column ALLSYS.TEP_REC_LOG.AMOUNT
  is '支付金额 原支付金额';
comment on column ALLSYS.TEP_REC_LOG.P_LIMIT
  is '担保到期日 担保实扣对帐时必填';
comment on column ALLSYS.TEP_REC_LOG.RESULT_NO
  is '对账结果编码 520000-状态正常；520001-预扣撤销；529999-其它错误';
comment on column ALLSYS.TEP_REC_LOG.DESCRIPTION
  is '对账结果描述 ';
alter table ALLSYS.TEP_REC_LOG
  add constraint PK_TEP_REC_LOG primary key (REC_DATE, REC_TYPE, TRANS_NO);
create index ALLSYS.IX_TEPRECLOG_RECDATE_RESULTNO on ALLSYS.TEP_REC_LOG (REC_DATE, RESULT_NO);

prompt
prompt Creating table TEP_SEQ
prompt ======================
prompt
create table ALLSYS.TEP_SEQ
(
  TEP_KEY VARCHAR2(32) not null,
  TEP_SEQ NUMBER(19)
)
;
alter table ALLSYS.TEP_SEQ
  add constraint PK_TEP_SEQ primary key (TEP_KEY);

prompt
prompt Creating table TEP_STATUS_QUERY
prompt ===============================
prompt
create table ALLSYS.TEP_STATUS_QUERY
(
  TRANS_NO     VARCHAR2(27) not null,
  SENDER_ID    VARCHAR2(7) not null,
  DEAL_TIME    DATE not null,
  TRANS_STATUS VARCHAR2(10),
  SENDT_FLAG   VARCHAR2(1),
  RESERVE      VARCHAR2(128)
)
;
alter table ALLSYS.TEP_STATUS_QUERY
  add constraint PK_TEP_STATUS_QUERY primary key (TRANS_NO, SENDER_ID, DEAL_TIME);

prompt
prompt Creating table TEP_VOUCHER_REC_LIST
prompt ===================================
prompt
create table ALLSYS.TEP_VOUCHER_REC_LIST
(
  VOUCHER_RECEIVABLE_SEQ_NO VARCHAR2(27) not null,
  VOUCHER_PRODUCE_TIME      DATE,
  CUSTOMS_CODE              CHAR(4),
  CUSTOMS_NAME              VARCHAR2(255)
)
;
comment on table ALLSYS.TEP_VOUCHER_REC_LIST
  is '海关应收清单';
comment on column ALLSYS.TEP_VOUCHER_REC_LIST.VOUCHER_RECEIVABLE_SEQ_NO
  is '清单流水号 前7位为支付平台代码';
comment on column ALLSYS.TEP_VOUCHER_REC_LIST.VOUCHER_PRODUCE_TIME
  is '清单生成时间 ';
comment on column ALLSYS.TEP_VOUCHER_REC_LIST.CUSTOMS_CODE
  is '直属关区代码 ';
comment on column ALLSYS.TEP_VOUCHER_REC_LIST.CUSTOMS_NAME
  is '直属关区名称 ';
alter table ALLSYS.TEP_VOUCHER_REC_LIST
  add constraint PK_TEP_VOUCHER_REC_LIST primary key (VOUCHER_RECEIVABLE_SEQ_NO);
create index ALLSYS.IX_CUSTOMSCODE on ALLSYS.TEP_VOUCHER_REC_LIST (CUSTOMS_CODE);

prompt
prompt Creating table TEP_VOUCHER_REC_LIST_DETAIL
prompt ==========================================
prompt
create table ALLSYS.TEP_VOUCHER_REC_LIST_DETAIL
(
  VOUCHER_RECEIVABLE_SEQ_NO VARCHAR2(27) not null,
  BANK_CODE                 VARCHAR2(7) not null,
  PAYEE_BANK_ACCOUNT        VARCHAR2(32) not null,
  PAYEE_CODE                VARCHAR2(4) not null,
  PAYEE_BANK_NAME           VARCHAR2(255),
  PAYEE_BRANCH_CODE         VARCHAR2(12),
  PAYEE_BANK_ACCOUNT_NAME   VARCHAR2(255)
)
;
comment on table ALLSYS.TEP_VOUCHER_REC_LIST_DETAIL
  is '海关应收清单明细';
comment on column ALLSYS.TEP_VOUCHER_REC_LIST_DETAIL.VOUCHER_RECEIVABLE_SEQ_NO
  is '清单流水号 前7位为支付平台代码';
comment on column ALLSYS.TEP_VOUCHER_REC_LIST_DETAIL.BANK_CODE
  is '收款行代码 ';
comment on column ALLSYS.TEP_VOUCHER_REC_LIST_DETAIL.PAYEE_BANK_ACCOUNT
  is '收款账号 ';
comment on column ALLSYS.TEP_VOUCHER_REC_LIST_DETAIL.PAYEE_CODE
  is '经办部门 通常是海关关区代码';
comment on column ALLSYS.TEP_VOUCHER_REC_LIST_DETAIL.PAYEE_BANK_NAME
  is '收款行名称 ';
comment on column ALLSYS.TEP_VOUCHER_REC_LIST_DETAIL.PAYEE_BRANCH_CODE
  is '收款行联行号 ';
comment on column ALLSYS.TEP_VOUCHER_REC_LIST_DETAIL.PAYEE_BANK_ACCOUNT_NAME
  is '收款账号名称 ';
alter table ALLSYS.TEP_VOUCHER_REC_LIST_DETAIL
  add constraint PK_TEP_VOUCHER_REC_LIST_DETAIL primary key (VOUCHER_RECEIVABLE_SEQ_NO, PAYEE_CODE, BANK_CODE, PAYEE_BANK_ACCOUNT);
create index ALLSYS.IX_PAYEEBANKACCOUNT on ALLSYS.TEP_VOUCHER_REC_LIST_DETAIL (PAYEE_BANK_ACCOUNT);
create index ALLSYS.IX_PAYEEBRANCHCODE on ALLSYS.TEP_VOUCHER_REC_LIST_DETAIL (PAYEE_BRANCH_CODE);

prompt
prompt Creating table TEP_VOUCHER_REC_PAGE_LIST
prompt ========================================
prompt
create table ALLSYS.TEP_VOUCHER_REC_PAGE_LIST
(
  VOUCHER_RECEIVABLE_SEQ_NO VARCHAR2(27) not null,
  BANK_CODE                 VARCHAR2(7) not null,
  PAYEE_BANK_ACCOUNT        VARCHAR2(32) not null,
  PAYER_CONGREG_BK_ID       CHAR(7),
  PAYER_CONGREG_BK_NAME     VARCHAR2(255),
  PAGE_NO                   NUMBER(4) not null,
  PAGE_NAME                 VARCHAR2(26) not null,
  PAGE_OBJECT               VARCHAR2(3000),
  PAYEE_CODE                VARCHAR2(4) not null
)
;
comment on table ALLSYS.TEP_VOUCHER_REC_PAGE_LIST
  is '海关应收清单分页列表';
comment on column ALLSYS.TEP_VOUCHER_REC_PAGE_LIST.VOUCHER_RECEIVABLE_SEQ_NO
  is '清单流水号 前7位为支付平台代码';
comment on column ALLSYS.TEP_VOUCHER_REC_PAGE_LIST.BANK_CODE
  is '收款行代码 ';
comment on column ALLSYS.TEP_VOUCHER_REC_PAGE_LIST.PAYEE_BANK_ACCOUNT
  is '收款账号 ';
comment on column ALLSYS.TEP_VOUCHER_REC_PAGE_LIST.PAYER_CONGREG_BK_ID
  is '付款银行总行代码 ';
comment on column ALLSYS.TEP_VOUCHER_REC_PAGE_LIST.PAYER_CONGREG_BK_NAME
  is '付款银行名称 ';
comment on column ALLSYS.TEP_VOUCHER_REC_PAGE_LIST.PAGE_NO
  is '页号 ';
comment on column ALLSYS.TEP_VOUCHER_REC_PAGE_LIST.PAGE_NAME
  is '页名 CBL+4位关关区代码+1位税/费种类+8位日期+8位流水号+.0';
comment on column ALLSYS.TEP_VOUCHER_REC_PAGE_LIST.PAGE_OBJECT
  is '页内容 ';
comment on column ALLSYS.TEP_VOUCHER_REC_PAGE_LIST.PAYEE_CODE
  is '经办部门 通常是海关关区代码';
alter table ALLSYS.TEP_VOUCHER_REC_PAGE_LIST
  add constraint PK_TEP_VOUCHER_REC_PAGE_LIST primary key (VOUCHER_RECEIVABLE_SEQ_NO, PAYEE_CODE, BANK_CODE, PAYEE_BANK_ACCOUNT, PAGE_NAME, PAGE_NO);

prompt
prompt Creating table TMP_EMS_CONSUME
prompt ==============================
prompt
create table ALLSYS.TMP_EMS_CONSUME
(
  EMS_NO       VARCHAR2(12) not null,
  EXG_NO       NUMBER(19) not null,
  EXG_VERSION  VARCHAR2(32) not null,
  IMG_NO       NUMBER(19) not null,
  MODIFY_TIMES NUMBER(19) not null,
  DEC_CM       NUMBER(19,9),
  DEC_DM       NUMBER(19,9),
  OTHER_CM     NUMBER(19,9),
  OTHER_DM     NUMBER(19,9),
  CM_MARK      VARCHAR2(1),
  PRODUCT_MARK VARCHAR2(10),
  PRODUCT_TYPE VARCHAR2(1),
  MODIFY_MARK  VARCHAR2(1),
  CONTROL_MARK VARCHAR2(1),
  NOTE         VARCHAR2(10),
  ETL_MARK     VARCHAR2(1)
)
;
alter table ALLSYS.TMP_EMS_CONSUME
  add constraint PK_TMP_EMS_CONSUME primary key (EMS_NO, EXG_NO, EXG_VERSION, IMG_NO);

prompt
prompt Creating table TMP_EMS_DCR_ENT
prompt ==============================
prompt
create table ALLSYS.TMP_EMS_DCR_ENT
(
  EMS_NO         VARCHAR2(12) not null,
  DCR_TIMES      NUMBER(19) not null,
  ENTRY_ID       VARCHAR2(18) not null,
  MASTER_CUSTOMS VARCHAR2(4),
  I_E_FLAG       VARCHAR2(1),
  ITEMS_NUM      NUMBER(19),
  DECLARE_DATE   DATE,
  I_E_DATE       DATE,
  DU_CODE        VARCHAR2(2),
  ENT_MARK       VARCHAR2(1),
  NOTE           VARCHAR2(255),
  MODIFY_MARK    VARCHAR2(1)
)
;
alter table ALLSYS.TMP_EMS_DCR_ENT
  add constraint PK_TMP_EMS_DCR_ENT primary key (EMS_NO, DCR_TIMES, ENTRY_ID);

prompt
prompt Creating table TMP_EMS_HEAD
prompt ===========================
prompt
create table ALLSYS.TMP_EMS_HEAD
(
  EMS_NO            VARCHAR2(12) not null,
  MODIFY_TIMES      NUMBER(19) not null,
  PRE_EMS_NO        VARCHAR2(12),
  COP_EMS_NO        VARCHAR2(20),
  TRADE_CODE        VARCHAR2(10),
  TRADE_NAME        VARCHAR2(255),
  HOUSE_NO          VARCHAR2(12),
  OWNER_CODE        VARCHAR2(10),
  OWNER_NAME        VARCHAR2(255),
  OWNER_TYPE        VARCHAR2(1),
  DECLARE_ER_TYPE   VARCHAR2(1),
  DECLARE_CODE      VARCHAR2(10),
  DECLARE_NAME      VARCHAR2(255),
  DISTRICT_CODE     VARCHAR2(5),
  ADDRESS           VARCHAR2(255),
  PHONE             VARCHAR2(20),
  EMS_TYPE          VARCHAR2(1),
  DECLARE_TYPE      VARCHAR2(1),
  APPEND_TYPE       VARCHAR2(1),
  INVEST_MODE       VARCHAR2(1),
  TRADE_MODE        VARCHAR2(4),
  BEGIN_DATE        DATE,
  END_DATE          DATE,
  IMG_AMOUNT        NUMBER(19,5),
  EXG_AMOUNT        NUMBER(19,5),
  IMG_WEIGHT        NUMBER(19,5),
  EXG_WEIGHT        NUMBER(19,5),
  STORE_VOL         NUMBER(19,5),
  STORE_AREA        NUMBER(19,5),
  IMG_ITEMS         NUMBER(19),
  EXG_ITEMS         NUMBER(19),
  EMS_APPR_NO       VARCHAR2(40),
  LICENSE_NO        VARCHAR2(20),
  LAST_EMS_NO       VARCHAR2(12),
  CORR_EMS_NO       VARCHAR2(12),
  CONTR_NO          VARCHAR2(20),
  ID_CARD           VARCHAR2(20),
  ID_CARD_PWD       VARCHAR2(20),
  NOTE_1            VARCHAR2(10),
  NOTE_2            VARCHAR2(10),
  INVEST_AMOUNT     NUMBER(19,5),
  NOTE_AMOUNT       NUMBER(19,5),
  NOTE_QTY          NUMBER(19,5),
  NOTE              VARCHAR2(256),
  INPUT_DATE        DATE,
  INPUT_ER          VARCHAR2(8),
  DECLARE_DATE      DATE,
  EMS_APPR_MARK     VARCHAR2(10),
  EMS_CERTIFY       VARCHAR2(10),
  PRODUCT_RATIO     NUMBER(19,5),
  MODIFY_MARK       VARCHAR2(1),
  DECLARE_MARK      VARCHAR2(1),
  CHK_MARK          VARCHAR2(1),
  EXE_MARK          VARCHAR2(1),
  NEW_APPR_DATE     DATE,
  CNG_APPR_DATE     DATE,
  CLEAR_DATE        DATE,
  SIGN_DATE         DATE,
  SIGN_COPY         NUMBER(19),
  PRINT_DATE        DATE,
  PRINT_MARK        VARCHAR2(1),
  RETURN_DATE       DATE,
  RETURN_MARK       VARCHAR2(1),
  EMS_ACE_MARK      VARCHAR2(32),
  H883_ACE_MARK     VARCHAR2(32),
  CONTROL_MARK      VARCHAR2(32),
  PROCESS_MARK      VARCHAR2(32),
  CLEAR_MODE        VARCHAR2(1),
  CLEAR_TERM        NUMBER(19),
  CLEAR_MARK        VARCHAR2(32),
  CLEAR_TIMES       NUMBER(19),
  SERVICE_FEE_MARK  VARCHAR2(1),
  SERVICE_FEE_RATE  NUMBER(19,5),
  SERVICE_FEE       NUMBER(19,5),
  FILE_NO           VARCHAR2(20),
  RECORDER_NO       VARCHAR2(20),
  DOCUMENT_NO       VARCHAR2(20),
  MASTER_CUSTOMS    VARCHAR2(4),
  I_E_PORT          VARCHAR2(255),
  FOREIGN_CO_NAME   VARCHAR2(255),
  AGREE_NO          VARCHAR2(32),
  CUT_MODE          VARCHAR2(4),
  PAY_MODE          VARCHAR2(1),
  PRODUCE_TYPE      VARCHAR2(2),
  CONTR_OUT         VARCHAR2(32),
  MESSAGE_TYPE      VARCHAR2(8),
  EPORT_ID          VARCHAR2(18),
  DIGITAL_SIGN_MARK VARCHAR2(1),
  DIGITAL_SIGN_LEN  VARCHAR2(255),
  DIGITAL_SIGN      VARCHAR2(262),
  ETL_MARK          VARCHAR2(1),
  I_DATE            DATE,
  IMGED_AMOUNT      NUMBER(19,5),
  CLEAR_APPR_MARK   VARCHAR2(1),
  CLEAR_APPL_DATE   DATE,
  CLOSE_MARK        VARCHAR2(1),
  CLOSE_DATE        DATE,
  CHECK_MARK        VARCHAR2(1),
  CHECK_RESULT      VARCHAR2(255),
  FOREIGN_MGR       VARCHAR2(32),
  TRANS_MODE        VARCHAR2(1),
  TRADE_COUNTRY     VARCHAR2(3),
  EQUIP_MODE        VARCHAR2(1),
  IN_RATIO          NUMBER(19,4),
  EX_CURR           VARCHAR2(3),
  IM_CURR           VARCHAR2(3),
  OPER_MARK         VARCHAR2(32),
  FACT_DEV_AMT      NUMBER(19,5),
  APPR_IMG_AMT      NUMBER(19,5),
  APPR_EXG_AMT      NUMBER(19,5),
  CLOSE_RESULT      VARCHAR2(32),
  DEDUCT_DATE       DATE,
  ACCOUNT_FLAG      VARCHAR2(2),
  HT_APPR_IMG_AMT   NUMBER(19,5),
  CASE_MARK         VARCHAR2(1)
)
;
alter table ALLSYS.TMP_EMS_HEAD
  add constraint PK_TMP_EMS_HEAD primary key (EMS_NO);

prompt
prompt Creating table TMP_EMS_LIST
prompt ===========================
prompt
create table ALLSYS.TMP_EMS_LIST
(
  EMS_NO        VARCHAR2(12) not null,
  G_TYPE        VARCHAR2(1) not null,
  G_NO          NUMBER(19) not null,
  MODIFY_TIMES  NUMBER(19) not null,
  COP_G_NO      VARCHAR2(30),
  CODE_TS       VARCHAR2(10),
  CLASS_MARK    VARCHAR2(1),
  G_NAME        VARCHAR2(255),
  G_MODEL       VARCHAR2(255),
  UNIT          VARCHAR2(3),
  UNIT_1        VARCHAR2(3),
  UNIT_2        VARCHAR2(3),
  COUNTRY_CODE  VARCHAR2(4),
  SOURCE_MARK   VARCHAR2(1),
  DEC_PRICE     NUMBER(19,5),
  CURR          VARCHAR2(4),
  DEC_PRICE_RMB NUMBER(19,4),
  FACTOR_1      NUMBER(19,4),
  FACTOR_2      NUMBER(19,4),
  FACTOR_WT     NUMBER(19,4),
  FACTOR_RATE   NUMBER(19,5),
  QTY           NUMBER(19,5),
  MAX_QTY       NUMBER(19,5),
  FIRST_QTY     NUMBER(19,5),
  I_E_TYPE      VARCHAR2(1),
  USE_TYPE      VARCHAR2(10),
  NOTE_1        VARCHAR2(1),
  NOTE_2        VARCHAR2(1),
  NOTE          VARCHAR2(10),
  MODIFY_MARK   VARCHAR2(1),
  G_MERGE       VARCHAR2(10),
  G_TRADE       VARCHAR2(10),
  QTY_MARK      VARCHAR2(1),
  INC_AMOUNT    NUMBER(19,5),
  INC_QTY       NUMBER(19,5),
  INC_WT        NUMBER(19,5),
  CUT_AMOUNT    NUMBER(19,5),
  CUT_QTY       NUMBER(19,5),
  CUT_WT        NUMBER(19,5),
  CM_AMOUNT     NUMBER(19,5),
  CM_QTY        NUMBER(19,5),
  CM_WT         NUMBER(19,5),
  CLR_INC_QTY   NUMBER(19,5),
  CLR_CUT_QTY   NUMBER(19,5),
  DUTY_MODE     VARCHAR2(1),
  DUTY_RATE     NUMBER(19,5),
  CHK_PRICE     NUMBER(19,5),
  PROCESS_MARK  VARCHAR2(10),
  ENTRY_ID      VARCHAR2(18),
  LIMIT_DATE    DATE,
  ETL_MARK      VARCHAR2(1),
  USD_PRICE     NUMBER(19,5),
  APPR_AMT      NUMBER(19,5)
)
;
alter table ALLSYS.TMP_EMS_LIST
  add constraint PK_TMP_EMS_LIST primary key (EMS_NO, G_TYPE, G_NO);

prompt
prompt Creating table TRADE_ERR
prompt ========================
prompt
create table ALLSYS.TRADE_ERR
(
  HG_CODE   VARCHAR2(20) not null,
  HG_NAME   VARCHAR2(50),
  CURR_DATE DATE
)
;
alter table ALLSYS.TRADE_ERR
  add constraint PK_TRADE_ERR primary key (HG_CODE);

prompt
prompt Creating table TRADE_GPM_RTX
prompt ============================
prompt
create table ALLSYS.TRADE_GPM_RTX
(
  TRADE_MODE VARCHAR2(4) not null,
  SIGN_TYPE  VARCHAR2(3) not null,
  SIGN_MODE  VARCHAR2(1) not null
)
;
alter table ALLSYS.TRADE_GPM_RTX
  add constraint PK_TRADE_GPM_RTX primary key (TRADE_MODE, SIGN_TYPE, SIGN_MODE);

prompt
prompt Creating table TRANSFER_FEE
prompt ===========================
prompt
create table ALLSYS.TRANSFER_FEE
(
  MANUAL_NO     VARCHAR2(12) not null,
  RTN_MANUAL_NO VARCHAR2(12) not null,
  TRANSFER_FEE  NUMBER(19,5)
)
;
alter table ALLSYS.TRANSFER_FEE
  add constraint PK_TRANSFER_FEE primary key (MANUAL_NO, RTN_MANUAL_NO);

prompt
prompt Creating table TRANSFER_FEE_LOG
prompt ===============================
prompt
create table ALLSYS.TRANSFER_FEE_LOG
(
  MANUAL_NO     VARCHAR2(12) not null,
  RTN_MANUAL_NO VARCHAR2(12) not null,
  CREATE_DATE   DATE not null,
  TRANSFER_FEE  NUMBER(19,5)
)
;
alter table ALLSYS.TRANSFER_FEE_LOG
  add constraint PK_TRANSFER_FEE_LOG primary key (MANUAL_NO, RTN_MANUAL_NO, CREATE_DATE);

prompt
prompt Creating table TRN_ALC_REL
prompt ==========================
prompt
create table ALLSYS.TRN_ALC_REL
(
  CUSTOMS_CODE VARCHAR2(4) not null,
  TRN_MODE     VARCHAR2(2) not null,
  TRAF_MODE    VARCHAR2(1) not null,
  ALC_REL_FLAG VARCHAR2(2),
  OP_ER        VARCHAR2(8),
  OP_DATE      DATE
)
;
alter table ALLSYS.TRN_ALC_REL
  add constraint PK_TRN_ALC_REL primary key (CUSTOMS_CODE, TRN_MODE, TRAF_MODE);

prompt
prompt Creating table TRN_CHECK
prompt ========================
prompt
create table ALLSYS.TRN_CHECK
(
  NO            NUMBER(9) not null,
  I_E_FLAG      VARCHAR2(1),
  CODE_S        VARCHAR2(16),
  CODE_E        VARCHAR2(16),
  GOODS_NAME    VARCHAR2(255),
  AGENT_NAME    VARCHAR2(255),
  TRANS_NAME    VARCHAR2(255),
  TRAF_NAME     VARCHAR2(32),
  PORT_CO       VARCHAR2(4),
  RESULT_MARK   VARCHAR2(4),
  RESULT_STATUS VARCHAR2(40),
  EFFECT_D_S    DATE,
  EFFECT_D_E    DATE,
  ISSUE_PORT    VARCHAR2(4),
  ISSUE_OP_ID   VARCHAR2(8),
  ISSUE_TIME    DATE,
  MODI_TIME     DATE
)
;
alter table ALLSYS.TRN_CHECK
  add constraint PK_TRN_CHECK primary key (NO);

prompt
prompt Creating table TRN_CHK_GOODS
prompt ============================
prompt
create table ALLSYS.TRN_CHK_GOODS
(
  CHK_CODE_TS VARCHAR2(16) not null,
  CHK_G_NAME  VARCHAR2(255),
  USE_1       VARCHAR2(32),
  USE_2       VARCHAR2(32),
  USE_3       VARCHAR2(32)
)
;
alter table ALLSYS.TRN_CHK_GOODS
  add constraint PK_TRN_CHK_GOODS primary key (CHK_CODE_TS);

prompt
prompt Creating table TRN_COP_REL
prompt ==========================
prompt
create table ALLSYS.TRN_COP_REL
(
  CO_REG_NO          VARCHAR2(9) not null,
  CO_CUSTOMS_NO      VARCHAR2(10),
  MAIN_PORT          VARCHAR2(4),
  CO_NAME            VARCHAR2(255),
  CO_ADDRESS         VARCHAR2(255),
  CO_PHONE_NO        VARCHAR2(20),
  VALID_FLAG         VARCHAR2(1),
  VALID_DATE         DATE,
  INPUT_DATE         DATE,
  INPUT_OP_ID        VARCHAR2(8),
  PERMIT_FLAG        VARCHAR2(1),
  PERMIT_DATE        DATE,
  PERMIT_OP_ID       VARCHAR2(8),
  RESERV_FIELD       VARCHAR2(10),
  CO_REG_TYPE        VARCHAR2(1),
  CO_PROPERTY        VARCHAR2(1),
  CO_DEAL_RANGE      VARCHAR2(1),
  CO_AUTHORIZE_NO    VARCHAR2(30),
  CO_DEAL_DATE       DATE,
  CO_CORPORATION_REP VARCHAR2(20),
  CO_ABROAD_NAME     VARCHAR2(255),
  GANG_AO_CARS       NUMBER(9),
  GANG_AO_CARS_USED  NUMBER(9),
  CK_FLAG            VARCHAR2(1),
  NOTE_FIELD         VARCHAR2(255)
)
;
alter table ALLSYS.TRN_COP_REL
  add constraint PK_TRN_COP_REL primary key (CO_REG_NO);
create index ALLSYS.IDX_TRN_COP_REL on ALLSYS.TRN_COP_REL (CO_CUSTOMS_NO);
create index ALLSYS.IDX_TRN_COP_REL_PORT on ALLSYS.TRN_COP_REL (MAIN_PORT);

prompt
prompt Creating table TRN_DELAY_FORM
prompt =============================
prompt
create table ALLSYS.TRN_DELAY_FORM
(
  TURN_NO       VARCHAR2(16) not null,
  ID_CHK        VARCHAR2(1),
  DUTY_FLAG     VARCHAR2(1),
  TAX_TYPE      VARCHAR2(1),
  TAX_ID        VARCHAR2(2),
  DELAY_MARK    VARCHAR2(1),
  BOOK_NO       NUMBER(19),
  DELAY_ACCOUNT NUMBER(19,4),
  DELAY_DAY     NUMBER(19),
  P_DATE        DATE,
  DUTY_PRINT    VARCHAR2(1),
  C_DATE        DATE,
  CANCEL_ER     VARCHAR2(8),
  SYS_DATE      DATE,
  TAX_TYPES     VARCHAR2(32),
  CUT_NOTE      VARCHAR2(32)
)
;
alter table ALLSYS.TRN_DELAY_FORM
  add constraint PK_TRN_DELAY_FORM primary key (TURN_NO);

prompt
prompt Creating table TRN_DR_REL
prompt =========================
prompt
create table ALLSYS.TRN_DR_REL
(
  DR_REG_TYPE      VARCHAR2(1),
  DR_CUSTOMS_NO    VARCHAR2(10) not null,
  DR_IC_NO         VARCHAR2(10),
  DR_NAME          VARCHAR2(20),
  DR_IDCARD_NO     VARCHAR2(18),
  DR_GENDER        VARCHAR2(1),
  DR_NATIVE        VARCHAR2(20),
  DR_BIRTH_DATE    DATE,
  CO_REG_NO        VARCHAR2(9),
  CO_NAME          VARCHAR2(255),
  MAIN_PORT        VARCHAR2(4),
  DR_LIC_CUS       VARCHAR2(4),
  DR_IE_CERF_NO    VARCHAR2(30),
  DR_PERMIT_VE     VARCHAR2(255),
  VALID_FLAG       VARCHAR2(1),
  CK_FLAG          VARCHAR2(1),
  VALID_DATE       DATE,
  TRAIN_VALID_DATE DATE,
  INPUT_DATE       DATE,
  INPUT_OP_ID      VARCHAR2(8),
  RESERV_FIELD     VARCHAR2(10),
  NOTE_FIELD       VARCHAR2(255),
  DR_IC_NO2        VARCHAR2(16)
)
;
alter table ALLSYS.TRN_DR_REL
  add constraint PK_TRN_DR_REL primary key (DR_CUSTOMS_NO);
create index ALLSYS.IDX_TRN_DR_VEL_IDNO on ALLSYS.TRN_DR_REL (DR_IDCARD_NO);

prompt
prompt Creating table TRN_ESEAL_REL
prompt ============================
prompt
create table ALLSYS.TRN_ESEAL_REL
(
  ESEAL_ID      VARCHAR2(20) not null,
  CUSTOMS_CODE  VARCHAR2(4),
  CO_REG_NO     VARCHAR2(9),
  CO_NAME       VARCHAR2(255),
  VE_CUSTOMS_NO VARCHAR2(10),
  VE_NAME       VARCHAR2(32),
  INPUT_OP_ID   VARCHAR2(8),
  INPUT_DATE    DATE,
  VALID_FLAG    VARCHAR2(1)
)
;
alter table ALLSYS.TRN_ESEAL_REL
  add constraint PK_TRN_ESEAL_REL primary key (ESEAL_ID);
create index ALLSYS.IDX_ESEAL_CO_REG_NO on ALLSYS.TRN_ESEAL_REL (CO_REG_NO);
create index ALLSYS.IDX_ESEAL_CUSTOMS_CODE on ALLSYS.TRN_ESEAL_REL (CUSTOMS_CODE);
create index ALLSYS.IDX_ESEAL_REL_CUSTOMS on ALLSYS.TRN_ESEAL_REL (VE_CUSTOMS_NO);

prompt
prompt Creating table TRN_EXAM_MAX_SEQ
prompt ===============================
prompt
create table ALLSYS.TRN_EXAM_MAX_SEQ
(
  TYPE     CHAR(1) not null,
  YEARAREA VARCHAR2(10) not null,
  MAX_SEQ  VARCHAR2(6)
)
;
alter table ALLSYS.TRN_EXAM_MAX_SEQ
  add constraint PK_TRN_EXAM_MAX_SEQ primary key (TYPE, YEARAREA);

prompt
prompt Creating table TRN_I_E_PORT
prompt ===========================
prompt
create table ALLSYS.TRN_I_E_PORT
(
  VE_CUSTOMS_NO VARCHAR2(10) not null,
  MAIN_PORT     VARCHAR2(4),
  I_E_PORT      VARCHAR2(4) not null,
  INPUT_OP_ID   VARCHAR2(8),
  INPUT_DATE    DATE
)
;
alter table ALLSYS.TRN_I_E_PORT
  add constraint PK_TRN_I_E_PORT primary key (VE_CUSTOMS_NO, I_E_PORT);

prompt
prompt Creating table TRN_PARAMETER
prompt ============================
prompt
create table ALLSYS.TRN_PARAMETER
(
  CUSTOMS_CODE VARCHAR2(4) not null,
  P_NAME       VARCHAR2(32) not null,
  P_VALUE      VARCHAR2(32),
  OPERATOR_NO  VARCHAR2(8),
  MODI_DATE    DATE
)
;
alter table ALLSYS.TRN_PARAMETER
  add constraint PK_TRN_PARAMETER primary key (CUSTOMS_CODE, P_NAME);

prompt
prompt Creating table TRN_POP_COP_REL
prompt ==============================
prompt
create table ALLSYS.TRN_POP_COP_REL
(
  AGENT_CODE      VARCHAR2(10) not null,
  AGENT_NAME      VARCHAR2(255),
  CUSTOMS_CODE    VARCHAR2(4) not null,
  OTHER_COP       VARCHAR2(512),
  OTHER_RECV_PORT VARCHAR2(255),
  VALID_FLAG      VARCHAR2(1),
  OP_ER           VARCHAR2(8),
  OP_DATE         DATE
)
;
alter table ALLSYS.TRN_POP_COP_REL
  add constraint PK_TRN_POP_COP_REL primary key (AGENT_CODE, CUSTOMS_CODE);

prompt
prompt Creating table TRN_POP_HEAD
prompt ===========================
prompt
create table ALLSYS.TRN_POP_HEAD
(
  APPLY_NO          VARCHAR2(18) not null,
  CUSTOMS_CODE      VARCHAR2(4),
  APPLY_MODE        VARCHAR2(1),
  I_E_FLAG          VARCHAR2(1),
  INPUT_OP_ID       VARCHAR2(13),
  INPUT_DATE        DATE,
  DECL_CO           VARCHAR2(32),
  TRANS_PRE_NO      VARCHAR2(18),
  EXAM_OP_ID        VARCHAR2(8),
  EXAM_TIME         DATE,
  EXAM_MARK         VARCHAR2(1),
  REJECT_REASON     VARCHAR2(255),
  PRE_NO_NEW        VARCHAR2(16),
  APPL_NAME         VARCHAR2(255),
  APPL_CODE         VARCHAR2(10),
  CONTRACTOR        VARCHAR2(255),
  CONTRACTOR_CODE   VARCHAR2(10),
  TRAF_WAY          VARCHAR2(1),
  CUSTOMS_NO        VARCHAR2(13),
  TRANS_NO          VARCHAR2(32),
  NATIVE_VOYAGE_NO  VARCHAR2(32),
  BILL_COUNT        NUMBER(9) default 0,
  CONTA_AMOUNT      NUMBER(19,4) default 0,
  CONTA_INI_COUNT   NUMBER(19,4) default 0,
  CONTA_EMPTY_COUNT NUMBER(19,4) default 0,
  ESEAL_FLAG        VARCHAR2(1),
  RECV_PORT         VARCHAR2(4),
  MFT_GOODS_PIECE   NUMBER(9) default 0,
  MFT_GROSS_WEIGHT  NUMBER(19,4) default 0,
  TRN_MODE          VARCHAR2(2),
  NOTE              VARCHAR2(255)
)
;
alter table ALLSYS.TRN_POP_HEAD
  add constraint PK_TRN_POP_HEAD primary key (APPLY_NO);
create index ALLSYS.IDX_TOP_INPUT_DATE on ALLSYS.TRN_POP_HEAD (INPUT_DATE);

prompt
prompt Creating table TRN_POP_LIST
prompt ===========================
prompt
create table ALLSYS.TRN_POP_LIST
(
  APPLY_NO           VARCHAR2(18) not null,
  RECORD_NUMBER      NUMBER(19) not null,
  ENTRY_ID           VARCHAR2(18),
  PRE_NO             VARCHAR2(16),
  PROCESS_FLAG       VARCHAR2(1),
  SELECT_FLAG        VARCHAR2(1),
  BILL_REJECT_REASON VARCHAR2(255),
  TRAF_MODE          VARCHAR2(1),
  SHIP_ID            VARCHAR2(32),
  SHIP_NAME_EN       VARCHAR2(255),
  VOYAGE_NO          VARCHAR2(32),
  BILL_NO            VARCHAR2(32),
  PACK_NO            NUMBER(9) default 0,
  GROSS_WT           NUMBER(19,4) default 0,
  GOODS_COUNT        NUMBER(9) default 0,
  CONTA_C            NUMBER(9) default 0,
  OWNER_NAME         VARCHAR2(255),
  CONTA_NO           VARCHAR2(11),
  TRANS_NAME         VARCHAR2(32),
  TRANS_WEIGHT       NUMBER(19,4) default 0,
  CONTA_MODEL        VARCHAR2(2),
  SEAL_NO            VARCHAR2(10),
  SEAL_NUM           NUMBER(9) default 0,
  ESEAL_ID           VARCHAR2(128)
)
;
alter table ALLSYS.TRN_POP_LIST
  add constraint PK_TRN_POP_LIST primary key (APPLY_NO, RECORD_NUMBER);
create index ALLSYS.IDX_TOP_ENTRY_ID on ALLSYS.TRN_POP_LIST (ENTRY_ID);

prompt
prompt Creating table TRN_PRE_MAX_SEQ
prompt ==============================
prompt
create table ALLSYS.TRN_PRE_MAX_SEQ
(
  TYPE     CHAR(1) not null,
  YEARAREA VARCHAR2(10) not null,
  MAX_SEQ  VARCHAR2(6)
)
;
alter table ALLSYS.TRN_PRE_MAX_SEQ
  add constraint PK_TRN_PRE_MAX_SEQ primary key (TYPE, YEARAREA);

prompt
prompt Creating table TRN_SHIP
prompt =======================
prompt
create table ALLSYS.TRN_SHIP
(
  CUSTOM_NO     VARCHAR2(8) not null,
  VALID_FLAG    VARCHAR2(1),
  CK_FLAG       VARCHAR2(1),
  MAN_CUSTOM_NO VARCHAR2(4),
  DR_NAME       VARCHAR2(32),
  CO_NAME       VARCHAR2(255),
  SHIP_NO       VARCHAR2(32),
  VALID_DATE    DATE,
  OPERATOR_NO   VARCHAR2(8),
  INPUT_DATE    DATE,
  CO_ADDRESS    VARCHAR2(255),
  CO_TELE       VARCHAR2(32),
  CO_MAIL       VARCHAR2(6),
  TRAF_FLAG     VARCHAR2(1),
  TRAF_NOTE     VARCHAR2(255)
)
;
alter table ALLSYS.TRN_SHIP
  add constraint PK_TRN_SHIP primary key (CUSTOM_NO);

prompt
prompt Creating table TRN_VEHICLE
prompt ==========================
prompt
create table ALLSYS.TRN_VEHICLE
(
  CUSTOM_NO     VARCHAR2(8) not null,
  VALID_FLAG    VARCHAR2(1),
  CK_FLAG       VARCHAR2(1),
  MAN_CUSTOM_NO VARCHAR2(4),
  DR_NAME       VARCHAR2(32),
  DR_SFZ        VARCHAR2(18),
  CO_NAME       VARCHAR2(255),
  CAR_NO        VARCHAR2(12),
  CAR_EC_NO     VARCHAR2(8),
  VALID_DATE    DATE,
  OPERATOR_NO   VARCHAR2(8),
  INPUT_DATE    DATE,
  CO_ADDRESS    VARCHAR2(255),
  CO_TELE       VARCHAR2(32),
  CO_MAIL       VARCHAR2(6),
  TRAF_FLAG     VARCHAR2(1),
  TRAF_NOTE     VARCHAR2(30)
)
;
alter table ALLSYS.TRN_VEHICLE
  add constraint PK_TRN_VEHICLE primary key (CUSTOM_NO);

prompt
prompt Creating table TRN_VE_REL
prompt =========================
prompt
create table ALLSYS.TRN_VE_REL
(
  VE_CUSTOMS_NO  VARCHAR2(10) not null,
  CAR_EC_NO      VARCHAR2(20),
  VE_TYPE        VARCHAR2(1),
  MAIN_PORT      VARCHAR2(4),
  VE_NAME        VARCHAR2(32),
  CO_REG_NO      VARCHAR2(9),
  CO_NAME        VARCHAR2(255),
  CK_FLAG        VARCHAR2(1),
  VALID_FLAG     VARCHAR2(1),
  VALID_DATE     DATE,
  INPUT_DATE     DATE,
  INPUT_OP_ID    VARCHAR2(8),
  RESERV_FIELD   VARCHAR2(10),
  VE_WT          NUMBER(9),
  REG_TYPE       VARCHAR2(1),
  VE_NO1         VARCHAR2(10),
  VE_BELONG_AREA VARCHAR2(1),
  VE_PROPERTY    VARCHAR2(1),
  VE_BRAND       VARCHAR2(8),
  VE_OILTANK_VOL NUMBER(9),
  VE_INDEX_NO    VARCHAR2(20),
  VE_IE_CERF_NO  VARCHAR2(30),
  VE_COLOR       VARCHAR2(10),
  VE_MOTOR_NO    VARCHAR2(30),
  VE_FRAME_NO    VARCHAR2(30),
  VE_TON         NUMBER(9),
  NOTE_FIELD     VARCHAR2(255),
  VE_IE_PORT     VARCHAR2(255),
  GPS_ID         VARCHAR2(20),
  SIM_1          VARCHAR2(15),
  SIM_2          VARCHAR2(15),
  GPS_PROVIDER   VARCHAR2(255),
  GPS_FLAG       VARCHAR2(1),
  TRANS_NO       VARCHAR2(32)
)
;
alter table ALLSYS.TRN_VE_REL
  add constraint PK_TRN_VE_REL primary key (VE_CUSTOMS_NO);
create index ALLSYS.IDX_TRN_VE_MOTOR_NO on ALLSYS.TRN_VE_REL (VE_MOTOR_NO);
create index ALLSYS.IDX_TRN_VE_REL on ALLSYS.TRN_VE_REL (VE_NAME);
create index ALLSYS.IDX_TRN_VE_REL_EC on ALLSYS.TRN_VE_REL (CAR_EC_NO);
create index ALLSYS.IDX_TRN_VE_REL_PORT on ALLSYS.TRN_VE_REL (MAIN_PORT);

prompt
prompt Creating table YD_DECLARE_REL
prompt =============================
prompt
create table ALLSYS.YD_DECLARE_REL
(
  TRADE_CO     VARCHAR2(10) not null,
  CUSTOMS_CODE VARCHAR2(4) not null
)
;
alter table ALLSYS.YD_DECLARE_REL
  add constraint PK_YD_DECLARE_REL primary key (TRADE_CO, CUSTOMS_CODE);
create index ALLSYS.TRADE_CO_INDEX on ALLSYS.YD_DECLARE_REL (TRADE_CO);


spool off
