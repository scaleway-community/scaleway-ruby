## -*- docker-image-name: "scaleway/ruby:latest" -*-
ARG SCW_ARCH
FROM scaleway/ubuntu:${SCW_ARCH}-xenial

MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/scw-builder-enter


# Install packages
RUN apt-get -q update         \
 && apt-get -y -qq upgrade    \
 && apt-get -y -qq install    \
        ruby                  \
 && apt-get clean


# Install RVM stable with ruby with rails
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
 && ( \
     while :; do echo -n .; sleep 60; done & \
     curl -sSL https://get.rvm.io | bash -s stable --rails \
    )


# Install rvm
RUN echo 'source /etc/profile.d/rvm.sh' >> /etc/profile  \
 && echo 'source /etc/profile.d/rvm.sh' >> ~/.bashrc     \
 && /bin/bash -l -c "rvm requirements;"                  \
 && /bin/bash -l -c "gem install bundler rails unicorn"


# Clean rootfs from image-builder
RUN /usr/local/sbin/scw-builder-leave
