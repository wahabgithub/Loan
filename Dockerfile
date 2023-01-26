#Start with a base image containing Java runtime
FROM openjdk:18.0.2.1-slim as build

#Information around who maintains the image
MAINTAINER easybytes.com

# Add the applications jar to the container
COPY target/loans-0.0.1-SNAPSHOT.jar loans-0.0.1-SNAPSHOT.jar

#execute the application
ENTRYPOINT ["java","-jar","/loans-0.0.1-SNAPSHOT.jar"]