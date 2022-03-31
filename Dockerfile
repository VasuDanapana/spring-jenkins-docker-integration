FROM openjdk:8
ADD target/spring-jenkins-docker-integration.jar spring-jenkins-docker-integration.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/spring-jenkins-docker-integration.jar"]