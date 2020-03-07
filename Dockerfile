FROM ubuntu
# Install Oracle Server JDK 11
RUN apt update
RUN apt upgrade -y
RUN apt install -y apt-utils
RUN apt install -y curl
RUN cd /tmp && \
    curl -L -O -k "https://github.com/mawenpeng/docker_jdk11/raw/jdk-11.0.6_linux-x64_bin.tar.gz" && \
    tar xf jdk-11.0.6_linux-x64_bin.tar.gz -C /srv/ && \
    rm -f jdk-11.0.6_linux-x64_bin.tar.gz && \
    ln -s /srv/jdk-11* /srv/jdk && \
    ln -s /srv/jdk/bin/* /usr/local/bin
    
ENV JAVA_HOME /srv/jdk
