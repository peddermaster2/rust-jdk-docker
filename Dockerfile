FROM rustlang/rust:nightly

RUN apt-get update -yqq && \
    apt-get install -yq --no-install-recommends \
        openjdk-17-jdk \
        llvm-dev \
        libclang-dev \
        clang && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64/

RUN cd /opt && \
    wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz && \
    tar xzvf apache-maven-3.9.6-bin.tar.gz && \
    rm apache-maven-3.9.6-bin.tar.gz

ENV PATH=/opt/apache-maven-3.9.6/bin:$PATH
