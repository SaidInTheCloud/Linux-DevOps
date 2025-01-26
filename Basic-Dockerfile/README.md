# Basic Dockerfile

This project required to write a  basic Dockerfile to create a Docker image. When this Docker image is run, it should print “Hello, Captain!” to the console before exiting.

Requirements

-  **The Dockerfile should be named Dockerfile.**
-  **The Dockerfile should be in the root directory of the project.**
-  **The base image should be alpine:latest.**
-  **The Dockerfile should contain a single instruction to print “Hello, Captain!” to the console before exiting.**

This project is part of the DevOps roadmap suggested on [roadmap.sh](https://roadmap.sh/devops/projects).

## **Installation**
1. Clone or download the script:
```
 git@github.com:SaidInTheCloud/Linux-DevOps.git
```

2. Navigate to the Basic-Dockerfile directory and build the docker image.
```
sudo docker build -t basic-dockerfile .
```
3. Run the Docker container:
```
sudo docker run basic-dockerfile
```

## **Output**
After running the container, you should see the following output in your terminal:
```
Hello, Captain!
```


