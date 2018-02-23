FROM rustlang/rust:nightly

RUN apt-get update -yqq && \
    apt-get install -yq openjdk-8-jdk && \
    apt-get install -yq llvm-3.9-dev libclang-3.9-dev clang-3.9 && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
