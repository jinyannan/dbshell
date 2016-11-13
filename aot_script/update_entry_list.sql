\timing
\echo "Begin drop indexs......"
select now();
drop index idx_pk_entry_list_ops;
drop index pk_entry_list;
select now();
\echo "End drop indexs......"

\echo "Begin update data......"
select now();
truncate table entry_list;
insert into entry_list select * from entry_list_tmp;
select now();
\echo "End update data......"

\echo "Begin rebuild indexs......"
create index idx_pk_entry_list_ops on entry_list (entry_id varchar_pattern_ops, g_no);
create index pk_entry_list on entry_list (entry_id, g_no);
select now();
\echo "End rebuild indexs......"

\timing

