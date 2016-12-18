#!/bin/bash

PATH="/root/backup/"
MYSQL_USER=""
MYSQL_PASS=""
MYSQL_DB=""

echo 'INICIANDO BACKUP'

echo 'Baixando bancos de dados site'
mysqldump -u$MYSQL_USER -p$MYSQL_PASS --complete-insert $MYSQL_DB > $MYSQL_DB.sql;

echo 'Compactando banco de dados'
gzip $MYSQL_DB.sql -f

echo 'ENVIANDO PARA DROPBOX'
/bin/bash $PATHDropbox-Uploader/dropbox_uploader.sh upload $PATH$MYSQL_DB.sql.gz  ./

echo "BACKUP FINALIZADO"
