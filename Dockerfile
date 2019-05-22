# Step:1 Ubuntu (base image)
FROM ubuntu:latest

# Step:2 Nginx install
RUN apt-get update && apt-get install -y -q nginx

# Step:3 file copy
COPY ./index.html /usr/share/nginx/html/

# Step:4 Nginx start
CMD ["nginx", "-g", "daemon off;"]
