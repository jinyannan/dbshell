全量数据加载帮助

1.安装sqluldr,oracle客户端
参照oracle无客户端安装指导书-linux版.doc

2.安装iconv
解压iconv.tar.bz2到/usr/local/src
编译安装：
cd /usr/local/src/iconv
./configure  --prefix=/usr/local/bin
make clean
make
make install

3.运行全量数据导入脚本，从oracle导入数据，
需要根据具体oracle数据库账号密码,数据文件实际落地目录进行修改
例如：
sqluldr2_linux64_10204.bin
paracalctetest/paracalctetest123@10.226.2.113:1521/h2000 query="select * from
allsys.ACCOUNT" field=0x7C file=/usr/data/ACCOUNT.txt quote=0x7F
1>>/tmp/ACCOUNT.log 2>&1

paracalctetest/paracalctetest123@10.226.2.113:1521/h2000	----oracle用户名，密码，服务名
file=/usr/data/ACCOUNT.txt									----数据文件，目录，名称
/tmp/ACCOUNT.log											----日志目录，名称

4.运行gpfdist : 
gpfdist -d /data/xloader/doc_root -p 8081 >/data/gpfdist.log &

5.拷贝全量数据文件到gpfdist定义目录

6.运行全量数据加载脚本


