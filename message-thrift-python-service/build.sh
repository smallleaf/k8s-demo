#!/usr/bin/env bash

docker build -t 578986218/message-service:latest .
docker push 578986218/message-service:latest
#docker run -idt -p 9090:9090 python-service:latest
