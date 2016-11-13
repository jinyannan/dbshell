\echo entry_head
insert into entry_head_tmp select * from entry_head;
\echo entry_list
insert into entry_list_tmp select * from entry_list;
\echo entry_workflow
insert into entry_workflow_tmp select * from entry_workflow;
