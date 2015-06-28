FROM phusion/baseimage

MAINTAINER Alexander Gil

RUN apt-get update

# spunkybot
RUN apt-get -y install git python-dev build-essential libsqlite3-dev 
RUN git clone https://github.com/pando85/spunkybot.git /opt/spunkybot
RUN mkdir /root/{spunkybot,q3ut4}

#
CMD ["/opt/spunkybot/spunky.py""]