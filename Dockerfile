# Imagen base con JDK 21
FROM openjdk:21-jdk-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el JAR desde la carpeta target a la raíz del contenedor
COPY target/forohub-0.0.1-SNAPSHOT.jar app.jar

# Puerto expuesto (coincide con Spring Boot)
EXPOSE 8080

# Comando para ejecutar la app
ENTRYPOINT ["java", "-jar", "app.jar"]
