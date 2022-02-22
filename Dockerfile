# Update this file!

# Use the node:16-alpine image from DockerHub: https://hub.docker.com/_/node
# If you are curious to see how this looks like:
# Link: https://github.com/nodejs/docker-node/blob/5647d2766ea650f10fb5741e7f6e101b5e5ba0b6/17/alpine3.14/Dockerfile
FROM node:16-alpine

# COPY dependencies into container
COPY ...

# RUN install with dependencies in container
RUN ...

# COPY source file
COPY ...

# Run actual command from copied source file
CMD ...
