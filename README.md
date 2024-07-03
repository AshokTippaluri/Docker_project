# Docker_project

[Docker cheat sheet](https://github.com/AshokTippaluri/Docker_project/blob/main/DockerCheatSheet.md)

[Example docker-compose yml file](https://github.com/AshokTippaluri/Docker_project/blob/main/docker-compose.yml)

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

# RUN is an image-build step
• CMD is the command the container executes by default when you launch the built image

• CMD: Sets default parameters that can be overridden from the Docker Command Line Interface (CLI) while running a Docker container.

• ENTRYPOINT: Default parameters that cannot be overridden while executing Docker Containers with CLI parameters.

• COPY is a docker file command that copies files from a local source location to a destination in the Docker container.

• ADD command is used to copy files/directories into a Docker image.

# Docker Main Commands
• docker pull ubuntu. (To pull images from hub/repo)

• docker run –it –name c1 –d –p 82:80 ubuntu (To run an image as a container)

• docker exec –it c1 bash (To login into the container) 


# Backup of the container as an Image
• docker commit c1 apache-on-ubuntu:1.0 (To save the container data as a new Image)

• docker save apache-on-ubuntu:1.0 --output backup.tar (To save the image as tar)

• docker load -i backup.tar (To unzip the image from tar)

• docker start/stop/restart c1 (Conatiner commands)

• docker push image-name (To push the image to a container)

• docker build Dockerfile

![image](https://github.com/AshokTippaluri/Docker_project/assets/96752472/82b320f6-3780-4605-9e09-8c6d1ee14973)

# Docker Container States
Created - Docker assigns the created state to the containers that were never started ever since they were created. Hence, no CPU or memory is used by the containers in this state. 

• Running - When we start a container having created a state using the docker start command, it attains the running state. This state signifies that the processes are running in an isolated environment inside the container.
• Restarting - Docker supports four types of restart policies, namely – no, on-failure, always, unless-stopped. Restart policy decides the behavior of the container when it exits. By default, the restart policy is set to no, which means that the container will not be started automatically after it exits. 

• Exited - This state is achieved when the process inside the container terminates. No CPU and memory are consumed by the container. The process inside the container was completed, and so it exited. The process inside the container encountered an exception while running. A container is intentionally stopped using the docker stop command. No interactive terminal was set to a container running bash. 

• Pause - A paused container consumes the same memory used while running the container, but the CPU is released completely

![image](https://github.com/AshokTippaluri/Docker_project/assets/96752472/780cb95d-8b83-4181-bc50-961029800f6c)

# Docker Networking
1) Bridge: The default network driver. Bridge networks apply to containers running on the same Docker daemon host.
2) Host: For standalone containers, remove network isolation between the container and the Docker host, and use the host’s networking directly
3) Overlay: Overlay networks connect multiple Docker daemons together and enable swarm services to communicate with each other. You can also use overlay networks to facilitate communication between a swarm service and a standalone container, or between two standalone containers on different Docker daemons.

• User-defined bridges provide better isolation

• Containers can be attached and detached from user-defined networks on the fly.

• Each user-defined network creates a configurable bridge. Managing User-defined bridge network

• docker network create -d bridge my-bridge-network (Basic command)

• docker network rm my-net (To remove the network)

• docker network create -d overlay my-bridge-network (To connect to multiple daemons)

• docker network create --driver=bridge --subnet=172.28.0.0/16 --ip-range=172.28.5.0/24 --gateway=172.28.5.254 my-bridge-network

• docker create --name my-nginx --network my-bridge-network --publish 8080:80 nginx:latest (To create a container without start state)

• docker network disconnect docker0 my-nginx

![image](https://github.com/AshokTippaluri/Docker_project/assets/96752472/dacd3460-ce77-484c-8223-d74bf5561e91)













