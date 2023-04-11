FROM adoptopenjdk:11-jdk-hotspot as builder
WORKDIR /app
COPY . .
RUN ./mvnw clean package -DskipTests

FROM adoptopenjdk:11-jre-hotspot

RUN apt-get update && apt-get install -y netcat

WORKDIR /app
COPY --from=builder /app/target/*.jar ./app.jar
COPY --from=builder /app/wait-for.sh ./wait-for.sh

RUN chmod +x ./wait-for.sh

ENTRYPOINT ["./wait-for.sh", "db 3306", "java", "-jar", "app.jar"]



