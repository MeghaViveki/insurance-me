# Use the official OpenJDK 11 base image from Docker Hub
FROM openjdk:11

# Define a build-time argument for the JAR file path
# This allows flexibility in specifying the artifact name during build (e.g., with --build-arg)
ARG JAR_FILE=target/*.jar

# Copy the JAR file from the build context into the container and rename it to app.jar
COPY ${JAR_FILE} app.jar

# Define the container's entry point: run the JAR file using Java
ENTRYPOINT ["java", "-jar", "/app.jar"]
