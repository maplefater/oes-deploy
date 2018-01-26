#!/usr/bin/env bash
docker exec -it oes-postgres pg_dumpall -c -U oes_db_user > db_backup_`date +%Y_%m_%d"_"%H_%M_%S`.sql
