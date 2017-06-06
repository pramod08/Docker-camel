# pull base image.
FROM java

# maintainer details
MAINTAINER Bizruntime

Run apt-get update && apt-get install -y git &&  apt-get install -y maven


# attach volumes
VOLUME /volume/git


# create working directory
RUN mkdir -p /local/git

#Copy the COde from git to DOcker
RUN git clone https://github.com/dm-sanath/ServiceChannelWebService2.git /local/git/ServiceChannelWebService2
WORKDIR /local/git/ServiceChannelWebService2

RUN mvn clean install -DskipTests
#RUN  mvn eclipse:clean
#RUN  mvn eclipse:eclipse
