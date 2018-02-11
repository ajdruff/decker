#!/bin/bash

#############
# docker-deck-skel
# http://github.com/ajdruff/docker-deck-skel
# author: andrew@nomstock.com
##############


if false 
then
############ command.sh #################
command.sh can be used to run a series of 'default' commands
when the container runs.
It can be overridden by the user if the image is executed with the run command.


To use command.sh, add the following lines to your Dockerfile:

#add a command script which starts services after installs are done. 
ADD command.sh /usr/local/bin/docker-deck/
RUN chmod +x /usr/local/bin/docker-deck/command.sh
CMD /usr/local/bin/docker-deck/command.sh



fi

echo 'executing command.sh';

#print all environmental variables to see what we passed to container:
printenv;