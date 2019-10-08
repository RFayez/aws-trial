#Sets the Base Image for subsequent instructions.
FROM openjdk:8-jdk-alpine
LABEL Author=RihamFayez
#creates a mount point for externally mounted volumes or other containers.
VOLUME /tmp
#copies new files or directories to container. By default this copies as root regardless of the USER/WORKDIR
COPY target/aws-service-trail1-0.0.1-SNAPSHOT.jar app.jar
#configures a container that will run as an executable
ENTRYPOINT ["java","-jar","/app.jar"]