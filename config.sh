#!/bin/bash

echo "Config"
sed -i 's/"password": "[^"]*"/"password": $MQTT_PASSWORD/g' /etc/inverter/mqtt.json
