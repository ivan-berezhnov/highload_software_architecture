#!/bin/bash

# Install apache utils
sudo apt-get update && sudo apt-get install apache2-utils -y

# Wait for grafana to be up
sleep 5

# Upload dashboard and datasource
dashboard=$(<./.docker/etc/grafana/dashboard.json)
curl -X POST http://admin:admin@grafana.dm.docksal:3000/api/dashboards/db -H 'Accept: application/json' -H 'Content-Type: application/json' -d "{\"dashboard\":$dashboard}"

datasource=$(<./.docker/etc/grafana/influxdb-datasource.json)
curl -X POST http://admin:admin@grafana.dm.docksal:3000/api/datasources -H 'Accept: application/json' -H 'Content-Type: application/json' -d "$datasource"

echo "Datasource and dashboard set up"
