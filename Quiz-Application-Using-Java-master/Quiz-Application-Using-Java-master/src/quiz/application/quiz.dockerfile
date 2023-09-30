FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y openjdk-11-jdk
COPY Quiz.java /app/
WORKDIR /app/
RUN javac Quiz.java
CMD ["java", "Quiz"]