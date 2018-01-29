#!/usr/bin/env bash
docker exec -it oes-postgres pg_dumpall -c -U oes_db_user > oesdb_backup_`date +%Y_%m_%d"_"%H_%M_%S`.sql
docker exec -it oj-postgres pg_dumpall -c -U onlinejudge > ojdb_backup_`date +%Y_%m_%d"_"%H_%M_%S`.sql
