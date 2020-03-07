FROM ubuntu
# Install Oracle Server JDK 11
RUN apt update
RUN apt upgrade -y
RUN apt install -y netcat
COPY jdk-11.0.6_linux-x64_bin.tar.gz /tmp
RUN cd /tmp && \
    tar xf jdk-11.0.6_linux-x64_bin.tar.gz -C /srv/ && \
    rm -f jdk-11.0.6_linux-x64_bin.tar.gz && \
    ln -s /srv/jdk-11* /srv/jdk && \
    ln -s /srv/jdk/bin/* /usr/local/bin
    
ENV JAVA_HOME /srv/jdk
