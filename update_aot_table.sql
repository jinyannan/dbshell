\echo "-----------开始替换 entry_head--------"
select now();
truncate table entry_head;
insert into entry_head select * from entry_head_tmp;
select now();
\echo "-----------完成替换 entry_head--------"
\echo ""
\echo "-----------开始替换 entry_list--------"
select now();
truncate table entry_list;
insert into entry_list select * from entry_list_tmp;
select now();
\echo "-----------完成替换 entry_list--------"
\echo ""
\echo "-----------开始替换 entry_workflow--------"
select now();
truncate table entry_workflow;
insert into entry_workflow select * from entry_workflow_tmp;
select now();
\echo "-----------完成替换 entry_workflow--------"
