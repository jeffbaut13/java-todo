# Etapa de construcción
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests -Dproject.build.sourceEncoding=UTF-8

# Etapa de ejecución
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app

# Copia el .jar compilado. Cambia app.jar si el nombre de tu jar es diferente.
COPY --from=build /app/target/estudiante-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8092

CMD ["java", "-jar", "app.jar"]
