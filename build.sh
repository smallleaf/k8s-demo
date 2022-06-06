#!/bin/bash

echo "workspace : ${WORKSPACE},module: ${MODULE}"

sed -i  's/module/${MODULE}/g' Dockerfile

docker build -t 578986218/${MODULE}:latest .
docker push 578986218/${MODULE}:latest .

