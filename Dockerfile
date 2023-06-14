# FROM openjdk:8

# RUN cd /root
# RUN wget https://github.com/naver/ngrinder/releases/download/ngrinder-3.5.8-20221230/ngrinder-controller-3.5.8.war
 
# RUN pwd
# RUN ls

# CMD ["java", "-XX:MaxPermSize=200m", "-jar", "ngrinder-controller-3.5.8.war"]


FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y openjdk-11-jdk

RUN cd /root
RUN apt-get install https://github.com/naver/ngrinder/releases/download/ngrinder-3.5.8-20221230/ngrinder-controller-3.5.8.war

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-arm64 \
 PATH=${PATH}:${JAVA_HOME}/bin \
 LANG=C.UTF-8

CMD java -Djava.io.tmpdir=/tmp/ngrinder -jar /opt/ngrinder-controller-3.5.8.war 
