FROM java:8
EXPOSE 4006

VOLUME /tmp
ADD SignSystem-0.0.2-SNAPSHOT.jar /app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-jar","/app.jar"]

