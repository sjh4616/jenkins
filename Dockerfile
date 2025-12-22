FROM jenkins/jenkins:lts
USER root
RUN apt-get install zip unzip git curl
COPY scripts/install-awscli.sh install-awscli.sh
COPY scripts/install-docker.sh install-docker.sh
RUN chmod u+x install-awscli.sh && ./install-awscli.sh

