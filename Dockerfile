FROM openjdk:11-jdk-slim
COPY ./target/*.jar /Documents/mydocker/demo.jar
WORKDIR /Documents/mydocker
RUN sh -c 'touch demo.jar'

EXPOSE 8080

ENTRYPOINT ["java","-jar","demo.jar"]