#!/bin/bash

#############
# docker-deck-skel
# http://github.com/ajdruff/docker-deck-skel
# author: andrew@nomstock.com
##############



if false 
then
############ build.sh #################
build.sh is responsible for installing  apps onto the base image.

To use build.sh, add the following lines to your Dockerfile:

#add a build script which installs stuff on top of base image.
ADD build.sh /usr/local/bin/docker-deck/
#add execute permissions to script
RUN chmod +x /usr/local/bin/docker-deck/build.sh




fi



########################################
install_nano()
########################################
{
apt-get update

apt-get install nano

echo 'nano installed';
}


echo 'executing build.sh';
if ${INSTALL_NANO};then



install_nano



fi

echo "Environmental variables within the build script:"

printenv;


