#!/usr/bin/env bash


mvn package
docker build -t 578986218/user-edge-service:latest .
docker push 578986218/user-edge-service:latest

#docker run -idt -p 8082:8082 imooc-user-edge-service:latest \ --mysql.address=192.168.1.7
