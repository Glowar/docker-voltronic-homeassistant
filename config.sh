#!/bin/bash

echo "Config"
sed -i 's/"password": "[^"]*"/"password": "123592"/' /etc/inverter/mqtt.json
