# This is Dockerfile for my SpringBoot Application image

FROM openjdk:8-jre

VOLUME /tmp

ARG JAR_FILE=/target/*.jar

COPY ${JAR_FILE} docker.jar

RUN echo "I am creating a docker image for my handson"

MAINTAINER "moumitadas0991@gmail.com"

ENTRYPOINT ["java" ,"-jar", "docker.jar"]