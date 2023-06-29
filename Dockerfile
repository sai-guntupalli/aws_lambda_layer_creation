FROM amazonlinux:latest
RUN ulimit -n 1024 && yum -y update && yum -y install \
    python39 \
    python3-pip \
    python3-devel \
    zip \
    && yum clean all


RUN python3 -m pip install pip
RUN pip install virtualenv