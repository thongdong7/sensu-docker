#!/bin/bash

echo Start Sensu Server
service sensu-server start

echo Start Sensu API
service sensu-api start

tail -f /var/log/sensu/*.log