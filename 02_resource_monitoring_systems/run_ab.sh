#!/bin/bash

# Run benchmark
ab -r -n 1000 -c 20000  -g ab-drupal-monitoring.log "http://dm.docksal:80/" &&
ab -k -c 350 -n 20000  "http://dm.docksal:80/"
