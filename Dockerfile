FROM mcr.microsoft.com/devcontainers/java:0-11
USER root
WORKDIR /app
COPY . .

RUN chmod +x ./mvnw




