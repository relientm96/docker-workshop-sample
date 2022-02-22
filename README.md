# Docker Workshop Sample

## Task

Create an image that runs `src/index.js` that logs out your name with the [pino-pretty](https://github.com/pinojs/pino-pretty) Javascript library.

## Setup

1. Have Docker Desktop running locally. Use `docker ps` to check.

2. Clone this repository.

3. Update `src/index.js` to log your name.

4. Edit and add instructions to `Dockerfile`. Take note of the following keywords from the [documentation](https://docs.docker.com/engine/reference/builder/).
    - `FROM`: Telling Docker which base image to use.
    
        ```Dockerfile
        # Usage: FROM <IMAGE_NAME>:<TAG>
        # Eg: Using node:16-alpine image from Dockerhub
        FROM node:16-alpine
        ```
    - `RUN`: Telling Docker command to run when **building** the image.
    
        ```Dockerfile
        # Usage: RUN <COMMAND_TO_RUN>
        # eg: Installing dependencies with yarn
        RUN yarn install
        ```
    - `COPY`: Copy a file from host (i.e your laptop) to container.
    
        ```Dockerfile
        # Usage: COPY <SOURCE_PATH_ON_HOST> <DESTINATION_PATH_ON_CONTAINER>
        # eg: Copying a package.json file to root level of container
        COPY package.json package.json
        ```
    - `CMD`: Command to execute when **running** the image.
    
        ```Dockerfile
        # Usage: CMD ["<COMMAND>", "<ARG_1>"...]
        # Eg: Running a node js script
        CMD ["node", "my-node-js-script.js"]
        ```

5. Build an image with your `Dockerfile`:
  
    ```bash
    docker build . -t <your_custom_image_name>
    ```

6. Run a container from your build image:

    ```bash
    docker run -it --init <your_custom_image_name>
    ```
