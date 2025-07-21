#!/bin/bash

echo "Config"
sed -i 's/"port": "[^"]*"/"port": "1000"/' /etc/inverter/mqtt.json
