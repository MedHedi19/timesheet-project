# Use Temurin (Adoptium) OpenJDK 8 JRE on Alpine – maintained in 2026
FROM eclipse-temurin:8-jre-alpine

# Set working directory
WORKDIR /app

# Copy the JAR file built by Maven (uses wildcard to match any version)
COPY target/*.jar app.jar

# Expose the port your Spring Boot app uses (from application.properties)
EXPOSE 8082

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
