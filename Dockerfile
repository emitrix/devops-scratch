FROM jenkinsci/blueocean
# ORIGINAL jenkins
#FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y ruby make 
# drop back to the regular jenkins user - good practice
USER jenkins
RUN /usr/local/bin/install-plugins.sh gitlab-plugin
