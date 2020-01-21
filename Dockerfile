FROM osrf/ros:kinetic-desktop-full-xenial
RUN apt-get update && apt-get install -y --no-install-recommends \
        pkg-config \
        libxau-dev \
        libxdmcp-dev \
        libxcb1-dev \
        libxext-dev \
        libx11-dev && \
    rm -rf /var/lib/apt/lists/*

# replace with other Ubuntu version if desired
# see: https://hub.docker.com/r/nvidia/opengl/


RUN apt-get update && apt-get install  -y ros-kinetic-hector-gazebo-plugins apt-utils psmisc wget

# installing development tools 


RUN apt-get update && apt-get install -y build-essential  \
 python-catkin-tools  \
 git  \
 vim

#installing nvim as IDE 
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:neovim-ppa/unstable -y
RUN apt-get update &&  apt-get install -q -y neovim



EXPOSE 11345
CMD [ "bash" ]
