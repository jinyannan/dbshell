增量加载操作说明：

1.解压缩db_shell.tar.bz2 
例如：
tar -jxvz -f db_shell.tar.bz2 /data

2.修改uptoday.sh文件的参数段

FtpPath="/data/ftp/GP"				----ftp目录
BakPath="/data/bak_data"			----增量压缩包备份目录
LogPath="/data/ruku_log"			----日志目录
UpTime=1							----每天集中导入正是表时间（1代表凌晨1点）
VacuumFullTime=01					----执行Vacuum full的时间,
										一个月执行一次,01代表本月一号
SleepSecond=5						----增量入库休眠时间（秒）
DataPath="/data/xloader/doc_root"	----gpfdist服务配置的目录

3.运行gpfdist服务

例如：
gpfdist -d /data/xloader/doc_root -p 8081 >/data/gpfdist.log &


4.运行增量入库脚本

sh uptoday_sv.sh

如果需要后台运行，加后台运行符 &
