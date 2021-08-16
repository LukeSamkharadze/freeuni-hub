FROM maven:3.6.0-jdk-11-slim
WORKDIR /freeuni-hub
COPY src ./src
COPY pom.xml ./
EXPOSE 8080
RUN mvn -f . clean package
ENTRYPOINT ["mvn","tomcat7:run"]
