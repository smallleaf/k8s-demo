#!/bin/bash

DOCKER_DIR=${MODULE}
echo "docker workspace : ${MODULE}"

JENKINS_DIR=${WORKSPACE}/${MODULE}

echo "jenkins workspace : ${JENKINS_DIR}"

docker build -t 578986218/${MODULE}:latest .
docker push 578986218/${MODULE}:latest .

