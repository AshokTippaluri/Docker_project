### Building an docker file and pushing to docker hub

Go to home directory install the docker and git 

    git clone https://github.com/docker/getting-started-app.git

    cd getting-started-app/
    
    vim Dockerfile

``` Dockerfile
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
```
    docker build -t day02-todo .
   
    docker images
   
    docker tag day02-todo:latest ashoktippaluri/cka:latest
    
    docker image
    
    docker login
    
    docker push ashoktippaluri/cka:latest

    docker run -d -p 3000:3000 ashoktippaluri/cka:latest

    docker exec -it 01a sh
    
   73  docker images --help
   74  docker images
   75  docker image rm node
   76  docker rmi node
   77  docker rmi 73
   78  docker ps
   79  docker rmi 0492
   80  docker pull ashoktippaluri/cka:latest
   81  docker run -d -p 80:3000 ashoktippaluri/cka:latest
   82  docker ps
   83  docker stop 6a
   84  docker ps
   85  docker run -d -p 3000:80 ashoktippaluri/cka:latest
   86  docker ps
   87  ip a
   88  docker stop 9a
   89  
   90  docker ps
   91  docker exec -it 01a /bash
   92  
