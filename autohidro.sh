#!/bin/bash
#curl --data "" -X POST "http://localhost/api/v1/gpio/all-off/"
#sleep 3
#kipas on
curl --data "value=on" -X POST "http://localhost/api/v1/gpio/5/"
sleep 10
#switch 1 on
curl --data "value=on" -X POST "http://localhost/api/v1/gpio/3/"
sleep 300
#switch 1 off
curl --data "value=off" -X POST "http://localhost/api/v1/gpio/3/"
sleep 10
#kipas off
curl --data "value=off" -X POST "http://localhost/api/v1/gpio/5/"
