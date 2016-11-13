\timing
\echo "Begin drop indexs......"
select now();
drop index idx_pk_entry_workflow_ops;
drop index ix_entry_workflow;
drop index ix_entry_workflow_ops;
drop index pk_entry_workflow;
select now();
\echo "End drop indexs......"

\echo "Begin update data......"
select now();
truncate table entry_workflow;
insert into entry_workflow select * from entry_workflow_tmp;
select now();
\echo "End update data......"

\echo "Begin rebuild indexs......"
create index idx_pk_entry_workflow_ops on entry_workflow (entry_id varchar_pattern_ops, step_id varchar_pattern_ops, create_date);
create index ix_entry_workflow on entry_workflow(create_date, step_id);
create index ix_entry_workflow_ops on entry_workflow (create_date, step_id varchar_pattern_ops);
create index pk_entry_workflow on entry_workflow (entry_id, step_id, create_date);
select now();
\echo "End rebuild indexs......"

\timing
