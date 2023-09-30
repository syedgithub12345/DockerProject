FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y openjdk-11-jdk
COPY Rules.java /app/
WORKDIR /app/
RUN javac Rules.java
CMD ["java", "Rules"]