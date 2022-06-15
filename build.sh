#!/bin/bash



echo "workspace : ${WORKSPACE},module: ${MODULE}"

sed -i  "s/module/${MODULE}/g" Dockerfile

cat Dockerfile

docker build -t 578986218/${MODULE}:latest .
docker push 578986218/${MODULE}:latest

filePath="/data/${MODULE}.yaml"
echo "push file :${filePath} to k8s1"
scp ${MODULE}/${MODULE}.yaml root@k8s1:/data/

echo "push success"
echo "start exec k8s apply : kubectl apply -f ${filePath}"

ssh k8s1 "kubectl apply -f ${filePath}"
echo "exec success"




