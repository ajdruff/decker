#!/bin/bash

#############
# docker-deck-skel
# http://github.com/ajdruff/docker-deck-skel
# author: andrew@nomstock.com
############ entrypoint.sh #################
#entrypoint.sh can be used to run a series of commands when the container runs.
#Unlike command.sh, it cannot be overridden by the user.
#To use entrypoint.sh, add the following lines to your Dockerfile:
#add entrypoint script            
#ADD entrypoint.sh /usr/local/bin/docker-deck/
#RUN chmod +x /usr/local/bin/docker-deck/entrypoint.sh
#ENTRYPOINT /usr/local/bin/docker-deck/entrypoint.sh

#Or add the following to Dockerfile
#entrypoint: docker/entrypoint.sh


##########################
keep_container_active ()
##########################
{ 
echo 'keeping container active using tail';
/bin/bash -c "tail -f /dev/null";
} 


###############################
# Main
###############################
echo 'executing entrypoint.sh';
keep_container_active