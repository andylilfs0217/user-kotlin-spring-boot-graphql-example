# Use the official OpenJDK 17-alpine as the base image
FROM openjdk:17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the executable JAR file and application configuration files to the container
COPY build/libs/*.jar /app/myapp.jar
COPY src/main/resources/application.yml /app/application.yml

# Expose the port that the application listens on (change it to your application's port)
EXPOSE 8080

# Run the application when the container starts
CMD ["java", "-jar", "/app/myapp.jar", "--spring.config.location=/app/application.yml"]
