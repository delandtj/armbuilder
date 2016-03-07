FROM ubuntu:16.04
RUN apt-get update && apt-get -y upgrade 
RUN apt-get install -y build-essential

RUN apt-get install -y \
  git wget  \
  mercurial \
  subversion \
  u-boot-tools \
  gcc-arm-linux-gnueabihf \
  device-tree-compiler \
  vim bc libncurses5-dev
ADD entrypoint /
# get git trees
CMD entrypoint 



