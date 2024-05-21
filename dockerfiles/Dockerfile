FROM eclipse-temurin:17.0.7_7-jre
EXPOSE 8180
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} app.jar
RUN groupadd -r pipeline && useradd --no-log-init -r -g pipeline k8s-pipeline

USER k8s-pipeline

ENTRYPOINT ["java","-jar","/app.jar"]

