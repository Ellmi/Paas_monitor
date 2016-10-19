#!/usr/bin/env bash

# we need to install nrpe depends on agent os
cat /etc/issue | grep CentOS
if [ $? -eq 0 ];then
# centos
OS="centos"
sudo yum -y install nrpe
fi

cat /etc/*release | grep fedora
if [ $? -eq 0 ];then
# fedora
OS="fedora"
sudo yum -y install nrpe
fi

cat /etc/issue | grep Ubuntu
if [ $? -eq 0 ];then
# ubuntu
OS="ubuntu"
sudo apt-get install nagios-nrpe-server
fi