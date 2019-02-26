FROM jenkins/jenkins:lts

COPY plugins.txt /plugins.txt

RUN /usr/local/bin/install-plugins.sh < /plugins.txt
