#!/bin/bash

cd section12

cd accounts
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/accounts:s12
cd ..

cd cards
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/cards:s12
cd ..

cd configserver
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/configserver:s12
cd ..

cd eurekaserver
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/eurekaserver:s12
cd ..

cd gatewayserver
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/gatewayserver:s12
cd ..

cd loans
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/loans:s12
cd ..
