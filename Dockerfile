FROM jenkins/jenkins
USER root
RUN apt-get update \
     && apt-get install -y sudo apt-transport-https ca-certificates curl software-properties-common \
     && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt-get update
RUN apt-cache policy docker-ce
RUN apt-get install -y docker-ce
RUN usermod -aG docker jenkins
RUN usermod -aG staff jenkins
USER jenkins

