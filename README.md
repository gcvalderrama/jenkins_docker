# jenkins_docker

## documentation

This script will use groovy scripting and create a setup Jenkins in a local workstation automatically. I expect to checkout the code, run docker build and docker run, to login into the Jenkins UI to trigger the build job.

### requirements

- docker , linux images 

### clone repository 

- git clone https://github.com/gcvalderrama/jenkins_docker.git

### build 

- bash build.bash

### run 

- bash run.bash

navigate to http://localhot:8080, 
default user: test, password: test


### change username or password 

docker run -d -p=8080:8080 -e JENKINS_USERNAME='test' -e JENKINS_PASSWORD='test' jenkins 
