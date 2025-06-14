FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y docker.io python3 python3-pip && \
    usermod -aG docker jenkins

USER jenkins
