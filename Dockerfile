#
# Node.js + Webpack Dockerfile
#
# https://github.com/Jastrzebowski/docker-webpack
#

# Pull base image Debian Wheezy
FROM debian:wheezy

MAINTAINER Karol Jastrzębowski <karol.jastrzebowski@gmail.com>

RUN	apt-get update && apt-get install -y

# Install Node.js
#
# source https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager#debian-and-ubuntu-based-linux-distributions
#

RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash -
RUN apt-get install -y nodejs

# Define working directory
WORKDIR /data

# Define default command.
CMD ["bash"]