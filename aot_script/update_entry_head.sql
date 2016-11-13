
\timing
\echo "Begin drop indexs......"
select now();
drop index idx_pk_entry_head_ops;
drop index ix_entryhead_contrno;
drop index ix_entryhead_contrno_ops;
drop index ix_entryhead_ddate;
drop index ix_entryhead_declport;
drop index ix_entryhead_declport_ops;
drop index ix_entryhead_ieport;
drop index ix_entryhead_ieport_ops;
drop index ix_entryhead_manualno;
drop index ix_entryhead_manualno_ops;
drop index ix_entryhead_relativeid;
drop index ix_entryhead_relativeid_ops;
drop index ix_entryhead_tradeco;
drop index ix_entryhead_tradeco_ops;
drop index pk_entry_head;
select now();
\echo "End drop indexs......"

\echo "Begin update data......"
select now();
truncate table entry_head;
insert into entry_head select * from entry_head_tmp;
select now();
\echo "End update data......"

\echo "Begin rebuild indexs......"
create index idx_pk_entry_head_ops on entry_head (entry_id varchar_pattern_ops);
create index ix_entryhead_contrno on entry_head (contr_no);
create index ix_entryhead_contrno_ops on entry_head (contr_no varchar_pattern_ops);
create index ix_entryhead_ddate on entry_head  (d_date);
create index ix_entryhead_declport on entry_head  (decl_port);
create index ix_entryhead_declport_ops on entry_head  (decl_port varchar_pattern_ops);
create index ix_entryhead_ieport on entry_head  (i_e_port);
create index ix_entryhead_ieport_ops on entry_head  (i_e_port varchar_pattern_ops);
create index ix_entryhead_manualno on entry_head  (manual_no);
create index ix_entryhead_manualno_ops on entry_head  (manual_no varchar_pattern_ops);
create index ix_entryhead_relativeid on entry_head  (relative_id);
create index ix_entryhead_relativeid_ops on entry_head  (relative_id varchar_pattern_ops);
create index ix_entryhead_tradeco on entry_head  (trade_co);
create index ix_entryhead_tradeco_ops on entry_head (trade_co varchar_pattern_ops);
create index pk_entry_head on entry_head (entry_id);
select now();
\echo "End rebuild indexs......"

\timing
