# How to Create a Container Using Decker


## Example 1 - A basic debian container running 'hello world' and installing nano.

## Step 1 - Create a copy of the boilerplate


    cp -r boilerplate mysql
    cd mysql



## Step 2 - Rename the .docker/service directory and files


    mv .docker/service .docker/mysql
    mv .docker/mysql/service.env .docker/mysql/mysql.env
    

## Step    

### Example 2 - WordPress - A Multiple Service Container


#### Step 1 - Create a copy of the boilerplate

cp -r boilerplate wordpress
cd wordpress

## Step 2 - Create a docker service folder for each service

We'll potentially need Dockerfiles for each service, so make a copy for each service, MySQl and WordPress.

cp .docker/service .docker/mysql
mv .docker/service .docker/wordpress

## Step 3 - Rename the service.env file for each service

Rename ech `service.env` to the name of the service

cd .docker/mysql
mv service.env mysql.env

cd .docker/wordpress
mv service.env wordpress.env



#### Step 2 - Construct the docker-compose.yml

Now copy the contents of the templates/docker-compose-from-existing-image.yml into docker-compose.yml.

Make a second copy, so that you have 2 service blocks within docker-compose.yml


For each service, use an image from the Docker hub or one of your own.

For the database service, use the following values:

 `%SERVICE_NAME%` = mysql
` %CONTAINER_NAME%`=example.com_mysql
`%IMAGE_NAME%` =mysql:5.7
`%CONTAINER_ENV_FILE%`=.docker/database/database.env

For the container variables, add the following under `environment`

    environment:
       MYSQL_ROOT_PASSWORD: ${MYSQL_ROOT_PASSWORD}
       MYSQL_DATABASE: ${WORDPRESS_DB_NAME}
       MYSQL_USER: ${WORDPRESS_DB_USER}
       MYSQL_PASSWORD: ${WORDPRESS_DB_PASSWORD}

For the volumes section :

    volumes: 
    - ${DB_DATA_PATH:-mysql_data}:/var/lib/mysql


For the ports section:

    ports:
        - ${MYSQL_PORT}:3306

>a ports section is optional. no port for the MySQL database needs to be exposed to an external connection unless you'd like to connect to it directly using a MySQL client.

Edit the `.env-sample` file and add the following:

        #wordpress
        WORDPRESS_DB_NAME=wordpress
        WORDPRESS_DB_USER=root
        WORDPRESS_DB_PASSWORD=wordpress



For the WordPress service, use the following values.

 `%SERVICE_NAME%` = wordpress
` %CONTAINER_NAME%`=example.com_wp
`%IMAGE_NAME%` =wordpress:latest
`%CONTAINER_ENV_FILE%`=.docker/wordpress/wordpress.env




Since we have 2 services, one depending on the other, add the following under the service name declaration `wordpress:`

    depends_on:
      - mysql


For the container variables, add the following under `environment`

    environment:
        WORDPRESS_DB_NAME: "${WORDPRESS_DB_NAME}"
        WORDPRESS_DB_USER: "${WORDPRESS_DB_USER}"
        WORDPRESS_DB_PASSWORD: "${WORDPRESS_DB_PASSWORD}" 



For the volumes section :

    volumes:
        - wp_html:/var/www/html


For the ports section:

     ports:
       - ${WEBSERVER_PORT}:80


Edit the container volumes section to look like this:

volumes: 
     wp_html:
     db_data:   




Edit the `.env-sample` file and add the following:

        #wordpress
        WORDPRESS_DB_NAME=wordpress
        WORDPRESS_DB_USER=root
        WORDPRESS_DB_PASSWORD=wordpress


Finally, create the `.env` file

    cp .env-sample .env

Be sure to change the password. The `.env-sample` is commited to git, the `.env` is ignored by default.

Validate the configuration file:


    docker-compose config

    