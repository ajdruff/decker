# Docker Decks

Docker Decks is a Docker container boilerplate that helps you easily create docker-compose files to create or customize a Docker image or container.

## Prerequisites

The following is installed locally:

* [Docker Engine](https://docs.docker.com/engine/installation/) is installed locally or within a Virtual Machine (e.g: Virtual Box)
* [Docker Compose](https://docs.docker.com/compose/) is installed locally or within a Virtual Machine (e.g: Virtual Box)
* you are logged into the container host and are either root or are a member of the docker group

## Terminology

* *VirtualBox Host* refers to the machine that hosts the VirtualBox runtime. 
* *VirtualBox Guest* refers to the virtual machine running on the VirtualBox Host.
* *Container Host* refers to the machine in which Docker and Docker Compose is installed. It can be your local machine or a Virtual Machine (e.g: VirtualBox Guest).
* *Docker Container* refers to the instance of the Docker image that is running on the Container host 
* *Docker Image* refers to the image pulled from a repository (such as the Docker Hub) or locally which defines the container.
* *Docker Deck* refers to the package of files created by Docker Decks for a specific container project

## Authors

* **Andrew Druffner** andrew@nomstock.com

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
