#!/bin/bash
if [ ! -d /var/jenkins_home  ];then
  mkdir /var/jenkins_home
else
  echo dir exist
fi

chown -R 1000 /var/jenkins_home

docker-compose -f docker-compose.yaml up --build -d --force-recreate
docker system prune -f