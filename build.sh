#!/bin/bash



echo "workspace : ${WORKSPACE},module: ${MODULE}"

sed -i  "s/module/${MODULE}/g" Dockerfile

cat Dockerfile

docker build -t 578986218/${MODULE}:latest .
docker push 578986218/${MODULE}:latest

filePath="/data/${MODULE}.yaml"
echo "开始部署，推送k8s文件到:${filePath}"
scp ${MODULE}/${MODULE}.yaml root@k8s1:/data/

echo "推送成功"

echo "开始登录k8s1机器"

ssh k8s1

echo "登录成功"

cat /data/${MODULE}.yaml

echo "执行k8s命令"

exit

echo "退出执行完毕"


