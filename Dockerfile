FROM mcr.microsoft.com/devcontainers/java:0-11
WORKDIR /app
COPY . .

RUN ./mvnw clean package -DskipTests



