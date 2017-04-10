FROM jenkins:2.46.1

USER root

RUN apt-get update &&\
    apt-get install docker.io sudo zip -y

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
 
USER jenkins