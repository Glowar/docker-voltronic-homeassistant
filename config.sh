#!/bin/bash

echo "Config"
sed -i "s/\"password\":\s*\".*\"/\"password\": \"$MQTT_PASSWORD\"/g" /etc/inverter/mqtt.json
