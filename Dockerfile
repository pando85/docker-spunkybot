MAINTAINER Alexander Gil

FROM phusion/baseimage 

RUN apt-get update

# spunkybot
RUN apt-get -y install git python-dev build-essential libsqlite3-dev 
RUN git clone https://github.com/SpunkyBot/spunkybot.git /opt/spunkybot

#
CMD ["/opt/spunkybot/spunky.py""]