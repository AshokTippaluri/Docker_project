### Building a docker file and pushing it to the docker hub

Go to the home directory install the docker and git 

Clone the getting-started-app code from git
   
    git clone https://github.com/docker/getting-started-app.git

Go to the folder

    cd getting-started-app/

create a Dockerfile 
    
    vim Dockerfile

Add the below content to the Docker file

``` Dockerfile
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
```

Build the image using the docker file and provide the name to the image
 
    docker build -t day02-todo .

To check the images

    docker images

Adding the tags to the image

    docker tag day02-todo:latest ashoktippaluri/cka:latest

A new image is created with the above tag

    docker image

To push the image to the remote repository we need to log-in username and password
    
    docker login

Push the image to the remote repository
    
    docker push ashoktippaluri/cka:latest

Calling the image from the remote repository and running the image

    docker run -d -p 3000:3000 ashoktippaluri/cka:latest

To the running containers

    docker ps 

To enter into the shell of 

    docker exec -it <image_name> sh
    
To remove the images from the environment 

     docker rmi <image_name>  
