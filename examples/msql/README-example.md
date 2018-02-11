# docker-deck-mysql-example

A [Docker](https://www.docker.com/what-docker) Deck that provides a [Docker compose file](https://docs.docker.com/compose/compose-file/) to create a MySQL container


## About Docker Decks

Docker Decks consist of a Docker compose file, an environmental variable file that supplies default environmental variables to the host, and any associated helper scripts for easy Docker container installation.

*Docker Decks try to adhere to the following:*

* most configuration is done using the .env file, avoiding unneccesarily editing the docker-compose.yml file
* defaults to using persistent volumes
* defaults to using standard ports for webserver and database services



### Prerequisites

The following is installed locally 

* [Docker Engine](https://docs.docker.com/engine/installation/) is installed locally or within a Virtual Machine (e.g: Virtual Box)
* [Docker Compose](https://docs.docker.com/compose/) is installed locally or within a Virtual Machine (e.g: Virtual Box)
* you are logged into the container host and are either root or are a member of the docker group

### Terminology

* *VirtualBox Host* refers to the machine that hosts the VirtualBox runtime. 
* *VirtualBox Guest* refers to the virtual machine running on the VirtualBox Host.
* *Container Host* refers to the machine in which Docker and Docker Compose is installed. It can be your local machine or a Virtual Machine (e.g: VirtualBox Guest).
* *Docker Container* refers to the instance of the Docker image that is running on the Container host 
* *Docker Image* refers to the image pulled from a repository (such as the Docker Hub) or locally which defines the container.



### Quick Start


    curl -L https://github.com/ajdruff/docker-deck-wp/archive/master.tar.gz | tar -zx
    mv docker-deck-wp* example.com
    cd example.com
    mv .env-sample .env

Edit `.env` file and change the MySQL root passwords

Now create and run the container:

    docker-compose up


### Detailed Installation Steps

#### Download and Extract
**download manually
**
Go to https://github.com/ajdruff/docker-deck-wp and click 'Clone or Download' and click the 'Download ZIP' link, or download from [https://github.com/ajdruff/docker-deck-wp/archive/master.zip](https://github.com/ajdruff/docker-deck-wp/archive/master.zip)

Extract docker-deck-wp-master.zip

Rename the parent directory from docker-deck-wp-master to `example.com` where `example.com` is the domain of your new website.

**download using git clone**


    git clone https://github.com/ajdruff/docker-deck-wp.git
    mv docker-deck-wp example.com
    cd example.com

where `example.com` is the domain of your new website.

**download using wget**


     wget -qO- https://github.com/ajdruff/docker-deck-wp/archive/master.tar.gz | tar -zx
     mv docker-deck-wp* example.com

where `example.com` is the domain of your new website.

**download using curl**


    curl -L https://github.com/ajdruff/docker-deck-wp/archive/master.tar.gz | tar -zx
    mv docker-deck-wp* example.com
    cd example.com

where `example.com` is the domain of your new website.

#### Configuration

Configuration of the container should be done primarily using the `.env` file.

    mv .env-sample .env

Edit the `.env` file with your favorite editor. 

At a minimum, you should change the following:

* `MYSQL_ROOT_PASSWORD`



>The `.env` file should never be committed to a git repo since it contains passwords and configuration for your container. By default, `.env` file is in the .gitignore file to be ignored if you clone the repo.




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

