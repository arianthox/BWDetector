FROM openjdk:13-jdk-slim
LABEL maintainer="erika.hernandez@globant.com"
VOLUME /tmp
EXPOSE 8006
ARG JAR_FILE=build/libs/BWDetector-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} BWDetector-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/BWDetector-0.0.1-SNAPSHOT.jar"]
