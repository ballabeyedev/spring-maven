# Utiliser Eclipse Temurin 21 (Java 21)
FROM eclipse-temurin:21-jdk-jammy

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier jar généré dans le conteneur
COPY target/*.jar app.jar

# Exposer le port sur lequel Spring Boot écoute
EXPOSE 8080

# Commande pour lancer l'application Spring Boot
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
