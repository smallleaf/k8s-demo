#!/bin/bash
mvn clean package
docker build -t 578986218/api-gateway-zuul:latest .
docker push 578986218/api-gateway-zuul:latest
