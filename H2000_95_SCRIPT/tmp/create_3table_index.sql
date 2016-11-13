select now();
\echo "create index PK_ENTRY_HEAD on ENTRY_HEAD (ENTRY_ID varchar_pattern_ops, DECL_PORT varchar_pattern_ops) ;"
create index PK_ENTRY_HEAD on ENTRY_HEAD (ENTRY_ID varchar_pattern_ops, DECL_PORT varchar_pattern_ops) ;
select now();
\echo "create index IX_ENTRYHEAD_CONTRNO on ENTRY_HEAD (CONTR_NO);"
create index IX_ENTRYHEAD_CONTRNO on ENTRY_HEAD (CONTR_NO varchar_pattern_ops);
select now();
\echo "create index IX_ENTRYHEAD_DDATE on ENTRY_HEAD (D_DATE);"
create index IX_ENTRYHEAD_DDATE on ENTRY_HEAD (D_DATE);
select now();
\echo "create index IX_ENTRYHEAD_DECLPORT on ENTRY_HEAD (DECL_PORT);"
create index IX_ENTRYHEAD_DECLPORT on ENTRY_HEAD (DECL_PORT varchar_pattern_ops);
select now();
\echo "create index IX_ENTRYHEAD_IEPORT on ENTRY_HEAD (I_E_PORT);"
create index IX_ENTRYHEAD_IEPORT on ENTRY_HEAD (I_E_PORT varchar_pattern_ops);
select now();
\echo "create index IX_ENTRYHEAD_MANUALNO on ENTRY_HEAD (MANUAL_NO);"
create index IX_ENTRYHEAD_MANUALNO on ENTRY_HEAD (MANUAL_NO varchar_pattern_ops);
select now();
\echo "create index IX_ENTRYHEAD_RELATIVEID on ENTRY_HEAD (RELATIVE_ID);"
create index IX_ENTRYHEAD_RELATIVEID on ENTRY_HEAD (RELATIVE_ID varchar_pattern_ops);
select now();
\echo "create index IX_ENTRYHEAD_TRADECO on ENTRY_HEAD (TRADE_CO);"
create index IX_ENTRYHEAD_TRADECO on ENTRY_HEAD (TRADE_CO varchar_pattern_ops);
select now();

