#!/bin/bash

#############
# docker-deck-skel
# http://github.com/ajdruff/docker-deck-skel
# author: andrew@nomstock.com
############ command.sh #################
#command.sh can be used to run a series of 'default' commands
#when the container runs.
#It can be overridden by the user if the image is executed with the run command.


#To use command.sh, add the following lines to your Dockerfile:

#ADD command.sh /usr/local/bin/docker-deck/
#RUN chmod +x /usr/local/bin/docker-deck/command.sh
#CMD /usr/local/bin/docker-deck/command.sh



echo 'executing command.sh';

#print all environmental variables to see what we passed to container:
echo "Container Environmental Variables:"
printenv;