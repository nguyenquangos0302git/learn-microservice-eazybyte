#!/bin/bash

cd section13

cd accounts
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/accounts:s13
cd ..

cd cards
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/cards:s13
cd ..

cd configserver
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/configserver:s13
cd ..

cd eurekaserver
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/eurekaserver:s13
cd ..

cd gatewayserver
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/gatewayserver:s13
cd ..

cd loans
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/loans:s13
cd ..

cd message
mvn clean compile jib:dockerBuild
docker push docker.io/nguyenquangos0302app/message:s13
cd ..
