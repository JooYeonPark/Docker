FROM openjdk:8

RUN cd /root
RUN wgethttps://github.com/naver/ngrinder/releases/download/ngrinder-3.5.8-20221230/ngrinder-controller-3.5.8.war

RUN pwd
RUN ls

CMD ["java", "-XX:MaxPermSize=200m", "-jar", "ngrinder-controller-3.5.8.war"]
