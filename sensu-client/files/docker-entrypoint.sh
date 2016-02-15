#!/bin/bash

echo Start Sensu Client
service sensu-client start

echo Sleep forever
while true; do
  sleep 1000
done