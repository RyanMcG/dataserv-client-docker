FROM ubuntu:14.04
MAINTAINER Ryan McGowan <ryan@ryanmcg.com>

RUN apt-get update
RUN apt-get install -y python3-pip git
RUN git clone https://github.com/cloudmatrix/esky.git
RUN pip3 install -e esky
RUN pip3 install dataserv-client
RUN dataserv-client version

ENTRYPOINT ["dataserv-client"]
