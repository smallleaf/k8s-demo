#!/bin/bash

echo "workspace : ${WORKSPACE},module: ${MODULE}"
rm -rm Dockerfile
touch Dockerfile

echo "FROM apache/skywalking-java-agent:8.10.0-java8" > Dockerfile
echo "MAINTAINER yesheng 578986218@qq.com" > Dockerfile
cat "COPY ${MODULE}/target/${MODULE}-1.0.jar /${MODULE}.jar" > Dockerfile
cat "ENTRYPOINT java $JAVA_OPTS  -jar /${MODULE}.jar" > Dockerfile

cat Dockerfile

#docker build -t 578986218/${MODULE}:latest .
#docker push 578986218/${MODULE}:latest .

