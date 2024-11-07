
## backup file with a script##


src=/var/log/httpd/access_log
dest=mybackup
time=$(date +"%y-%m-%d-%H-%M-%S")
backup=$dest/$time.tgz

echo "taking backup"
tar zcvf $backup --absolute-names $src
