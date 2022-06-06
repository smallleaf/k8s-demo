FROM apache/skywalking-java-agent:8.10.0-java8
MAINTAINER yesheng 578986218@qq.com

RUN echo "JAVA_OPTS: " $JAVA_OPTS

COPY ${MODULE}/target/${MODULE}-1.0.jar /${MODULE}.jar


ENTRYPOINT java $JAVA_OPTS  -jar /${MODULE}.jar
