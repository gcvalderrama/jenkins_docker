# jenkins_docker

## documentation

### requirements

- docker , linux images 

### clone repository 

- git clone https://github.com/spring-projects/spring-petclinic.git

### build 

- bash build.bash

### run 

- bash run.bash


default user: test, password: test
navigate to http://localhot:8080

### change username or password 

docker run -d -p=8080:8080 -e JENKINS_USERNAME='test' -e JENKINS_PASSWORD='test' jenkins 
