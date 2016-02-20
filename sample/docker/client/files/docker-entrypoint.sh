#!/bin/bash

echo Start Sensu Client
service sensu-client start

echo Load log
tail -f /var/log/sensu/sensu-client.log