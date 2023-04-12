FROM mcr.microsoft.com/devcontainers/java:0-11

WORKDIR /app
COPY . .

RUN chmod +x ./mvnw




