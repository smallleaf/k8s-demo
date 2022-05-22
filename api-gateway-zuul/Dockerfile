FROM apache/skywalking-java-agent:8.10.0-java8
MAINTAINER xxx xxx@imooc.com

COPY target/api-gateway-zuul-1.0-SNAPSHOT.jar /api-gateway.jar

RUN echo "JAVA_OPTS: " $JAVA_OPTS

ENTRYPOINT java $JAVA_OPTS  -jar /api-gateway.jar
