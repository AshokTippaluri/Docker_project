# Use an official nginx image as the base image
FROM nginx:alpine

# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy the current directory contents into the container at /usr/share/nginx/html
COPY /home/vagrant/my-wedding-website/ /usr/share/nginx/html

# Expose port 8080 to the host
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]

