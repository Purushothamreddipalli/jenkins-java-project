# Stage 1: Build stage
FROM maven:3.8.5-openjdk-17 AS buildstage

# Set working directory inside container
WORKDIR /app

# Copy all files from current directory to container
COPY . .

# Build the project using Maven
RUN mvn clean package -DskipTests

# Stage 2: Run stage
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the built jar from build stage
COPY --from=buildstage /app/target/*.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]
