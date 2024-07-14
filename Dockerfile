# Use the --platform flag to specify the architecture
FROM --platform=linux/amd64 openjdk:17-jdk-alpine
RUN addgroup -S app && adduser -S app -G app
USER app
COPY target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
