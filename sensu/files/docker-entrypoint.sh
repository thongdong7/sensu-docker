#!/bin/bash

echo Start Sensu Server
service sensu-server start

echo Start Sensu API
service sensu-api start

echo Sleep forever
while true; do
  sleep 1000
done