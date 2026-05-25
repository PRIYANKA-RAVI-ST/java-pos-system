FROM eclipse-temurin:17

WORKDIR /app

COPY . .

RUN chmod +x mvn

RUN ./mvn clean package -DskipTests

CMD ["java","-jar","target/*.jar"]
