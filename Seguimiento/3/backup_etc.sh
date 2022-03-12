!#/bin/bash

echo "Realizando BACKUP del directorio /etc" $(date)

tar -zcf /home/carlos/backups/etc_$(date +"%Y%m%d%H%M%d").tar.gz /etc/ 


