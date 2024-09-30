#start with a base image containing Java runtime
FROM openjdk:22-jdk

#information about who built this image
LABEL author="Eazy Bytes"

#Add the application's jar to the container
COPY target/accounts-0.0.1-SNAPSHOT.jar accounts-0.0.1-SNAPSHOT.jar

#execute the application
ENTRYPOINT ["java","-jar","accounts-0.0.1-SNAPSHOT.jar"]