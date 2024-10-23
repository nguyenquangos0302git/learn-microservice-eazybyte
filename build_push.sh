#!/bin/bash

cd section11

cd accounts
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/accounts:s11
cd ..

cd cards
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/cards:s11
cd ..

cd configserver
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/configserver:s11
cd ..

cd eurekaserver
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/eurekaserver:s11
cd ..

cd gatewayserver
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/gatewayserver:s11
cd ..

cd loans
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/loans:s11
cd ..
