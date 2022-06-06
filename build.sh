#!/bin/bash

echo "workspace : ${WORKSPACE},module: ${MODULE}"

docker build -t 578986218/${MODULE}:latest .
docker push 578986218/${MODULE}:latest .

