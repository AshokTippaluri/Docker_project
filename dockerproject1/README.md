creating a image of wedding web app by using docker.

```bash

### Cloning the code from the repository

git clone https://github.com/stephanoapiolaza/my-wedding-website.git

cd my-wedding-website/

### creating a Dockerfile 
vim Dockerfile

### building an image 
docker build -t weddingweb .

### Tagging an image and pushing into dockerhub

docker image tag weddingweb ashoktippaluri/weddingweb:v1
docker image push ashoktippaluri/weddingweb:v1

```
