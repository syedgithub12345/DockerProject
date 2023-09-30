FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y openjdk-11-jdk
COPY Score.java /app/
WORKDIR /app/
RUN javac Score.java
CMD ["java", "Score"]