FROM openjdk:8-jdk-alpine
ENV SLACK_WEBHOOK=https://hooks.slack.com/services/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
ENV HOST=0.0.0.0
ENV PORT=9092
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java $JAVA_OPTS","-jar","/app.jar"]