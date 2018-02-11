# Docker Decks

Docker is a template to create your own [Docker](https://www.docker.com/what-docker) Deck.

For more information on what a Docker Deck is and how to use one, see the 'About Docker Decks' section in this readme.

## Quick Start

    curl -L https://github.com/ajdruff/docker-deck-skel/archive/master.tar.gz | tar -zx
    mv docker-deck-skel* docker-deck-MYDECK
    cd docker-deck-MYDECK
    cp .env-sample .env

where `MYDECK` is the name of your deck.




### FAQS






## About Docker Decks

Docker Decks consist of a Docker compose file, an environmental variable file that supplies default environmental variables to the host, and any associated helper scripts for Docker image and container creation.

*Docker Decks try to adhere to the following:*

* most configuration is done using an environmental file, avoiding unnecessarily editing the docker-compose.yml file
* defaults to using persistent volumes
* defaults to using standard ports for webserver and database services
* should work 'out of the box' with little to no configuration



## Prerequisites

The following is installed locally

* [Docker Engine](https://docs.docker.com/engine/installation/) is installed locally or within a Virtual Machine (e.g: Virtual Box)
* [Docker Compose](https://docs.docker.com/compose/) is installed locally or within a Virtual Machine (e.g: Virtual Box)
* you are logged into the container host and are either root or are a member of the docker group


## Terminology

* *VirtualBox Host* refers to the machine that hosts the VirtualBox runtime.
* *VirtualBox Guest* refers to the virtual machine running on the VirtualBox Host.
* *Container Host* refers to the machine in which Docker and Docker Compose is installed. It can be your local machine or a Virtual Machine (e.g: VirtualBox Guest).
* *Docker Container* refers to the instance of the Docker image that is running on the Container host
* *Docker Image* refers to the image pulled from a repository (such as the Docker Hub) or locally which defines the container.

## Directory Structure

The directory structure of a Docker Deck consists of the following.

    |-- docker
    |   |-- README.md
    |   |-- _build
    |   |   |-- Dockerfile
    |   |   |-- build.sh
    |   |   |-- command.sh
    |   |   `-- entrypoint.sh
    |   |-- myservice.env
    |   `-- mysql.env
    |-- docker-compose-scrap.php
    |-- docker-compose.yml

* `docker/_build/Dockerfile`   Provides the Docker file to build your image.A default file is provided to build a very basic Debian container.
* `docker/_build/build.sh`   An example build script. Use it to add apps onto your base images. The included file contains a basic example of installing nano.
* `docker/_build/command.sh`   An example command script. to run a series of 'default' commands when the container runs. It can be overridden by the user if the image is executed with the run command.
* `docker/_build/entrypoint.sh` can be used to run a series of commands when the container runs.Unlike command.sh, it cannot be overridden by the user.
* `docker/myservice.env`sh 


## Release

Once you are happy with your results, release it on GitHub with the following:

* The Docker directory
* A README.MD using the README-example.md as a starting point
* A .env-sample.md appropriate for your project.




## Contributing

1. Fork it!
2. Create your feature branch: git checkout -b my-new-feature
3. Commit your changes: git commit -am 'Add some feature'
4. Push to the branch: git push origin my-new-feature
5. Submit a pull request :D




## Authors

* **Andrew Druffner** andrew@nomstock.com

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

