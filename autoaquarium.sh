#!/bin/bash
curl --data "" -X POST "http://localhost/api/v1/gpio/all-off/"
sleep 3
#kipas on
curl --data "value=on" -X POST "http://localhost/api/v1/gpio/5/"
sleep 2
#switch 1 on
curl --data "value=on" -X POST "http://localhost/api/v1/gpio/2/"
sleep 25
#switch 1 off
curl --data "value=off" -X POST "http://localhost/api/v1/gpio/2/"
sleep 3
#kipas off
curl --data "value=off" -X POST "http://localhost/api/v1/gpio/5/"
