FROM apache/skywalking-java-agent:8.10.0-java8
MAINTAINER yesheng 578986218@qq.com

COPY module/target/module-1.0.jar /module.jar

RUN echo "JAVA_OPTS: " $JAVA_OPTS

ENTRYPOINT java $JAVA_OPTS  -jar /module.jar
