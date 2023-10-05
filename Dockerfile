FROM maven:3.8.3-openjdk-17 AS MAVEN_TOOL_CHAIN

# COPY PARENT MODULE
COPY pom.xml /app/

# COPY CHILD MODULE
COPY cms-porto-controller /app/cms-porto-controller/
COPY cms-porto-entity /app/cms-porto-entity/
COPY cms-porto-model /app/cms-porto-model/
COPY cms-porto-repository /app/cms-porto-repository/
COPY cms-porto-service /app/cms-porto-service/
COPY cms-porto-security /app/cms-porto-security/

WORKDIR /app/

RUN mvn clean install -Pdocker

# BUILD SERVICE
FROM openjdk:17-jdk-alpine
COPY --from=MAVEN_TOOL_CHAIN /app/cms-porto-controller/target/cms-porto-controller.jar app.jar

RUN sh -c 'touch /app.jar'

ENTRYPOINT ["java","-jar","/app.jar"]