FROM nvidia/cuda:9.2-cudnn7-devel
RUN sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    python3-dev \
    python3-pip \
    python3-wheel \
    python3-setuptools \
    python3-tk \
    git \
    cmake \
    libblas3 \
    libblas-dev \
    ffmpeg \
    && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

RUN ln -s /usr/bin/python3 /usr/local/bin/python && \
    ln -s /usr/bin/pip3 /usr/local/bin/pip

RUN pip install --upgrade pip==19.3.1 && \
    pip install setuptools==38.2.4 && \
    pip install cupy==6.6.0 chainer==6.6.0 && \
    pip install opencv-python

RUN apt-get update && apt-get install apt-transport-https -y
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
RUN apt-get update && apt-get install -y ttf-mscorefonts-installer \
       msttcorefonts -qq
RUN rm ~/.cache/matplotlib -rf


