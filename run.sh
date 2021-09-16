#!/bin/bash
mkdir /var/jenkins_home

chown -R 1000 /var/jenkins_home


docker-compose -f docker-compose.yml up --build -d --force-recreate
docker system prune -f