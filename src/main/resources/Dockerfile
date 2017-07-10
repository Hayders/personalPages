FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD personal-page.war app.war
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.war" ]