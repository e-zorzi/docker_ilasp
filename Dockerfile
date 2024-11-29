FROM ubuntu:22.04

RUN apt-get update && \
    apt-get -y install libpython3.10 && \
    apt-get install -y wget && \
    mkdir ilasptmp && \
    cd ilasptmp && \
    wget https://github.com/ilaspltd/ILASP-releases/releases/download/v4.4.0/ILASP-4.4.0-ubuntu.tar.gz && \
    tar -xzf ILASP-4.4.0-ubuntu.tar.gz && \
    mv ./ILASP /usr/local/bin/ILASP && \
    cd ../ && \
    rm -rf ./ilasptmp

COPY read_file.sh /usr/local/bin/
WORKDIR /usr/local/bin/

ENTRYPOINT [ "/usr/local/bin/read_file.sh" ]