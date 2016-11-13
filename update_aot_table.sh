#!/bin/bash
echo "开始所有后台替换进程......$(date)......"
echo ""
echo "开始替换entry_head......$(date)......"
psql h2000 -f ./aot_script/update_entry_head.sql & 
echo "结束替换entry_head......$(date)......"
echo ""
echo ""
echo "开始替换entry_list......$(date)......"
psql h2000 -f ./aot_script/update_entry_list.sql &
echo "结束替换entry_list......$(date)......"
echo ""
echo ""
echo "开始替换entry_workflow......$(date)......"
psql h2000 -f ./aot_script/update_entry_workflow.sql &
echo "结束替换entry_workflow......$(date)......"
echo ""
echo ""

wait

echo "结束所有后台替换进程......$(date)......"

echo ""
echo ""
