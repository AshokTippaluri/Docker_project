## Creating an image of a wedding web app by using docker.

### STEPS


```bash

### Cloning the code from the repository

git clone https://github.com/stephanoapiolaza/my-wedding-website.git

cd my-wedding-website/

### creating a Dockerfile 
vim Dockerfile

### Building an image 
docker build -t weddingweb .

### Tagging an image and pushing it into docker hub

docker image tag weddingweb ashoktippaluri/weddingweb:v1
docker image push ashoktippaluri/weddingweb:v1

```
