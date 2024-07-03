# Docker_project

# What is docker?
Docker is an open platform for developing, shipping, and running applications.

• Docker enables to separate the applications from infrastructure so that software delivery is quick.

• Docker provides the ability to package and run an application in a loosely isolated environment called a container.

• The isolation and security allow you to run many containers simultaneously on a given host.


![image](https://github.com/AshokTippaluri/Docker_project/assets/96752472/e0b67e6e-a9cf-4f19-adca-5dfe5ccda022)


# Docker Architecture
Docker uses a client-server architecture.

• The Docker client talks to the Docker daemon, which does the heavy lifting of building, running, and distributing your Docker containers. The Docker client and daemon can run on the same system, or you can
connect a Docker client to a remote Docker daemon.

• The Docker client and daemon communicate using a REST API, over UNIX sockets or a network interface. Another Docker client is Docker Compose, which lets you work with applications consisting of containers.

1) Docker Client
2) Docker Daemon
3) Docker Registry
4) Docker Image
5) Docker Container


![image](https://github.com/AshokTippaluri/Docker_project/assets/96752472/68d70b6d-a514-4e45-9a0a-d735d7fd2421)

# Docker Image/Container and DockerFile
• A Docker image is a read-only, inert template with instructions for deploying containers. In Docker, everything revolves around images.

• An image consists of a collection of files (or layers) that pack together all the necessities—such as dependencies, source code, and libraries—needed to set up a completely functional container environment.

• Images are stored on a Docker registry, such as the Docker Hub, or on a local registry. A Docker container is a virtualized runtime environment that provides isolation capabilities for separating the execution of applications from the underpinning system. It’s an instance of a Docker image.

![image](https://github.com/AshokTippaluri/Docker_project/assets/96752472/a3e924bd-16a9-454c-a048-d71942c555d0)




