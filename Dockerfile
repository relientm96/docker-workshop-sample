FROM node:16-alpine

# Update this file!

# NOTE: It should only need the following commands from the DockerFile reference:
# RUN, COPY, CMD

# COPY dependencies into container
COPY ...

# RUN install with dependencies in container
RUN ...

# COPY source file
COPY ...

# Run actual command
CMD ...
