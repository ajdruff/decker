# Build.sh

build.sh can be used to install packages upon a base image.

## Usage

To use `build.sh`, add the following lines to your Dockerfile:

    ADD build.sh /usr/local/bin/docker-deck/
    RUN chmod +x /usr/local/bin/docker-deck/build.sh
    RUN /usr/local/bin/docker-deck/build.sh

This will copy the build.sh from .docker directory to the container path `/usr/local/bin/docker-deck`.

It then adds an execute permission and runs the script using the RUN directives.