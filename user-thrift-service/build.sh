#!/usr/bin/env bash

mvn package
docker build -t 578986218/user-service:latest .
docker push 578986218/user-service:latest

#docker run -idt -p 7911:7911 imooc-user-service:latest \
# --mysql.address=192.168.1.7
