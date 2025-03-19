# Используем образ с JDK 17
FROM openjdk:17-jdk-slim

# Указываем рабочую директорию
WORKDIR /app

# Копируем собранный JAR-файл
COPY target/*.jar app.jar

# Указываем команду для запуска приложения
CMD ["java", "-jar", "app.jar"]
