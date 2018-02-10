FROM maven:3.2-jdk-8-onbuild
EXPOSE 8080


RUN rm /usr/src/app/src/main/resources/application.properties
COPY application.properties /usr/src/app/src/main/resources/application.properties

WORKDIR /usr/src/app

CMD ./mvnw spring-boot:run
