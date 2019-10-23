FROM jenkins/jenkins:lts

USER root

VOLUME /var/jenkins_home
COPY init.groovy /var/jenkins_home/init.groovy.d/init.groovy  

RUN apt-get update && apt-get install -y apt-transport-https debconf-utils

RUN apt-get install unzip
RUN apt-get install zip

#SDKMAN
RUN curl -s "https://get.sdkman.io" | bash \
    && /bin/bash -c "source /root/.sdkman/bin/sdkman-init.sh \
            && sdk install maven \
            && sdk install java 8.0.232-zulu "


COPY plugins.txt /usr/share/jenkins/plugins.txt

COPY ./jobs/petclinic/config.xml /var/jenkins_home/jobs/petclinic/

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt 

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

