# docker-compose.yml Reference

Use the following reference to  help you create the `docker-compose.yml` for your project.

## Services

### `%SERVICE_NAME%`

The name that identifies your service to the container. Any alphanumeric string.For example, if you are installing MySQL, you might name it 'my_mysql' or just 'mysql'


#### example

    services:
        my_mysql:

### `%CONTAINER_NAME%`

A custom container name. Normally, you wouldn't want to include this at all, since Docker creates its own name based on the directory name containing your compose file. If you do use create multiple containers, Docker simply increments the name with a numeric sequence (1,2,etc).

By using `container_name`,  docker will not let you scale by creating multiple containers since any additional container will re-use the custom name.


#### example

    services:
        my_msql:
         container_name: wordpress_db



### `%IMAGE_NAME%`

The image name (including namespace) that identifies the image that you will be using to create your container. This image must already be available, either locally on your Docker Host, or on the docker hub. 


#### example

    services:
        my_msql:
         container_name: wordpress_db
         image: mysql



### `%CONTAINER_ENV_FILE%`

The  path (relative to your compose file) that contains a file with your environmental variables.

#### example


#### example

    services:
        my_msql:
         container_name: wordpress_db
         image: mysql
         env_file: 
            - docker/myservice.env


### entrypoint

Provide a path to a script that will override the image command.

#### example

    services:
        my_msql:
         container_name: wordpress_db
         image: mysql
         env_file: 
            - docker/myservice.env
        entrypoint:
        /usr/local/bin/docker-deck/entrypoint.sh               - 

### `command`

Uncomment to override the image command  with a custom command script.


### `environment`

These are additional environmental variables not contained in env_file.

#### example 1 

    environment:
    - VAR="123"

In this example,the variable `VAR` can be seen from within the container and holds the value `123`. Outside the container, in the host environment, the variable does not exist.


#### example 2 

    services:
        my_msql:
         container_name: wordpress_db
         image: mysql
         env_file: 
            - docker/myservice.env
        entrypoint:
        /usr/local/bin/docker-deck/entrypoint.sh
        environment:
            - DB_PASSWORD=${MY_PASSWORD:-DefaultPassword} 

In this example, the environmental variable `DB_PASSWORD` is set to equal the variable `${MY_PASSWORD}` contained in the `myservice.env` file. If `MY_PASSWORD` is not supplied, then it takes as its default value `DefaultPassword`. 
 


#### example 3

    #use the value from the myservice.env file ${MYSQL_ROOT_PASSWORD}. the word 'DefaultPassword' will be used as default if not set.  


### Service Volumes

Each Service can have its own volume, which can take its value from an environmental variable, or set to equal a container volume.

#### example 

    volumes:
    - ${SERVICE_VOLUME:-myservice_volume}:/etc/mysevice 

volumes: 
     myservice_volume:
     mysql_volume:             
 
 This maps the path within the service's container `/etc/myservice` to the  path to the value in variable `${SERVICE_VOLUME}`, set in the `.env` file. If not `${SERVICE_VOLUME}` variable is provided, it takes its value from the default `myservice_volume`.

### Ports

By specifying a port, you can expose the port to external services.

 


### FAQs

#### Difference between `.env` and `myservice.env` ?

`.env` contains variables that will only be recognized by docker-compose.yml.  These might typically be settings that are unique to the container.


`myservice.env` contains variables that are recognized from within the container. these might typically be settings that are common across containers.




### Environmental Variables



#### Set a docker-compose.yml varaible

To set a variable that docker-compose.yml uses, set an Environmental variable in the shell you are running docker-compose.

You do this in 2 ays:

* set it in `.env`
* set an environmental variable using a shell script before calling docker-compose.yml

example

    export VARNAME="my value" 
    docker-compose.yml


### Set a container environmental variable

To set an environmental variable that will be used within the created container:

* add it to the myservice.env file you reference in docker-compose.yml.
* assign it within docker-compose.yml using the following format:

    environment:
    - MYSERVICE_VAR="123"


