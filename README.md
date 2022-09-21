# e-learning
This contains e-learning materials for dockerisation of a python module and setting up kubernetes

## Containerize Python Applications
 - Install docker (https://docs.docker.com/desktop/)
 - you can confirm the docker has correclty installed by `docker -v` 
 - Create the docker file defining the required packages and python file
 - Once the docker file has been created run command `docker build -t python-<imagename> <location>`
  (e.g. imdb .)to build the docker image (-t will provide sudo terminal and -i interactive mode)
 - After building the image run command `docker run python <imagename>` to start the container
