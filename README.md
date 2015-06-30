Docker file for Spunky Bot
===================================

Docker file to run Spunky Bot


requirements
------------

* a host running [Docker](http://docker.io)
* this docker file

Build the images
----------------

```bash
docker build -t spunkybot github.com/pando85/docker-spunkybot
```


Run the containers
------------------

* create a directory with your Spunky Bot config on the docker host machine in `/home/username/Urt-server/spunky-conf/`
* copy in there your 'conf/{settings.conf,rules.conf}'
* create a new spunkybot container using config file `/home/yourname/spunkybot-share/spunkybot.xml` 

```bash
sudo docker run -d -v /home/username/Urt_server/spunky-conf:/root/spunkybot -v /home/username/Urt_server/q3ut4:/root/q3ut4 --name="spunkybot" --net=host spunkybot /root/spunkybot
```