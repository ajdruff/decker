# Entrypoint.sh

`entrypoint.sh` can be used to run a series of commands when the container runs.Unlike command.sh, it cannot be overridden by the user.

## Usage

Entrypoint.sh can be implemented by adding the script from within the Dockerfile, and then calling it either by a Dockerfile or docker-compose.yml directive.

You can use either and `Entrypoint` directive or a `command` directive, but not both. If both are used, the `Entrypoint` will run, but not the `command`.

### Dockerfile

Add the following lines to your Dockerfile:

    ADD entrypoint.sh /usr/local/bin/docker-deck/
    RUN chmod +x /usr/local/bin/docker-deck/entrypoint.sh
    ENTRYPOINT /usr/local/bin/docker-deck/entrypoint.sh

>* `ADD`  will copy the entrypoint.sh to the container path `/usr/local/bin/docker-deck`.
>* `RUN` will add the execute permission.
>* `ENTRYPOINT` will execute the script.

#### Docker Compose

Alternatively, instead of executing the entrypoint script using the `ENTRYPOINT` directive in the Dockerfile, you can instead add an `entrypoint` directive to your `docker-compose.yml`.

#### Example:

        services:
            debian:
                container_name: nano_demo
                image: mybuild/debian
                build:
                    context: .docker/debian
                entrypoint: /usr/local/bin/docker-deck/entrypoint.sh  