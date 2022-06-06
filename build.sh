#!/bin/bash

echo "workspace : ${WORKSPACE},module: ${MODULE}"

copy_cmd "COPY ${MODULE}/target/${MODULE}-1.0.jar /${MODULE}.jar"
echo copy_cmd

cat copy_cmd > Dockerfile

exec_cmd "ENTRYPOINT java $JAVA_OPTS  -jar /${MODULE}.jar"

echo exec_cmd
cat exec_cmd > Dockerfile

#docker build -t 578986218/${MODULE}:latest .
#docker push 578986218/${MODULE}:latest .

