FROM jenkins/jenkins:2.70
# FROM jenkins/jenkins:lts 
# FROM jenkins:2.46.2

MAINTAINER Rainer Spittel (rainer.spittel@tepapa.govt.nz)

USER root

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    apt-get update && \
    apt-get install -y docker-ce && \
    apt-get install sudo zip python-pip -y && \
    pip install docker-compose && \
    echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers && \
    rm -rf /var/lib/apt/lists/*

USER jenkins
