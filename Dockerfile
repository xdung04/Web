FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY web.jar web.jar
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -jar web.jar
