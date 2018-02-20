#!/bin/bash

#############
# docker-deck-skel
# http://github.com/ajdruff/docker-deck-skel
# author: andrew@nomstock.com
##############
#build.sh is responsible for installing  apps onto the base image.

#To use build.sh, add the following lines to your Dockerfile:
#ADD build.sh /usr/local/bin/docker-deck/
#RUN chmod +x /usr/local/bin/docker-deck/build.sh
#RUN /usr/local/bin/docker-deck/build.sh


echo "executing build.sh"
########################################
install_nano()
########################################
{
apt-get update

apt-get install nano

echo 'nano installed';
}

if [ "${INSTALL_NANO}" == "true"  ];then
echo "installing nano"
install_nano
fi