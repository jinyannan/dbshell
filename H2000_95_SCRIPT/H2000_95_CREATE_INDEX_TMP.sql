select now();
\echo "PK_ENTRY_HEAD_TMP on ENTRY_HEAD (ENTRY_ID)"
create index PK_ENTRY_HEAD_TMP on ENTRY_HEAD_TMP (ENTRY_ID) ;

select now();
\echo "PK_ENTRY_LIST_TMP on ENTRY_LIST_TMP (ENTRY_ID, G_NO)"
create index PK_ENTRY_LIST_TMP on ENTRY_LIST_TMP (ENTRY_ID, G_NO) ;

select now();
\echo "PK_ENTRY_WORKFLOW_TMP on ENTRY_WORKFLOW_TMP (ENTRY_ID, STEP_ID, CREATE_DATE)"
create index PK_ENTRY_WORKFLOW_TMP on ENTRY_WORKFLOW_TMP (ENTRY_ID, STEP_ID, CREATE_DATE) ;

select now();
\echo "create index IX_ENTRYHEAD_CONTRNO_TMP on ENTRY_HEAD_TMP (CONTR_NO);"
create index IX_ENTRYHEAD_CONTRNO_TMP on ENTRY_HEAD_TMP (CONTR_NO);

select now();
\echo "create index IX_ENTRYHEAD_DDATE_TMP on ENTRY_HEAD_TMP (D_DATE);"
create index IX_ENTRYHEAD_DDATE_TMP on ENTRY_HEAD_TMP (D_DATE);

select now();
\echo "create index IX_ENTRYHEAD_DECLPORT_TMP on ENTRY_HEAD_TMP (DECL_PORT);"
create index IX_ENTRYHEAD_DECLPORT_TMP on ENTRY_HEAD_TMP (DECL_PORT);

select now();
\echo "create index IX_ENTRYHEAD_IEPORT_TMP on ENTRY_HEAD_TMP (I_E_PORT);"
create index IX_ENTRYHEAD_IEPORT_TMP on ENTRY_HEAD_TMP (I_E_PORT);

select now();
\echo "create index IX_ENTRYHEAD_MANUALNO_TMP on ENTRY_HEAD_TMP (MANUAL_NO);"
create index IX_ENTRYHEAD_MANUALNO_TMP on ENTRY_HEAD_TMP (MANUAL_NO);

select now();
\echo "create index IX_ENTRYHEAD_RELATIVEID_TMP on ENTRY_HEAD_TMP (RELATIVE_ID);"
create index IX_ENTRYHEAD_RELATIVEID_TMP on ENTRY_HEAD_TMP (RELATIVE_ID);

select now();
\echo "create index IX_ENTRYHEAD_TRADECO_TMP on ENTRY_HEAD_TMP (TRADE_CO);"
create index IX_ENTRYHEAD_TRADECO_TMP on ENTRY_HEAD_TMP (TRADE_CO);

select now();
\echo "create index IX_ENTRY_WORKFLOW_TMP on ENTRY_WORKFLOW_TMP (CREATE_DATE, STEP_ID);"
create index IX_ENTRY_WORKFLOW_TMP on ENTRY_WORKFLOW_TMP (CREATE_DATE, STEP_ID);
