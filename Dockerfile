# Using the official Eclipse Temurin base image
FROM eclipse-temurin:17-jdk-alpine

# Set a specific directory for the application
WORKDIR /app

# Copy the application JAR and properties file to the container
COPY ./app/synthea-with-dependencies.jar ./
COPY ./app/synthea.properties ./

# Specify the entry point for the container
ENTRYPOINT ["java", "-jar", "./synthea-with-dependencies.jar", "-c", "./synthea.properties"]
