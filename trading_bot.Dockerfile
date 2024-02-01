FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
#ENV DEBIAN_FRONTEND teletype
RUN apt-get update && \
    apt install -y --no-install-recommends \
    sudo \
    python3-pip \
    git

RUN pip install requests pyyaml

# create a symlink for python bin
RUN ln -s /usr/bin/python3 /usr/bin/python

COPY . /home/workspace
WORKDIR /home/workspace

CMD ["/bin/bash"]