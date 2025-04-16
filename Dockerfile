FROM maven:3.8.3-amazoncorretto-17
COPY target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar", "--spring.profiles.active=k8s"]