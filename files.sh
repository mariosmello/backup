▽
#!/bin/bash

PATH="/root/backup/"
UPLOAD_PATH="/var/www/.../public/system/uploads"
BACKUP_FILE="uploads.tar.gz"

echo 'INICIANDO BACKUP'

echo 'Compactando pasta de uploads'
tar -zcvf $PATH$BACKUP_FILE $UPLOAD_PATH

echo 'ENVIANDO PARA DROPBOX'
/bin/bash $PATHDropbox-Uploader/dropbox_uploader.sh upload $PATH$BACKUP_FILE  ./

rm -f $BACKUP_FILE

echo "BACKUP FINALIZADO"
