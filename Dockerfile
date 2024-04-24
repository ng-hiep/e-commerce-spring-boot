FROM maven:3.9.4 as build

WORKDIR /app

COPY . .

RUN mvn package -DskipTests

EXPOSE 8080

CMD [ "mvn", "spring-boot:run" ]

# FROM openjdk:21

# WORKDIR /app

# COPY target/springcommerce-0.0.1-SNAPSHOT.jar app.jar

# EXPOSE 8080

# ENTRYPOINT [ "java", "-jar", "/app.jar" ]


