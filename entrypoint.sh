#!/bin/bash

echo "entrypoint"
sed -i 's/"port": "[^"]*"/"port": "1000"/' /etc/inverter/mqtt.json
