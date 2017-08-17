#!/bin/bash

$JBOSS_HOME/bin/jboss-cli.sh --connect --user=${WILDFLY_USER} --password=${WILDFLY_PASSWORD} <<EOF
batch
deploy ${JBOSS_HOME}/mssql-jdbc.jar
data-source add --jndi-name=${JNDI_NAME} --name=${DATASOURCE_NAME} --connection-url=jdbc:sqlserver://${DB_HOST}:${DB_PORT};databaseName=${DATABASE_NAME} --driver-name=mssql-jdbc.jar --user-name=${DATABASE_USER} --password=${DATABASE_PASSWORD}
run-batch
exit
EOF