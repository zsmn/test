FROM ubuntu:18.04

# dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    qt5-default \
    sudo \
    protobuf-compiler \
    libsfml-dev \
    freeglut3-dev libgl1-mesa-dev libglm-dev libglew1.5-dev \
    && apt-get clean

# gear system
RUN cd /home && \
    git clone https://github.com/MaracatronicsRobotics/GEARSystem.git && \
    cd GEARSystem && \
    cd trunk && \
    sh InstallUbuntuDependencies.sh && \
    sh build/corba_skeletons.sh && \
    qmake install_path=/usr/lib && \
    make -j4 && \
    sh install.sh 

RUN git clone https://github.com/MaracatronicsRobotics/WRBackbone.git && \
    cd WRBackbone && \
    cd trunk && \
    mkdir build && \
    cd build && \
    qmake .. && \
    make -j4
