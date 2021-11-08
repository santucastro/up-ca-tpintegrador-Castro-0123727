#!/bin/bash
#script
if nc -z 192.168.20.3 22 2>/dev/null; then 
mkdir -p /media/disco_backups/logs
sshpass -p '1234' rsync -av -zvh --exclude='.cache' --times --stats --progress --delete sacastro@192.168.20.3:/home  /media/disco_backups >> /media/disco_backups/logs/backup_home_cliente-03.sh_$(date +%Y-%m-%d)_$(date +%H-%M-%S)Z.log   
fi
 
