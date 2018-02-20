

>**note**
This is a template for the README for your Docker Deck project. Be sure to edit it for your project.

##############################
# docker-deck-PROJECT_NAME

A [Docker](https://www.docker.com/what-docker) Deck that provides a [Docker compose file](https://docs.docker.com/compose/compose-file/) to create a  container.



## Quick Start


    curl -L https://github.com/PROJECT_NAMESPACE/archive/master.tar.gz | tar -zx
    mv docker-deck-wp* example.com
    cd example.com
    mv .env-sample .env

Now edit the `.env` file for values appropriate for your project.

Finally,create and run the container:

    docker-compose up -d

To start or stop the container:

    docker-compose [start|stop]

To destroy the container

    docker-compose down

To attach to a running container:

    docker exec -t -i CONTAINER_NAME /bin/bash

## Configuration


## Usage


## Download & Installation


Use one of the following to grab the latest release:

* click the GitHub download link for the project
* wget -qO- https://github.com/PROJECT_NAMESPACE/archive/master.tar.gz | tar -zx
* curl -L https://github.com/PROJECT_NAMESPACE/archive/master.tar.gz | tar -zx
* git clone `https://github.com/GITHUB_ACCOUNT/PROJECT_NAME.git`

Once downloaded, create a project directory and a .env file:

        mv docker-deck-wp* project_directory
        cd project_directory
        mv .env-sample .env

## Contributing

1. Fork it!
2. Create your feature branch: git checkout -b my-new-feature
3. Commit your changes: git commit -am 'Add some feature'
4. Push to the branch: git push origin my-new-feature
5. Submit a pull request :D




## Authors

* 

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
