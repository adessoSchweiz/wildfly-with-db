#!/usr/bin/env bash

docker build -t adesso/wildfly-mssql:1.0.0 .
docker push adesso/wildfly-mssql:1.0.0