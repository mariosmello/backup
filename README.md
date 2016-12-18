# Backup

1. Download e configuração do [dropbox uploader](https://github.com/andreafabrizi/Dropbox-Uploader)

## Crontab
- Backup do banco de dados todos os dias
- Backup dos arquivos enviados pelo cliente uma vez por semana, aos domingos
```shell
* 19 * * * /bin/bash /root/backup/mysql.sh >/dev/null 2>&1
* 10 * * 0 /bin/bash /root/backup/files.sh >/dev/null 2>&1
```
