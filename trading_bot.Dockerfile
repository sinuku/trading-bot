FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
#ENV DEBIAN_FRONTEND teletype
RUN apt-get update && \
    apt install -y --no-install-recommends \
    sudo \
    git

RUN pip install requests pyyaml

COPY . /home/workspace
WORKDIR /home/workspace

CMD ["/bin/bash"]