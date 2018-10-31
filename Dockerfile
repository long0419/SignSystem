FROM java:8
EXPOSE 4008

VOLUME /tmp
ADD SignSystem-0.0.2-SNAPSHOT.jar /app.jar

#设置时区
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone \
    
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-jar","/app.jar"]



