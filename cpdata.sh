#!/bin/bash

echo "----------$(date)--开始拷贝entry_list-------------"
#cp /data/data1/ENTRY_LIST.tbl /data/udisk/
echo "----------$(date)--结束拷贝entry_list-------------"
echo ""
echo ""
echo "----------$(date)--开始拷贝entry_workflow-------------"
#cp /data/data2/ENTRY_WORKFLOW.tbl /data/udisk/
echo "----------$(date)--结束拷贝entry_workflow-------------"
echo ""
echo ""
echo "----------$(date)--开始拷贝entry_proc-------------"
#cp /data/ENTRY_PROC.tbl /data/udisk/
echo "----------$(date)--结束拷贝entry_proc-------------"
echo ""
echo ""
echo "----------$(date)--开始拷贝entry_head-------------"
#cp /data/data4/ENTRY_HEAD.tbl /data/udisk/
echo "----------$(date)--结束拷贝entry_head-------------"

echo "----------$(date)--开始拷贝entry_list-------------"
echo "----------$(date)--结束拷贝entry_list-------------"
cp /data/data1/* /data/udisk/
echo ""
echo ""
echo "----------$(date)--开始拷贝entry_list-------------"
cp /data/data2/* /data/udisk/
echo "----------$(date)--结束拷贝entry_list-------------"
echo ""
echo ""
