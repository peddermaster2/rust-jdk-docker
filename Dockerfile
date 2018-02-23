FROM rustlang/rust:nightly

RUN apt-get update -yqq && \
    apt-get install -y openjdk-8-jdk && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
