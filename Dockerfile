FROM openjdk:17-jdk-alpine

WORKDIR /discovery

COPY target/*.jar /discovery/app.jar

EXPOSE 8080

CMD java -XX:+UseContainerSupport -Xmx512m -jar app.jar