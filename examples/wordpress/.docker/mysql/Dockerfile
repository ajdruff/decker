      #############
      # docker-decks
      # http://github.com/ajdruff/docker-deck-skel
      # author: andrew@nomstock.com
      # for more info see https://docs.docker.com/engine/reference/builder/
      ##############
     
      #base image
      FROM debian
      
      #Make our environmental variables available to the build scripts.
      #assign these variables in .env
      #expose them in the docker-compose build:args: section
      ARG BUILD_VAR1
      ARG BUILD_VAR2
      ARG INSTALL_NANO

      #add a build script which customizes our base image.
      ADD build.sh /usr/local/bin/docker-deck/
      RUN chmod +x /usr/local/bin/docker-deck/build.sh
      
      #add a command script which runs a default app or service 
      ADD command.sh /usr/local/bin/docker-deck/
      RUN chmod +x /usr/local/bin/docker-deck/command.sh

      #add an entrypoint script which runs a app or service             
      ADD entrypoint.sh /usr/local/bin/docker-deck/
      RUN chmod +x /usr/local/bin/docker-deck/entrypoint.sh


      #Execute our installed scripts           
      RUN /usr/local/bin/docker-deck/build.sh
    
      #Uncomment CMD or ENTRYPOINT but not both
      #CMD /usr/local/bin/docker-deck/command.sh
      #ENTRYPOINT /usr/local/bin/docker-deck/entrypoint.sh

#other options:
#ENTRYPOINT ["/bin/bash"]  
       
#Use Entrypoint or CMD/command.sh, but not both.


#To test:
#uncomment #CMD
# docker-compose up --build
#now run 
#docker run -it CONTAINERNAME /bin/bash    . Thsi should let you connect to container since /bin/bash is overriding CMD 
#now comment out CMD and uncomment ENTRYPOINT
# docker-compose up --build
#ddocker run -it CONTAINERNAME /bin/bash 
#this will not let you run /bin/bash, it just does what entrypoint.sh does.
