34 16 * * * /etc/webmin/cron/tempdelete.pl
0 3 * * * su - bsadmin -c "sh /data/gptask/script/update_week.sh >>/data/gptask/script/update_week.log 2>&1"
