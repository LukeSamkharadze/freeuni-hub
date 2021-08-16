FROM maven:3.8.1-jdk-11 AS build
WORKDIR /freeuni-hub
COPY src ./src
COPY pom.xml ./
EXPOSE 8080
RUN mvn -f . clean package
ENTRYPOINT ["mvn","tomcat7:run"]
