FROM jenkins/jenkins:lts

USER root

# התקנת Docker בתוך Jenkins
RUN apt-get update && \
    apt-get install -y docker.io && \
    usermod -aG docker jenkins

USER jenkins
