# Update this file!

# Use the node:16-alpine image from DockerHub
# Link: https://hub.docker.com/_/node
FROM node:16-alpine

# COPY dependencies into container
COPY ...

# RUN install with dependencies in container
RUN ...

# COPY source file
COPY ...

# Run actual command from copied source file
CMD ...
