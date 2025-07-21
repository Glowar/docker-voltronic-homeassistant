#!/bin/bash

echo "Config mqtt"
sed -i "s/\"server\":\s*\".*\"/\"server\": \"$MQTT_SERVER\"/g" /etc/inverter/mqtt.json
sed -i "s/\"port\":\s*\".*\"/\"port\": \"$MQTT_PORT\"/g" /etc/inverter/mqtt.json
sed -i "s/\"topic\":\s*\".*\"/\"topic\": \"$MQTT_TOPIC\"/g" /etc/inverter/mqtt.json
sed -i "s/\"devicename\":\s*\".*\"/\"devicename\": \"$MQTT_DEVICENAME\"/g" /etc/inverter/mqtt.json
sed -i "s/\"manufacturer\":\s*\".*\"/\"manufacturer\": \"$MQTT_MANUFACTURER\"/g" /etc/inverter/mqtt.json
sed -i "s/\"model\":\s*\".*\"/\"model\": \"$MQTT_MODEL\"/g" /etc/inverter/mqtt.json
sed -i "s/\"serial\":\s*\".*\"/\"serial\": \"$MQTT_SERIAL\"/g" /etc/inverter/mqtt.json
sed -i "s/\"ver\":\s*\".*\"/\"ver\": \"$MQTT_VER\"/g" /etc/inverter/mqtt.json
sed -i "s/\"username\":\s*\".*\"/\"username\": \"$MQTT_USERNAME\"/g" /etc/inverter/mqtt.json
sed -i "s/\"password\":\s*\".*\"/\"password\": \"$MQTT_PASSWORD\"/g" /etc/inverter/mqtt.json

echo "Config inverter"
sed -i "s/device=.*/device=$INVERTER_DEVICE/g" /etc/inverter/inverter.conf
sed -i "s/qpiri=.*/qpiri=$INVERTER_QPIRI/g" /etc/inverter/inverter.conf

sh /opt/inverter-mqtt/entrypoint.sh
