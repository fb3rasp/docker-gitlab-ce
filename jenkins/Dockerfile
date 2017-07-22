FROM jenkins:2.46.2

USER root

RUN apt-get update &&\
    apt-get install docker.io sudo zip python-pip -y

RUN pip install docker-compose

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
 
USER jenkins