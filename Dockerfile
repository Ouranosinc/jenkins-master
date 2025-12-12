FROM jenkins/jenkins:lts

COPY plugins.txt /plugins.txt

RUN jenkins-plugin-cli --plugins -f /plugins.txt
