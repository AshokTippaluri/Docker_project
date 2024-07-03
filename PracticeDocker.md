##Learning Docker

Login to the server 

```sh
sudo su
git clone https://github.com/AshokTippaluri/Docker_project.git 
cd Docker_project/
sh docker.sh
systemctl status docker
```

Once you are done installing Docker, test your Docker installation by running the following:

```bash
docker run hello-world
```
Output
```bash
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
c1ec31eb5944: Pull complete
Digest: sha256:94323f3e5e09a8b9515d74337010375a456c909543e1ff1538f5116d38ab3989
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

..........................

```

Building an image

create a `app.js` file with the content of 
```js
var http = require("http");

http.createServer(function (request, response) {
   response.writeHead(200, {'Content-Type': 'text/plain'});
   response.end('Hello from DEVOPS TEAM \n');
}).listen(8888);

// Console will print the message
console.log('Server running at http://127.0.0.1:8888/');
```

Create a `Dockerfile` by connect with `hello.js`

``` bash
FROM node:8

LABEL maintainer="championshuttler@gmail.com"

RUN npm install

ADD hello.js /hello.js

EXPOSE 8888

ENTRYPOINT [ "node", "hello.js" ]
```

### Build an Image

```
docker build -t helloworld . 
docker images
```


### Creating a container with image

```  docker run -p -d 8888:8888 helloworld ```

On your browser http://localhost:8888/

![image](https://github.com/AshokTippaluri/Docker_project/assets/96752472/023e3ac7-87fe-4b9b-8d15-4206de9634e8)

If you see this. The image is successfull build and run 

Push the build image to docker hub or repository 

``` bash
   docker login
```
Enter the usename and password 
``` bash
   docker image tag helloworld $dockerID/helloworld:v1
   docker image push $dockerID/helloworld:v1
```



