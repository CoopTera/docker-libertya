FROM postgres:10.11

COPY ./create_db.sh /docker-entrypoint-initdb.d/10-create_db.sh
COPY dump_libertya_22.0ar.sql.gz /docker-entrypoint-initdb.d/20-dump.sql.gz
