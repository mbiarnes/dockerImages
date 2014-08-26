####### BASE ############
FROM fedora:20

######### install java 1.6 ###################
RUN yum install -y java-1.6.0-openjdk --releasever=16 --nogpgcheck
RUN yum clean all

####### BASE VARIABLES ############
ENV JAVA_HOME /usr/lib/jvm/jre-1.6.0-openjdk.x86_64


######### Copy Files ###############
RUN mkdir resources
RUN curl --silent --output /resources/jbpm-dashbuilder.war http://downloads.jboss.org/drools/release/snapshot/6.1.x/jbpm-dashbuilder-6.1.1-SNAPSHOT-eap-6_1.war
RUN curl --silent --output /resources/kie.eap.war http://downloads.jboss.org/drools/release/snapshot/6.1.x/kie-wb-6.1.1-SNAPSHOT-eap-6_1.war
RUN curl --silent --output /resources/jboss-eap.zip http://download.devel.redhat.com/devel/candidates/JBEAP/JBEAP-6.3.0/jboss-eap-6.3.0.zip

########  copy scripts #############
