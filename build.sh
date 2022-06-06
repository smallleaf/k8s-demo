#!/bin/bash

echo "workspace : ${WORKSPACE},module: ${MODULE}"

copy_cmd "COPY ${MODULE}/target/${MODULE}-1.0.jar /${MODULE}.jar"
exec_cmd "ENTRYPOINT java $JAVA_OPTS  -jar /${MODULE}.jar"

rm -rm Dockerfile
touch Dockerfile

echo "FROM apache/skywalking-java-agent:8.10.0-java8" > Dockerfile
echo "MAINTAINER yesheng 578986218@qq.com" > Dockerfile
cat copy_cmd > Dockerfile
cat exec_cmd > Dockerfile

cat Dockerfile

#docker build -t 578986218/${MODULE}:latest .
#docker push 578986218/${MODULE}:latest .

