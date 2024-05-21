FROM eclipse-temurin:17.0.7_7-jre
EXPOSE 8180
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN addgroup -S nonroot \
    && adduser -S nonroot -G nonroot

USER nonroot

ENTRYPOINT ["java","-jar","/app.jar"]

