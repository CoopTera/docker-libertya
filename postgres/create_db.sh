#!/bin/bash
set -e

POSTGRES="psql --username ${POSTGRES_USER}"

echo "Creating database: ${DB_NAME}"

$POSTGRES <<EOSQL
CREATE DATABASE ${DB_NAME} WITH ENCODING='UTF8' OWNER ${POSTGRES_USER};
EOSQL