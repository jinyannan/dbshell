create index idx_entryproc_ddate on entry_proc (d_date);
create index idx_entryproc_declport on entry_proc(decl_port varchar_pattern_ops);
create index idx_entryproc_entryid on entry_proc(entry_id varchar_pattern_ops);
create index idx_entryproc_laststeptime on entry_proc(last_step_time);
create index idx_entryproc_rtxtime on entry_proc(rtx_time);
