FROM mcr.microsoft.com/devcontainers/java:0-11
USER root
WORKDIR /app
COPY . .



RUN ./mvnw clean package -DskipTests



