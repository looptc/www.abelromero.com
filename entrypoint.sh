#!/bin/bash
cd /opt/abelromero.com
npm install
npm start &
cd /opt/www.abelromero.com
npm install
npm start &

while true; do sleep 1; done
