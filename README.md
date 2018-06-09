# jenkins
Dockerised Jenkins with support for building docker images itself

### What?
This simply takes the vanilla jenkins docker image and builds a docker image that itself has both jenkins and docker installed in it.
Get it?

### Why?
I wanted a docker-run jenkins that could itself build docker images, including itself.

### How?
Clone this repo:
    git clone https://github.com/joeljbaker/jenkins.git

Build the docker image:
    ./build.sh 
    
Run the docker image:
    ./run-jenkins.sh 
    
Goto Jenkins at http://localhost:8080/

