FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y openjdk-11-jdk
COPY Login.java /app/
WORKDIR /app/
RUN javac Login.java
CMD ["java", "Login"]