FROM openjdk:21-jdk
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY odev.jar odev.jar
EXPOSE 4444
ENTRYPOINT exec java $JAVA_OPTS -jar odev.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar odev.jar