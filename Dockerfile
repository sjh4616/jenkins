FROM jenkins/jenkins:lts
USER root
RUN apt-get install git curl zip unzip
COPY ./install-awscli.sh install-awscli.sh
COPY ./jenkins-in-docker-install.sh jenkins-in-docker-install.sh
RUN chmod u+x install-awscli.sh && ./install-awscli.sh && \
    chmod u+x jenkins-in-docker-install.sh && ./jenkins-in-docker-install.sh
