#!/bin/sh
 
 
 export HADOOP_VERSION="3.2.1"
 
 sudo apt-get -y update && \
 sudo apt-get install --no-install-recommends -y openjdk-8-jre-headless ca-certificates-java && \
 sudo rm -rf /var/lib/apt/lists/*
 
 
# Install hadoop
cd /tmp && \
    wget http://archive.apache.org/dist/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz && \
    sudo tar xzf hadoop-${HADOOP_VERSION}.tar.gz -C /usr/local --owner root --group root --no-same-owner && \
    sudo rm hadoop-${HADOOP_VERSION}.tar.gz
cd /usr/local && sudo ln -s hadoop-3.2.1 hadoop

export COMPOSE_HTTP_TIMEOUT=30000

sudo cp /vagrant/scripts/myenvvars.sh /etc/profile.d/myenvvars.sh
