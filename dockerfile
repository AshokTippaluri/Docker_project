FROM nginx:alpine
LABEL maintainer="ashok@gmail.com"
COPY Html-Css-Website /usr/share/nginx/html
WORKDIR /apps
