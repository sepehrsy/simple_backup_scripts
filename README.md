# simple_backup_scripts
#### Simple Backup Scripts for Some Services
```
cp backup.sh /usr/local/bin/
chmod a+x /usr/local/bin/backup.sh
```

### cronjob:
#### EOF /etc/crontab

```
30     03     *     *     *     root    /usr/local/bin/backup.sh >> /var/log/backup.log 2>&1
```
#### also for sync 3 nginx servers, on server 1

```
cp nginx_sync.sh /usr/local/bin/
chmod a+x /usr/local/bin/nginx_sync.sh
```
