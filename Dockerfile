FROM ubuntu:latest
MAINTAINER Vladyslav Stetsenko"ravenzakmoto@gmail.com"

RUN apt-get update && \
    apt-get --no-install-recommends install -q -y openjdk-7-jre-headless && \
    rm -rf /var/lib/apt/lists/*
ADD http://mirrors.jenkins-ci.org/war/2.20/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]
